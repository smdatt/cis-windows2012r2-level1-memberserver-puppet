# == Class: cis_windows_level1_memberserver::access_config
#
# Configures powershell security setttings
#
class cis_windows_level1_memberserver::powershell {
  
  # Enabling PowerShell script block logging will record detailed information from the processing of PowerShell commands and scripts
  # windows_baseline: powershell-script-blocklogging
  registry::value { 'EnableScriptBlockLogging':
    key   => 'HKLM\Software\Policies\Microsoft\Windows\PowerShell\ScriptBlockLogging',
    value => 'EnableScriptBlockLogging',
    type  => 'dword',
    data  => 0,
  }

  # Transcription creates a unique record of every PowerShell session, including all input and output, exactly as it appears in the session.
  # windows_baseline: powershell-transcription
  registry::value { 'Powershell_Transcription':
    key   => 'HKLM\Software\Policies\Microsoft\Windows\PowerShell\Transcription',
    value => 'EnableTranscripting',
    type  => 'dword',
    data  => 0,
  }

}
