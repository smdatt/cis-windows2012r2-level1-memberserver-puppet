# == Class: cis_windows_level1_memberserver::security_options
#
# Configures security options
#
class cis_windows_level1_memberserver::security_options {

  # Set Ensure Accounts: Administrator account status is set to Disabled
  # cis-administrator-account-status-2.3.1.1
  local_security_policy { 'Accounts: Administrator account status':
    ensure       => present,
    policy_value => '0',
  }

  # Set Ensure Accounts: Block Microsoft accounts is set to Users can't add or log on with Microsoft accounts 
  # cis-block-microsoft-accounts-2.3.1.2
  local_security_policy { 'Accounts: Block Microsoft accounts':
    ensure       => present,
    policy_value => '3',
  }

  # Set Ensure Accounts: Guest account status is set to Disabled
  # cis-accounts-guest-account-status-2.3.1.3
  local_security_policy { 'Accounts: Guest account status':
    ensure       => present,
    policy_value => '0',
  }

  # Set  Ensure Accounts: Limit local account use of blank passwords to console logon only is set to Enabled
  # cis-accounts-local-account-blank-passwords-2.3.1.4
  local_security_policy { 'Accounts: Limit local account use of blank passwords to console logon only':
    ensure       => present,
    policy_value => '1',
  }

  # Set Configure Accounts: Rename administrator account
  # cis-rename-administrator-account-2.3.1.5
  local_security_policy { 'Accounts: Rename administrator account':
    ensure       => present,
    policy_value => 'Localadmin',
  }

  # Set Configure Accounts: Rename guest account
  # cis-rename-guest-account-2.3.1.6
  local_security_policy { 'Accounts: Rename guest account':
    ensure       => present,
    policy_value => 'Dummy',
  }

  # Set Ensure Audit: Force audit policy subcategory settings (Windows Vista or later) to override audit policy category settings' is set to 'Enabled'
  # cis-audit-subcateogory-override-2.3.2.1
  local_security_policy { 'Audit: Force audit policy subcategory settings (Windows Vista or later) to override audit policy category settings':
    ensure       => present,
    policy_value => '1'
  }

  # Set Ensure Audit: Shut down system immediately if unable to log security audits is set to Disabled'
  # cis-shutdown-when-unable-to-log-audits-2.3.2.2
  local_security_policy { 'Audit: Shut down system immediately if unable to log security audits':
    ensure       => present,
    policy_value => '0'
  }

  # Set Ensure Devices: Allowed to format and eject removable media is set to Administrators
  # cis-format-media-2.3.4.1
  local_security_policy { 'Devices: Allowed to format and eject removable media':
    ensure       => present,
    policy_value => '0'
  }

  # Set Ensure Devices: Prevent users from installing printer drivers is set to Enabled
  # cis-prevent-printer-drivers-2.3.4.2
  local_security_policy { 'Devices: Prevent users from installing printer drivers':
    ensure       => present,
    policy_value => '1'
  }

  # Set Ensure Domain member: Digitally encrypt or sign secure channel data (always) is set to Enabled
  # cis-encrypt-sign-channel-data-always-2.3.6.1
  local_security_policy { 'Domain member: Digitally encrypt or sign secure channel data (always)':
    ensure       => present,
    policy_value => '1'
  }

  # Set Ensure Domain member: Digitally encrypt secure channel data (when possible) is set to Enabled
  # cis-encrypt-channel-data-when-possible-2.3.6.2
  local_security_policy { 'Domain member: Digitally encrypt secure channel data (when possible)':
    ensure       => present,
    policy_value => '1'
  }

  # Set Ensure Domain member: Digitally sign secure channel data (when possible) is set to Enabled
  # cis-sign-channel-data-when-possible-2.3.6.3
  local_security_policy { 'Domain member: Digitally sign secure channel data (when possible)':
    ensure       => present,
    policy_value => '1'
  }

  # Set Ensure Domain member: Disable machine account password changes is set to Disabled
  # cis-disable-machine-password-changes-2.3.6.4
  local_security_policy { 'Domain member: Disable machine account password changes':
    ensure       => present,
    policy_value => '0'
  }

  # Set Ensure Domain member: Maximum machine account password age is set to 30 or fewer days, but not 0
  # cis-machine-account-password-age-2.3.6.5
  local_security_policy { 'Domain member: Maximum machine account password age':
    ensure       => present,
    policy_value => '5',
  }

