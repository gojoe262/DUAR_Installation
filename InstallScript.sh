#!/bin/bash
echo "----------------------------"
echo "-----UPDATE AND UPGRADE-----"
echo "----------------------------"
sleep 1.5
apt-get update 								#Update
apt-get upgrade 							#Upgrade

echo "----------------------------"
echo "-----INSTALLING DESKTOP-----"
echo "----------------------------"
sleep 1.5
apt-get install xorg 						#xorg... duh
apt-get install openbox 					#Openbox Window Manager 
apt-get install obmenu 						#Openbox Menu Editor
apt-get install tint2						#Taskbar
apt-get install simplecal    				#Little calendar for tint2
apt-get install slim 						#LogIn Manager
apt-get install nitrogen        			#Can set the background with this
apt-get install gksu        				#Installs the sudo dialog
apt-get install pm-utils        			#Allows for suspend 
apt-get install xscreensaver				#Allows for lock SEE: http://www.linuxx.eu/2014/02/locking-screen-in-openbox.html


echo "----------------------------"
echo "----THUNAR FILE MANAGER-----"
echo "----------------------------"
sleep 1.5
apt-get install thunar						#File Manager
apt-get install thunar-archive-plugin 		#Extract files utils
apt-get install gnome-icon-themes-full		#Icons for Thunar

echo "----------------------------"
echo "-----SOUND SERVER/ALSA------"
echo "----------------------------"
sleep 1.5
apt-get install alsa-base 					#Sound
apt-get install alsa-utils 					#Sound
apt-get install pulseaudio      			#Pulse Audio Sound Server
apt-get install pavucontrol     			#Pulse audio volume controller
apt-get install volumeicon-alsa 			#installs the volume icon

echo "----------------------------"
echo "----OTHER APPS TO INSTALL---"
echo "----------------------------"
sleep 1.5
apt-get install firefox        				#Firefox...another duh
apt-get install geany        				#Geany Text Editor
apt-get install synaptic        			#Synaptic install manager
apt-get install terminator    				#Terminal 
apt-get install lxtask        				#Task manager
apt-get install htop         				#Task manager terminal
apt-get install gparted        				#Disk Partitioner
apt-get install viewnior					#Picture Viewer
apt-get install evince						#Pdf viewer
apt-get install git        					#Git version control
apt-get install network-manager-gnome 		#nm-applet
apt-get install xfce4-screenshooter			#Screenshooter tool











