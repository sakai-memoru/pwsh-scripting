## import config.ps1  ------------------------ ## import variables
$scriptBase = ([io.fileinfo]$MyInvocation.MyCommand.Definition).BaseName

. .\$scriptBase\config.ps1


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
Echo ("Copy from ""$TARGET_DIR"" ...")
Echo ("Copy to   ""$copyToDir"" ...")

doProcess $TARGET_DIR $copyToDir