  # Set Ensure Domain member: Require strong (Windows 2000 or later) session key is set to Enabled
  # cis-strong-session-key-2.3.6.6
  local_security_policy { 'Domain member: Require strong (Windows 2000 or later) session key':
    ensure       => present,
    policy_value => '1',
  }

  # Set Ensure Interactive logon: Do not display last user name is set to Enabled
  # cis-logon-dont-display-last-user-2.3.7.1
  local_security_policy { 'Interactive logon: Do not display last user name':
    ensure       => present,
    policy_value => '1',
  }

  # Set Ensure Interactive logon: Do not require CTRL+ALT+DEL is set to Disabled
  # cis-logon-ctrl-alt-del-2.3.7.2
  local_security_policy { 'Interactive logon: Do not require CTRL+ALT+DEL':
    ensure       => present,
    policy_value => '0',
  }

  # Set Ensure Interactive logon: Machine inactivity limit is set to 900 or fewer seconds but not 0
  # cis-logon-machine-inactivity-2.3.7.3
  local_security_policy { 'Interactive logon: Machine inactivity limit':
    ensure       => present,
    policy_value => '900',
  }

  # Set Ensure Interactive logon: Message text for users attempting to log on is not blank
  # cis-logon-message-text-2.3.7.4
  local_security_policy { 'Interactive logon: Message text for users attempting to log on':
    ensure       => present,
    policy_value => 'Legal notice text template',
  }

  # Set Ensure Interactive logon: Message title for users attempting to log on is not blank
  # cis-logon-message-title-2.3.7.5
  local_security_policy { 'Interactive logon: Message title for users attempting to log on':
    ensure       => present,
    policy_value => 'Legal notice title template',
  }
#SAFE
  # Set Ensure Interactive logon: Number of previous logons to cache (in case domain controller is not available) is set to 4 or fewer
  # cis-logon-cache-2.3.7.6
  local_security_policy { 'Interactive logon: Number of previous logons to cache (in case domain controller is not available)':
    ensure       => present,
    policy_value => '4',
  }

  # Set Ensure Interactive logon: Prompt user to change password before expiration is set to between 5 and 14 days
  # cis-logon-change-password-prompt-2.3.7.7
  local_security_policy { 'Interactive logon: Prompt user to change password before expiration':
    ensure       => present,
    policy_value => '7',
  }

  # Set Ensure Interactive logon: Require Domain Controller Authentication to unlock workstation is set to Enabled
  # cis-logon-require-domain-to-unlock-2.3.7.8
  local_security_policy { 'Interactive logon: Require Domain Controller authentication to unlock workstation':
    ensure       => present,
    policy_value => '1',
  }

  # Set Ensure Interactive logon: Smart card removal behavior is set to Lock Workstation
  # cis-logon-smartcard-removal-2.3.7.9
  local_security_policy { 'Interactive logon: Smart card removal behavior':
    ensure       => present,
    policy_value => '1',
  }

  # Set Ensure Microsoft network client: Digitally sign communications (always) is set to Enabled
  # cis-network-digital-sign-always-2.3.8.1
  local_security_policy { 'Microsoft network client: Digitally sign communications (always)':
    ensure       => present,
    policy_value => '1',
  }

  # Set Ensure Microsoft network client: Digitally sign communications (if server agrees) is set to Enabled
  # cis-network-digital-sign-agrees-2.3.8.2
  local_security_policy { 'Microsoft network client: Digitally sign communications (if server agrees)':
    ensure       => present,
    policy_value => '1',
  }

  # Set Ensure Microsoft network client: Send unencrypted password to third-party SMB servers is set to Disabled
  # cis-network-disable-unencrypted-smb-2.3.8.3
  local_security_policy { 'Microsoft network client: Send unencrypted password to third-party SMB servers':
    ensure       => present,
    policy_value => '0',
  }

  # Set Microsoft network server: Amount of idle time required before suspending session
  # cis-network-server-idle-before-suspend-2.3.9.1
  local_security_policy { 'Microsoft network server: Amount of idle time required before suspending session':
    ensure       => present,
    policy_value => '10',
  }

