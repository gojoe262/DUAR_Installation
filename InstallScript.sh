#!/bin/bash
function InstallXScreensaver {
	build=$(uname -m)
	downloaded=false
	if [ "$build" == "x86_64" ]
		then
		wget --directory-prefix=xscreensaver/ http://ftp.us.debian.org/debian/pool/main/x/xscreensaver/xscreensaver_5.30-1+b1_amd64.deb
		downloaded=true
	elif [ "$build" == "i386" ]
		then
		wget --directory-prefix=xscreensaver/ http://ftp.us.debian.org/debian/pool/main/x/xscreensaver/xscreensaver_5.30-1+b1_i386.deb
		downloaded=true
	fi
	
	if [ "$downloaded" == "true" ]
		then 
		echo "DOWNLOADED SUCCESSFULLY!!!"
	fi
	exit 0
}

echo "WELCOME TO DUAR (Desktop Up And Running)."
echo 
echo "This script will attempt to install a customized Openbox"
echo "desktop. It is loosely based off #! (Crunchbang)."
echo 
echo "We assume that you installed Ubuntu Mini and are now running this"
echo "script to get a simple desktop up and running."
echo 
sleep 1
echo -n "Do you want to continue with DUAR installation? [y/n] : "
read continue

if [ "$continue" == "y" ] | [ "$continue" == "Y" ] 
	then 
	
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
	InstallXScreensaver
	apt-get install xscreensaver				#Allows for lock SEE: http://www.linuxx.eu/2014/02/locking-screen-in-openbox.html
												#XSCREENSAVER IS OLD. I HAD TO DOWNLOAD THE .DEB FROM https://packages.debian.org/sid/xscreensaver
												# 	INSTALLED IT WITH: sudo dpkg -i xscreen*
												
	




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

	#COPY COMMAND 
	#cp cb-lock dstfldr/cb-lock --backup --suffix=.backup

fi

sleep .5
echo "Exiting DUAR..."
exit 0








