# TESTS
# Dir: C:\Users\Sergio Silva\Desktop\BACKUP

param (
    [string]$dir = "C:\Windows\INF",      # Directorio por defecto
    [string]$permission = "FullControl"   # Permiso por defecto
)

# Verificar si el directorio existe
if (-not (Test-Path $dir)) {
    Write-Host "El directorio $dir no existe."
    exit 1
}

# Inicializar contador de archivos
$counter = 0

# Obtener archivos en el directorio principal (sin recursión) y filtrar por permisos
Get-ChildItem $dir -File | ForEach-Object {
    $acl = Get-Acl -Path $_.FullName
    $permissions = $acl.Access | Where-Object { $_.FileSystemRights -like $permission }

    if ($permissions) {
        # Mostrar solo el nombre del archivo y los permisos
        $_ | Format-Table Name, @{Name="Permissions";Expression={($permissions | Select-Object -ExpandProperty FileSystemRights)}}
        $counter++
    }
}

# Mostrar la cantidad total de archivos con el permiso especificado
Write-Host "Cantidad total de archivos con el permiso '$permission' en el directorio '$dir': $counter"