  # Set Ensure Microsoft network server: Digitally sign communications (always) is set to Enabled
  # cis-network-server-digital-sign-always-2.3.9.2
  local_security_policy { 'Microsoft network server: Digitally sign communications (always)':
    ensure       => present,
    policy_value => '1',
  }

  # Set Microsoft network server: Digitally sign communications (if client agrees) is set to Enabled
  # cis-network-server-digtial-asign-agrees-2.3.9.3
  local_security_policy { 'Microsoft network server: Digitally sign communications (if client agrees)':
    ensure       => present,
    policy_value => '1',
  }

  # Set Ensure Microsoft network server: Disconnect clients when logon hours expire is set to Enabled
  # cis-network-server-disconnect-clients-2.3.9.4
  local_security_policy { 'Microsoft network server: Disconnect clients when logon hours expire':
    ensure       => present,
    policy_value => '1',
  }

  # Set Ensure Microsoft network server: Server SPN target name validation level is set to Accept if provided by client
  # cis-network-server-spn-validation-level-2.3.9.5
  local_security_policy { 'Microsoft network server: Server SPN target name validation level':
    ensure       => present,
    policy_value => '1',
  }

  # Set Ensure Network access: Allow anonymous SID/Name translation is set to Disabled
  # cis-network-access-allow-anonymous-2.3.10.1
  local_security_policy { 'Network access: Allow anonymous SID/name translation':
    ensure       => present,
    policy_value => '0',
  }

  # Set Ensure Network access: Do not allow anonymous enumeration of SAM accounts is set to Enabled
  # cis-network-access-deny-anonymous-sam-2.3.10.2
  local_security_policy { 'Network access: Do not allow anonymous enumeration of SAM accounts':
    ensure       => present,
    policy_value => '1',
  }

  # Set Ensure Network access: Do not allow anonymous enumeration of SAM accounts and shares is set to Enabled
  # cis-network-access-deny-enumeration-of-sam-2.3.10.3
  local_security_policy { 'Network access: Do not allow anonymous enumeration of SAM accounts and shares':
    ensure       => present,
    policy_value => '1',
  }

  # This block will cause vagrant provision (after vagrant up) to fail, disabling
  # Set Ensure Network access: Do not allow storage of passwords and credentials for network authentication is set to Enabled
  # cis-network-access-deny-storage-of-passwords-2.3.10.4
  # local_security_policy { 'Network access: Do not allow storage of passwords and credentials for network authentication':
  # ensure       => present,
  # policy_value => '1',
  # }

  # Set Ensure Network access: Let Everyone permissions apply to anonymous users is set to Disabled
  # cis-network-access-deny-everyone-for-anon-2.3.10.5
  local_security_policy { 'Network access: Let Everyone permissions apply to anonymous users':
    ensure       => present,
    policy_value => '0',
  }

  # Configure Network access: Named Pipes that can be accessed anonymously
  # cis-network-access-named-pipes-anon-2.3.10.6
  local_security_policy { 'Network access: Named Pipes that can be accessed anonymously':
    ensure       => present,
    policy_value => [],
  }

  # Set Ensure Network access: Remotely accessible registry paths
  # cis-network-access-remote-registry-2.3.10.7]
  registry_value { 'HKLM\System\CurrentControlSet\Control\SecurePipeServers\Winreg\AllowedExactPaths\Machine':
  ensure => present,
  type   => array,
  data   => ['System\CurrentControlSet\Control\ProductOptions',
    'System\CurrentControlSet\Control\Server Applications',
    'Software\Microsoft\Windows NT\CurrentVersion',]
  }

  # Set Network access: Remotely accessible registry paths and sub-paths
  # cis-network-access-remote-registry-subpaths-2.3.10.8
  registry_value { 'HKLM\System\CurrentControlSet\Control\SecurePipeServers\Winreg\AllowedPaths\Machine':
    ensure => present,
    type   => array,
    data   => ['System\CurrentControlSet\Control\Print\Printers',
    'System\CurrentControlSet\Services\Eventlog',
    'Software\Microsoft\OLAP Server',
    'Software\Microsoft\Windows NT\CurrentVersion\Print',
    'Software\Microsoft\Windows NT\CurrentVersion\Windows',
    'System\CurrentControlSet\Control\ContentIndex',
    'System\CurrentControlSet\Control\Terminal Server',
    'System\CurrentControlSet\Control\Terminal Server\UserConfig',
    'System\CurrentControlSet\Control\Terminal Server\DefaultUserConfiguration',
    'Software\Microsoft\Windows NT\CurrentVersion\Perflib',
    'System\CurrentControlSet\Services\SysmonLog',]
  }

