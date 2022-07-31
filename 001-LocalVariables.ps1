# 001. local variables

function doMain(){
    [char]$ch = 'A' # FIXME
    Write-Debug $ch.GetType().FullName
    
    $str = "Hello, world!"
    Write-Debug $str.GetType().FullName

    #[bool]$bl = $true
    $bl = $true
    Write-Debug $bl.GetType().FullName
    
    ## int32
    $i = 341000
    Write-Debug $i.GetType().FullName
    
    ## double (float64)
    $dbl = 341000.0
    Write-Debug $dbl.GetType().FullName

    ## Decimal
    $dcml = 341000.0D
    Write-Debug $dcml.GetType().FullName

    ## single, float (float32)
    [single]$flt = 341000.0
    Write-Debug $flt.GetType().FullName
}


function main(){
    Write-Information "## -------------- start."
    doMain
    Write-Information "## -------------- end..."
}

$InformationPreference = "Continue"
# $InformationPreference = "SilentlyContinue"
$DebugPreference = "Continue"
# $DebugPreference = "SilentlyContinue"

main
 