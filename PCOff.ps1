# Файл с доменными именами ПК
$pcListFile = "C:\Path\To\pc_list.txt"

# Чтение списка ПК из файла
$pcList = Get-Content -Path $pcListFile

foreach ($pc in $pcList) {

    Start-Process -FilePath "shutdown.exe" -ArgumentList "/m \\$pc /s /t 0" -WindowStyle Hidden
}
