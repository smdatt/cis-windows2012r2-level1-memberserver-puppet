# == Class: cis_windows_level1_memberserver::access_config
#
# Configures authentication and access settings
#
class cis_windows_level1_memberserver::access_config {
    
    # Safe DLL Search Mode is Enabled
    # windows-baseline: windows-base-101
    registry::value { 'SafeDllSearchMode':
        key  => 'HKLM\System\CurrentControlSet\Control\Session Manager',
        type => 'dword',
        data => 0,
    }
    
    # Anonymous Access to Windows Shares and Named Pipes is Disallowed
    # windows-baseline: windows-base-102
    registry::value { 'RestrictNullSessAccess':
        key  => 'HKLM\System\CurrentControlSet\Services\LanManServer\Parameters',
        type => 'dword',
        data => 1,
    }

    # All Shares are Configured to Prevent Anonymous Access
    # windows-baseline: windows-base-103
    registry::value { 'NullSessionShares':
        key  => 'HKLM\System\CurrentControlSet\Services\LanManServer\Parameters',
        data => [''],
        type => 'array',
    }

    # Force Encrypted Windows Network Passwords
    # windows-baseline: windows-base-104
    registry::value { 'EnablePlainTextPassword':
        key  => 'HKLM\System\CurrentControlSet\Services\LanmanWorkstation\Parameters',
        type => 'dword',
        data => 0,
    }

    # SMB1 to Windows Shares is disabled
    # windows-baseline: windows-base-105
    registry::value { 'SMB1':
        key  => 'HKLM\System\CurrentControlSet\Services\LanManServer\Parameters',
        type => 'dword',
        data => 0,
    }

    # Strong Windows NTLMv2 Authentication Enabled; Weak LM Disabled
    # windows-baseline: windows-base-201
    registry::value { 'LmCompatibilityLevel':
        key  => 'HKLM\System\CurrentControlSet\Control\Lsa',
        type => 'dword',
        data => 4,
    }

    # Enable Strong Encryption for Windows Network Sessions on Clients
    # windows-baseline: windows-base-202
    registry::value { 'NtlmMinClientSec':
        key  => 'HKLM\System\CurrentControlSet\Control\Lsa\MSV1_0',
        type => 'dword',
        data => 537395200,
    }

    # Enable Strong Encryption for Windows Network Sessions on Servers
    # windows-baseline: windows-base-203
    registry::value { 'NtlmMinServerSec':
        key  => 'HKLM\System\CurrentControlSet\Control\Lsa\MSV1_0',
        type => 'dword',
        data => 537395200,
    }


}
