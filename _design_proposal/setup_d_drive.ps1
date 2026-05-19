# =============================================================================
# Setup script: clone speaker-research-log into D:\Vault\speaker-research-log
# All output in English to avoid UTF-8/SJIS encoding issues on Windows PS 5.x.
# =============================================================================

$ErrorActionPreference = "Stop"
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8

$VaultRoot   = "D:\Vault"
$RepoDir     = "D:\Vault\speaker-research-log"
$RepoUrl     = "https://github.com/furusho311-art/speaker-research-log.git"
$OldLocalDir = "C:\Users\furus\speaker-research-log"
$DesignDir   = "$OldLocalDir\_design_proposal"

Write-Host "=== speaker-research-log -> D:\Vault setup ===" -ForegroundColor Cyan
Write-Host ""

# -----------------------------------------------------------------------------
# 0. Preflight
# -----------------------------------------------------------------------------
Write-Host "[0/6] Preflight..." -ForegroundColor Yellow

try {
    $gitVersion = git --version
    Write-Host "  git: $gitVersion"
} catch {
    Write-Host "  ERROR: git not found." -ForegroundColor Red
    Write-Host "  Install from https://git-scm.com/download/win"
    Read-Host "  Press Enter to exit"
    exit 1
}

if (-not (Test-Path "D:\")) {
    Write-Host "  ERROR: D:\ drive not found" -ForegroundColor Red
    Read-Host "  Press Enter to exit"
    exit 1
}
$dInfo = Get-PSDrive -Name D -ErrorAction SilentlyContinue
if ($dInfo) {
    $freeGB = [math]::Round($dInfo.Free/1GB, 1)
    Write-Host "  D:\ free space: $freeGB GB"
}

if (Test-Path $RepoDir) {
    Write-Host ""
    Write-Host "  WARNING: $RepoDir already exists" -ForegroundColor Yellow
    $answer = Read-Host "  Overwrite? (y/N)"
    if ($answer -ne "y") {
        Write-Host "  Aborted."
        Read-Host "  Press Enter to exit"
        exit 0
    }
    Remove-Item -Path $RepoDir -Recurse -Force
}

# -----------------------------------------------------------------------------
# 1. Create D:\Vault
# -----------------------------------------------------------------------------
Write-Host ""
Write-Host "[1/6] Create D:\Vault..." -ForegroundColor Yellow
if (-not (Test-Path $VaultRoot)) {
    New-Item -ItemType Directory -Path $VaultRoot | Out-Null
    Write-Host "  OK: $VaultRoot created"
} else {
    Write-Host "  OK: $VaultRoot already exists"
}

# -----------------------------------------------------------------------------
# 2. git clone
# -----------------------------------------------------------------------------
Write-Host ""
Write-Host "[2/6] git clone (this may take a few minutes)..." -ForegroundColor Yellow
Set-Location $VaultRoot
git clone $RepoUrl
if (-not (Test-Path $RepoDir)) {
    Write-Host "  ERROR: clone failed" -ForegroundColor Red
    Read-Host "  Press Enter to exit"
    exit 1
}
Write-Host "  OK: cloned to $RepoDir"

# -----------------------------------------------------------------------------
# 3. Copy _design_proposal from Cowork outputs
# -----------------------------------------------------------------------------
Write-Host ""
Write-Host "[3/6] Copy _design_proposal..." -ForegroundColor Yellow
if (Test-Path $DesignDir) {
    $newDesignDir = "$RepoDir\_design_proposal"
    Copy-Item -Path $DesignDir -Destination $newDesignDir -Recurse -Force
    Write-Host "  OK: _design_proposal copied"
} else {
    Write-Host "  SKIP: $DesignDir not found" -ForegroundColor Yellow
}

# -----------------------------------------------------------------------------
# 4. Place .gitignore
# -----------------------------------------------------------------------------
Write-Host ""
Write-Host "[4/6] Place .gitignore..." -ForegroundColor Yellow

$gitignoreContent = @'
# Obsidian - device-specific only
.obsidian/workspace.json
.obsidian/workspace-mobile.json
.obsidian/cache
.obsidian/graph.json

# Temp / OS
.trash/
.DS_Store
Thumbs.db
*.swp

# obsidian-git conflict log
conflict-files-obsidian-git.md

# Large attachments (LFS recommended)
99_Attachments/*.pdf
99_Attachments/*.canvas
'@

$gitignorePath = "$RepoDir\.gitignore"
if (Test-Path $gitignorePath) {
    Write-Host "  SKIP: .gitignore already exists"
} else {
    Set-Content -Path $gitignorePath -Value $gitignoreContent -Encoding UTF8
    Write-Host "  OK: .gitignore placed"
}

# -----------------------------------------------------------------------------
# 5. Create Vault directories
# -----------------------------------------------------------------------------
Write-Host ""
Write-Host "[5/6] Create Vault directories..." -ForegroundColor Yellow

$dirs = @(
    "00_Inbox\_stubs",
    "00_Inbox\fleeting",
    "10_Entities\Company",
    "10_Entities\Product",
    "10_Entities\Person",
    "20_Concepts",
    "30_Literature\papers",
    "30_Literature\patents",
    "30_Literature\standards",
    "50_Calendar\Daily",
    "50_Calendar\Weekly",
    "60_Projects",
    "90_Atlas",
    "99_Attachments",
    "_templates"
)
foreach ($d in $dirs) {
    $fullPath = "$RepoDir\$d"
    if (-not (Test-Path $fullPath)) {
        New-Item -ItemType Directory -Path $fullPath -Force | Out-Null
        $gitkeep = "$fullPath\.gitkeep"
        Set-Content -Path $gitkeep -Value "" -Encoding UTF8
        Write-Host "  OK: $d"
    } else {
        Write-Host "  EXIST: $d"
    }
}

$proposalDir = "$RepoDir\_design_proposal"
if (Test-Path "$proposalDir\templates") {
    Copy-Item -Path "$proposalDir\templates\*" -Destination "$RepoDir\_templates\" -Recurse -Force
    Write-Host "  OK: _templates/ populated"
}
if (Test-Path "$proposalDir\samples\Atlas") {
    Copy-Item -Path "$proposalDir\samples\Atlas\*" -Destination "$RepoDir\90_Atlas\" -Recurse -Force
    Write-Host "  OK: 90_Atlas/ populated"
}
if (Test-Path "$proposalDir\samples\MOC") {
    Copy-Item -Path "$proposalDir\samples\MOC\*" -Destination "$RepoDir\90_Atlas\" -Recurse -Force
    Write-Host "  OK: MOC samples placed"
}
if (Test-Path "$proposalDir\samples\entities\Company") {
    Copy-Item -Path "$proposalDir\samples\entities\Company\*" -Destination "$RepoDir\10_Entities\Company\" -Recurse -Force
    Write-Host "  OK: Company samples placed"
}
if (Test-Path "$proposalDir\samples\entities\Product") {
    Copy-Item -Path "$proposalDir\samples\entities\Product\*" -Destination "$RepoDir\10_Entities\Product\" -Recurse -Force
    Write-Host "  OK: Product samples placed"
}
if (Test-Path "$proposalDir\samples\entities\Concept") {
    Copy-Item -Path "$proposalDir\samples\entities\Concept\*" -Destination "$RepoDir\20_Concepts\" -Recurse -Force
    Write-Host "  OK: Concept samples placed"
}
if (Test-Path "$proposalDir\samples\literature") {
    Copy-Item -Path "$proposalDir\samples\literature\*" -Destination "$RepoDir\30_Literature\papers\" -Recurse -Force
    Write-Host "  OK: Literature samples placed"
}
if (Test-Path "$proposalDir\samples\Calendar") {
    Copy-Item -Path "$proposalDir\samples\Calendar\*" -Destination "$RepoDir\50_Calendar\Daily\" -Recurse -Force
    Write-Host "  OK: Calendar samples placed"
}

# -----------------------------------------------------------------------------
# 6. .obsidian placeholder configs
# -----------------------------------------------------------------------------
Write-Host ""
Write-Host "[6/6] Place .obsidian placeholder configs..." -ForegroundColor Yellow

$obsidianDir = "$RepoDir\.obsidian"
if (-not (Test-Path $obsidianDir)) {
    New-Item -ItemType Directory -Path $obsidianDir | Out-Null
}

$templaterConfig = @'
{
  "template_folder": "_templates",
  "templates_pairs": [],
  "trigger_on_file_creation": false,
  "auto_jump_to_cursor": true,
  "enable_system_command": false
}
'@
$tplPath = "$obsidianDir\plugins\templater-obsidian"
New-Item -ItemType Directory -Path $tplPath -Force | Out-Null
Set-Content -Path "$tplPath\data.json" -Value $templaterConfig -Encoding UTF8

$gitConfig = @'
{
  "commitMessage": "vault-edit: {{date}} ({{numFiles}} files)",
  "autoSaveInterval": 15,
  "autoPullInterval": 15,
  "autoPullOnBoot": true,
  "disablePush": false,
  "pullBeforePush": true,
  "syncMethod": "merge"
}
'@
$gitPluginPath = "$obsidianDir\plugins\obsidian-git"
New-Item -ItemType Directory -Path $gitPluginPath -Force | Out-Null
Set-Content -Path "$gitPluginPath\data.json" -Value $gitConfig -Encoding UTF8

$communityPlugins = @'
[
  "dataview",
  "templater-obsidian",
  "obsidian-git"
]
'@
Set-Content -Path "$obsidianDir\community-plugins.json" -Value $communityPlugins -Encoding UTF8
Write-Host "  OK: .obsidian placeholder configs placed"

# -----------------------------------------------------------------------------
# Done
# -----------------------------------------------------------------------------
Write-Host ""
Write-Host "=== Setup done ===" -ForegroundColor Green
Write-Host ""
Write-Host "Next steps:"
Write-Host "  1. Launch Obsidian -> 'Open folder as vault' -> $RepoDir"
Write-Host "  2. Settings -> Community plugins -> Turn on"
Write-Host "  3. Browse -> install and enable: Dataview, Templater, Obsidian Git"
Write-Host "  4. Templater settings -> Template folder: '_templates'"
Write-Host "  5. Obsidian Git settings -> Auto-pull on boot ON, Auto-commit 15 min"
Write-Host "  6. In Claude app, switch Cowork workspace folder to: $RepoDir"
Write-Host ""
Write-Host "Location: $RepoDir" -ForegroundColor Cyan
Write-Host ""
Read-Host "Press Enter to close"
