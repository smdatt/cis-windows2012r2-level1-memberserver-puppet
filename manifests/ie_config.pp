# == Class: cis_windows_level1_memberserver::ie_config
#
# Configures IE security settings
#
class cis_windows_level1_memberserver::ie_config {
  
  # IE 64-bit tab
  # windows_baseline: windows-ie-101
  registry::value { 'Isolation64Bit':
    key  => 'HKLM\Software\Policies\Microsoft\Internet Explorer\Main',
    type => 'dword',
    data => 1,
  }

  # Run antimalware programs against ActiveX controls
  # windows_baseline: windows-ie-102
  registry::value { '270C':
    key  => 'HKLM\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3',
    type => 'dword',
    data => 0,
  }
}
