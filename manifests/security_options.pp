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
  registry::value { 'NoConnectedUser':
    key  => 'HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System',
    type => 'dword',
    data => 3,
  }

  # Set Ensure Accounts: Guest account status is set to Disabled
  # cis-accounts-guest-account-status-2.3.1.3
  local_security_policy { 'Accounts: Guest account status':
    ensure       => present,
    policy_value => '0',
  }

  # Set  Ensure Accounts: Limit local account use of blank passwords to console logon only is set to Enabled
  # cis-accounts-local-account-blank-passwords-2.3.1.4
  registry::value { 'LimitBlankPasswordUse':
    key  => 'HKLM\System\CurrentControlSet\Control\Lsa',
    type => 'dword',
    data => 1,
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
    policy_value => '1',
  }
  
  # Set Ensure Audit: Shut down system immediately if unable to log security audits is set to Disabled'
  # cis-shutdown-when-unable-to-log-audits-2.3.2.2
  registry::value { 'CrashOnAuditFail':
    key  => 'HKLM\System\CurrentControlSet\Control\Lsa',
    type => 'dword',
    data => 0,
  }


}
