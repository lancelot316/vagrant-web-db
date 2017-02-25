export DEBIAN_FRONTEND=noninteractive
apt-get update
apt-get install -y mysql-server
sed -i -e 's/127.0.0.1/0.0.0.0/' /etc/mysql/mysql.conf.d/mysqld.cnf
sudo systemctl restart mysql
sudo mysql <<< "GRANT ALL ON *.* TO 'root'@'192.168.33.10' identified by 'root'; FLUSH PRIVILEGES;"