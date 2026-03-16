Get-Process | where-object { $_.WorkingSet -gt 150000000 -and $_.ProcessName -NotLike 'msedge' } | select-object WS, Id, ProcessName | Out-File -FilePath $env:USERPROFILE\documents\Lielieprocesi.csv
