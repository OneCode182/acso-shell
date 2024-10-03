# Extracts local users and their descriptions, and saves the result to a file
Get-LocalUser | Select-Object Name, Description | Format-Table > users_info.txt

# Inform the user that the information has been saved
Write-Host "Users have been saved in 'users_info.txt'"

# Ask the user if they want to view the content of the file
$viewFile = Read-Host "Do you want to view the content of 'users_info.txt'? (y/n)"

# If the user inputs 'y', show the content of the file
if ($viewFile -eq 'y') {
    Get-Content users_info.txt | Write-Host
}

# Pause the script waiting for Enter
Write-Host "Press Enter to continue..." 
Read-Host