# Set the login banner title and message using the registry
# Bypass the execution policy for the current session
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass -Force

Write-Host "Execution policy bypassed for the current session." -ForegroundColor Yellow

# Define banner title and message
$bannerTitle = "Notice to All Users"
$bannerMessage = @"
This system is for authorized users only. All activities on this system are monitored and recorded.
By logging in, you acknowledge and consent to such monitoring.
Unauthorized access is prohibited and may be subject to criminal prosecution.
"@

# Registry path for login banner
$regPath = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System"

# Set the registry values
Set-ItemProperty -Path $regPath -Name "legalnoticecaption" -Value $bannerTitle
Set-ItemProperty -Path $regPath -Name "legalnoticetext" -Value $bannerMessage

# Output result
Write-Host "Login banner has been successfully set." -ForegroundColor Green
