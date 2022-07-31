$GetMessage = {
    [OutputType([string])]
    Param(
        [string]$msg
    )
    $ret = "Hello, ${msg}!"
    return $ret
}

function Main(){
    
    Write-Information "## ----------------------------- begin."
    Write-Debug (& $GetMessage "world")
    Write-Information "## ----------------------------- end..."
}


## --------------------- entry point
$InformationPreference = "Continue"
# $InformationPreference = "SilentlyContinue"
$DebugPreference = "Continue"
# $DebugPreference = "SilentlyContinue"

Main