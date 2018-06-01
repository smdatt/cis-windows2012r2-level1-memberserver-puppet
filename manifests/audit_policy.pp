# == Class: cis_windows_level1_memberserver::audit_policy
#
# Configures Advanced Audit Policy
#

class cis_windows_level1_memberserver::audit_policy {

  # Set Ensure Audit Credential Validation is set to Success and Failure
  # cis-audit-credential-validation-17.1.1
  auditpol { 'Credential Validation':
    success => 'enable',
    failure => 'enable',
  }

  # Set Ensure Audit Application Group Management is set to Success and Failure
  # cis-audit-application-group-management-17.2.1
  auditpol { 'Application Group Management':
    success => 'enable',
    failure => 'enable',
  }

  # Set Ensure Audit Computer Account Management is set to Success and Failure
  # cis-audit-computer-account-management-17.2.2
  auditpol { 'Computer Account Management':
    success => 'enable',
    failure => 'enable',
  }

  # Set Ensure Audit Other Account Management Events is set to Success and Failure
  # cis-audit-other-account-management-events-17.2.4
  auditpol { 'Other Account Management Events':
    success => 'enable',
    failure => 'enable',
  }

  # Set Ensure Audit Security Group Management is set to Success and Failure
  # cis-audit-security-group-management-17.2.5
  auditpol { 'Security Group Management':
    success => 'enable',
    failure => 'enable',
  }

  # Set Ensure Audit User Account Management is set to Success and Failure
  # cis-audit-user-account-management-17.2.6
  auditpol { 'User Account Management':
    success => 'enable',
    failure => 'enable',
  }

  # Set Ensure Audit Process Creation is set to Success
  # cis-audit-process-creation-17.3.1
  auditpol { 'Process Creation':
    success => 'enable',
    failure => 'disable',
  }

  # Set Ensure Audit Account Lockout is set to Success
  # cis-audit-account-lockout-17.5.1
  auditpol { 'Account Lockout':
    success => 'enable',
    failure => 'disable',
  }

  # Set Ensure Audit Logoff is set to Success
  # cis-audit-logoff-17.5.2
  auditpol { 'Logoff':
    success => 'enable',
    failure => 'disable',
  }

  # Set Ensure Audit Logon is set to Success and Failure
  # cis-audit-logon-17.5.3
  auditpol { 'Logon':
    success => 'enable',
    failure => 'enable',
  }

  # Set Ensure Audit Other Logon/Logoff Events is set to Success and Failure
  # cis-audit-other-logon-logoff-17.5.4
  auditpol { 'Other Logon/Logoff Events':
    success => 'enable',
    failure => 'enable',
  }

  # Set Ensure Audit Special Logon is set to Success
  # cis-audit-special-logon-17.5.5
  auditpol { 'Special Logon':
    success => 'enable',
    failure => 'disable',
  }

  # Set Ensure Audit Removable Storage is set to Success and Failure
  # cis-audit-removable-storage-17.6.1
  auditpol { 'Removable Storage':
    success => 'enable',
    failure => 'enable',
  }

  # Set Ensure Audit Policy Change is set to Success and Failure
  # cis-audit-audit-policy-change-17.7.1
  auditpol { 'Audit Policy Change':
    success => 'enable',
    failure => 'enable',
  }

  # Set Ensure Audit Authentication Policy Change is set to Success
  # cis-audit-audit-authentication-change-17.7.2
  auditpol { 'Authentication Policy Change':
    success => 'enable',
    failure => 'disable',
  }

  # Set Ensure Audit Sensitive Privilege Use is set to Success and Failure
  # cis-audit-sensitive-privilege-use-17.8.1
  auditpol { 'Sensitive Privilege Use':
    success => 'enable',
    failure => 'enable',
  }

  # Set Ensure Audit IPsec Driver is set to Success and Failure
  # cis-audit-ipsec-driver-17.9.1
  auditpol { 'IPsec Driver':
    success => 'enable',
    failure => 'enable',
  }

  # Set Ensure Audit Other System Events is set to Success and Failure
  # cis-audit-other-system-events-17.9.2
  auditpol { 'Other System Events':
    success => 'enable',
    failure => 'enable',
  }

  # Set Ensure Audit Security State Change is set to Success
  # cis-audit-security-state-change-17.9.3
  auditpol { 'Security State Change':
    success => 'enable',
    failure => 'disable',
  }

  # Set Ensure Audit Security System Extension is set to Success and Failure
  # cis-audit-security-system-extension-17.9.4
  auditpol { 'Security System Extension':
    success => 'enable',
    failure => 'enable',
  }

  # Set Ensure Audit System Integrity is set to Success and Failure
  # cis-audit-system-integrity-17.9.5
  auditpol { 'System Integrity':
    success => 'enable',
    failure => 'enable',
  }

}
