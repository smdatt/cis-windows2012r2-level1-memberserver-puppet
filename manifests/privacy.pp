# == Class: cis_windows_level1_memberserver::privacy
#
# Configures windows privacy settings
#
class cis_windows_level1_memberserver::privacy {

  # Disabling Microsoft account logon sign-in option, eg. logging in without having to use local credentials and using microsoft online accounts
  # windows_baseline: microsoft-online-accounts
  registry::value { 'Disable Microsoft Online Accounts':
    key   => 'HKLM\Software\Microsoft\PolicyManager\default\Settings\AllowYourAccount',
    value => 'value',
    type  => 'dword',
    data  => 0,
  }

  # Ensure Turn off Automatic Download from the Windows Store
  # windows_baseline: disable-windows-store
  registry::value { 'WindowsStore_AutoDownload':
    key   => 'HKLM\Software\Policies\Microsoft\WindowsStore',
    value => 'AutoDownload',
    type  => 'dword',
    data  => 4,
  }

  # Ensure OS Upgrades from the Windows Store are disabled.
  # windows_baseline: disable-windows-store
  registry::value { 'WindowsStore_DisableOSUpgrade':
    key   => 'HKLM\Software\Policies\Microsoft\WindowsStore',
    value => 'DisableOSUpgrade',
    type  => 'dword',
    data  => 1,
  }

  # Ensure Allow indexing of encrypted files is set to Disabled
  # windows_baseline: disable-index-encrypted-files
  registry::value { 'DisableIndexingEncrypted':
    key   => 'HKLM\Software\Policies\Microsoft\Windows\Windows Search',
    value => 'AllowIndexingEncryptedStoresOrItems',
    type  => 'dword',
    data  => 0,
  }

}
