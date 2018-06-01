# == Class: cis_windows_level1_memberserver::windows_firewall
#
# Configures Windows Firewall
#
# Locations:
  # $profile = DomainProfile, PrivateProfile, PublicProfile
  # default values: HKLM\SYSTEM\ControlSet001\Services\SharedAccess\Defaults\FirewallPolicy\$profile\
  # user specified?: HKLM\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\$profile\
  # gpo: HKLM\SOFTWARE\Policies\Microsoft\WindowsFirewall\$profile\Logging\LogFilePath

class cis_windows_level1_memberserver::windows_firewall {

  # 9.1.x key creation
  registry_key { 'HKLM\Software\Policies\Microsoft\WindowsFirewall\DomainProfile':
    ensure => present
  }

  registry_key { 'HKLM\Software\Policies\Microsoft\WindowsFirewall\DomainProfile\Logging':
    ensure => present
  }

  # Set Ensure Windows Firewall: Domain: Firewall state is set to On
  # cis-domain-firewall-on-9.1.1
  registry_value { 'HKLM\Software\Policies\Microsoft\WindowsFirewall\DomainProfile\EnableFirewall':
    ensure => present,
    type   => dword,
    data   => '1'
  }

  # Set Ensure Windows Firewall: Domain: Inbound connections is set to Block
  # cis-domain-firewall-inbound-9.1.2
  registry_value { 'HKLM\Software\Policies\Microsoft\WindowsFirewall\DomainProfile\DefaultInboundAction':
    ensure => present,
    type   => dword,
    data   => 1
  }

  # Set Ensure Windows Firewall: Domain: Outbound connections is set to Allow
  # cis-domain-firewall-outbound-9.1.3
  registry_value { 'HKLM\Software\Policies\Microsoft\WindowsFirewall\DomainProfile\DefaultOutboundAction':
    ensure => present,
    type   => dword,
    data   => '0'
  }

  # Set Ensure Windows Firewall: Domain: Outbound connections is set to Allow
  # cis-domain-firewall-notification-9.1.4 
  registry_value { 'HKLM\Software\Policies\Microsoft\WindowsFirewall\DomainProfile\DisableNotifications':
    ensure => present,
    type   => dword,
    data   => '1'
  }

  # Set Ensure Windows Firewall: Domain: Settings: Apply local firewall rules is set to Yes
  # cis-domain-firewall-local-firewall-rules-9.1.5
  registry_value { 'HKLM\Software\Policies\Microsoft\WindowsFirewall\DomainProfile\AllowLocalPolicyMerge':
    ensure => present,
    type   => dword,
    data   => '1'
  }

  # Set Ensure Windows Firewall: Domain: Settings: Apply local connection security rules is set to Yes
  # cis-domain-firewall-local-security-rules-9.1.6
  registry_value { 'HKLM\Software\Policies\Microsoft\WindowsFirewall\DomainProfile\AllowLocalIPsecPolicyMerge':
    ensure => present,
    type   => dword,
    data   => '1'
  }

  # Set Ensure Windows Firewall: Domain: Logging: Name is set to %SYSTEMROOT%\System32\logfiles\firewall\domainfw.log
  # cis-domain-firewall-logging-name-9.1.7 
  registry_value { 'HKLM\SOFTWARE\Policies\Microsoft\WindowsFirewall\DomainProfile\Logging\LogFilePath':
    ensure => present,
    type   => string,
    data   => '%SYSTEMROOT%\System32\logfiles\firewall\domainfw.log'
  }

  # Set Ensure Windows Firewall: Domain: Logging: Size limit (KB) is set to 16,384 KB or greater
  # cis-domain-firewall-logging-size-limit-9.1.8
  registry_value { 'HKLM\SOFTWARE\Policies\Microsoft\WindowsFirewall\DomainProfile\Logging\LogFileSize':
    ensure => present,
    type   => dword,
    data   => '16384'
  }

  # Set Ensure Windows Firewall: Domain: Logging: Log dropped packets is set to Yes
  # cis-domain-firewall-log-dropped-packets-9.1.9
  registry_value { 'HKLM\SOFTWARE\Policies\Microsoft\WindowsFirewall\DomainProfile\Logging\LogDroppedPackets':
    ensure => present,
    type   => dword,
    data   => '1'
  }

