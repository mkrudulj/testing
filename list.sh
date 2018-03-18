ls -la
whoami
sudo whoami
sudo egrep -o '(vmx|svm)' /proc/cpuinfo
pwd
uname -a
lsmod | grep kvm
modprobe kvm_intel

ls -la /etc/apt/sources.list
#sudo cp sources.list  /etc/apt/sources.list
ls -la /etc/apt/sources.list
#sudo apt-get update
#sudo apt-get install systemd
#sudo systemctl enable --now libvirtd
#sudo apt-get install -y ubuntu-vm-builder
#sudo apt-get install -y grub
#sudo ubuntu-vm-builder kvm trusty --domain newvm --dest newvm --arch i386 --hostname kvmtrusty --mem 1024 --user misha --pass loz --ip 192.168.0.12 --mask 255.255.255.0 --net 192.168.0.0 --bcast 192.168.0.255 --gw 192.168.0.1 --dns 192.168.0.1 --components 'main,universe,restricted' --addpkg acpid --addpkg vim --addpkg openssh-server --addpkg avahi-daemon --libvirt qemu:///system 
