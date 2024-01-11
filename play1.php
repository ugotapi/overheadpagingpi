TRUCKRECEIVING.php
<?php
exec('/usr/bin/mplayer -vo null /var/www/html/alwaystwo.mp3');
header('Location: ../index.html?success=true');
?>
