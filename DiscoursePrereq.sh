sudo wget -qO- https://get.docker.com/ | sh
docker version

#add-apt-repository "deb http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -sc)-pgdg main"
#wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get -y install postgresql-9.6
psql -V

sudo wget http://download.redis.io/releases/redis-4.0.8.tar.gz
sudo tar xzf redis-4.0.8.tar.gz
cd redis-4.0.8
#apt-get install -y tcl
sudo make
#sudo ./make test
#update redis.conf
redis-server -v
#cd src
#./redis-server &

#https://github.com/rbenv/rbenv#installation
rbenv global 2.3.3
rbenv version
