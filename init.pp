class::hardening-puppet {

case $operatingsystem {
  'RedHat', 'CentOS': { '/etc/yum.conf',
      ensure => file,
      owner  => 'root',
      group  => 'root',
      mode   => '0644',
  file { '/usr/local/bin/exportenv',
      ensure => file,
      source => 'puppet:///modules/hardening-module/iptables-lockdown-mode',
      owner  => 'root',
      group  => 'root',
      mode   => '0755',
    }
  }

  'Debian', 'Ubuntu': { '/etc/apt/sources.list',
      ensure => file,
      owner  => 'root',
      group  => 'root',
      mode   => '0644',
  file { '/usr/local/bin/exportenv',
      ensure => file,
      content=> 'export DEB_BUILD_HARDENING=1',
      owner  => root,
      group  => root,
      mode   => '0755',
  file { '/usr/local/bin/exportenv2',
      ensure => file,
      source => 'puppet:///modules/hardening-module/iptables-lockdown-mode',
      owner  => 'root',
      group  => 'root',
      mode   => '0755',
  exec { 'exportenv2',
      command=> 'exportenv2 22',
      path   => '/usr/local/bin/exportenv2',
    }
  }

  default: { '/etc/systemd',
      ensure => file,
      owner  => 'root',
      group  => 'root'
      mode   => '755',
  file { '/usr/local/bin/exportenv',
      ensure => file,
      source => 'puppet:///modules/hardening-module/iptables-lockdown-mode',
      owner  => 'root',
      group  => 'root',
      mode   => '0755',
    }
  }
}

  file { '/etc/passwd',
      ensure => file,
      owner  => 'root',
      group  => 'root',
      mode   => '0644',
    }
  file { '/etc/sudoers',
      ensure => file,
      owner  => 'root',
      group  => 'root',
      mode   => '0440',
  }
  file { '/etc/shadow',
      ensure => file,
      owner  => 'root',
      group  => 'root',
      mode   => '0640',
    }
  file { '/etc/group',
      ensure => file,
      owner  => 'root',
      group  => 'root',
      mode   => '0640',
    }

  file { '/home',
      ensure => directory,
      owner  => 'root',
      group  => 'root',
      mode   => '0755',
    }
  file { '/etc',
      ensure => directory,
      owner  => 'root',
      group  => 'root',
      mode   => '0755',
    }
  file { '/root',
      ensure => directory,
      owner  => 'root',
      group  => 'root',
      mode   => '0700',
    }
  file { '/lib',
      ensure => directory,
      owner  => 'root',
      group  => 'root',
      mode   => '0755',
    }
  file { '/lib32',
      ensure => directory,
      owner  => 'root',
      group  => 'root',
      mode   => '0755',
    }
  file { '/lib64',
      ensure => directory,
      owner  => 'root',
      group  => 'root',
      mode   => '0755',
    }
  file { '/boot',
      ensure => directory,
      owner  => 'root',
      group  => 'root',
      mode   => '0755',
    }
  file { '/proc',
      ensure => directory,
      owner  => 'root',
      group  => 'root',
      mode   => '0555',
    }
  file { '/opt',
      ensure => directory,
      owner  => 'root',
      group  => 'root',
      mode   => '0755',
    }
  file { '/dev',
      ensure => directory,
      owner  => 'root',
      group  => 'root',
      mode   => '0755',
    }
  file { '/bin',
      ensure => directory,
      owner  => 'root',
      group  => 'root',
      mode   => '0755',
    }
  file { '/var',
      ensure => directory,
      owner  => 'root',
      group  => 'root',
      mode   => '0755',
    }
  file { '/mnt',
      ensure => directory,
      owner  => 'root',
      group  => 'root',
      mode   => '0755',
    }
  file { '/lost+found',
      ensure => directory,
      owner  => 'root',
      group  => 'root',
      mode   => '0700',
    }
  file { '/sys',
      ensure => directory,
      owner  => 'root',
      group  => 'root',
      mode   => '0755',
    }
  file { '/tmp',
      ensure => directory,
      owner  => 'root',
      group  => 'root',
      mode   => '0776',
    }
  file { '/run',
      ensure => directory,
      owner  => 'root',
      group  => 'root',
      mode   => '0755',
    }
  file { '/sbin',
      ensure => directory,
      owner  => 'root',
      group  => 'root',
      mode   => '0755',
    }
  file { '/usr/local/bin/exportlimits',
      ensure => file,
      source => 'puppet:///modules/hardening-module/limits',
      owner  => 'root',
      group  => 'root',
      mode   => '0755',
  exec { 'exportlimits',
      command=> 'exportlimits',
      path   => '/usr/local/bin/exportlimits',
  exec { 'exportenv2',
      command=> 'exportenv2 22',
      path   => '/usr/local/bin/exportenv2',
  }

}
