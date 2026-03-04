# Kung Oracle - Step 2: Claude Code + Repo
# Run as Administrator in PowerShell

Write-Host "=== Setting up Claude Code ===" -ForegroundColor Cyan

# Refresh PATH
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")

Write-Host "Installing Claude Code..." -ForegroundColor Yellow
npm install -g @anthropic-ai/claude-code

Write-Host "Cloning crab-farm-oracle..." -ForegroundColor Yellow
git clone https://github.com/Bankhyn/crab-farm-oracle.git C:\crab-farm-oracle

Write-Host "Setting up permissions..." -ForegroundColor Yellow
$claudeDir = "$env:USERPROFILE\.claude"
New-Item -ItemType Directory -Path $claudeDir -Force | Out-Null
$settings = @'
{
  "permissions": {
    "allow": [
      "Bash(*)", "Read(*)", "Write(*)", "Edit(*)",
      "Glob(*)", "Grep(*)", "WebFetch(*)", "WebSearch(*)",
      "Task(*)", "NotebookEdit(*)"
    ],
    "deny": []
  }
}
'@
Set-Content -Path "$claudeDir\settings.json" -Value $settings -Encoding UTF8

Write-Host "Setting power config (no sleep on lid close)..." -ForegroundColor Yellow
powercfg /setacvalue SUB_BUTTONS LIDACTION 0
powercfg /setdcvalue SUB_BUTTONS LIDACTION 0
powercfg /change standby-timeout-ac 0

Write-Host ""
Write-Host "=== Setup Complete! ===" -ForegroundColor Green
Write-Host ""
Write-Host "Now run:" -ForegroundColor Yellow
Write-Host "  cd C:\crab-farm-oracle" -ForegroundColor White
Write-Host "  claude login" -ForegroundColor White
Write-Host ""
Write-Host "After login:" -ForegroundColor Yellow
Write-Host "  claude --dangerously-skip-permissions" -ForegroundColor White
Write-Host "  Then type /rc inside for Remote Control" -ForegroundColor White
Read-Host "Press Enter to exit"
