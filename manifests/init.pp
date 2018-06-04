# == Class: cis_windows_level1_memberserver
#
# Configuring local policies and registry settings to meet security hardening specifications for CIS Level 1 Windows Member Server
#
# === Authors
#
# Liam Bennett <liam.bennett@claranet.uk>
# Steven Datt <steven.datt@claranet.uk>
#
# === Copyright
#
# Copyright 2018 Claranet
#
class cis_windows_level1_memberserver {
  include cis_windows_level1_memberserver::account_lockout
  include cis_windows_level1_memberserver::administrative_templates
  include cis_windows_level1_memberserver::audit_policy
  include cis_windows_level1_memberserver::password_policy
  include cis_windows_level1_memberserver::security_options
  include cis_windows_level1_memberserver::user_rights
  include cis_windows_level1_memberserver::windows_firewall
}
