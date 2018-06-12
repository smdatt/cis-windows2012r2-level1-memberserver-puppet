# == Class: cis_windows_level1_memberserver::administrative_templates
#
# Configures Administrative Templates
#

class cis_windows_level1_memberserver::administrative_templates {

  # Set Ensure 'MSS: (DisableIPSourceRouting) IP source routing protection level (protects against packet spoofing) is set to Enabled
  # cis-ensure-mss-disableipsourcerouting-ip-source-routing-protection-level-protects-against-packet-spoofing-is-set-to-enabled-18.3.3
  registry_value { 'HKLM\System\CurrentControlSet\Services\Tcpip\Parameters\DisableIPSourceRouting':
    ensure => present,
    type   => dword,
    data   => '1'
  }

  # Set Ensure MSS EnableICMPRedirect Allow ICMP redirects to override OSPF generated routes is set to Disabled
  # cis-ensure-mss-enableicmpredirect-allow-icmp-redirects-to-override-ospf-generated-routes-is-set-to-disabled-18.3.4
  registry_value { 'HKLM\System\CurrentControlSet\Services\Tcpip\Parameters\EnableICMPRedirect':
    ensure => present,
    type   => dword,
    data   => '0'
  }

  # Set Ensure MSS: (NoNameReleaseOnDemand) Allow the computer to ignore NetBIOS name release requests except from WINS servers
  # cis-ensure-mss-nonamereleaseondemand-allow-the-computer-to-ignore-netbios-name-release-requests-except-from-winsservers-18.3.6
  registry_value { 'HKLM\System\CurrentControlSet\Services\NetBT\Parameters\nonamereleaseondemand':
    ensure => present,
    type   => dword,
    data   => '1'
  }

    # Set Ensure MSS: (SafeDllSearchMode) Enable Safe DLL search mode (recommended) is set to Enabled
  # cis-ensure-mss-safedllsearchmode-enable-safe-dll-search-mode-recommended-is-set-to-enabled-18.3.8
  registry_value { 'HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\SafeDllSearchMode':
    ensure => present,
    type   => dword,
    data   => '1'
  }

  # Set Ensure MSS: (ScreenSaverGracePeriod) The time in seconds before the screen saver grace period expires is set to Enabled: 5 or fewer seconds
  # cis-ensure-mss-screensavergraceperiod-the-time-in-seconds-before-the-screen-saver-grace-period-expires-18.3.9
  registry_value { 'HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon\ScreenSaverGracePeriod':
    ensure => present,
    type   => dword,
    data   => '1'
  }

  # Set Ensure 'MSS: (WarningLevel) Percentage threshold for the security event log at which the system will generate a warning is Enabled
  # cis-ensure-mss-WarningLevel-percentage-threshold-for-the-security-event-log-at-which-the-system-will-generate-a-warning-18.3.12
  registry_value { 'HKLM\SYSTEM\CurrentControlSet\Services\Eventlog\Security\WarningLevel':
    ensure => present,
    type   => dword,
    data   => '1'
  }

  # Set Ensure Prohibit installation and configuration of Network Bridge on your DNS domain network is set to Enabled
  # cis-ensure-prohibit-installation-and-configuration-of-network-bridge-on-yourdns-domain-network-is-set-to-enabled-18.4.10.2
  registry_value { 'HKLM\SOFTWARE\Policies\Microsoft\Windows\Network Connections\NC_AllowNetBridge_NLA':
    ensure => present,
    type   => dword,
    data   => '1'
  }

  # Set Ensure Require domain users to elevate when setting a networks locationis set to Enabled
  # cis-ensure-require-domain-users-to-elevate-when-setting-a-networks-location-is-set-to-enabled-18.4.10.3
  registry_value { 'HKLM\Software\Policies\Microsoft\Windows\Network Connections\NC_StdDomainUserSetLocation':
    ensure => present, 
    type   => dword,
    data   => '1'
  }

  # 18.4.13.x key creation
  registry_key { 'HKLM\SOFTWARE\Policies\Microsoft\Windows\NetworkProvider\HardenedPaths':
    ensure => present
  }

