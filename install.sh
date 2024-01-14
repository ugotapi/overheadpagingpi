sudo apt install -y apache2 php mplayer
# This adds apache user to audio group in order give permissions to play sounds on the Pi
sudo usermod -aG audio www-data
# remove default apache web page
sudo rm -rf /var/www/html/index.html
cd /home/$USER

#download and put files in place for apache web server
wget https://raw.githubusercontent.com/ugotapi/overheadpagingpi/main/index.html
wget https://www.thesoundarchive.com/starwars/alwaystwo.mp3
wget https://www.thesoundarchive.com/starwars/swvader03.mp3
wget https://raw.githubusercontent.com/ugotapi/overheadpagingpi/main/play1.php

sudo cp /home/$USER/swvader03.mp3 /var/www/html
sudo cp /home/$USER/index.html /var/www/html
sudo cp /home/$USER/alwaystwo.mp3 /var/www/html
sudo cp /home/$USER/play1.php /var/www/html

sudo chown www-data:www-data /var/www/html/swvader03.mp3
sudo chown www-data:www-data /var/www/html/play1.php
sudo chown www-data:www-data /var/www/html/index.html
sudo chown www-data:www-data /var/www/html/alwaystwo.mp3


ip a
read -p "After this reboot go to your tablet/touch pc and put in the ip address of this device - shown above.  To see sound cards hardware info type aplay -l in a shell. Hit Enter key to continue."
sudo reboot



