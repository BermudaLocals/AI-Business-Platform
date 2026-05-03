# DIGITAL ASSET AUDIT SYSTEM
# Safe PowerShell Inventory Script
# This script ONLY collects file metadata (names, paths, sizes, dates) - NEVER file contents
# Run as Administrator for best results

param(
    [string]$OutputDir = "$env:USERPROFILE\Documents\DIGITAL_ASSET_AUDIT"
)

# Create output directory
New-Item -ItemType Directory -Force -Path $OutputDir | Out-Null

Write-Host "🚀 DIGITAL ASSET AUDIT SYSTEM" -ForegroundColor Cyan
Write-Host "================================" -ForegroundColor Cyan
Write-Host "Scanning drives for file metadata only..." -ForegroundColor Yellow
Write-Host "NO file contents will be read or copied.`n" -ForegroundColor Green

# File extensions to scan (valuable content types)
$extensions = @(
    '*.pdf', '*.docx', '*.doc', '*.txt', '*.md', '*.csv', '*.xlsx', '*.xls',
    '*.pptx', '*.ppt', '*.html', '*.css', '*.js', '*.json', '*.xml', '*.zip',
    '*.rar', '*.7z', '*.mp4', '*.mov', '*.avi', '*.mkv', '*.mp3', '*.wav',
    '*.psd', '*.ai', '*.fig', '*.sketch', '*.png', '*.jpg', '*.jpeg', '*.gif',
    '*.svg', '*.eps', '*.indd', '*.prproj', '*.aep', '*.drp'
)

# Keywords to flag (for prioritization)
$keywords = @('course', 'guide', 'prompt', 'script', 'template', 'checklist', 
    'workbook', 'funnel', 'landing', 'sales', 'ebook', 'module', 'training',
    'AI', 'TikTok', 'Skool', 'affiliate', 'digital product', 'Bermuda', 'Ghana',
    'Kenya', 'Zimbabwe', 'South Africa', 'travel', 'business', 'marketing',
    'automation', 'app', 'SaaS', 'bonus', 'masterclass', 'blueprint', 'formula',
    'system', 'method', 'kit', 'bundle', 'toolkit', 'planner', 'tracker')

function Get-DriveInventory {
    param(
        [string]$DriveLetter,
        [string]$OutputFile
    )
    
    Write-Host "`n📁 Scanning ${DriveLetter}: drive..." -ForegroundColor Yellow
    
    $results = @()
    $scanned = 0
    $found = 0
    
    foreach ($ext in $extensions) {
        try {
            $files = Get-ChildItem -Path "${DriveLetter}:\" -Filter $ext -Recurse -File -ErrorAction SilentlyContinue
            
            foreach ($file in $files) {
                $scanned++
                
                # Check if filename contains valuable keywords
                $keywordMatch = $keywords | Where-Object { $file.Name.ToLower() -like "*$_*" }
                $keywordFlag = if ($keywordMatch) { $keywordMatch -join '; ' } else { '' }
                $priority = if ($keywordMatch) { 'HIGH' } else { 'NORMAL' }
                
                # Skip system files and hidden directories
                if ($file.FullName -match 'Windows|Program Files|AppData|\.git|node_modules|vendor|temp|tmp|cache') {
                    continue
                }
                
                $found++
                
                $results += [PSCustomObject]@{
                    'FileName' = $file.Name
                    'FolderPath' = $file.DirectoryName
                    'Extension' = $file.Extension.ToLower()
                    'SizeBytes' = $file.Length
                    'SizeMB' = [math]::Round($file.Length / 1MB, 2)
                    'DateModified' = $file.LastWriteTime.ToString('yyyy-MM-dd HH:mm:ss')
                    'DateCreated' = $file.CreationTime.ToString('yyyy-MM-dd HH:mm:ss')
                    'KeywordsFound' = $keywordFlag
                    'Priority' = $priority
                    'Drive' = $DriveLetter
                }
                
                if ($scanned % 1000 -eq 0) {
                    Write-Host "  Scanned $scanned files..." -ForegroundColor Gray
                }
            }
        }
        catch {
            # Silently continue on access errors
        }
    }
    
    # Export to CSV
    $results | Export-Csv -Path $OutputFile -NoTypeInformation -Encoding UTF8
    
    Write-Host "  ✓ Found $found files" -ForegroundColor Green
    Write-Host "  ✓ Saved to: $OutputFile" -ForegroundColor Green
    
    return $results
}

# Scan I: Drive
if (Test-Path "I:\") {
    $iDriveResults = Get-DriveInventory -DriveLetter "I" -OutputFile "$OutputDir\I_drive_asset_inventory.csv"
} else {
    Write-Host "⚠️ I: drive not found. Skipping." -ForegroundColor Red
}

# Scan C: Drive (user folders only, to avoid Windows system files)
Write-Host "`n📁 Scanning C: drive (User folders only)..." -ForegroundColor Yellow

