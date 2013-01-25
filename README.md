[puppet-vsftpd](https://github.com/stankevich/puppet-vsftpd)
======

Puppet module for installing and managing vsftpd.

## Usage

### vsftpd

Installs and manages vsftpd.

**anonymous_enable** — Allow anonymous FTP. Default: false

**local_users** — Allow local users to log in. Default: false

**write_enable** — Enable any form of FTP write command. Default: false

**chroot_local_user** — Restrict local users to their home directories. Default: true

	class { 'vsftpd':
	  anonymous_enable  => false,
	  local_users       => true,
	  write_enable      => true,
	  chroot_local_user => true,
	}

## Authors

[Sergey Stankevich](https://github.com/stankevich)
