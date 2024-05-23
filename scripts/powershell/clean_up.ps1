param (
    [string]$hostname
)

if (-not $hostname) {
    $hostname = Read-Host -Prompt "Enter your hostname"
}

# Now you can use the provided hostname variable to construct the path
$basePath = "C:\cygwin64\home\$hostname\sandbox\cobol-source\bin"

# Change directory to the target directory
Set-Location -Path $basePath


# Check if the directory to be deleted exists
$directoryToDelete = "SubDirectoryToDelete"
if (Test-Path -Path $directoryToDelete -PathType Container) {
    # If directory exists, delete it
    Remove-Item -Path $directoryToDelete -Recurse -Force
    Write-Output "Directory '$directoryToDelete' deleted successfully."
}
else {
    # If directory doesn't exist, show an error message
    Write-Output "Directory '$directoryToDelete' not found."
}
