# Clear the screen
Clear-Host

# Ask if users should have admin rights (y/n)
$adminRights = Read-Host "Do you want to grant admin rights to the users? (y/n)"

# Check for valid input
if ($adminRights -eq "y" -or $adminRights -eq "n") {
    
    # Loop to create 5 users with descriptions
    for ($i = 1; $i -le 5; $i++) {
        $username = "Usuario_$i"
        $description = "Description for User$i"
        
        # Create the user with the given username and description
        New-LocalUser -Name $username -Description $description -NoPassword
        
        # Add the user to the 'Users' group
        Add-LocalGroupMember -Group 'Users' -Member $username
        Write-Host "User $username has been added to the 'Users' group."

        # If admin rights were requested, add the user to the Administrators group
        if ($adminRights -eq "y") {
            Add-LocalGroupMember -Group 'Administrators' -Member $username
            Write-Host "Granted admin rights to: $username"
        }
        
        # Print the result to confirm user creation
        Write-Host "Created user: $username with description: '$description'"
    }
    
} else {
    Write-Host "Invalid input. Please run the script again and enter 'y' or 'n'."
}

# Pause the script waiting for Enter
Write-Host "Press Enter to continue..." 
Read-Host