  # Set Ensure Hardened UNC Paths is set to Enabled with Require Mutual Authentication
  # cis-ensure-hardened-unc-paths-is-set-to-enabled-with-require-mutual-authentication-18.4.13.1
  registry_value { 'HKLM\SOFTWARE\Policies\Microsoft\Windows\NetworkProvider\HardenedPaths\\\*\NETLOGON':
    ensure => present,
    type   => dword,
    data   => '1'
  }

    registry_value { 'HKLM\SOFTWARE\Policies\Microsoft\Windows\NetworkProvider\HardenedPaths\\\*\SYSVOL':
    ensure => present,
    type   => dword,
    data   => '1'
  }

  # 18.4.20.x key creation
  registry_key { 'HKLM\Software\Policies\Microsoft\Windows\WcmSvc\GroupPolicy':
    ensure => present
  }

  # Set Ensure Minimize the number of simultaneous connections to the Internet or a Windows Domain is set to Enabled
  # cis-Ensure-minimize-the-number-of-simultaneous-connections-to-the-internet-or-a-windows-domain-is-set-to-enabled-18.4.20.1
  registry_value { 'HKLM\Software\Policies\Microsoft\Windows\WcmSvc\GroupPolicy\fMinimizeConnections':
    ensure => present,
    type   => dword,
    data   => '1'
  }

  # 18.6.x key creation
  registry_key { 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System':
    ensure => present
  }

  # Set Ensure Apply UAC restrictions to local accounts on network logons is set to Enabled
  # cis-Ensure-apply-uac-restrictions-to-local-accounts-on-network-logons-is-set-to-enabled-18.6.1
  registry_value { 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System\LocalAccountTokenFilterPolicy':
    ensure => present,
    type   => dword,
    data   => '1'
  }

  # Set Ensure WDigest Authentication is set to Disabled
  # cis-ensure-wdigest-authentication-is-set-to-disabled-18.6.2
  registry_value { 'HKLM\SYSTEM\CurrentControlSet\Control\SecurityProviders\WDigest\UseLogonCredential':
    ensure => present,
    type   => dword,
    data   => '0'
  }

  # Set Ensure Include command line in process creation events is set to Disabled
  # cis-ensure-include-command-line-in-process-creation-events-is-set-to-disabled-18.8.2.1
  registry_value { 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System\Audit\ProcessCreationIncludeCmdLine_Enabled':
    ensure => present,
    type   => dword,
    data   => '0'
  }

  # 18.8.11.x key creation
  registry_key { 'HKLM\System\CurrentControlSet\Policies\EarlyLaunch':
    ensure => present
  }

  # Set Ensure Boot-Start Driver Initialization Policy is set to Enabled: Good unknown and bad but critical
  # cis-ensure-boot-start-driver-initialization-policy-is-set-to-enabled-good-unknown-and-bad-but-critical-18.8.11.1
  registry_value { 'HKLM\System\CurrentControlSet\Policies\EarlyLaunch\DriverLoadPolicy':
    ensure => present,
    type   => dword,
    data   => '1'
  }

  # 18.8.18.x key creation
  registry_key { 'HKLM\Software\Policies\Microsoft\Windows\Group Policy\{35378EAC-683F-11D2-A89A-00C04FBBCFA2}':
    ensure => present
  }

  # Set Ensure Configure registry policy processing: Do not apply during periodic background processing is set to Enabled: FALSE
  # cis-ensure-configure-registry-policy-processing-do-not-apply-during-periodic-background-processing-is-set-to-enabled-false-18.8.18.2
  registry_value { 'HKLM\Software\Policies\Microsoft\Windows\Group Policy\{35378EAC-683F-11D2-A89A-00C04FBBCFA2}\NoBackgroundPolicy':
    ensure => present,
    type   => dword,
    data   => '0'
  }

  # Set Ensure Configure registry policy processing: Process even if the Group Policy objects have not changed is set to Enabled: TRUE
  # cis-ensure-configure-registry-policy-processing-process-even-if-the-group-policy-objects-have-not-changed-is-set-to-enabled-true-18.8.18.3
  registry_value { 'HKLM\Software\Policies\Microsoft\Windows\Group Policy\{35378EAC-683F-11D2-A89A-00C04FBBCFA2}\NoGPOListChanges':
    ensure => present,
    type   => dword,
    data   => '1'
  }

