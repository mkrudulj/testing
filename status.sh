ls -la
whoami
sudo whoami
sudo egrep -o '(vmx|svm)' /proc/cpuinfo
pwd
uname -a
kvm-ok
lsmod | grep kvm
modprobe kvm_intel

ls -la /etc/apt/sources.list
#sudo cp sources.list  /etc/apt/sources.list
ls -la /etc/apt/sources.list