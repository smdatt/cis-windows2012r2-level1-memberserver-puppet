# == Class: cis_windows_level1_memberserver::account_lockout
#
# Configures account lockout thresholds and durations
#
class cis_windows_level1_memberserver::account_lockout {

  # Set Account lockout duration to 15 or more minutes
  # cis-account-lockout-duration-1.2.1
  local_security_policy { 'Account lockout duration':
    ensure       => present,
    policy_value => '15',
  }

  # Set Account lockout threshold to 10 or fewer invalid logon attempts but not 0
  # cis-account-lockout-threshold-1.2.2
  local_security_policy { 'Account lockout threshold':
    ensure       => present,
    policy_value => '9',
  }

  # Set Reset account lockout counter after to 15 or more minutes
  # cis-reset-account-lockout-1.2.3
  local_security_policy { 'Reset account lockout counter after':
    ensure       => present,
    policy_value => '15',
  }

}