  # Set Network access: Restrict anonymous access to Named Pipes and Shares is set to Enabled
  # cis-network-access-restrict-name-pipes-2.3.10.9
  local_security_policy { 'Network access: Restrict anonymous access to Named Pipes and Shares':
    ensure       => present,
    policy_value => '1'
  }

  # Set Network access: Shares that can be accessed anonymously is set to None
  # cis-network-access-deny-anon-shares-2.3.10.10
  registry::value { 'NullSessionShares':
    key  => 'HKLM\System\CurrentControlSet\Services\LanManServer\Parameters',
    type => 'array',
    data => []
  }

  # Set Ensure Network access: Sharing and security model for local accounts is set to Classic - local users authenticate as themselves
  # cis-network-access-classic-security-for-local-accounts-2.3.10.11
  local_security_policy { 'Network access: Sharing and security model for local accounts':
    ensure       => present,
    policy_value => '0'
  }

  # Set Network security: Allow Local System to use computer identity for NTLM is set to Enabled
  # cis-network-security-local-system-ntlm-2.3.11.1
  local_security_policy { 'Network security: All Local System to use computer identity for NTLM':
    ensure       => present,
    policy_value => '1'
  }

  # Set Network security: Allow LocalSystem NULL session fallback is set to Disabled
  # cis-network-security-local-system-null-session-2.3.11.2 
  registry_value { 'HKLM\System\CurrentControlSet\Control\Lsa\MSV1_0\allownullsessionfallback':
    ensure => present,
    type   => dword,
    data   => '0'
  }

  # Set Ensure Network Security: Allow PKU2U authentication requests to this computer to use online identities is set to Disabled
  # cis-network-security-pku2u-auth-online-identities-2.3.11.3 
  registry::value { 'AllowOnlineID':
    key  => 'HKLM\System\CurrentControlSet\Control\Lsa\pku2u',
    type => 'dword',
    data => '0'
  }

  # Set Ensure Network Security: Configure encryption types allowed for Kerberos is set to RC4_HMAC_MD5, AES128_HMAC_SHA1, AES256_HMAC_SHA1, Future encryption types
  # cis-network-security-encryptions-types-for-kerberos-2.3.11.4
  registry::value { 'SupportedEncryptionTypes':
    key  => 'HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System\Kerberos\Parameters',
    type => 'dword',
    data => '2147483644'
  }

  # Set Ensure Network security: Do not store LAN Manager hash value on next password change is set to Enabled
  # cis-network-security-donot-store-lanmanger-hash-2.3.11.5
  local_security_policy { 'Network security: Do not store LAN Manager hash value on next password change':
    ensure       => present,
    policy_value => '1'
  }

  # Set Ensure Network security: Force logoff when logon hours expire is set to Enabled
  # cis-network-security-force-logoff-on-expire-2.3.11.6
  local_security_policy { 'Network security: Force logoff when logon hours expire':
    ensure       => present,
    policy_value => '1'
  }

  # Set Ensure Network security: LAN Manager authentication level is set to Send NTLMv2 response only. Refuse LM & NTLM
  # cis-network-security-lanmanager-auth-level-2.3.11.7
  local_security_policy { 'Network security: LAN Manager authentication level':
    ensure       => present,
    policy_value => '5'
  }

  # Set Network security: LDAP client signing requirements is set to Negotiate signing or higher
  # cis-network-security-ldap-signing-requirements-2.3.11.8
  local_security_policy { 'Network security: LDAP client signing requirements':
    ensure       => present,
    policy_value => '2'
  }

  # Set Ensure Network security: Minimum session security for NTLM SSP based (including secure RPC) clients is set to Require NTLMv2 session security, Require 128-bit encryption
  # cis-network-security-session-ntlm-ssp-clients-2.3.11.9
  local_security_policy { 'Network security: Minimum session security for NTLM SSP based (including secure RPC) clients':
    ensure       => present,
    policy_value => '537395200'
  }

