function Get-ScriptInformation(){
    $retMap = [ordered]@{}

    $Name = $MyInvocation.MyCommand.Name
    $Path = $MyInvocation.InvocationName
    $retMap = [ordered]@{
        "Name" = $Name
        "Path" = $Path
        "Root" = $PSScriptRoot
    }
    # $MyInvocation.MyCommand.GetType().FullName
    # $Module = $MyInvocation.MyCommand.Module
    return $retMap
}


function doMain(){
    $map = Get-ScriptInformation
    # $map
    foreach ($key in $map.Keys){
        Write-Debug "$key : $($map[$key])"
    }
    
}

function main(){
    Write-Information "## ---------------- ## start."
    doMain
    Write-Information "## ---------------- ## end..."
}

$DebugPreference = "Continue"
# $DebugPreference = "SilentlyContinue"
$InformationPreference = "Continue"
# $InformationPreference = "SilentlyContinue"
main