# == Class: cis_win2012r2_l1_memberserver::password_policy
#
# Configures password policies
#
class cis_win2012r2_l1_memberserver::password_policy {

    # Set Enforce password history to 24 or more passwords
    # cis-enforce-password-history-1.1.1
    exec { 'Password history':
        command  => 'net accounts /uniquepw:24',
        onlyif   => 'if ( (net accounts | Select-String "Length of password" | %{$_.ToString().Split(" ",[System.StringSplitOptions]::RemoveEmptyEntries)[5]}) -eq "24") { exit 1 }',
        provider => 'powershell',
    }

    # Set Minimum password age to 1 or more days
    # cis-minimum-password-age-1.1.3
    exec { 'Minimum password age':
        command  => 'net accounts /minpwage:1',
        onlyif   => 'if ( (net accounts | Select-String "Minimum password age" | %{$_.ToString().Split(" ",[System.StringSplitOptions]::RemoveEmptyEntries)[4]}) -eq "1") { exit 1 }',
        provider => 'powershell',
    }

    # Set Minimum password length to 14 or more characters
    # cis-minimum-password-length-1.1.4
    exec { 'Minimum password length':
        command  => 'net accounts /minpwlen:14',
        onlyif   => 'if ( (net accounts | Select-String "Minimum password length" | %{$_.ToString().Split(" ",[System.StringSplitOptions]::RemoveEmptyEntries)[3]}) -eq "14") { exit 1 }',
        provider => 'powershell',
    }

    # Set Password complexity to Enabled
    # cis-password-complexity-1.1.5
    local_security_policy { 'Password must meet complexity requirements':
        ensure       => present,
        policy_value => '1'
    }

    # Set Store passwords using reversible encryption to Disabled
    # cis-store-passwords-using-reversible-encryption-1.1.6
    local_security_policy { 'Store passwords using reversible encryption':
        ensure       => present,
        policy_value => '0'
    }

}
