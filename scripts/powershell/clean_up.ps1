param (
    [string]$hostname
)

if (-not $hostname) {
    $hostname = Read-Host -Prompt "Enter your hostname"
}

$basePath = "C:\cygwin64\home\$hostname\sandbox\cobol-source"
$binPath = Join-Path -Path $basePath -ChildPath "bin"

# Check if the bin directory exists
if (Test-Path -Path $binPath -PathType Container) {
    Remove-Item -Path $binPath -Recurse -Force
    Write-Output "'bin' directory deleted successfully."
}
else {
    Write-Output "Directory 'bin' not found."
}

# Recreate the bin directory
New-Item -Path $binPath -ItemType Directory
Write-Output "'bin' directory created successfully."
