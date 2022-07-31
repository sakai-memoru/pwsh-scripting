function Get-TargetDir(){
    [string]$ret = ""
    
    $DIR_STR = "temp"
    [string]$curdir = $PWD.Path
    $ret = Join-Path $curdir $DIR_STR
    return $ret
}

function Get-TargetExt(){
    [string]$ret = "*.md"
    return $ret
}

$CONF = @{
    target_dir = Get-TargetDir ;
    target_ext = "*.txt" 
}

Set-Item -Path Env:TARGET_DIR -Value (Get-TargetDir)
# (Get-Item -Path Env:TARGET_DIR).Value

Set-Item -Path Env:TARGET_EXT -Value (Get-TargetExt)
# (Get-Item -Path Env:TARGET_EXT).Value
