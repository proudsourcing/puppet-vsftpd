# == Class: vsftpd
#
# Installs and manages vsftpd.
#
# === Parameters
#
# [*anonymous_enable*]
#  Allow anonymous FTP. Default: false
#
# [*local_enable*]
#  Allow local users to log in. Default: false
#
# [*write_enable*]
#  Enable any form of FTP write command. Default: false
#
# [*chroot_local_user*]
#  Restrict local users to their home directories. Default: true
#
# === Examples
#
# class { 'vsftpd':
#   anonymous_enable  => false,
#   local_enable      => true,
#   write_enable      => true,
#   chroot_local_user => true,
# }
#
# === Authors
#
# Sergey Stankevich
#
class vsftpd (
  $anonymous_enable  = false,
  $local_enable      = false,
  $write_enable      = false,
  $chroot_local_user = true,
) {

  # Compatibility check
  $compatible = [ 'Debian', 'Ubuntu' ]
  if ! ($::operatingsystem in $compatible) {
    fail("Module is not compatible with ${::operatingsystem}")
  }

  Class['vsftpd::install'] -> Class['vsftpd::config']

  include vsftpd::install
  include vsftpd::config

}