  # Set Ensure Windows Firewall: Domain: Logging: Log successful connections is set to Yes
  # cis-domain-firewall-log-successful-connections-9.1.10
  registry_value { 'HKLM\SOFTWARE\Policies\Microsoft\WindowsFirewall\DomainProfile\Logging\LogSuccessfulConnections':
    ensure => present,
    type   => dword,
    data   => '1'
  }

  # 9.2.x key creation
  registry_key { 'HKLM\Software\Policies\Microsoft\WindowsFirewall\PrivateProfile':
    ensure => present
  }

  registry_key { 'HKLM\Software\Policies\Microsoft\WindowsFirewall\PrivateProfile\Logging':
    ensure => present
  }

  # Set Ensure Windows Firewall: Private: Firewall state is set to On
  # cis-private-firewall-on-9.2.1
  registry_value { 'HKLM\Software\Policies\Microsoft\WindowsFirewall\PrivateProfile\EnableFirewall':
    ensure => present,
    type   => dword,
    data   => '1'
  }

  # Set Ensure Windows Firewall: Domain: Inbound connections is set to Block
  # cis-private-firewall-inbound-9.2.2
  registry_value { 'HKLM\Software\Policies\Microsoft\WindowsFirewall\PrivateProfile\DefaultInboundAction':
    ensure => present,
    type   => dword,
    data   => '1'
  }

  # Set Ensure Windows Firewall: Domain: Outbound connections is set to Allow
  # cis-private-firewall-outbound-9.2.3
  registry_value { 'HKLM\Software\Policies\Microsoft\WindowsFirewall\PrivateProfile\DefaultOutboundAction':
    ensure => present,
    type   => dword,
    data   => '0'
  }

  # Set Ensure Windows Firewall: Domain: Outbound connections is set to Allow
  # cis-private-firewall-notification-9.2.4 
  registry_value { 'HKLM\Software\Policies\Microsoft\WindowsFirewall\PrivateProfile\DisableNotifications':
    ensure => present,
    type   => dword,
    data   => '1'
  }

  # Set Ensure Windows Firewall: Domain: Settings: Apply local firewall rules is set to Yes
  # cis-private-firewall-local-firewall-rules-9.2.5
  registry_value { 'HKLM\Software\Policies\Microsoft\WindowsFirewall\PrivateProfile\AllowLocalPolicyMerge':
    ensure => present,
    type   => dword,
    data   => '1'
  }

  # Set Ensure Windows Firewall: Domain: Settings: Apply local connection security rules is set to Yes
  # cis-private-firewall-local-security-rules-9.2.6
  registry_value { 'HKLM\Software\Policies\Microsoft\WindowsFirewall\PrivateProfile\AllowLocalIPsecPolicyMerge':
    ensure => present,
    type   => dword,
    data   => '1'
  }

  # Set Ensure Windows Firewall: Domain: Logging: Name is set to %SYSTEMROOT%\System32\logfiles\firewall\privatefw.log
  # cis-private-firewall-logging-name-9.2.7 
  registry_value { 'HKLM\SOFTWARE\Policies\Microsoft\WindowsFirewall\PrivateProfile\Logging\LogFilePath':
    ensure => present,
    type   => string,
    data   => '%SYSTEMROOT%\System32\logfiles\firewall\privatefw.log'
  }

  # Set Ensure Windows Firewall: Domain: Logging: Size limit (KB) is set to 16,384 KB or greater
  # cis-private-firewall-logging-size-limit-9.2.8
  registry_value { 'HKLM\SOFTWARE\Policies\Microsoft\WindowsFirewall\PrivateProfile\Logging\LogFileSize':
    ensure => present,
    type   => dword,
    data   => '16384'
  }

  # Set Ensure Windows Firewall: Domain: Logging: Log dropped packets is set to Yes
  # cis-private-firewall-log-dropped-packets-9.2.9
  registry_value { 'HKLM\SOFTWARE\Policies\Microsoft\WindowsFirewall\PrivateProfile\Logging\LogDroppedPackets':
    ensure => present,
    type   => dword,
    data   => '1'
  }

