
@{
  AllNodes    = @(
    @{
      NodeName = 'localhost'
      Locale   = 'ru-RU'
      TimeZone = 'Russian Standard Time'
    }
  )
  NonNodeData = @{
    ConfigFileContents = 'this is contents'
  }
}

<#
@{
    AllNodes = @(
        @{
            NodeName = 'Node1'
            Role = 'WebServer'
            },
        @{
            NodeName = 'Node2'
            Role = 'SQLServer'
            },
        @{
            NodeName = 'Node3'
            Role = 'WebServer'
            }
    )
}
#>