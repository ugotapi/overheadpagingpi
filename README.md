# overheadpagingpi

Build a web page in a pi device. There will be four buttons that can be touched and send an audio play request on the Pi device. 

You will need Wifi network, a pi 5 device and a separate USB sound card and a speaker at least. Hard code the IP address on the Pi via DHCP reservation or during the install of the Pi set the fixced IP address. You connect the sound card to your overhead speaker system or at least a speaker. 
You will also need a tablet/ipad locked down to a web browser to display the Pi ip address for example: http://192.168.1.100. For Android tablet on the wall I have used Fully Kiosk Browser & Lockdown which is low priced and works well. No affiliation. 

HOW IT WORKS:
1. Someone comes in your building front area and sees the wall mounted tablet at hits the correct button.
2. It plays the sound on the overhead speakers alerting someone inside.
3. It also plays an mp3 sound on the tablet that an alert has been set to the person tapping the tablet. 



![pis](https://github.com/ugotapi/overheadpagingpi/assets/14945441/099944ce-097d-4dd9-b0f6-489bae12e737)


Example web page on tablet:

 ![screen](https://github.com/ugotapi/overheadpagingpi/assets/14945441/cb2b8f8b-0c1b-4678-8a38-076fe587217f)



1. The first button should play a sound on the speaker attached to the Pi5. 
2. The Food Delivery, Employee Needs access, Visitor Needs Access need to be edited by you.
3. You should add three more php files corresponding to the three other buttons.
4. Additionally you would upload four wav files corresponding to the four other buttons. Also the mp3 file played to the vistor on the tablet. 
5. The /var/www/html/index.hteml is the file to edit to add your logo, change colors, change buttons, change sounds


   



