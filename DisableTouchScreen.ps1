if (-Not ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    if ([int](Get-CimInstance -Class Win32_OperatingSystem | Select-Object -ExpandProperty BuildNumber) -ge 6000) {
        Start-Process PowerShell -Verb RunAs -ArgumentList "-NoProfile -ExecutionPolicy Bypass -Command `"cd '$pwd'; & '$PSCommandPath';`"";
        Exit;
    }
}
# Place your script here
Write-Output 'Toggling the touch screen'
Get-PnpDevice | Where-Object {$_.FriendlyName -like '*touch screen*'} | Enable-PnpDevice -Confirm:$false
Get-PnpDevice | Where-Object {$_.FriendlyName -like '*touch screen*'} | Disable-PnpDevice -Confirm:$false