  # Set Ensure Turn off background refresh of Group Policy is set to Disabled
  # cis-ensure-turn-off-background-refresh-of-group-policy-is-set-to-Disabled-18.8.18.4
  registry_value { 'HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System\DisableBkGndGroupPolicy':
    ensure => present,
    type   => dword,
    data   => '0'
  }

  # Set Ensure Do not display network selection UI is set to Enabled
  # cis-ensure-do-not-display-network-selection-ui-is-set-to-enabled-18.8.24.1
  registry_value { 'HKLM\Software\Policies\Microsoft\Windows\System\DontDisplayNetworkSelectionUI':
    ensure => present,
    type   => dword,
    data   => '0'
  }

  # Set Ensure Do not enumerate connected users on domain-joined computers is set to Enabled
  # cis-ensure-do-not-enumerate-connected-users-on-domain-joined-computers-is-set-to-enabled-18.8.24.2
  registry_value { 'HKLM\Software\Policies\Microsoft\Windows\System\DontEnumerateConnectedUsers':
    ensure => present,
    type   => dword,
    data   => '0'
  }

  # Set Ensure Enumerate local users on domain-joined computers is set to Disabled
  # cis-ensure-enumerate-local-users-on-domain-joined-computers-is-set-to-disabled-18.8.24.3
  registry_value { 'HKLM\Software\Policies\Microsoft\Windows\System\EnumerateLocalUsers':
    ensure => present,
    type   => dword,
    data   => '0'
  }

  # Set Ensure Turn off app notifications on the lock screen is set to Enabled
  # cis-ensure-turn-off-app-notifications-on-the-lock-screen-is-set-to-enabled-18.8.24.4
  registry_value { 'HKLM\Software\Policies\Microsoft\Windows\System\DisableLockScreenAppNotifications':
    ensure => present,
    type   => dword,
    data   => '1'
  }

  # Set Ensure Turn on convenience PIN sign-in is set to Disabled
  # cis-Ensure-turn-on-convenience-pin-sign-in-is-set-to-disabled-18.8.24.5
  registry_value { 'HKLM\Software\Policies\Microsoft\Windows\System\AllowDomainPINLogon':
    ensure => present,
    type   => dword,
    data   => '0'
  }

  # Set Ensure Configure Offer Remote Assistance is set to Disabled
  # cis-ensure-configure-offer-remote-assistance-is-set-to-disabled-18.8.30.1
  registry_value { 'HKLM\Software\policies\Microsoft\Windows NT\Terminal Services\fAllowUnsolicited':
    ensure => present,
    type   => dword,
    data   => '0'
  }

  # Set Ensure Configure Solicited Remote Assistance is set to Disabled
  # cis-ensure-configure-solicited-remote-assistance-is-set-to-disabled-18.8.30.2
  registry_value { 'HKLM\Software\policies\Microsoft\Windows NT\Terminal Services\fAllowToGetHelp':
    ensure => present,
    type   => dword,
    data   => '0'
  }

  # 18.8.31.x key creation
  registry_key { 'HKLM\Software\Policies\Microsoft\Windows NT\Rpc':
    ensure => present
  }

  # Set Ensure Enable RPC Endpoint Mapper Client Authentication is set to Enabled
  # cis-ensure-enable-rpc-endpoint-mapper-client-authentication-is-set-to-enabled-18.8.31.1
  registry_value { 'HKLM\Software\Policies\Microsoft\Windows NT\Rpc\EnableAuthEpResolution':
    ensure => present,
    type   => dword,
    data   => '1'
  }

  # Ensure Allow Microsoft accounts to be optional is set to Enabled
  # cis-allow-microsoft-accounts-to-be-optional-is-set-to-enabled-18.9.6.1
  registry_value { 'HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System\MSAOptional':
    ensure => present,
    type   => dword,
    data   => '1'
  }

  # Set Ensure Disallow Autoplay for non-volume devices is set to Enabled
  # cis-ensure-disallow-autoplay-for-non-volume-devices-is-set-to-enabled-18.9.8.1
  registry_value { 'HKLM\Software\Policies\Microsoft\Windows\Explorer\NoAutoplayfornonVolume':
    ensure => present,
    type   => dword,
    data   => '1'
  }

