# == Class: cis_windows_level1_memberserver::administrative_templates
#
# Configures Administrative Templates
#

class cis_windows_level1_memberserver::administrative_templates {

  # Set Ensure Do not delete temp folders upon exit is set to Disabled
  # cis-ensure-do-not-delete-temp-folders-upon-exit-is-set-to-disabled-18.9.48.3.11.1
  registry_value { 'HKLM\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services\DeleteTempDirsOnExit':
    ensure => present,
    type   => dword,
    data   => '0'
  }

  # Set Ensure Do not use temporary folders per session is set to Disabled
  # cis-Ensure-do-not-use-temporary-folders-per-session-is-set-to-disabled-18.9.48.3.11.2
  registry_value { 'HKLM\Software\Policies\Microsoft\Windows NT\Terminal Services\PerSessionTempDir':
    ensure => present,
    type   => dword,
    data   => '0'
  }

    # 18.9.49.x key creation
  registry_key { 'HKLM\SOFTWARE\Policies\Microsoft\Internet Explorer\Feeds':
    ensure => present
  }

  # Set Ensure Prevent downloading of enclosures is set to Enabled
  # cis-ensure-prevent-downloading-of-enclosures-is-set-to-enabled-18.9.49.1
  registry_value { 'HKLM\SOFTWARE\Policies\Microsoft\Internet Explorer\Feeds\DisableEnclosureDownload':
    ensure => present,
    type   => dword,
    data   => '1'
  }

   # 18.9.54.x key creation
  registry_key { 'HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search':
    ensure => present
  }

  # Set Ensure Allow indexing of encrypted files is set to Disabled
  # cis-ensure-allow-indexing-of-encrypted-files-is-set-to-disabled-18.9.50.2
  registry_value { 'HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search\AllowIndexingEncryptedStoresOrItems':
    ensure => present,
    type   => dword,
    data   => '0'
  }

     # 18.9.54.x key creation
  registry_key { 'HKLM\Software\Policies\Microsoft\Windows\Skydrive':
    ensure => present
  }

  # Set Ensure Prevent the usage of SkyDrive for file storage is set to Enabled
  # cis-ensure-prevent-the-usage-of-SkyDrive-for-file-storage-is-set-to-enabled-18.9.54.1
  registry_value { 'HKLM\Software\Policies\Microsoft\Windows\Skydrive\DisableFileSync':
    ensure => present,
    type   => dword,
    data   => '1'
  }

   # 18.9.58.x key creation
  registry_key { 'HKLM\SOFTWARE\Policies\Microsoft\WindowsStore':
    ensure => present
  }


  # Set Ensure Turn off Automatic Download and Install of updates is set to Disabled
  # cis-ensure-turn-off-automatic-download-and-install-of-updates-is-set-to-disabled-18.9.58.1
  registry_value { 'HKLM\SOFTWARE\Policies\Microsoft\WindowsStore\AutoDownload':
    ensure => present,
    type   => dword,
    data   => '0'
  }

  # Set Ensure turn off the offer to update to the latest version of Windows is set to Enabled
  # cis-ensure-turn-off-the-offer-to-update-to-the-latest-version-of-Windows-is-set-to-enabled-18.9.58.2
  registry_value { 'HKLM\SOFTWARE\Policies\Microsoft\WindowsStore\DisableOSUpgrade':
    ensure => present,
    type   => dword,
    data   => '1'
  }

        # 18.9.67.x key creation
  registry_key { 'HKLM\SOFTWARE\Wow6432Node\Policies\Microsoft\Windows\Windows Error Reporting':
    ensure => present
  }

  registry_key { 'HKLM\SOFTWARE\Wow6432Node\Policies\Microsoft\Windows\Windows Error Reporting\consent':
    ensure => present
  }

  # Set Ensure Configure Default consent is set to Enabled: Always ask before sending data
  # cis-ensure-configure-default-consent-is-set-to-enabled-always-ask-before-sending data-18.9.67.2.1
  registry_value { 'HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting\Consent\DefaultConsent':
    ensure => present,
    type   => dword,
    data   => '1'
  }

  # Set Ensure Automatically send memory dumps for OS-generated error reports is set to Disabled
  # cis-ensure-automatically-send-memory-dumps-for-os-generated-error-reports-is-set-to-disabled-18.9.67.3
  registry_value { 'HKLM\SOFTWARE\Wow6432Node\Policies\Microsoft\Windows\Windows Error Reporting\AutoApproveOSDumps':
    ensure => present,
    type   => dword,
    data   => '0'
  }

      # 18.9.69.x key creation
  registry_key { 'HKLM\Software\Policies\Microsoft\Windows\Installer':
    ensure => present
  }

  # Set Ensure 'Allow user control over installs' is set to Disabled
  # cis-ensure-allow-user-control-over-installs-is-set-to-disabled-18.9.69.1
  registry_value { 'HKLM\Software\Policies\Microsoft\Windows\Installer\EnableUserControl':
    ensure => present,
    type   => dword,
    data   => '0'
  }

  # Set Ensure Always install with elevated privileges is set to Disabled
  # cis-ensure-always-install-with-elevated-privileges-is-set-to-18.9.69.2
  registry_value { 'HKLM\Software\Policies\Microsoft\Windows\Installer\AlwaysInstallElevated':
    ensure => present,
    type   => dword,
    data   => '0'
  }

   # 18.9.70.x key creation
  registry_key { 'HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System':
    ensure => present
  }

