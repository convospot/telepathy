# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "puppetlabs/centos-7.0-64-puppet" 
  config.vm.host_name = "socket"
  config.vm.network "forwarded_port", guest: 8004, host: 8004
  config.ssh.forward_agent = true
  config.vm.provision :puppet do |puppet|
    puppet.manifests_path    = 'puppet/manifests'
    puppet.manifest_file     = 'site.pp'
    puppet.module_path       = 'puppet/modules'
    puppet.working_directory = '/vagrant/puppet'
    puppet.options           = "--verbose --debug"
  end
  
  # http://blog.rudylee.com/2014/10/27/symbolic-links-with-vagrant-windows/
  config.vm.provider "virtualbox" do |v|
    v.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/v-root", "1"]
    v.memory = 1024
  end
end
