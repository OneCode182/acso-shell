# Clear the screen
Clear-Host

# Loop to create 5 users with descriptions
for ($i = 1; $i -le 5; $i++) {
    $username = "User$i"
    $description = "Description for User$i"
    
    # Create the user with the given username and description
    New-LocalUser -Name $username -Description $description -NoPassword
    
    # Print the result to confirm user creation
    Write-Host "Created user: $username with description: '$description'"
}

# Pause the script waiting for Enter
Write-Host "Press Enter to continue..." 
Read-Host