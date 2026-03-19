$count = 100
$realtime = get-mpcomputerstatus
$antisign = get-mpcomputerstatus
$quickage = get-mpcomputerstatus
if ($realtime.RealTimeProtectionEnabled) { $count = 100 } else { $count -= 50 }
if ($antisign.AntivirusSignatureAge -eq 0 -and 1 -and 2 -and 3) { $count = 100 } else { $count -= 20 }
if ($quickage.QuickScanAge -eq 0 -and 1 -and 2 -and 3 -and 4 -and 5 -and 6 -and 7) { $count = 100 } else { $count -= 20 }
write-output "Sistemas drosibas reitings: $count / 100"