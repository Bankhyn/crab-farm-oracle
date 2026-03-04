# Kung Oracle - Notebook Setup Script
# Run as Administrator in PowerShell

Write-Host "=== Installing Tools ===" -ForegroundColor Cyan

Write-Host "Installing Node.js..." -ForegroundColor Yellow
winget install OpenJS.NodeJS.LTS --accept-package-agreements --accept-source-agreements

Write-Host "Installing Git..." -ForegroundColor Yellow
winget install Git.Git --accept-package-agreements --accept-source-agreements

Write-Host "Installing Python..." -ForegroundColor Yellow
winget install Python.Python.3.12 --accept-package-agreements --accept-source-agreements

Write-Host ""
Write-Host "=== Tools Installed! ===" -ForegroundColor Green
Write-Host "Please CLOSE this window and open a NEW PowerShell (Admin)" -ForegroundColor Red
Write-Host "Then run: .\setup-step2.ps1" -ForegroundColor Yellow
Read-Host "Press Enter to exit"
