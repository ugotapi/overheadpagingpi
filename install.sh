sudo apt install apache2 php sox libsox-fmt-mp3
sudo usermod -aG audio www-data
sudo rm -rf /var/www/html/index.html
cd /var/www/html
wget https://raw.githubusercontent.com/ugotapi/overheadpagingpi/main/index.html
wget http://www.galaxyfaraway.com/Sounds/SEEKYODA.WAV
sudo mv /var/www/html/SEEKYODA.WAV /var/www/html/seekyoda.wav
chown www-data:www-data /var/www/html/index.html
chown www-data:www-data /var/www/html/seekyoda.wav



