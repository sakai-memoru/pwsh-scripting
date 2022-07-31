function Get-TargetDir
{
    [OutputType([string])]
    Param(
        [string]$dir
    )
    return Join-Path $PSScriptRoot $dir
}

function Get-JsonObject
{
    [OutputType([psobject])]
    Param(
        [string]$jsonPath
    )
    $contentJson = Get-Content -Path $jsonPath
    return ($contentJson | ConvertFrom-Json)
    # return ($contentJson | output-string | ConvertFrom-Json)

}

function Main()
{
$consTargetSnippetBase = "New-IseSnippetsOfSnippet"
$consContextDir = "snippets"
$targetDir = Get-TargetDir $consContextDir
$targetPath = Join-Path $targetDir ($consTargetSnippetBase + ".ps1")
$targetJsonPath = Join-Path $targetDir ($consTargetSnippetBase + ".json")
$targetJsonPath
$contxt = Get-Content -Path $targetPath
# $contxt

$jsonObj = Get-JsonObject $targetJsonPath
# $jsonObj

$title = $jsonObj.title
$description = $jsonObj.description
$caretOffset = $jsonObj.caretOffset

$title
$description
$caretOffset

#New-IseSnippet -Title $title -Description $description -Author $author -Text $text -CaretOffset $caretOffset
}

Main

