[CmdletBinding()]
param(
    [string]$ProjectRoot = (Resolve-Path (Join-Path $PSScriptRoot '..')).Path
)

$ErrorActionPreference = 'Stop'
$failures = [System.Collections.Generic.List[string]]::new()

function Require-Path {
    param([string]$RelativePath)
    $path = Join-Path $ProjectRoot $RelativePath
    if (-not (Test-Path -LiteralPath $path)) {
        $failures.Add("Missing required path: $RelativePath")
    }
}

function Read-Text {
    param([string]$RelativePath)
    $path = Join-Path $ProjectRoot $RelativePath
    if (-not (Test-Path -LiteralPath $path)) {
        return ''
    }
    Get-Content -Raw -LiteralPath $path
}

function Test-SkillFrontmatter {
    param([string]$RelativePath)
    $content = Read-Text $RelativePath
    if ($content -notmatch '(?s)^---\s*\r?\n.*?\r?\n---') {
        $failures.Add("Invalid frontmatter: $RelativePath")
        return
    }
    if ($content -notmatch '(?m)^name:\s*\S+') {
        $failures.Add("Frontmatter is missing name: $RelativePath")
    }
    if ($content -notmatch '(?m)^description:\s*\S+') {
        $failures.Add("Frontmatter is missing description: $RelativePath")
    }
    if ($content -notmatch '(?mi)^description:.*\buse\b') {
        $failures.Add("Description must explain when to use the skill: $RelativePath")
    }
}

function Test-InlineCodePaths {
    foreach ($relativePath in 'SKILL.md', 'skills/sheep-story/SKILL.md') {
        $fullPath = Join-Path $ProjectRoot $relativePath
        if (-not (Test-Path -LiteralPath $fullPath)) {
            continue
        }

        $file = Get-Item -LiteralPath $fullPath
        $content = Get-Content -Raw -LiteralPath $fullPath
        foreach ($bullet in [regex]::Matches($content, '(?m)^\s*-\s+.*$')) {
            foreach ($match in [regex]::Matches($bullet.Value, '`((?:skills/sheep-story/)?(?:references|style-profiles)/[^`]+\.md)`')) {
                $link = $match.Groups[1].Value
                $candidate = if ($link.StartsWith('skills/sheep-story/')) {
                    Join-Path $ProjectRoot $link
                } else {
                    Join-Path $file.DirectoryName $link
                }
                if (-not (Test-Path -LiteralPath $candidate)) {
                    $failures.Add("Broken inline-code path: $relativePath -> $link")
                }
            }
        }
    }
}

function Test-LocalMarkdownLinks {
    Get-ChildItem -LiteralPath $ProjectRoot -Recurse -File -Filter '*.md' |
        ForEach-Object {
            $file = $_
            $content = Get-Content -Raw -LiteralPath $file.FullName
            foreach ($match in [regex]::Matches($content, '\[[^\]]+\]\(([^)#]+)(?:#[^)]+)?\)')) {
                $link = $match.Groups[1].Value
                if ($link -match '^[a-zA-Z][a-zA-Z0-9+.-]*:') {
                    continue
                }
                if (-not (Test-Path -LiteralPath (Join-Path $file.DirectoryName $link))) {
                    $failures.Add("Broken markdown link: $($file.FullName) -> $link")
                }
            }
        }
}

Require-Path '.codex-plugin/plugin.json'
Require-Path 'assets/sheep-story.svg'
Require-Path 'SKILL.md'
Require-Path 'skills/sheep-story/SKILL.md'
Require-Path 'skills/sheep-story/references/continuity-check.md'
Require-Path 'skills/sheep-story/references/editorial-rewrite.md'
Require-Path 'skills/sheep-story/references/story-foundation.md'
Require-Path 'skills/sheep-story/references/story-architecture.md'
Require-Path 'skills/sheep-story/references/opposition-design.md'
Require-Path 'skills/sheep-story/references/story-project-layout.md'
Require-Path 'skills/sheep-story/style-profiles/sheepstory-house-style.md'
Require-Path 'skills/sheep-story/style-profiles/zh-tw-fiction.md'
Require-Path 'templates/story-project/chapters/_template.md'
Require-Path 'templates/story-project/worldbuilding/world-book.md'
Require-Path 'templates/story-project/project-brief.md'
Require-Path 'templates/story-project/continuity/promises/_template.md'
Require-Path 'templates/cockpit/chapter-contract.md'
Require-Path 'tests/run_regression_checks.ps1'
foreach ($test in 9..26) {
    $pattern = '{0:D2}-*.md' -f $test
    if (-not (Get-ChildItem -LiteralPath (Join-Path $ProjectRoot 'tests') -Filter $pattern -File)) {
        $failures.Add("Missing positive-control acceptance specification: $pattern")
    }
}

$manifestPath = Join-Path $ProjectRoot '.codex-plugin/plugin.json'
if (Test-Path -LiteralPath $manifestPath) {
    $manifest = Get-Content -Raw -LiteralPath (Join-Path $ProjectRoot '.codex-plugin/plugin.json') | ConvertFrom-Json
    if ($manifest.name -ne 'sheep-story') { $failures.Add('plugin.json name must be sheep-story') }
    if ($manifest.skills -ne './skills/') { $failures.Add('plugin.json skills must be ./skills/') }
    foreach ($field in 'displayName', 'shortDescription', 'longDescription', 'developerName', 'category') {
        if ([string]::IsNullOrWhiteSpace($manifest.interface.$field)) {
            $failures.Add("plugin.json interface.$field is required")
        }
    }
    if (-not $manifest.interface.capabilities) { $failures.Add('plugin.json interface.capabilities is required') }
    if (-not ($manifest.interface.defaultPrompt -is [array])) { $failures.Add('plugin.json interface.defaultPrompt must be an array') }
    if (-not ($manifest.interface.defaultPrompt | Where-Object { $_ -match '(?i)\bUse sheep-story\b' })) {
        $failures.Add('plugin.json must include a starter prompt that invokes sheep-story')
    }
    foreach ($asset in 'composerIcon', 'logo') {
        $assetPath = $manifest.interface.$asset
        if ($assetPath -and -not (Test-Path -LiteralPath (Join-Path $ProjectRoot $assetPath.TrimStart('./')))) {
            $failures.Add("Missing manifest asset: $assetPath")
        }
    }
}

Test-SkillFrontmatter 'SKILL.md'
Test-SkillFrontmatter 'skills/sheep-story/SKILL.md'
Test-LocalMarkdownLinks
Test-InlineCodePaths

$iconPath = Join-Path $ProjectRoot 'assets/sheep-story.svg'
if (Test-Path -LiteralPath $iconPath) {
    try {
        [xml](Get-Content -Raw -LiteralPath $iconPath) | Out-Null
    } catch {
        $failures.Add('assets/sheep-story.svg is not valid XML')
    }
}

if ($failures.Count -gt 0) {
    $failures | ForEach-Object { "FAIL: $_" }
    exit 1
}

'SheepStory static checks passed.'
