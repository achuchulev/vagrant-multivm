Vagrant.configure("2") do |config|
  
  (1..2).each do |i|
    config.vm.define vm_name="web0#{i}" do |web|
      web.vm.box = "achuchulev/xenial64"
      web.vm.hostname = "web0#{i}"
      web.vm.provision "shell", path: "scripts/provision_web.sh", privileged: "false"
    end
  end

    config.vm.define vm_name="mysql" do |db|
      db.vm.box = "achuchulev/centos7_mysql"
      db.vm.hostname = "mysql"
      db.vm.provision "shell", path: "scripts/provision_db.sh", privileged: "false"
  end
end
