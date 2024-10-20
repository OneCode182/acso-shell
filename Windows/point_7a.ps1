param (
    [string]$name,       # Nombre a buscar
    [string]$directory   # Directorio donde buscar
)

# Verificar si el directorio de búsqueda existe
if (-not (Test-Path $directory)) {
    Write-Host "El directorio $directory no existe."
    exit 1
}

# Combinar el directorio con el nombre para obtener la ruta completa
$path = Join-Path -Path $directory -ChildPath $name

# Verificar si la ruta existe
if (-not (Test-Path $path)) {
    Write-Host "El elemento $name no existe en el directorio $directory."
    exit 1
}

# Determinar si es un archivo, un directorio o "otra cosa"
if (Test-Path $path -PathType Leaf) {
    Write-Host "$name es un archivo en el directorio $directory."
} elseif (Test-Path $path -PathType Container) {
    Write-Host "$name es un subdirectorio en el directorio $directory."
} else {
    Write-Host "$name es otro tipo de elemento en el directorio $directory."
}

# Pause the script waiting for Enter
Write-Host "Press Enter to continue..." 
Read-Host