$cResults = @()
$userFolders = @('Documents', 'Downloads', 'Desktop', 'Pictures', 'Videos', 'Music')

foreach ($folder in $userFolders) {
    $path = "$env:USERPROFILE\$folder"
    if (Test-Path $path) {
        Write-Host "  Scanning $folder..." -ForegroundColor Gray
        
        foreach ($ext in $extensions) {
            try {
                $files = Get-ChildItem -Path $path -Filter $ext -Recurse -File -ErrorAction SilentlyContinue
                
                foreach ($file in $files) {
                    $keywordMatch = $keywords | Where-Object { $file.Name.ToLower() -like "*$_*" }
                    $keywordFlag = if ($keywordMatch) { $keywordMatch -join '; ' } else { '' }
                    $priority = if ($keywordMatch) { 'HIGH' } else { 'NORMAL' }
                    
                    $cResults += [PSCustomObject]@{
                        'FileName' = $file.Name
                        'FolderPath' = $file.DirectoryName
                        'Extension' = $file.Extension.ToLower()
                        'SizeBytes' = $file.Length
                        'SizeMB' = [math]::Round($file.Length / 1MB, 2)
                        'DateModified' = $file.LastWriteTime.ToString('yyyy-MM-dd HH:mm:ss')
                        'DateCreated' = $file.CreationTime.ToString('yyyy-MM-dd HH:mm:ss')
                        'KeywordsFound' = $keywordFlag
                        'Priority' = $priority
                        'Drive' = 'C'
                    }
                }
            }
            catch {
                # Silently continue
            }
        }
    }
}

$cResults | Export-Csv -Path "$OutputDir\C_drive_asset_inventory.csv" -NoTypeInformation -Encoding UTF8
Write-Host "  ✓ Found $($cResults.Count) files" -ForegroundColor Green
Write-Host "  ✓ Saved to: $OutputDir\C_drive_asset_inventory.csv" -ForegroundColor Green

# Generate summary report
Write-Host "`n📊 GENERATING SUMMARY REPORT..." -ForegroundColor Cyan

$allFiles = @()
if ($iDriveResults) { $allFiles += $iDriveResults }
if ($cResults) { $allFiles += $cResults }

$summary = @"
DIGITAL ASSET AUDIT SUMMARY
Generated: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')
================================

TOTAL FILES SCANNED: $($allFiles.Count)
HIGH PRIORITY FILES: $($allFiles | Where-Object Priority -eq 'HIGH').Count

BY EXTENSION:
$($allFiles | Group-Object Extension | Sort-Object Count -Descending | Select-Object -First 10 | ForEach-Object { "$($_.Name): $($_.Count) files" } | Out-String)

BY KEYWORD MATCHES:
$($allFiles | Where-Object KeywordsFound -ne '' | Group-Object KeywordsFound | Sort-Object Count -Descending | Select-Object -First 10 | ForEach-Object { "$($_.Name): $($_.Count) files" } | Out-String)

TOP 20 LARGEST FILES:
$($allFiles | Sort-Object SizeBytes -Descending | Select-Object -First 20 | ForEach-Object { "$($_.SizeMB) MB - $($_.FileName) [$($_.Drive):]" } | Out-String)

RECENT FILES (Last 30 Days):
$($allFiles | Where-Object { [datetime]$_.DateModified -gt (Get-Date).AddDays(-30) } | Select-Object -First 20 | ForEach-Object { "$($_.DateModified) - $($_.FileName)" } | Out-String)

NEXT STEPS:
1. Review the CSV files in Excel
2. Identify files you want to productize
3. Share ONLY the CSV files with your AI assistant
4. NEVER share actual file contents unless anonymized
5. Delete any CSV rows containing sensitive personal data
"@

$summary | Out-File -FilePath "$OutputDir\AUDIT_SUMMARY.txt" -Encoding UTF8

Write-Host "`n✅ AUDIT COMPLETE!" -ForegroundColor Green
Write-Host "==================" -ForegroundColor Green
Write-Host "Output location: $OutputDir" -ForegroundColor White
Write-Host "" -ForegroundColor White
Write-Host "Files created:" -ForegroundColor Yellow
Write-Host "  📄 I_drive_asset_inventory.csv" -ForegroundColor White
Write-Host "  📄 C_drive_asset_inventory.csv" -ForegroundColor White
Write-Host "  📄 AUDIT_SUMMARY.txt" -ForegroundColor White
Write-Host ""
Write-Host "⚠️  PRIVACY REMINDER:" -ForegroundColor Red -BackgroundColor Black
Write-Host "   • Review CSVs before sharing" -ForegroundColor Yellow
Write-Host "   • Delete any rows with personal/sensitive info" -ForegroundColor Yellow
Write-Host "   • NEVER upload actual file contents" -ForegroundColor Yellow
Write-Host "   • Only share the metadata CSV files" -ForegroundColor Yellow