  # Set Ensure Sign-in last interactive user automatically after a system-initiated restart is set to Disabled
  # cis-ensure-sign-in-last-interactive-user-automatically-after-a-system-initiated-restart-is-set-to-disabled-18.9.70.1
  registry_value { 'HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System\DisableAutomaticRestartSignOn':
    ensure => present,
    type   => dword,
    data   => '0'
  }

    # 18.9.79.x key creation
  registry_key { 'HKLM\Software\Policies\Microsoft\Windows\PowerShell':
    ensure => present
  }

  registry_key { 'HKLM\Software\Policies\Microsoft\Windows\PowerShell\ScriptBlockLogging':
    ensure => present
  }

  registry_key { 'HKLM\Software\Policies\Microsoft\Windows\PowerShell\Transcription':
    ensure => present
  }

  # Set Ensure Turn on PowerShell Script Block Logging is set to Disabled
  # cis-ensure-turn-on-powershell-script-block-logging-is-set-to-disabled-18.9.79.1
  registry_value { 'HKLM\SOFTWARE\Policies\Microsoft\Windows\PowerShell\ScriptBlockLogging\EnableScriptBlockLogging':
    ensure => present,
    type   => dword,
    data   => '0'
  }

  # Set Ensure Turn on PowerShell Transcription is set to Disabled
  # cis-ensure-turn-on-powershell-transcription-is-set-to-disabled-18.9.79.2
  registry_value { 'HKLM\SOFTWARE\Policies\Microsoft\Windows\PowerShell\Transcription\EnableTranscripting':
    ensure => present,
    type   => dword,
    data   => '0'
  }

  # 18.9.81.1.x key creation
  registry_key { 'HKLM\Software\Policies\Microsoft\Windows\WinRM\Client':
    ensure => present
  }

  # Set Ensure Allow Basic authentication is set to Disabled
  # cis-ensure-allow-basic-authentication-is-set-to-disabled-18.9.81.1.1
  registry_value { 'HKLM\Software\Policies\Microsoft\Windows\WinRM\Client\AllowBasic':
    ensure => present,
    type   => dword,
    data   => '0'
  }

  # Set Ensure Allow unencrypted traffic is set to Disabled
  # cis-ensure-allow-unencrypted-traffic-is-set-to-disabled-18.9.81.1.2
  registry_value { 'HKLM\Software\Policies\Microsoft\Windows\WinRM\Client\AllowUnencryptedTraffic':
    ensure => present,
    type   => dword,
    data   => '0'
  }

  # Set Ensure Disallow Digest authentication is set to Enabled
  # cis-ensure-disallow-digest-authentication-is-set-to-enabled-18.9.81.1.3
  registry_value { 'HKLM\Software\Policies\Microsoft\Windows\WinRM\Client\AllowDigest':
    ensure => present,
    type   => dword,
    data   => '1'
  }

  # 18.9.81.2.x key creation
  registry_key { 'HKLM\Software\Policies\Microsoft\Windows\WinRM':
    ensure => present
  }

  registry_key { 'HKLM\Software\Policies\Microsoft\Windows\WinRM\Service':
    ensure => present
  }

  # Set Ensure Allow Basic authentication is set to Disabled
  # cis-ensure-allow-basic-authentication-is-set-to-disabled-18.9.81.2.1
  registry_value { 'HKLM\Software\Policies\Microsoft\Windows\WinRM\Service\AllowBasic':
    ensure => present,
    type   => dword,
    data   => '0'
  }

  # Set Ensure Allow unencrypted traffic is set to Disabled
  # cis-ensure-allow-unencrypted-traffic-is-set-to-disabled-18.9.81.2.2
  registry_value { 'HKLM\Software\Policies\Microsoft\Windows\WinRM\Service\AllowUnencryptedTraffic':
    ensure => present,
    type   => dword,
    data   => '0'
  }

  # Set Ensure Disallow WinRM from storing RunAs credentials is set to Enabled
  # cis-ensure-disallow-winrm-from-storing-runas-credentials-18.9.81.2.3
  registry_value { 'HKLM\Software\Policies\Microsoft\Windows\WinRM\Service\DisableRunAs':
    ensure => present,
    type   => dword,
    data   => '1'
  }

  # 18.1.x key creation
  registry_key { 'HKLM\Software\Policies\Microsoft\Windows\WindowsUpdate\AU':
    ensure => present
  }


  # Set Ensure Configure Automatic Updates is set to Enabled
  # cis-ensure-configure-automatic-updates-is-set-to-enabled-18.9.85.1
  registry_value { 'HKLM\Software\Policies\Microsoft\Windows\WindowsUpdate\AU\NoAutoUpdate':
    ensure => present,
    type   => dword,
    data   => '1'
  }

  # Set Ensure Configure Automatic Updates: Scheduled install Every day is set to 0 Every day
  # cis-ensure-configure-automatic-updates-Scheduled-install-every-day-18.9.85.2
  registry_value { 'HKLM\Software\Policies\Microsoft\Windows\WindowsUpdate\AU\ScheduledInstallDay':
    ensure => present,
    type   => dword,
    data   => '0'
  }

  # Set Ensure No auto-restart with logged on users for scheduled automatic updates installations is set to Disabled
  # cis-ensure-no-auto-restart-with-logged-on-users-18.9.85.3
  registry_value { 'HKLM\Software\Policies\Microsoft\Windows\WindowsUpdate\AU\NoAutoRebootWithLoggedOnUsers':
    ensure => present,
    type   => dword,
    data   => '0'
  }
}