  # Set Ensure Set the default behavior for AutoRun is set to Enabled: Do not execute any autorun commands
  # cis-ensure-set-the-default-behavior-for-autoRun-is-set-to-enabled-do-not-execute-any-autorun-commands-18.9.8.2
  registry_value { 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoAutorun':
    ensure => present,
    type   => dword,
    data   => '1'
  }

  # Set Ensure Turn off Autoplay is set to Enabled: All drives
  # cis-ensure-turn-off-autoplay-is-set-to-enabled-all-drives-18.9.8.3
  registry_value { 'HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoDriveTypeAutoRun':
    ensure => present,
    type   => dword,
    data   => '1'
  }

  # 18.9.13.x key creation
  registry_key { 'HKLM\Software\Policies\Microsoft\Windows\CredUI':
    ensure => present
  }

  registry_key { 'HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\CredUI':
    ensure => present
  }


  # Set Ensure Do not display the password reveal button is set to Enabled
  # cis-ensure-do-not-display-the-password-reveal-button-is-set-to-enabled-18.9.13.1
  registry_value { 'HKLM\Software\Policies\Microsoft\Windows\CredUI\DisablePasswordReveal':
    ensure => present,
    type   => dword,
    data   => '1'
  }

  # Set Ensure Enumerate administrator accounts on elevation is set to Disabled
  # cis-ensure-enumerate-administrator-accounts-on-elevation-is-set-to-disabled-18.9.13.2
  registry_value { 'HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\CredUI\EnumerateAdministrators':
    ensure => present,
    type   => dword,
    data   => '0'
  }

  # 18.9.22.x key creation
  registry_key { 'HKLM\Software\Policies\Microsoft\EMET\SysSettings':
    ensure => present
  }

  registry_key { 'HKLM\Software\Policies\Microsoft\EMET\Defaults':
    ensure => present
  }

  # Set Ensure EMET 5.5 or higher is installed
  # cis-ensure-emet-5.5-or-higher-is-installed-18.9.22.1
  #include chocolatey
  #package { 'emet':
     #ensure   => installed,
     #provider => 'chocolatey',
  # }
  
  # Set Ensure Default Action and Mitigation Settings is set to Enabled (plus subsettings)
  # cis-ensure-default-action-and-mitigation-settings-is-set-to-enabled-18.9.22.2
  registry_value { 'HKLM\Software\Policies\Microsoft\EMET\SysSettings\AntiDetours':
    ensure => present,
    type   => dword,
    data   => '1'
  }

   registry_value { 'HKLM\Software\Policies\Microsoft\EMET\SysSettings\BannedFunctions':
    ensure => present,
    type   => dword,
    data   => '1'
  }

   registry_value { 'HKLM\Software\Policies\Microsoft\EMET\SysSettings\DeepHooks':
    ensure => present,
    type   => dword,
    data   => '1'
  }

   registry_value { 'HKLM\Software\Policies\Microsoft\EMET\SysSettings\ExploitAction':
    ensure => present,
    type   => dword,
    data   => '1'
  }

  # Set Ensure Default Protections for Internet Explorer is set to Enabled
  # cis-ensure-default-protections-for-internet-explorer-is-set-to-Enabled-18.9.22.3
  registry_value { 'HKLM\Software\Policies\Microsoft\EMET\Defaults\IE':
    ensure => present,
    type   => dword,
    data   => '1'
  }

  # Set Ensure Default Protections for Popular Software is set to Enabled
  # cis-ensure-default-protections-for-popular-software-is-set-to-Enabled-18.9.22.4
  registry_value { 'HKLM\Software\Policies\Microsoft\EMET\Defaults':
    ensure => present,
    type   => dword,
    data   => '1'
  }

  # Set Ensure Default Protections for Recommended Software is set to Enabled
  # cis-ensure-default-protections-for-recommended-software-is-set-to-enabled-18.9.22.5
  #registry_value { 'HKLM\Software\Policies\Microsoft\EMET\Defaults':
   # ensure => present,
   # type   => dword,
   # data   => '1'
 # }
  
