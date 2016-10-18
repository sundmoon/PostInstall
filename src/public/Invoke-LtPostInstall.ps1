<#
.Synopsis
   Short description
.DESCRIPTION
   Long description
.PARAMETER OutputPath
  Specifies the output path.
.PARAMETER ConfigData
  Specifies the config data.
.EXAMPLE
   Example of how to use this cmdlet
.EXAMPLE
   Another example of how to use this cmdlet
.INPUTS
   Inputs to this cmdlet (if any)
#>
function Invoke-LtPoistInstall {
[CmdletBinding()]
param (
  [parameter()]$OutputPath = [IO.Path]::Combine($PSscriptRoot,'LtPostInstall'),
  [parameter()]$ConfigData = [IO.Path]::Combine($PSscriptRoot,'LtPostInstall.psd1')
)
  #SetLocale -OutputPath $OutputPath -ConfigurationData $ConfigData

  #SetLocale -ConfigurationData $ConfigData -Verbose

  LtPostInstall -OutputPath  $OutputPath -ConfigData $ConfigData -Wait -Verbose

}