  # Set Ensure Network security: Minimum session security for NTLM SSP based (including secure RPC) servers is set to Require NTLMv2 session security, Require 128-bit encryption
  # cis-network-security-session-ntlm-ssp-servers-2.3.11.10
  local_security_policy { 'Network security: Minimum session security for NTLM SSP based (including secure RPC) servers':
    ensure       => present,
    policy_value => '537395200'
  }

  # Set Ensure Shutdown: Allow system to be shut down without having to log on is set to Disabled
  # cis-shutdown-without-logon-2.3.13.1
  local_security_policy { 'Shutdown: Allow system to be shut down without having to log on':
    ensure       => present,
    policy_value => '0'
  }

  # Set Ensure System objects: Require case insensitivity for non-Windows subsystems is set to Enabled
  # cis-case-insensitive-for-non-subsystem-2.3.15.1
  local_security_policy { 'System objects: Require case insensitivity for non-Windows subsystems':
    ensure       => present,
    policy_value => '1'
  }

  # Set Ensure System objects: Strengthen default permissions of internal system objects (e.g. Symbolic Links) is set to Enabled
  # cis-strengthen-defaults-for-system-objects-2.3.15.2
  local_security_policy { 'System objects: Strengthen default permissions of internal system objects (e.g., Symbolic Links)':
    ensure       => present,
    policy_value => '1'
  }

  # Set Ensure User Account Control: Admin Approval Mode for the Built-in Administrator account is set to Enabled
  # cis-uac-admin-approval-mode-2.3.17.1
  local_security_policy { 'User Account Control: Admin Approval Mode for the Built-in Administrator account':
    ensure       => present,
    policy_value => '1'
  }

  # Set Ensure User Account Control: Allow UIAccess applications to prompt for elevation without using the secure desktop is set to Disabled 
  # cis-uac-application-prompt-for-elevation-2.3.17.2
  local_security_policy { 'User Account Control: Allow UIAccess applications to prompt for elevation without using the secure desktop':
    ensure       => present,
    policy_value => '0'
  }

  # Set Ensure User Account Control: Behavior of the elevation prompt for administrators in Admin Approval Mode is set to Prompt for consent on the secure desktop
  # cis-uac-elevation-prompt-behaviour-admins-2.3.17.3
  local_security_policy { 'User Account Control: Behavior of the elevation prompt for administrators in Admin Approval Mode':
    ensure       => present,
    policy_value => '2'
  }

  # Set Ensure User Account Control: Behavior of the elevation prompt for standard users is set to Automatically deny elevation requests
  # cis-uac-elevation-prompt-behaviour-standard-2.3.17.4
  local_security_policy { 'User Account Control: Behavior of the elevation prompt for standard users':
    ensure       => present,
    policy_value => '0'
  }

  # Set Ensure User Account Control: Detect application installations and prompt for elevation is set to Enabled
  # cis-uac-detect-app-installation-2.3.17.5
  local_security_policy { 'User Account Control: Detect application installations and prompt for elevation':
    ensure       => present,
    policy_value => '1'
  }

  # Set Ensure User Account Control: Only elevate UIAccess applications that are installed in secure locations is set to Enabled
  # cis-uac-only-evevate-secure-apps-2.3.17.6
  local_security_policy { 'User Account Control: Only elevate UIAccess applications that are installed in secure locations':
    ensure       => present,
    policy_value => '1'
  }

  # Set Ensure User Account Control: Run all administrators in Admin Approval Mode is set to Enabled
  # cis-uac-administrators-in-admin-mode-2.3.17.7
  local_security_policy { 'User Account Control: Run all administrators in Admin Approval Mode':
    ensure       => present,
    policy_value => '1'
  }

  # Set Ensure User Account Control: Switch to the secure desktop when prompting for elevation is set to Enabled
  # cis-uac-switch-to-secure-desktop-2.3.17.8
  local_security_policy { 'User Account Control: Switch to the secure desktop when prompting for elevation':
    ensure       => present,
    policy_value => '1'
  }

  # Set Ensure User Account Control: Virtualize file and registry write failures to per-user locations is set to Enabled
  # cis-uac-virtualize-file-and-registry-failures-2.3.17.9
  local_security_policy { 'User Account Control: Virtualize file and registry write failures to per-user locations':
    ensure       => present,
    policy_value => '1'
  }
}
