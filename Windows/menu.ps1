function ShowMenu {
    Write-Host "=================================================="
    Write-Host "           + Powershell Scripts Menu +"            
    Write-Host "=================================================="
    Write-Host " 1.  Hello World ---------------- (point_1.ps1)"
    Write-Host " 2.  Number of lines in a file -- (point_2.ps1)"
    Write-Host " 3.  Search word in file -------- (point_3.ps1)"
    Write-Host " 4a. Create users --------------- (point_4a.ps1)"
    Write-Host " 4b. Users info ----------------- (point_4b.ps1)"
    Write-Host " 4c. Delete default users ------- (point_4c.ps1)"
    Write-Host " 5.  File Permissions ----------- (point_5.ps1)"  
    Write-Host " 7a. Check file or directory ---- (point_7a.ps1)"
    Write-Host " 7b. Check failed root logins --- (point_7b.ps1)"
    Write-Host " 0.  Terminate"
    Write-Host "=================================================="
}

# Main loop for the menu
$exitMenu = $false
while (-not $exitMenu) {

    # Clear the screen
    #Clear-Host

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
        } 4a {
            & "./point_4a.ps1"
        } 4b {
            & "./point_4b.ps1"
        } 4c {
            & "./point_4c.ps1"
        } 5 {
            # Opción añadida para buscar archivos con permisos, con valores por defecto si se deja en blanco
            $dir = Read-Host "Introduce el directorio (Default: C:\Windows\INF)"
            $permission = Read-Host "Introduce los permisos (Default: FullControl)"

            # Usar valores predeterminados si el usuario no introduce ninguno
            if (-not $dir) { $dir = "C:\Windows\INF" }
            if (-not $permission) { $permission = "FullControl" }

            & "./point_5.ps1" -dir $dir -permission $permission
        } 7a {
            # Solicitar los dos parámetros requeridos por el script
            $name = Read-Host "Introduce el nombre del archivo o subdirectorio a buscar"
            $directory = Read-Host "Introduce el directorio donde buscar"

            # Ejecutar el script con los parámetros proporcionados
            & "./point_7a.ps1" -name $name -directory $directory
        } 7b {
            & "./point_7b.ps1"
        } 0 {
            Write-Host "Exiting..."
            $exitMenu = $true
        } default {
            Write-Host "Invalid choice, please select a valid option."
        }
    }
}
