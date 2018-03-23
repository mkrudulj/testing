###Install packages - BEGIN
sudo apt-get update
sudo apt-get install -y cpu-checker
sudo apt-get install -y kvm
sudo apt-get install -y qemu-kvm 
sudo apt-get install -y libvirt-bin
sudo apt-get install -y virtinst
sudo apt-get install -y bridge-utils
sudo apt-get install -y qemu
sudo apt-get install -y grub
sudo apt-get install -y grub2-common
sudo apt-get install -y virt-viewer
###Install packages - END
sudo brctl addbr virbr0
sudo dhclient virbr0 &
###Download - BEGIN
wget http://releases.ubuntu.com/14.04/ubuntu-14.04.5-server-amd64.iso
sudo mkdir -p /var/vm
sudo cp ubuntu-14.04.5-server-amd64.iso /var/vm/
cd /var/vm
###Download - END
pwd=`pwd`
ifconfig
###Create VM - BEGIN
sudo virt-install \
--name ubuntu1404E \
--ram 1024 \
--disk path=/$pwd/ubuntu1404.qcow2,size=3 \
--vcpus 1 \
--os-type linux \
--os-variant ubuntutrusty \
--network bridge=virbr0 \
--console pty,target_type=serial \
--noautoconsole --accelerate --keymap=en-us \
--cdrom /$pwd/ubuntu-14.04.5-server-amd64.iso \
--force 
###Create VM - END
sudo virsh dumpxml ubuntu1404E
sudo virsh list
