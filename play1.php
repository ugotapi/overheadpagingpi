//  for using the HDMI sound you can put "-ao pulse" if you need to
<?php
exec('/usr/bin/mplayer -vo null -ao alsa:device=hw=2,0 /var/www/html/alwaystwo.mp3');
header('Location: ../index.html?success=true');
?>
