# == Class: cis_windows_level1_memberserver::audit_log_config
#
# Configures event auditing settings
#
class cis_windows_level1_memberserver::audit_log_config {

  # Configure System Event Log (Application)
  # windows_baseline: windows-audit-100
  registry::value { 'EventLog Appplication MaxSize':
    key   => 'HKLM\Software\Policies\Microsoft\Windows\EventLog\Application',
    value => 'MaxSize',
    data  => '1',
  }

  # Configure System Event Log (Security)
  # windows_baseline: windows-audit-102
  registry::value { 'EvenLog Security MaxSize':
    key   => 'HKLM\Software\Policies\Microsoft\Windows\EventLog\Security',
    value => 'MaxSize',
    data  => '1',
  }

  # Configure System Event Log (Setup)
  # windows_baseline: windows-audit-103
  registry::value { 'EvenLog Setup MaxSize':
    key   => 'HKLM\Software\Policies\Microsoft\Windows\EventLog\Setup',
    value => 'MaxSize',
    data  => '1',
  }

  # Configure System Event Log (System)
  # windows_baseline: windows-audit-104
  registry::value { 'EvenLog System MaxSize':
    key   => 'HKLM\Software\Policies\Microsoft\Windows\EventLog\System',
    value => 'MaxSize',
    data  => '1',
  }

  # Configure Account Logon Auditing
  # windows_baseline: windows-audit-201, windows-audit-202, windows-audit-203
  exec { 'Account Logon':
    command  => 'C:\windows\system32\auditpol.exe /set /category:"Account Logon" /success:enable /failure:enable',
    onlyif   => 'if ( (C:\windows\system32\auditpol.exe /get /category:"Account Logon" | Select -Last 2 | Select -Fist 1 | %{$setting=$_.ToString().Split(" ",[System.StringSplitOptions]::RemoveEmptyEntries); $setting[2]+" "+$setting[3]+" "+$setting[4]}) -eq "Success and Failure"){ exit 1 }',
    provider => 'powershell',
  }

  # Audit Application Group Management
  # windows_baseline: windows-audit-204
  exec { 'Application Group Management':
    command  => 'C:\windows\system32\auditpol.exe /set /subcategory:"Application Group Management" /success:enable /failure:enable',
    onlyif   => 'if ( (C:\windows\system32\auditpol.exe /get /subcategory:"Application Group Management" | Select -Last 2 | Select -Fist 1 | %{$setting=$_.ToString().Split(" ",[System.StringSplitOptions]::RemoveEmptyEntries); $setting[3]+" "+$setting[4]+" "+$setting[5]}) -eq "Success and Failure"){ exit 1 }',
    provider => 'powershell',
  }

  # Audit Computer Account Management
  # windows_baseline: windows-audit-205
  exec { 'Computer Account Management':
    command  => 'C:\windows\system32\auditpol.exe /set /subcategory:"Computer Account Management" /success:enable /failure:enable',
    onlyif   => 'if ( (C:\windows\system32\auditpol.exe /get /subcategory:"Computer Account Management" | Select -Last 2 | Select -Fist 1 | %{$setting=$_.ToString().Split(" ",[System.StringSplitOptions]::RemoveEmptyEntries); $setting[3]+" "+$setting[4]+" "+$setting[5]}) -eq "Success and Failure"){ exit 1 }',
    provider => 'powershell',
  }

  # Audit Distributed Group Management
  # windows_baseline: windows-audit-206
  exec { 'Distribution Group Management':
    command  => 'C:\windows\system32\auditpol.exe /set /subcategory:"Distribution Group Management" /success:enable /failure:enable',
    onlyif   => 'if ( (C:\windows\system32\auditpol.exe /get /subcategory:"Distribution Group Management" | Select -Last 2 | Select -Fist 1 | %{$setting=$_.ToString().Split(" ",[System.StringSplitOptions]::RemoveEmptyEntries); $setting[3]+" "+$setting[4]+" "+$setting[5]}) -eq "Success and Failure"){ exit 1 }',
    provider => 'powershell',
  }

}
