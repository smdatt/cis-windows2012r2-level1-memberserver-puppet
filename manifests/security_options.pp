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
    ensure => present,
    policy_value => '1'
  }

  # Set Ensure Audit: Shut down system immediately if unable to log security audits is set to Disabled'
  # cis-shutdown-when-unable-to-log-audits-2.3.2.2
  local_security_policy { 'Audit: Shut down system immediately if unable to log security audits':
    ensure => present,
    policy_value => '0'
  }

  # Set Ensure Devices: Allowed to format and eject removable media is set to Administrators
  # cis-format-media-2.3.4.1
  local_security_policy { 'Devices: Allowed to format and eject removable media':
    ensure => present,
    policy_value => '0'
  }

  # Set Ensure Devices: Prevent users from installing printer drivers is set to Enabled
  # cis-prevent-printer-drivers-2.3.4.2
  local_security_policy { 'Devices: Prevent users from installing printer drivers':
    ensure => present,
    policy_value => '1'
  }

  # Set Ensure Domain member: Digitally encrypt or sign secure channel data (always) is set to Enabled
  # cis-encrypt-sign-channel-data-always-2.3.6.1
  local_security_policy { 'Domain member: Digitally encrypt or sign secure channel data (always)':
    ensure => present,
    policy_value => '1'
  }

  # Set Ensure Domain member: Digitally encrypt secure channel data (when possible) is set to Enabled
  # cis-encrypt-channel-data-when-possible-2.3.6.2
  local_security_policy { 'Domain member: Digitally encrypt secure channel data (when possible)':
    ensure => present,
    policy_value => '1'
  }

  # Set Ensure Domain member: Digitally sign secure channel data (when possible) is set to Enabled
  # cis-sign-channel-data-when-possible-2.3.6.3
  local_security_policy { 'Domain member: Digitally sign secure channel data (when possible)':
    ensure => present,
    policy_value => '1'
  }



  # Set Ensure Domain member: Disable machine account password changes is set to Disabled
  # cis-disable-machine-password-changes-2.3.6.4
  local_security_policy { 'Domain member: Disable machine account password changes':
    ensure => present,
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
}
