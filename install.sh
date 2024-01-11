sudo apt install apache2 php sox libsox-fmt-mp3
sudo usermod -aG audio www-data
sudo rm -rf /var/www/html/index.html
cd /home/$USER
wget https://raw.githubusercontent.com/ugotapi/overheadpagingpi/main/index.html
wget http://www.galaxyfaraway.com/Sounds/SEEKYODA.WAV
wget https://raw.githubusercontent.com/ugotapi/overheadpagingpi/main/play1.php
sudo cp /home/$USER/index.html /var/www/html
sudo cp /home/$USER/SEEKYODA.WAV /var/www/html/seekyoda.wav
sudo cp /home/$USER/play1.php /vasr/www/html
sudo chown www-data:www-data /var/www/html/play1.php
sudo chown www-data:www-data /var/www/html/index.html
sudo chown www-data:www-data /var/www/html/seekyoda.wav



