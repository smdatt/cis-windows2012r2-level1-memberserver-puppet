# == Class: cis_windows_level1_memberserver::user_rights
#
# Configures user access local polocies
#
class cis_windows_level1_memberserver::user_rights {

  # Set Access Credential Manager as a trusted caller to No One
  # cis-access-cred-manager-2.2.1
  local_security_policy { 'Access Credential Manager as a trusted caller':
    ensure       => present,
    policy_value => '*S-1-0-0'
  }

  # Set Act as part of the operating system to No One
  # cis-act-as-os-2.2.3
  local_security_policy { 'Act as part of the operating system':
    ensure       => present,
    policy_value => '*S-1-0-0'
  }

  # Set Adjust memory quotas for a process to Administrators, Local Service, Network Service
  # cis-adjust-memory-quotas-2.2.5
  local_security_policy { 'Adjust memory quotas for a process':
    ensure       => present,
    policy_value => '*S-1-5-32-544, *S-1-5-19, *S-1-5-20'
  }

  # Set Allow log on locally to Administrators
  # cis-allow-login-locally-2.2.6
  local_security_policy { 'Allow log on locally':
    ensure       => present,
    policy_value => '*S-1-5-32-544'
  }

  # Set Allow log on through remote desktop services
  # cis-allow-login-rds-2.2.7
  local_security_policy { 'Allow log on through Remote Desktop Services':
    ensure       => present,
    policy_value => '*S-1-5-32-555'
  }

  # Set Ensure 'Back up files and directories' is set to Administrators
  # cis-ensure-backup-files-2.2.8
  local_security_policy { 'Back up files and directories':
    ensure       => present,
    policy_value => '*S-1-5-32-544'
  }

  # Set Ensure 'Change the system time' is set to Administrators, Local Service
  # cis-ensure-change-system-time-2.2.9
  local_security_policy { 'Change the system time':
    ensure => present,
    policy_value => '*S-1-5-32-544, *S-1-5-19'
  }

  # Set Ensure Change the time zone is set to Administratators, Local Service
  # cis-ensure-change-time-zone-2.2.10
  local_security_policy { 'Change the time zone':
    ensure => present,
    policy_value => '*S-1-5-32-544, *S-1-5-19'
  }

  # Set Ensure Create a pagefile is set to Administrators
  # cis-allow-create-pagefile-2.2.11
  local_security_policy { 'Create a pagefile':
    ensure => present,
    policy_value => '*S-1-5-32-544'
  }
}
