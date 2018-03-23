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
#ls -la /etc/apt/sources.list

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

ifconfig
