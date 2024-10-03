function ShowMenu {
    Write-Host "=================================================="
    Write-Host "           + Powershell Scripts Menu +"            
    Write-Host "=================================================="
    Write-Host " 1.  Hello World ---------------- (point_1.ps1)"
    Write-Host " 2.  Number of lines in a file -- (point_2.ps1)"
    Write-Host " 3.  Search word in file -------- (point_3.ps1)"
    Write-Host " 4a. Create users --------------- (point_4a.ps1)"
    Write-Host " 4b. Users info ----------------- (point_4b.ps1)"
    Write-Host " 5.  File Permissions ----------- (point_5.ps1)"
    Write-Host " 7a. Check file or directory ---- (point_7a.ps1)"
    Write-Host " 7b. Check failed root logins --- (point_7b.ps1)"
    Write-Host " 0. Terminate"
    Write-Host "=================================================="
}

# Main loop for the menu
$exitMenu = $false
while (-not $exitMenu) {
    ShowMenu
    $choice = Read-Host "Choose an option"

    switch ($choice) {
        1 {
            & "./point_1.ps1"
        } 2 {
            & "./point_2.ps1"
        } 3 {
            # Request the user for the required parameters
            $word = Read-Host "Enter the word to search"
            $file = Read-Host "Enter the file name"

            # Run the script with the parameters
            & "./point_3.ps1" $word $file
        } 4b {
            & "./point_4b.ps1"
        } 0 {
            Write-Host "Exiting..."
            $exitMenu = $true
        }
        default {
            Write-Host "Invalid choice, please select a valid option."
        }
    }
}
