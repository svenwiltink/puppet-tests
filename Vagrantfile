Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"

  config.vm.hostname = "node0"
  config.vm.provision :shell, path: "installPuppet.sh"

  config.vm.synced_folder "./puppet/hieradata", "/etc/puppet/hieradata"
  config.vm.provision :puppet do |puppet|
        puppet.manifests_path = "puppet/manifests"
        puppet.manifest_file = "init.pp"
        puppet.module_path = "puppet/modules"
        puppet.hiera_config_path = "puppet/hiera.yaml"
        puppet.options = ['--verbose', '--debug']
  end
end