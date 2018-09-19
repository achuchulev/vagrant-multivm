Vagrant.configure("2") do |config|
  (1..2).each do |i|
    config.vm.define vm_name="web0#{i}" do |node|
      node.vm.box = "achuchulev/xenial64"
      node.vm.hostname = "web0#{i}"
      config.vm.provision "shell", path: "scripts/provision.sh", privileged: "false"
    end
  end

    config.vm.define vm_name="mysql" do |node|
      node.vm.box = "achuchulev/centos7_mysql"
      node.vm.hostname = "mysql"
  end
end
