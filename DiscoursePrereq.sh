sudo wget -qO- https://get.docker.com/ | sh
docker version
sudo apt-get update
sudo apt-get -y install postgresql-9.6
psql -V
sudo wget http://download.redis.io/releases/redis-4.0.8.tar.gz
sudo tar xzf redis-4.0.8.tar.gz
cd redis-4.0.8
sudo make
#update redis.conf
redis-server -v
#https://github.com/rbenv/rbenv#installation
rbenv global 2.3.3
rbenv version
