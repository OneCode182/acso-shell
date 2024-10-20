# Clear the screen
Clear-Host

# Check if running with admin rights
if (-not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    # If not running as admin, relaunch the script with elevated privileges
    Write-Host "This script needs to be run as administrator. Relaunching with elevated privileges..."
    Start-Process powershell -Verb RunAs -ArgumentList ("-NoProfile", "-ExecutionPolicy", "Bypass", "-File", $MyInvocation.MyCommand.Path)
    exit
}

# List of users to delete
$usersToDelete = @("User1", "User2", "User3", "User4", "User5")

# Loop through the list and delete each user
foreach ($user in $usersToDelete) {
    # Check if the user exists
    if (Get-LocalUser -Name $user -ErrorAction SilentlyContinue) {
        # Delete the user
        Remove-LocalUser -Name $user
        Write-Host "Deleted user: $user"
    } else {
        Write-Host "User $user does not exist."
    }
}

# Pause the script waiting for Enter
Write-Host "Press Enter to continue..." 
Read-Host