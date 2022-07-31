
function doMain() {
    ## function spec
    [OutputType([int])]
    Param(
        [string]$str
    )

    ## -------------- begin.
    begin
    {
        ## variables
        [int]$ret = 0
        $dic = @{
            name = "John"
            address = "123 Street"
        }
        Write-Information "## ------------------- ## begin"
    }
    ## -------------- process.
    process
    {
        Write-Debug $dic['name']
        Write-Debug $dic['address']
        foreach ($key in $dic.Keys) {
            Write-Debug  "$key : $($dic[$key])"
        }
    }
    ## -------------- end...
    end
    {
        Write-Information "## ------------------- ## end.."
        return $ret
    }
} 

## ---------------------------- ## entry point
function main() {
    echo "----------------------"
    $name = "PowerShell"
    $void = doMain $name
    
}


$InformationPreference = "Continue"
# $InformationPreference = "SilentlyContinue" # default "SilentlyContinue"
$DebugPreference = "Continue"
# $DebugPreference = "SilentlyContinue"  # default "SilentlyContinue"
main