  # Set Ensure Windows Firewall: Domain: Logging: Log successful connections is set to Yes
  # cis-private-firewall-log-successful-connections-9.2.10
  registry_value { 'HKLM\SOFTWARE\Policies\Microsoft\WindowsFirewall\PrivateProfile\Logging\LogSuccessfulConnections':
    ensure => present,
    type   => dword,
    data   => '1'
  }

  # 9.2.x key creation
  registry_key { 'HKLM\Software\Policies\Microsoft\WindowsFirewall\PublicProfile':
    ensure => present
  }

  registry_key { 'HKLM\Software\Policies\Microsoft\WindowsFirewall\PublicProfile\Logging':
    ensure => present
  }

  # Set Ensure Windows Firewall: Public: Firewall state is set to On
  # cis-public-firewall-on-9.3.1
  registry_value { 'HKLM\Software\Policies\Microsoft\WindowsFirewall\PublicProfile\EnableFirewall':
    ensure => present,
    type   => dword,
    data   => '1'
  }

  # Set Ensure Windows Firewall: Public: Inbound connections is set to Block
  # cis-public-firewall-inbound-9.3.2
  registry_value { 'HKLM\Software\Policies\Microsoft\WindowsFirewall\PublicProfile\DefaultInboundAction':
    ensure => present,
    type   => dword,
    data   => '1'
  }

  # Set Ensure Windows Firewall: Public: Outbound connections is set to Allow
  # cis-public-firewall-outbound-9.3.3
  registry_value { 'HKLM\Software\Policies\Microsoft\WindowsFirewall\PublicProfile\DefaultOutboundAction':
    ensure => present,
    type   => dword,
    data   => '0'
  }

  # Set Ensure Windows Firewall: Public: Outbound connections is set to Allow
  # cis-public-firewall-notification-9.3.4 
  registry_value { 'HKLM\Software\Policies\Microsoft\WindowsFirewall\PublicProfile\DisableNotifications':
    ensure => present,
    type   => dword,
    data   => '1'
  }

  # Set Ensure Windows Firewall: Public: Settings: Apply local firewall rules is set to Yes
  # cis-public-firewall-local-firewall-rules-9.3.5
  registry_value { 'HKLM\Software\Policies\Microsoft\WindowsFirewall\PublicProfile\AllowLocalPolicyMerge':
    ensure => present,
    type   => dword,
    data   => '1'
  }

  # Set Ensure Windows Firewall: Public: Settings: Apply local connection security rules is set to Yes
  # cis-public-firewall-local-security-rules-9.3.6
  registry_value { 'HKLM\Software\Policies\Microsoft\WindowsFirewall\PublicProfile\AllowLocalIPsecPolicyMerge':
    ensure => present,
    type   => dword,
    data   => '1'
  }

  # Set Ensure Windows Firewall: Public: Logging: Name is set to %SYSTEMROOT%\System32\logfiles\firewall\priatefw.log
  # cis-public-firewall-logging-name-9.3.7 
  registry_value { 'HKLM\SOFTWARE\Policies\Microsoft\WindowsFirewall\PublicProfile\Logging\LogFilePath':
    ensure => present,
    type   => string,
    data   => '%SYSTEMROOT%\System32\logfiles\firewall\publicfw.log'
  }

  # Set Ensure Windows Firewall: Public: Logging: Size limit (KB) is set to 16,384 KB or greater
  # cis-public-firewall-logging-size-limit-9.3.8
  registry_value { 'HKLM\SOFTWARE\Policies\Microsoft\WindowsFirewall\PublicProfile\Logging\LogFileSize':
    ensure => present,
    type   => dword,
    data   => '16384'
  }

  # Set Ensure Windows Firewall: Public: Logging: Log dropped packets is set to Yes
  # cis-public-firewall-log-dropped-packets-9.3.9
  registry_value { 'HKLM\SOFTWARE\Policies\Microsoft\WindowsFirewall\PublicProfile\Logging\LogDroppedPackets':
    ensure => present,
    type   => dword,
    data   => '1'
  }

  # Set Ensure Windows Firewall: Public: Logging: Log successful connections is set to Yes
  # cis-public-firewall-log-successful-connections-9.3.10
  registry_value { 'HKLM\SOFTWARE\Policies\Microsoft\WindowsFirewall\PublicProfile\Logging\LogSuccessfulConnections':
    ensure => present,
    type   => dword,
    data   => '1'
  }
}
