# == Class: cis_windows_level1_memberserver::windows_firewall
#
# Configures Windows Firewall
#

class cis_windows_level1_memberserver::windows_firewall {

  # Set Ensure Windows Firewall: Domain: Firewall state is set to On
  # cis-domain-firewall-on-9.1.1
  registry_value { 'HKLM\SYSTEM\CurrentControlSet\services\SharedAccess\Parameters\FirewallPolicy\DomainProfile\EnableFirewall':
    ensure => present,
    type   => dword,
    data   => '1'
  }

  # Set Ensure Windows Firewall: Domain: Inbound connections is set to Block
  # cis-domain-firewall-inbound-9.1.2
  registry_value { 'HKLM\SYSTEM\CurrentControlSet\services\SharedAccess\Parameters\FirewallPolicy\DomainProfile\DefaultInboundAction':
    ensure => present,
    type   => dword,
    data   => '1'
  }

  # Set Ensure Windows Firewall: Domain: Outbound connections is set to Allow
  # cis-domain-firewall-outbound-9.1.3
  registry_value { 'HKLM\SYSTEM\CurrentControlSet\services\SharedAccess\Parameters\FirewallPolicy\DomainProfile\DefaultOutboundAction':
    ensure => present,
    type   => dword,
    data   => '0'
  }

  # Set Ensure Windows Firewall: Domain: Outbound connections is set to Allow
  # cis-domain-firewall-notification-9.1.4 
  registry_value { 'HKLM\SYSTEM\CurrentControlSet\services\SharedAccess\Parameters\FirewallPolicy\DomainProfile\DisableNotifications':
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
  registry_value { 'HKLM\SYSTEM\CurrentControlSet\services\SharedAccess\Parameters\FirewallPolicy\DomainProfile\Logging\LogFilePath':
    ensure => present,
    type   => string,
    data   => '%SYSTEMROOT%\System32\logfiles\firewall\domainfw.log'
  }

  # Set Ensure Windows Firewall: Domain: Logging: Size limit (KB) is set to 16,384 KB or greater
  # cis-domain-firewall-logging-size-limit-9.1.8
  registry_value { 'HKLM\SYSTEM\CurrentControlSet\services\SharedAccess\Parameters\FirewallPolicy\DomainProfile\Logging\LogFileSize':
    ensure => present,
    type   => string,
    data   => '16384'
  }

  # Set Ensure Windows Firewall: Domain: Logging: Log dropped packets is set to Yes
  # cis-domain-firewall-log-dropped-packets-9.1.9
  registry_value { 'HKLM\SYSTEM\CurrentControlSet\services\SharedAccess\Parameters\FirewallPolicy\DomainProfile\Logging\LogDroppedPackets':
    ensure => present,
    type   => dword,
    data   => '1'
  }

  # Set Ensure Windows Firewall: Domain: Logging: Log successful connections is set to Yes
  # cis-domain-firewall-log-successful-connections-9.1.10
  registry_value { 'HKLM\SYSTEM\CurrentControlSet\services\SharedAccess\Parameters\FirewallPolicy\DomainProfile\Logging\LogSuccessfulConnections':
    ensure => present,
    type   => dword,
    data   => '1'
  }

  registry_value { 'HKLM\SYSTEM\CurrentControlSet\services\SharedAccess\Parameters\FirewallPolicy\PrivateProfile\EnableFirewall':
    ensure => present,
    type   => dword,
    data   => '1'
  }

  # Set Ensure Windows Firewall: Private: Inbound connections is set to Block
  # cis-private-firewall-inbound-9.2.2
  registry_value { 'HKLM\SYSTEM\CurrentControlSet\services\SharedAccess\Parameters\FirewallPolicy\PrivateProfile\DefaultInboundAction':
    ensure => present,
    type   => dword,
    data   => '1'
  }

  # Set Ensure Windows Firewall: Private: Outbound connections is set to Allow
  # cis-private-firewall-outbound-9.2.3
  registry_value { 'HKLM\SYSTEM\CurrentControlSet\services\SharedAccess\Parameters\FirewallPolicy\PrivateProfile\DefaultOutboundAction':
    ensure => present,
    type   => dword,
    data   => '0'
  }

  # Set Ensure Windows Firewall: Private: Outbound connections is set to Allow
  # cis-private-firewall-notification-9.2.4 
  registry_value { 'HKLM\SYSTEM\CurrentControlSet\services\SharedAccess\Parameters\FirewallPolicy\PrivateProfile\DisableNotifications':
    ensure => present,
    type   => dword,
    data   => '1'
  }

  # Set Ensure Windows Firewall: Private: Settings: Apply local firewall rules is set to Yes
  # cis-private-firewall-local-firewall-rules-9.2.5
  registry_value { 'HKLM\Software\Policies\Microsoft\WindowsFirewall\PrivateProfile\AllowLocalPolicyMerge':
    ensure => present,
    type   => dword,
    data   => '1'
  }

  # Set Ensure Windows Firewall: Private: Settings: Apply local connection security rules is set to Yes
  # cis-private-firewall-local-security-rules-9.2.6
  registry_value { 'HKLM\Software\Policies\Microsoft\WindowsFirewall\PrivateProfile\AllowLocalIPsecPolicyMerge':
    ensure => present,
    type   => dword,
    data   => '1'
  }

  # Set Ensure Windows Firewall: Private: Logging: Name is set to %SYSTEMROOT%\System32\logfiles\firewall\privatefw.log
  # cis-private-firewall-logging-name-9.2.7
  registry_value { 'HKLM\SYSTEM\CurrentControlSet\services\SharedAccess\Parameters\FirewallPolicy\PrivateProfile\Logging\LogFilePath':
    ensure => present,
    type   => string,
    data   => '%SYSTEMROOT%\System32\logfiles\firewall\privatefw.log'
  }

  # Set Ensure Windows Firewall: Private: Logging: Size limit (KB) is set to 16,384 KB or greater
  # cis-private-firewall-logging-size-limit-9.2.8
  registry_value { 'HKLM\SYSTEM\CurrentControlSet\services\SharedAccess\Parameters\FirewallPolicy\PrivateProfile\Logging\LogFileSize':
    ensure => present,
    type   => string,
    data   => '16384'
  }

  # Set Ensure Windows Firewall: Private: Logging: Log dropped packets is set to Yes
  # cis-private-firewall-log-dropped-packets-9.2.9
  registry_value { 'HKLM\SYSTEM\CurrentControlSet\services\SharedAccess\Parameters\FirewallPolicy\PrivateProfile\Logging\LogDroppedPackets':
    ensure => present,
    type   => dword,
    data   => '1'
  }

  # Set Ensure Windows Firewall: Private: Logging: Log successful connections is set to Yes
  # cis-private-firewall-log-successful-connections-9.2.10
  registry_value { 'HKLM\SYSTEM\CurrentControlSet\services\SharedAccess\Parameters\FirewallPolicy\PrivateProfile\Logging\LogSuccessfulConnections':
    ensure => present,
    type   => dword,
    data   => '1'
  }
}
