Vagrant.configure("2") do |config| 
   config.vm.box = "opscode-ubuntu-12.04" 
   config.vm.box_url = "http://opscode-vm-bento.s3.amazonaws.com/vagrant/virtualbox/opscode_ubuntu-12.10_chef-provisionerless.box"
   config.omnibus.chef_version = :latest  
   config.vm.provision :chef_client do |chef| 
      chef.provisioning_path = "/etc/chef" 
      chef.chef_server_url = "https://api.opscode.com/ 
      organizations/zdahlgren" 
      chef.validation_key_path = "/.chef/zdahlgren-validator.pem"
      chef.validation_client_name = "zdahlgren-validator" 
      chef.node_name = "server" 
   end 
end