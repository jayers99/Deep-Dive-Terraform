# on macOS
# non windows hosts can only run the netcore module
# install powershell core

# update powershell core
Uninstall-Module -Name AWSPowerShell.NetCore -AllVersions
# for some reason my mac had this install also
Uninstall-Module -Name AWSPowerShell -AllVersions

# install and import the module
Install-Module -Name AWSPowerShell.NetCore -AllowClobber
Import-Module -Name AWSPowerShell.NetCore
# test the install
Get-AWSPowerShellVersion
# setup credentials
Initialize-AWSDefaultConfiguration


# troubleshoot
# to just install it for the current user
# Install-Module -Scope CurrentUser -Name AWSPowerShell.NetCore -Force
Get-Module -ListAvailable
Get-Module -ListAvailable | grep 'AWSPowerShell'
$env:PSModulePath
dir /usr/local/share/powershell/Modules

# list all the commands in the module
Get-Command -Module AWSPowerShell.NetCore

