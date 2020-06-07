#https://www.digitalocean.com/community/tutorials/how-to-install-the-latest-mysql-on-debian-10

wget https://dev.mysql.com/get/mysql-apt-config_0.8.15-1_all.deb
dpkg -i mysql-apt-config_0.8.15-1_all.deb
apt update
apt install gnupg
apt install mysql-server
systemctl status mysql


apt install apache2


#https://www.digitalocean.com/community/tutorials/how-to-install-linux-apache-mysql-php-lamp-stack-on-debian-8
#https://computingforgeeks.com/how-to-install-latest-php-on-debian/

apt -y install lsb-release apt-transport-https ca-certificates
wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg
echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/php.list
apt update
apt -y install php7.4
sudo apt-get install php7.4-{bcmath,bz2,intl,gd,mbstring,mysql,zip}

https://www.digitalocean.com/community/tutorials/how-to-install-linux-apache-mysql-php-lamp-stack-on-debian-8
cp info.php /var/www/html/

