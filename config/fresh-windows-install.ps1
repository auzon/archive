winget install --id Chocolatey.Chocolatey -e --silent --accept-source-agreements --accept-package-agreements

# Refresh environment so choco is available in the same script
$env:Path += ";$env:ALLUSERSPROFILE\chocolatey\bin"

choco install nvidia-app -y

winget uninstall --id Chocolatey.Chocolatey -e --silent --accept-source-agreements --accept-package-agreements

$packages = @(
    "Brave.Brave",
    "7zip.7zip",
    "Microsoft.DirectX",
    "Discord.Discord",
    "Git.Git",
    "qBittorrent.qBittorrent",
    "Canonical.Ubuntu"
    "SublimeHQ.SublimeText.4"
)

foreach ($pkg in $packages) {
    winget install --id $pkg -e --silent --accept-source-agreements --accept-package-agreements
}

$monikers = @(
    "vcredist2005x64",
    "vcredist2005x86",
    "vcredist2008x64",
    "vcredist2008x86",
    "vcredist2010x64",
    "vcredist2010x86",
    "vcredist2012x64",
    "vcredist2012x86",
    "vcredist2013x64",
    "vcredist2013x86",
    "vcredistx64",
    "vcredistx86",
    "dotnet-desktop-6",
    "dotnet-desktop-8",
    "temurin-jdk-25",
    "temurin-jre-25",
    "google-drive",
    "python3",
    "postman",
    "bcuninstaller",
    "nodejs"
)

foreach ($mnk in $monikers) {
    winget install --moniker $mnk -e --silent --accept-source-agreements --accept-package-agreements
}
