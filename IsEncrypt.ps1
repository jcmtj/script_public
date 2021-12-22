Add-Type -AssemblyName System.Windows.Forms;
$dialog = New-Object System.Windows.Forms.FolderBrowserDialog;
if($dialog.ShowDialog() -eq [System.Windows.Forms.DialogResult]::OK)
{
    Write-Host ($dialog.SelectedPath);
}
else
{
    exit(1);
}
Get-ChildItem -File -Filter *.zip -Path $dialog.SelectedPath | ForEach-Object { .\IsEncrypt.bat $_.FullName }
