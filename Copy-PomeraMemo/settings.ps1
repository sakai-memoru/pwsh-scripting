## current directory
$curdir = $pwd.ToString()
#- $curdir = Split-Path -parent $PROFILE


## Get Target Directory
##
function Get-TargetDir([string]$dtmString){
  [string]$retDir = ""
  ## constants
  $DIR_STR = "Pomera_memo"
  $DIR_BASE = "E:/$DIR_STR"
  $retDir = Join-Path $DIR_BASE $dtmString
  return $retDir
}

## Get CopyTo Directory
##
function Get-CopyToDir([String]$dtmString){
  [string]$retDir = ""
  ## constants
  $DIR_STR = "Pomera_memo"
  $vaultDir = "Obsidian Vault"
  $docusDir =  [Environment]::GetFolderPath("MyDocuments")

  ## Set Backup Directory
  $backupDir = Join-Path $docusDir "$vaultDir/$DIR_STR"
  if(!(Test-Path -Path $backupDir)){
    $null = New-Item -ItemType directory -Path $backupDir
  }

  [String] $randomStr = (New-Guid).Guid
  $postfix = $randomStr.Substring($randomStr.Length - 6,6)
  $retDir = Join-Path $backupDir ($dtmString + "_" +$postfix)
  if(!(Test-Path -Path $retDir)){
    $null = New-Item -ItemType directory -Path $retDir
  }
  return $retDir
}

## Get date
$dtmStr = Get-Date -Format "yyyyMM"

#$TARGET_DIR = Get-TargetDir($dtmStr)
#Echo ("Copy from ""$TARGET_DIR"" ...")
#$copyToDir = Get-CopyToDir($dtmStr)
#Echo ("Copy to ""$copyToDir"" ...")

Set-Item -Path Env:TARGET_DIR -Value (Get-TargetDir($dtmStr))
Set-Item -Path Env:COPYTO_DIR -Value (Get-CopyToDir($dtmStr))
