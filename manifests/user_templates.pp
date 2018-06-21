# == Class: cis_windows_level1_memberserver::user_templates
#
# Configures Administrative Templates for Users
#

class cis_windows_level1_memberserver::user_templates {

  file {
    'C:\\Windows\\system32\\grouppolicy':
    ensure => 'directory',
    source => 'puppet:///modules/cis-windows2012r2-level1-memberserver-puppet/files/',
    path   => 'C:\\Windows\\system32\\grouppolicy'
  }
}
