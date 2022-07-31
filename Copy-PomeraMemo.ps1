## import config.ps1  ------------------------ ## import variables
$scriptBase = ([io.fileinfo]$MyInvocation.MyCommand.Definition).BaseName

. .\$scriptBase\settings.ps1


## ------------------------------------------- ## processing
function doProcess($srcFolder, $destFolder){
  echo "## ------------- start ."
  [io.fileinfo[]]$lst = dir $srcFolder
  
  foreach($itm in $lst){
    echo $itm.Name
    Copy-Item -Path $itm.FullName -Force -Destination $destFolder
  } 
  echo "## ------------- end ..."
}

## ------------------------------------------- ## entry point
[string]$targetDir = (Get-Item -Path Env:TARGET_DIR).Value
[string]$copytoDir = (Get-Item -Path Env:COPYTO_DIR).Value

Echo ("Copy from ""$targetDir"" ...")
Echo ("Copy to   ""$copyToDir"" ...")

doProcess $targetDir $copyToDir
