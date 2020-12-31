$Folders = @('TestFolder1', 'TestFolder2', 'TestFolder3', 'TestFolder4', 'TestFolder5')
$PathToFolders = 'C:\Test\'
$PathToNewFile = 'C:\Test\'
$FileName = 'TestFile.txt'
$BacFileName = $Filename + '.old'
foreach ($Folder in $Folders){
    if (Test-Path $PathToFolders\$Folder\$FileName) {
        Rename-Item -Path $PathToFolders\$Folder\$FileName -NewName $NewFileName
        Copy-Item $PathToNew\$BacFileName -Destination $PathToFolders\$Folder\
        }
    else {
        Copy-Item $PathToNew\$BacFileName -Destination $PathToFolders\$Folder\
        }
    }