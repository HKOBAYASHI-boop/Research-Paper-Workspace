param (
    [Parameter(Mandatory=$true)]
    [string]$DraftName
)

$ErrorActionPreference = "Stop"
$branchName = "draft/$DraftName"

# Create and switch to new branch
Write-Host "Creating new draft branch: $branchName"
git checkout -b $branchName

Write-Host "Switched to draft branch '$branchName'. You can now experiment freely."
