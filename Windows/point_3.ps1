# Clear the screen
Clear-Host

# Check if both parameters are provided
if ($args.Count -ne 2) {
    Write-Host "Usage: ./script.ps1 <word> <filePath>"
    exit
}

# Assign parameters to variables
$word = $args[0]
$filePath = $args[1]

# Check if the file exists
if (Test-Path $filePath) {
    # Search for the word in the file
    $result = Select-String -Path $filePath -Pattern $word

    # Check if there are matches
    if ($result) {
        # Print the results of the search with line numbers
        Write-Host "The word '$word' was found in the following lines:"
        $result | ForEach-Object {
            # Display the line number and the content of the line
            Write-Host "$($_.LineNumber): $($_.Line)"
        }
    } else {
        Write-Host "The word '$word' was not found in the file."
    }
} else {
    Write-Host "File not found: $filePath"
}

# Pause the script waiting for Enter
Write-Host "Press Enter to continue..." 
Read-Host