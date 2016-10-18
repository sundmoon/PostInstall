
# Save ConfigurationData in a file with .psd1 file extension


configuration LtPostInstall
{
  Import-DscResource -ModuleName 'PSDesiredStateConfiguration', 'Carbon'
  
  Import-DscResource -Name SystemLocale, xTimeZone, xRemoteDesktopAdmin

  # One can evaluate expressions to get the node list
  # E.g: $AllNodes.Where("Role -eq Web").NodeName
  node 'localhost'
  {
    # Call Resource Provider
    # E.g: WindowsFeature, File

    xRemoteDesktopAdmin EnableRDAdmin
    {
      Ensure = 'Present' 
      UserAuthentication = 'secure'
    }

    Carbon_firewallRule EnableRDPIn
    {
      Name = 'Remote Desktop - User Mode (TCP-In)'    
      Enabled = $true
      Ensure = 'Present'
      Profile = 'Domain', 'Private'
    }

    {
      Name = 'Remote Desktop - User Mode (UDP-In)'    
      Enabled = $true
      Ensure = 'Present'
      Profile = 'Domain', 'Private'
    }
  }
}

# ConfigurationName -configurationData <path to ConfigurationData (.psd1) file>
