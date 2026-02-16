$ErrorActionPreference = "Stop"

# Get current timestamp
$timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
$message = "Snapshot: $timestamp"

# Add all changes
Write-Host "Adding changes..."
git add .

# Commit
Write-Host "Committing with message: $message"
git commit -m "$message"

Write-Host "Snapshot saved successfully!"
