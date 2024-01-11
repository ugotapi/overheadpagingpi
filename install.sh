sudo apt install apache2 php sox libsox-fmt-mp3
sudo usermod -aG audio www-data
sudo rm -rf /var/www/html/index.html
cd /home/$USER

wget https://raw.githubusercontent.com/ugotapi/overheadpagingpi/main/index.html
wget http://www.galaxyfaraway.com/Sounds/SEEKYODA.WAV
wget https://www.thesoundarchive.com/starwars/swvader03.mp3
wget https://raw.githubusercontent.com/ugotapi/overheadpagingpi/main/play1.php

sudo cp /home/$USER/swvader03.mp3 /var/www/html
sudo cp /home/$USER/index.html /var/www/html
sudo cp /home/$USER/SEEKYODA.WAV /var/www/html/seekyoda.wav
sudo cp /home/$USER/play1.php /var/www/html

sudo chown www-data:www-data /var/www/html/swvader03.mp3
sudo chown www-data:www-data /var/www/html/play1.php
sudo chown www-data:www-data /var/www/html/index.html
sudo chown www-data:www-data /var/www/html/seekyoda.wav

# Create a backup of the original config.txt file
sudo cp /boot/config.txt /boot/config.txt.backup

# Use sed to replace the line in the config.txt file this disables HDMI audio device. If you have a USB sound device attached, it then becomes the default. 
sudo sed -i 's/dtoverlay=vc4-kms-v3d/dtoverlay=vc4-kms-v3d,noaudio/' /boot/config.txt

read -p "After this reboot go to your tablet/touch pc and put in the ip address of this device.  Hit Enter key to continue"
sudo reboot