  # Set Ensure System ASLR is set to Enabled: Application Opt-In
  # cis-Ensure-system-aslr-is-set-to-enabled-application-opt-in-18.9.22.6
  registry_value { 'HKLM\Software\Policies\Microsoft\EMET\SysSettings\ASLR':
    ensure => present,
    type   => dword,
    data   => '1'
  }

  # Set Ensure System DEP is set to Enabled: Application Opt-Out
  # cis-ensure-system-dep-is-set-to-enabled-application-opt-out-18.9.22.7
  registry_value { 'HKLM\Software\Policies\Microsoft\EMET\SysSettings\DEP':
    ensure => present,
    type   => dword,
    data   => '1'
  }

  # Set Ensure System SEHOP is set to Enabled: Application Opt-Out
  # cis-ensure-system-sehop-is-set-to-enabled-application-opt-out-18.9.22.8
  registry_value { 'HKLM\Software\Policies\Microsoft\EMET\SysSettings\SEHOP':
    ensure => present,
    type   => dword,
    data   => '1'
  }

  # 18.9.24.1.x key creation
  registry_key { 'HKLM\Software\Policies\Microsoft\Windows\EventLog\Application':
    ensure => present
  }

  # Set Ensure Application: Control Event Log behavior when the log file reaches its maximum size is set to Disabled
  # cis-ensure-application-control-event-log-behavior-when-the-log-file-reaches-its-maximum-size-is-set-to-disabled-18.9.24.1.1
  registry_value { 'HKLM\Software\Policies\Microsoft\Windows\EventLog\Application\Retention':
    ensure => present,
    type   => dword,
    data   => '0'
  }

  # Set Ensure Application: Specify the maximum log file size (KB) is set to Enabled: 32,768 or greater
  # cis-ensure-application-specify-the-maximum-log-file-size-KB-is-set-to-enabled-32768-or-greater-18.9.24.1.2
  registry_value { 'HKLM\Software\Policies\Microsoft\Windows\EventLog\Application\MaxSize':
    ensure => present,
    type   => dword,
    data   => '32768'
  }

  # 18.9.24.2.x key creation
  registry_key { 'HKLM\Software\Policies\Microsoft\Windows\EventLog\Security':
    ensure => present
  }

  # Set Ensure Security: Control Event Log behavior when the log file reaches its maximum size is set to Disabled
  # cis-ensure-security-control-event-log-behavior-when-the-log-file-reaches-its-maximum-size-is-set-to-disabled-18.9.24.2.1
  registry_value { 'HKLM\Software\Policies\Microsoft\Windows\EventLog\Security\Retention':
    ensure => present,
    type   => dword,
    data   => '0'
  }

  # Set Ensure Security: Specify the maximum log file size (KB) is set to Enabled: 196,608 or greater
  # cis-ensure-security-specify-the-maximum-log-file-size-KB-is-set-to-enabled-18.9.24.2.2
  registry_value { 'HKLM\Software\Policies\Microsoft\Windows\EventLog\Security\MaxSize':
    ensure => present,
    type   => dword,
    data   => '196608'
  }

  # 18.9.24.3.x key creation
  registry_key { 'HKLM\Software\Policies\Microsoft\Windows\EventLog\Setup':
    ensure => present
  }

  # Set Ensure Setup: Control Event Log behavior when the log file reaches its maximum size is set to Disabled
  # cis-ensure-setup-control-event-log-behavior-when-the-log-file-reaches-its-maximum-size-is-set-to-disabled-18.9.24.3.1
  registry_value { 'HKLM\Software\Policies\Microsoft\Windows\EventLog\Setup\Retention':
    ensure => present,
    type   => dword,
    data   => '0'
  }

  # Set Ensure Setup: Specify the maximum log file size (KB) is set to Enabled: 32,768 or greater
  # cis-ensure-setup-specify-the-maximum-log-file-size-KB-is-set-to-enabled-18.9.24.3.2
  registry_value { 'HKLM\Software\Policies\Microsoft\Windows\EventLog\Setup\MaxSize':
    ensure => present,
    type   => dword,
    data   => '32768'
  }

  # 18.9.24.4.x key creation
  registry_key { 'HKLM\Software\Policies\Microsoft\Windows\EventLog\System':
    ensure => present
  }

