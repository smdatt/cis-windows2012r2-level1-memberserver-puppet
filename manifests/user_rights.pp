# == Class: cis_windows_level1_memberserver::user_rights
#
# Configures user access local polocies
#
class cis_windows_level1_memberserver::user_rights {

  # Set Access Credential Manager as a trusted caller to No One
  # cis-access-cred-manager-2.2.1
  local_security_policy { 'Access Credential Manager as a trusted caller':
    ensure       => present,
    policy_value => 'S-1-0-0'
  }

  # Set Act as part of the operating system to No One
  # cis-act-as-os-2.2.3
  local_security_policy { 'Act as part of the operating system':
    ensure       => present,
    policy_value => 'S-1-0-0'
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
    policy_value => '*S-1-5-32-544, *S-1-5-32-555'
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
    ensure       => present,
    policy_value => '*S-1-5-32-544, *S-1-5-19'
  }

  # Set Ensure Change the time zone is set to Administratators, Local Service
  # cis-ensure-change-time-zone-2.2.10
  local_security_policy { 'Change the time zone':
    ensure       => present,
    policy_value => '*S-1-5-32-544, *S-1-5-19'
  }

  # Set Ensure Create a pagefile is set to Administrators
  # cis-allow-create-pagefile-2.2.11
  local_security_policy { 'Create a pagefile':
    ensure       => present,
    policy_value => '*S-1-5-32-544'
  }

  # Set Ensure Create a token object is set to No one
  # cis-allow-create-token-object-2.2.12
  local_security_policy { 'Create a token object':
    ensure       => present,
    policy_value => 'S-1-0-0'
  }

  # Set Ensure Create global objects is set to Administrators, Local Service, Network Service, Service
  # cis-allow-create-global-objects-2.2.13
  local_security_policy { 'Create global objects':
    ensure       => present,
    policy_value => '*S-1-5-32-544, *S-1-5-19, *S-1-5-20, *S-1-5-6'
  }

  # Set Ensure Create permentant shared objects is set to No one
  # cis-allow-create-shared-objects-2.2.14
  local_security_policy { 'Create permanent shared objects':
    ensure       => present,
    policy_value => 'S-1-0-0'
  }

  # Set Ensure Create Symblic links is net to Administrators
  # cis-allow-create-symbolic-links-2.2.15
  local_security_policy { 'Create symbolic links':
    ensure       => present,
    policy_value => '*S-1-5-32-544'
  }

  # Set Ensure Debug Programs is set to Administrators
  # cis-allow-debug-programs-2.2.16
  local_security_policy { 'Debug programs':
    ensure       => present,
    policy_value => '*S-1-5-32-544'
  }

  # Set Deny access from to this computer from the network
  # cis-deny-access-from-network-2.2.17
  local_security_policy { 'Deny access to this computer from the network':
    ensure       => present,
    policy_value => '*S-1-5-32-546, *S-1-2-0, S-1-5-32-544'
  }

  # Deny Log on as Batch Job should include Guests
  # cis-deny-logon-as-batch-job-guests-2.2.18
  local_security_policy { 'Deny log on as a batch job':
    ensure       => present,
    policy_value => '*S-1-5-32-546'
  }

  # Set Deny Log on as Service should include Guests
  # cis-deny-logon-as-service-guests-2.2.19
  local_security_policy { 'Deny log on as a service':
    ensure       => present,
    policy_value => '*S-1-5-32-546'
  }

  # Set Deny Log on Locally should include Guests
  # cis-deny-logon-locally-guests-2.2.20
  local_security_policy { 'Deny log on locally':
    ensure       => present,
    policy_value => '*S-1-5-32-546'
  }

  # Set Deny Log on through Remote Destkop Services
  # cis-deny-logon-RDS-2.2.21
  local_security_policy { 'Deny log on through Remote Desktop Services':
    ensure       => present,
    policy_value => '*S-1-5-32-546, *S-1-2-0'
  }

  # Set Enable computer and user accounts to be trusted for delegation
  # cis-enable-accounts-trusted-for-delegation-2.2.22
    local_security_policy { 'Enable computer and user accounts to be trusted for delegation':
    ensure       => present,
    policy_value => 'S-1-0-0'
  }

