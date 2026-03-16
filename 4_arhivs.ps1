$path = "$env:USERPROFILE\downloads" 
$include = @("*.pdf")
$files = Get-ChildItem -Path $path -Include $include -Recurse -File | where-object {$_.LastWriteTime -gt (Get-Date).AddHours(-48)}
compress-archive -Path $files -DestinationPath $env:USERPROFILE\documents\PDF_Backup.zip -Force


