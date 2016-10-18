[CmdletBinding()]
param (
  [parameter()]$OutputPath = [IO.Path]::Combine($PSscriptRoot,'LtPostInstall'),
  [parameter()]$ConfigData = [IO.Path]::Combine($PSscriptRoot,'LtPostInstall.psd1')
)


#SetLocale -OutputPath $OutputPath -ConfigurationData $ConfigData

#SetLocale -ConfigurationData $ConfigData -Verbose

LtPostInstall -OutputPath  $OutputPath -ConfigData $ConfigData -Wait -Verbose