  # Set Allow Force shutdown from a remote system is set to Administrators
  # cis-allow-force-shutdown-2.2.23
  local_security_policy { 'Force shutdown from a remote system':
    ensure       => present,
    policy_value => '*S-1-5-32-544'
  }

  # Set Ensure Generate security audits set to Local Service, Network Service
  # cis-allow-generate-security-audits-2.2.24
  local_security_policy { 'Generate security audits':
    ensure       => present,
    policy_value => '*S-1-5-19, *S-1-5-20'
  }

  # Set Configure Impersonate a client after authentication
  # cis-configure-impersonate-client-2.2.25
  local_security_policy { 'Impersonate a client after authentication':
    ensure       => present,
    policy_value => '*S-1-5-32-544, *S-1-5-19, *S-1-5-20, *S-1-5-6'
  }

  # Set Ensure Increase Scheduling priority is set to Administrators
  # cis-increase-scheduling-priority-2.2.26
  local_security_policy { 'Increase scheduling priority':
    ensure       => present,
    policy_value => '*S-1-5-32-544'
  }

  # Set Ensure Load and unload device drives is set to Administrators
  # cis-load-unload-device-drivers-2.2.27
  local_security_policy { 'Load and unload device drivers':
    ensure       => present,
    policy_value => '*S-1-5-32-544'
  }

  # Set Ensure Lock pages in memory is set to No One
  # cis-lock-pages-in-memory-noone-2.2.28
  local_security_policy { 'Lock pages in memory':
    ensure       => present,
    policy_value => 'S-1-0-0'
  }

  # Set Configure Manage auditing and security log
  # cis-manage-auditing-security-log-2.2.30
  local_security_policy { 'Manage auditing and security log':
    ensure       => present,
    policy_value => '*S-1-5-32-544'
  }

  # Set Ensure Modify an object label is set to No One
  # cis-manage-object-label-noone-2.2.31
  local_security_policy { 'Modify an object label':
    ensure       => present,
    policy_value => 'S-1-0-0'
  }

  # Set Ensure Modify fireware evironment values is set to Administrators
  # cis-modify-fireware-environment-2.2.32
  local_security_policy { 'Modify firmware environment values':
    ensure       => present,
    policy_value => '*S-1-5-32-544'
  }

  # Set Ensure Perform volume maintenance task is set to Administrators
  # cis-perform-volume-maintaince-2.2.33
  local_security_policy { 'Perform volume maintenance tasks':
    ensure       => present,
    policy_value => '*S-1-5-32-544'
  }

  # Set Ensure Profile single process is set to Administrators
  # cis-profile-single-process-2.2.34
  local_security_policy { 'Profile single process':
    ensure       => present,
    policy_value => '*S-1-5-32-544'
  }

  # Set Ensure Profile system performance is set to Administrators and NT Service\WdiServiceHost
  # cis-profile-system-performance-2.2.35
  local_security_policy { 'Profile system performance':
    ensure       => present,
    policy_value => '*S-1-5-32-544, NT SERVICE\WdiServiceHost'
  }

  # Set Ensure Replace a progress level token is set to Local Service and Network Service
  # cis-replace-progress-level-token-2.2.36
  local_security_policy { 'Replace a process level token':
    ensure       => present,
    policy_value => '*S-1-5-19, *S-1-5-20'
  }

  # Set Ensure Restore files and directories set to Administrators
  # cis-restore-files-and-directories-2.2.37
  local_security_policy { 'Restore files and directories':
    ensure       => present,
    policy_value => '*S-1-5-32-544'
  }

  # Set Ensure the Shutdown the system is set to Administrators
  # cis-shutdown-the-system-2.2.38
  local_security_policy { 'Shut down the system':
    ensure       => present,
    policy_value => '*S-1-5-32-544'
  }

  # Set Ensure Take ownership of files or other objects is set to Administrators
  # cis-take-ownership-of-files-2.2.40 
  local_security_policy { 'Take ownership of files or other objects':
    ensure       => present,
    policy_value => '*S-1-5-32-544'
  }
}
