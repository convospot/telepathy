# == Class: baseconfig
#
# Performs initial configuration tasks for all Vagrant boxes.
#
class baseconfig {
  exec { 'yum -y update':
    command => 'yum -y update';
  }

  host { 'hostmachine':
    ip => '192.168.0.1';
  }

  package { ['tree', 'tar']:
    ensure => present;
  }

  file {
    '/home/vagrant/.bashrc':
      owner => 'vagrant',
      group => 'vagrant',
      mode  => '0644',
      source => 'puppet:///modules/baseconfig/bashrc';
  }
}