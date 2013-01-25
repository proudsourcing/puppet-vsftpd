class vsftpd::config {

  service { 'vsftpd':
    ensure     => running,
    enable     => true,
    hasrestart => true,
    hasstatus  => true,
  }

  file { '/etc/vsftpd.conf':
    ensure  => present,
    mode    => '0644',
    owner   => 'root',
    group   => 'root',
    content => template('vsftpd/vsftpd.conf.erb'),
    notify  => Service['vsftpd'],
  }

}
