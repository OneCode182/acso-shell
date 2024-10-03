# Clear the screen
Clear-Host

# Print the number of lines in the specified directory
$profilePath = "C:\Windows\win.ini" 

# Check if the file exists
if (Test-Path $profilePath) {
    # Get the number of lines in the file
    $lineCount = Get-Content $profilePath | Measure-Object -Line
    Write-Host "The number of lines in the file '$($profilePath)' is: $($lineCount.Lines)"
} else {
    Write-Host "File not found: $profilePath"
}

# Pause the script waiting for Enter
Write-Host "Press Enter to continue..." 
Read-Host
