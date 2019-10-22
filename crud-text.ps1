Function CreateFile
{
    New-Item .\temp\test.txt
}

Function ReadFile
{
    Get-Content .\temp\test.txt
}

Function UpdateFile
{
    Set-Content .\temp\test.txt 'updated content'
}

Function DeleteFile
{
    Remove-Item -Path .\temp\test.txt
}

## Program starts here
try {
    CreateFile
}
catch {
    Write-Output "Could not create file"
}
try {
    ReadFile
}
catch {
    Write-Output "Could not read file"
}
try {
    UpdateFile
}
catch {
    Write-Output "Could not update file"
}
try {
    ReadFile
}
catch {
    Write-Output "Could not read file"
}
try {
    DeleteFile
}
catch {
    Write-Output "Could not delete file"
}



