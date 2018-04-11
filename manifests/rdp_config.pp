# == Class: cis_windows_level1_memberserver::rdp_config
#
# Configures Remote Desktop security settings
#
class cis_windows_level1_memberserver::rdp_config {
  
  # Windows Remote Desktop Configured to Always Prompt for Password
  # windows_baseline: windows-rdp-100
  registry::value { 'RDP_PromptForPassword':
    key   => 'HKLM\Software\Policies\Microsoft\Windows NT\Terminal Services',
    value => 'fPromptForPassword',
    type  => 'dword',
    data  => 1,
  }

  # Strong Encryption for Windows Remote Desktop Required
  # windows_baseline: windows-rdp-101
  registry::value { 'RDP_MinEncryptionLevel':
    key   => 'HKLM\Software\Policies\Microsoft\Windows NT\Terminal Services',
    value => 'MinEncryptionLevel',
    type  => 'dword',
    data  => 3,
  }

}
