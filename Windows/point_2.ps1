# Clear the screen
Clear-Host

# Print the number of lines in the specified directory
$profilePath = "C:\Windows\System32\drivers\etc\hosts" 

# Check if the file exists
if (Test-Path $profilePath) {
    # Get all the lines in the file
    $lines = Get-Content $profilePath
    
    # Count total lines, including empty lines
    $totalLines = $lines.Count


    # Print results
    Write-Host "In the file '$($profilePath)',"
    Write-Host "the total number of lines is: $totalLines"

} else {
    Write-Host "File not found: $profilePath"
}

# Pause the script waiting for Enter
Write-Host "Press Enter to continue..." 
Read-Host