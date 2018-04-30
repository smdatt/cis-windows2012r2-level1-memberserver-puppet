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
}