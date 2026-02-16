$ErrorActionPreference = "Stop"

# Get current branch name
$currentBranch = git branch --show-current

if ($currentBranch -eq "main" -or $currentBranch -eq "master") {
    Write-Error "You are already on the main branch. Please run this from a draft branch."
}

Write-Host "Merging $currentBranch into main..."

# Switch to main
git checkout main

# Merge
git merge $currentBranch

Write-Host "Merge complete. You are now on the main branch."