  # Set Ensure System: Control Event Log behavior when the log file reaches its maximum size is set to Disabled
  # cis-ensure-system-control-event-log-behavior-when-the-log-file-reaches-its-maximum-size-is-set-to-disabled-18.9.24.4.1
  registry_value { 'HKLM\Software\Policies\Microsoft\Windows\EventLog\System\Retention':
    ensure => present,
    type   => dword,
    data   => '0'
  }

  # Set Ensure System Specify the maximum log file size (KB) is set to Enabled: 32,768 or greater
  # cis-ensure-system-specify-the-maximum-log-file-size-KB-is-set-to-enabled-18.9.24.4.2
  registry_value { 'HKLM\Software\Policies\Microsoft\Windows\EventLog\System\MaxSize':
    ensure => present,
    type   => dword,
    data   => '32768'
  }

  # 18.9.28.x key creation
  registry_key { 'HKLM\Software\Policies\Microsoft\Windows\System':
    ensure => present
  }

  registry_key { 'HKLM\Software\Policies\Microsoft\Windows\Explorer':
    ensure => present
  }

  # Set Ensure Configure Windows SmartScreen is set to Enabled: Require approval from an administrator before running downloaded unknown software
  # cis-ensure-configure-windows-smartScreen-is-set-to-enabled-require-approval-from-an-administrator-before-running-downloaded-unknown-software-18.9.28.2
  registry_value { 'HKLM\Software\Policies\Microsoft\Windows\System\EnableSmartScreen':
    ensure => present,
    type   => dword,
    data   => '1'
  }

  # Set Ensure Turn off Data Execution Prevention for Explorer' is set to Disabled
  # cis-ensure-turn-off-data-execution-prevention-for-explorer-is-set-to-disabled-18.9.28.3
  registry_value { 'HKLM\Software\Policies\Microsoft\Windows\Explorer\NoDataExecutionPrevention':
    ensure => present,
    type   => dword,
    data   => '0'
  }

  # Set Ensure 'Turn off heap termination on corruption' is set to Disabled
  # cis-ensure-turn-off-heap-termination-on-corruption-is-set-to-disabled-18.9.28.4
  registry_value { 'HKLM\Software\Policies\Microsoft\Windows\Explorer\NoHeapTerminationOnCorruption':
    ensure => present,
    type   => dword,
    data   => '0'
  }

  # Set Ensure Turn off shell protocol protected mode is set to Disabled
  # cis-ensure-turn-off-shell-protocol-protected-mode-is-set-to-disabled-18.9.28.5
  registry_value { 'HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\PreXPSP2ShellProtocolBehavior':
    ensure => present,
    type   => dword,
    data   => '0'
  }

  # Set Ensure Do not allow drive redirection is set to Enabled
  # cis-ensure-do-not-allow-drive-redirection-is-set-to-enabled-18.9.48.2.2
  registry_value { 'HKLM\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services\DisablePasswordSaving':
    ensure => present,
    type   => dword,
    data   => '1'
  }

  # Set Ensure Do not allow drive redirection is set to Enabled
  # cis-ensure-do-not-allow-drive-redirection-is-set-to-enabled-18.9.48.3.3.2
  registry_value { 'HKLM\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services\fDisableCdm':
    ensure => present,
    type   => dword,
    data   => '1'
  }

  # Set Ensure Always prompt for password upon connection is set to Enabled
  # cis-ensure-always-prompt-for-password-upon-connection-is-set-to-enabled-18.9.48.3.9.1
  registry_value { 'HKLM\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services\fPromptForPassword':
    ensure => present,
    type   => dword,
    data   => '1'
  }

  # Set Ensure Require secure RPC communication is set to Enabled
  # cis-ensure-require-secure-RPC-communication-is-set-to-enabled-18.9.48.3.9.2
  registry_value { 'HKLM\Software\Policies\Microsoft\Windows NT\Terminal Services\fEncryptRPCTraffic':
    ensure => present,
    type   => dword,
    data   => '1'
  }

  # Set Ensure Set client connection encryption level is set to Enabled: High Level
  # cis-ensure-set-client-connection-encryption-level-is-set-to-enabled-high-level-18.9.48.3.9.3
  registry_value { 'HKLM\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services\MinEncryptionLevel':
    ensure => present,
    type   => dword,
    data   => '1'
  }

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
