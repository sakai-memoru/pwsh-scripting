## current directory
$curdir = $pwd.ToString()
#- $curdir = Split-Path -parent $PROFILE

## Set Target Directory
##
$TARGET_DRIVE = "E:"
$TARGET_DIR = Join-Path $TARGET_DRIVE "EXPORT"

## Set Image Directory
##
$device_name = @((Get-ChildItem -Path $TARGET_DRIVE -Filter "W*.txt"))[0]
$IMG_PATH = $device_name.BaseName
$pictsDir =  [Environment]::GetFolderPath("MyPictures")
$imgDir = Join-Path $pictsDir $IMG_PATH
if(!(Test-Path -Path $imgDir)){
  $null = New-Item -ItemType directory -Path $imgDir
}

## Set CopyTo Directory
##
$dtmStr = Get-Date -Format "yyMM"
[String] $randomStr = (New-Guid).Guid
$postfix = $randomStr.Substring($randomStr.Length - 6,6)
$copyToDir = Join-Path $imgDir ($dtmStr + "_" +$postfix)
if(!(Test-Path -Path $copyToDir)){
  $null = New-Item -ItemType directory -Path $copyToDir
}

# Echo ("Copy from ""$TARGET_DIR"" ...")
# Echo ("Copy to ""$copyToDir"" ...")

