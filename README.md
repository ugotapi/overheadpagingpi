# OverheadPagingPi

Build a extremely simple web page in a Pi device for a work/office building overhead paging system. There will be four buttons that can be touched and send an audio play request to the speakers setup on the Pi device. This will create an overhead paging device or a maybe a remote soundboard. 

You will need Wifi network, a Raspbian Pi5 device and a separate USB sound card and a speaker at least. I use a seaparate USB sound card because the Pi5 device does not have a 3.5mm audio jack like earlier versions and the USB sound cards usually go veryh high on the volume out. You could test a different Pi device there should be no hardware requriments for a pi5, but I have not tested it. Hard code the IP address on the Pi via DHCP reservation or during the install of the Pi set the fixced IP address. You connect the USB sound card output to your overhead speaker system or at least a speaker. You will also need a tablet/ipad locked down to a web browser to display the Pi web page for your building visitor to tap. 

For Android tablet on the wall near your area you are paging from, I have used Fully Kiosk Browser & Lockdown which is low priced and works well. No affiliation. You can buy a usb sound card with an audio out for $15 on Amazon. 

HOW IT WORKS:
1. Someone comes in your building front area and sees the wall mounted tablet at hits the correct button.
2. It plays the sound on the overhead speakers alerting someone inside.
3. It also plays an mp3 sound on the tablet that an alert has been set to the person tapping the tablet. 



![pis](https://github.com/ugotapi/overheadpagingpi/assets/14945441/099944ce-097d-4dd9-b0f6-489bae12e737)





Example web page on tablet:

 ![screen](https://github.com/ugotapi/overheadpagingpi/assets/14945441/cb2b8f8b-0c1b-4678-8a38-076fe587217f)



1. This install is assuming that you have Raspberry PI OS installed newly on a Pi5 device.
2. It is best to setup a fixed IP address for the Pi via DHCP reservation or hardcoding it in the networking area. 
3. The first button should play a sound on the speaker attached to the Pi5. 
4. The Food Delivery, Employee Needs access, Visitor Needs Access buttons in index.html need to be edited by you to point to valid php files that will play audio files. Button one is a working example. 
5. You should add three more php files corresponding to the three other buttons and audio files. Editing the button text and the php to play the right mp3 files. 
6. Additionally you would upload wav files corresponding to the four other buttons and the audio played on the tablet.
7. These files go in the /var/www/html folder. Run "sudo chown www-data:www-data /var/www/html/yourawesomenewfilename" in a Terminal on new files added like in the install script. 
8. The /var/www/html/index.html is the file to edit to add your logo, change colors, change buttons, change sounds played.
9. If you have sound playing problems make sure your usb sound card is card 2 by typing: aplay -l

  ![image](https://github.com/ugotapi/overheadpagingpi/assets/14945441/4b268538-7cf9-4df8-88a4-6382abdedda5)


   This should match the 2 here:

   ![image](https://github.com/ugotapi/overheadpagingpi/assets/14945441/7e672b41-8303-431a-9e77-a98406c02eb3)



  

Install by pasting the contents of the install.sh file to a terminal and hit Enter. 


   



