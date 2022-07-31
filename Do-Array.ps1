# $InformationPreference = "Continue"
$InformationPreference = "SilentlyContinue"


function doProcess() {
    ## functio spec
    [OutputType([int])]
    Param(
        [string]$str
    )
    ## variables
    [int]$ret = 0
    $ary = @(1,2,3,4)

    ## -------------- begin.
    Write-Information "## ------------------- ## begin"
    $ary | foreach {Write-Host $_}

    ## 
    foreach ($i in $ary) {
        Write-Host  "Hello, $str - $i - !"
    }
    

    ## -------------- end...
    Write-Information "## ------------------- ## end.."


    return $ret

} 

## ---------------------------- ## entry point
function main() {
    $name = "PowerShell"
    echo "----------------------"
    $void = doProcess $name
}

main