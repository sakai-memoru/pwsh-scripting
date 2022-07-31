<#
.Synopsis
   Verb-Noun: Short description
.DESCRIPTION
   Long description
.EXAMPLE
   Verb-Noun
.EXAMPLE
   Verb-Noun HelloWorld!
#>
function Verb-Noun
{
    [CmdletBinding()]
    [Alias()]
    [OutputType([int])]
    Param
    (
        [Parameter(Mandatory=$false,
                   ValueFromPipelineByPropertyName=$true,
                   Position=0)]
        [string]$Param1,
        [int]$Param2
    )

    Begin
    {
        Write-Debug "## cmdlet ------- Begin."
    }
    Process
    {
        Write-Information $Param1
    }
    End
    {
        Write-Debug "## cmdlet ------- End..."
    }
}

## --------------------------------------- ## Entry point
# $InformationPreference = "SilentlyContinue"
$InformationPreference = "Continue"
# $DebugPreference = c
$DebugPreference = "Continue"
Verb-Noun "Hello,World!"
