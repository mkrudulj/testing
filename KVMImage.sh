
#sudo apt-get update
#sudo apt-get install systemd
#sudo systemctl enable --now libvirtd
#sudo apt-get install -y ubuntu-vm-builder
#sudo apt-get install -y grub
#sudo ubuntu-vm-builder kvm trusty --domain newvm --dest newvm --arch i386 --hostname kvmtrusty --mem 1024 --user misha --pass loz --ip 192.168.0.12 --mask 255.255.255.0 --net 192.168.0.0 --bcast 192.168.0.255 --gw 192.168.0.1 --dns 192.168.0.1 --components 'main,universe,restricted' --addpkg acpid --addpkg vim --addpkg openssh-server --addpkg avahi-daemon --libvirt qemu:///system 
###Download - BEGIN
wget http://releases.ubuntu.com/14.04/ubuntu-14.04.5-server-amd64.iso
###Download - END
###Install packages - BEGIN
sudo apt-get update
sudo apt-get install -y kvm
sudo apt-get install -y qemu-kvm libvirt-bin virtinst bridge-utils
sudo apt-get install -y virtinst
sudo apt-get install -y qemu
sudo apt-get install -y grub
sudo apt-get install -y grub2-common
sudo apt-get install -y virt-viewer
sudo apt-get install -y cpu-checker
###Install packages - END
mkdir -p /var/vm
cp ubuntu-14.04.5-server-amd64.iso /var/vm/
cd /var/vm
pwd=`pwd`
###Create VM - BEGIN
sudo virt-install \
--name ubuntu1404E \
--ram 1024 \
--disk path=/$pwd/ubuntu1404.qcow2,size=6 \
--vcpus 1 \
--os-type linux \
--os-variant ubuntutrusty \
--network bridge=virbr0 \
--graphics vnc \
--console pty,target_type=serial \
--cdrom /$pwd/ubuntu-14.04.5-server-amd64.iso \
--connect qemu:///system \
--force \
--debug
###Create VM - END
virsh dumpxml ubuntu1404E
virsh list

