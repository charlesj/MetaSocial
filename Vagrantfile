# basing this on Vagrant-Mono-3.0 by David Mitchell
# https://github.com/david-mitchell/vagrant-mono-3.0

Vagrant.configure("2") do |config|
  config.vm.box = "base64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  # config.vm.box_url = "http://files.vagrantup.com/precise32.box"
  config.vm.network :forwarded_port, guest: 80, host: 8080

  # config.vm.provision :shell, :path => "provision.sh"
  config.vm.provision :puppet, :module_path => "puppet_modules"

  # config.vm.synced_folder "../data", "/vagrant_data"
end
