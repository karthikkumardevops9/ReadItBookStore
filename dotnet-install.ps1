# Define the download URL and file path
$downloadUrl = 'https://dotnet.microsoft.com/download/dotnet/thank-you/sdk-6.0.418-windows-x64-installer'
$installerPath = "$env:TEMP\dotnet-sdk-6.0.418-win-x64.exe"

# Download the installer
Invoke-WebRequest -Uri $downloadUrl -OutFile $installerPath

# Install .NET SDK using msiexec
Start-Process -Wait -FilePath msiexec -ArgumentList "/i $installerPath /quiet"

# Remove the downloaded installer
Remove-Item -Path $installerPath
