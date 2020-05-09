configuration DCPromo
{ 
   param 
   ( 
        [Parameter(Mandatory)]
        [String]$DomainName,

        [Parameter(Mandatory)]
        [System.Management.Automation.PSCredential]$AdminCreds,


        [Int]$RetryCount=20,
        [Int]$RetryIntervalSec=30
    ) 
    Import-DscResource -ModuleName PSDesiredStateConfiguration
    Import-DscResource -ModuleName ActiveDirectoryDsc, StorageDsc

    [System.Management.Automation.PSCredential]$DomainCreds = New-Object System.Management.Automation.PSCredential ("$DomainName\$($AdminCreds.UserName)", $AdminCreds.Password)
    
    
    Node localhost
    {
        LocalConfigurationManager
        {
            ActionAfterReboot = 'ContinueConfiguration'
            ConfigurationMode = 'ApplyOnly'
            RebootNodeIfNeeded = $true
            AllowModuleOverWrite = $true
        }

        WaitforDisk Disk2
        {
             DiskId = 2
             RetryIntervalSec =$RetryIntervalSec
             RetryCount = $RetryCount
        }

        Disk ADDataDisk
        {
            DiskId = 2
            DriveLetter = 'F'
        }

        WindowsFeature ADDSInstall 
        { 
            Ensure = 'Present'
            Name = 'AD-Domain-Services'
        }  

        WindowsFeature ADDSTools
        { 
            Ensure = 'Present' 
            Name = 'RSAT-ADDS' 

            DependsOn = "[WindowsFeature]ADDSInstall"
        }

        WaitForADDomain WaitForForest
        {
            DomainName = $DomainName
            Credential = $DomainCreds
            RestartCount = $RetryCount
            WaitTimeout = 300

            DependsOn = "[WindowsFeature]ADDSTools"
        } 

        ADDomainController DCPromo 
        {
            DomainName = $DomainName
            Credential = $DomainCreds
            SafemodeAdministratorPassword = $DomainCreds
            DatabasePath = 'F:\NTDS'
            LogPath = 'F:\NTDS'
            SysvolPath = 'F:\SYSVOL'
            IsGlobalCatalog = $true

            DependsOn = "[WaitForADDomain]WaitForForest","[Disk]ADDataDisk"

        }

    }
}