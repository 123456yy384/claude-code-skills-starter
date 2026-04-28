# Claude Code Skills Starter - Windows Installer
# Run: irm https://raw.githubusercontent.com/123456yy384/claude-code-skills-starter/main/scripts/install.ps1 | iex

$ErrorActionPreference = "Stop"
$SkillsDir = "$env:USERPROFILE\.claude\skills"

Write-Host "========================================" -ForegroundColor Cyan
Write-Host " Claude Code Skills Starter Pack" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Create skills directory if needed
if (-not (Test-Path $SkillsDir)) {
    New-Item -ItemType Directory -Path $SkillsDir -Force | Out-Null
    Write-Host "[OK] Created $SkillsDir" -ForegroundColor Green
}

# Get the directory where this script is located
$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$SourceSkills = "$ScriptDir\..\skills"

# Install pm-team
if (Test-Path "$SourceSkills\pm-team") {
    $Dest = "$SkillsDir\pm-team"
    if (Test-Path $Dest) { Remove-Item -Recurse -Force $Dest }
    Copy-Item -Recurse "$SourceSkills\pm-team" $Dest
    Write-Host "[OK] Installed pm-team" -ForegroundColor Green
} else {
    Write-Host "[SKIP] pm-team not found in source" -ForegroundColor Yellow
}

# Install snapview
if (Test-Path "$SourceSkills\snapview") {
    $Dest = "$SkillsDir\snapview"
    if (Test-Path $Dest) { Remove-Item -Recurse -Force $Dest }
    Copy-Item -Recurse "$SourceSkills\snapview" $Dest
    Write-Host "[OK] Installed snapview" -ForegroundColor Green
} else {
    Write-Host "[SKIP] snapview not found in source" -ForegroundColor Yellow
}

Write-Host ""
Write-Host "Done! 2 original skills installed." -ForegroundColor Green
Write-Host ""
Write-Host "Next steps:" -ForegroundColor Yellow
Write-Host "  1. Restart Claude Code (or start a new session)" -ForegroundColor White
Write-Host "  2. Type /pm-team to start project manager mode" -ForegroundColor White
Write-Host "  3. Type /snapview to capture a screenshot" -ForegroundColor White
Write-Host "  4. Browse the full 54-skill catalog at:" -ForegroundColor White
Write-Host "     https://github.com/123456yy384/claude-code-skills-starter" -ForegroundColor Cyan
Write-Host ""
