Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"

  config.vm.hostname = "node0"
  config.vm.provision :shell, path: "installPuppet.sh"

  config.vm.provision :puppet do |puppet|
        puppet.manifests_path = "puppet/manifests"
        puppet.manifest_file = "init.pp"
        puppet.module_path = "puppet/modules"
        puppet.options = ['--verbose']
  end
end