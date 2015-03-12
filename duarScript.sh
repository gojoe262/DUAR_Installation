#!/bin/bash

########################################################################
# WELCOME TO DUAR (Desktop Up And Running).
#
# This script will attempt to install a customized Openbox
# desktop. It is loosely based off #! (Crunchbang).
#
# We assume that you installed Ubuntu Mini and are now running this
# script to get a simple desktop up and running.
########################################################################



########################################################################
# Exits this script
########################################################################
function ExitDuar {
	echo "Exiting DUAR..."
	exit 0
}

########################################################################
# Install the base desktop
########################################################################
function InstallDesktop {
	echo "----------\n--Installing XORG\n----------"
	apt-get install xorg 					#xorg... duh
	
	echo "----------\n--Installing Openbox\n----------"
	apt-get install openbox 				#Openbox Window Manager 
	
	echo "----------\n--Installing Obmenu\n----------"
	apt-get install obmenu 					#Openbox Menu Editor
	
	echo "----------\n--Installing Tint2\n----------"
	apt-get install tint2					#Taskbar
	tar -xzvf ./Resources/tint2/tintwizard-0.3.4.tar.gz /usr/local/bin/tintwizard.py #Tint wizard editor
	chmod +x /usr/local/bin/tintwizard.py	
	
	echo "----------\n--Installing Simplecal\n----------"
	apt-get install simplecal    				#Little calendar for tint2
	
	echo "----------\n--Installing Slim\n----------"
	apt-get install slim 					#LogIn Manager 
	
	echo "----------\n--Installing Nitrogen\n----------"
	apt-get install nitrogen        			#Can set the background with this
	
	echo "----------\n--Installing gksu\n----------"
	apt-get install gksu        				#Installs the sudo dialog
	
	echo "----------\n--Installing pm-utils\n----------"
	apt-get install pm-utils        			#Allows for suspend 
	
	echo "----------\n--Installing i3lock\n----------"
	apt-get install i3lock					#Allows for lock 		
	
	echo "----------\n--Installing gmrun\n----------"
	apt-get install gmrun                                  	#Run Dialog
}


########################################################################
# Install basic desktop apps
########################################################################
function InstallBasicDestopApps {
	echo "----------\n--Installing Thunar File Manager\n----------"
	apt-get install thunar							#File Manager
	apt-get install thunar-archive-plugin 			#Extract files utils
	apt-get install gnome-icon-themes-full			#Icons for Thunar

	echo "----------\n--Installing Alsa\n----------"
	apt-get install alsa-base 					#Sound
	apt-get install alsa-utils 					#Sound
	apt-get install volumeicon-alsa 			#installs the volume icon

	echo "----------\n--Installing PulseAudio\n----------"
	apt-get install pulseaudio      			#Pulse Audio Sound Server
	apt-get install pavucontrol     			#Pulse audio volume controller

	echo "----------\n--Installing Synaptic\n----------"
	apt-get install synaptic        			#Synaptic install manager

	echo "----------\n--Installing Terminator\n----------"
	apt-get install terminator    				#Terminal
	
	echo "----------\n--Installing GParted\n----------"
	apt-get install gparted        				#Disk Partitioner


	echo "----------\n--Installing LxTask\n----------"
	apt-get install lxtask        				#Task manager
	
	echo "----------\n--Installing gtk-theme-switch\n----------"
	sudo apt-get install gtk-theme-switch gtk2-engines
}

function InstallOtherApps {
	echo "----------\n--Installing Firefox\n----------"
	apt-get install firefox        				#Firefox...another duh

	echo "----------\n--Installing Geany\n----------"
	apt-get install geany        				#Geany Text Editor

	echo "----------\n--Installing Viewnior\n----------"
	apt-get install viewnior					#Picture Viewer

	echo "----------\n--Installing Evince\n----------"
	apt-get install evince						#Pdf viewer

	echo "----------\n--Installing gcc, g++, gdb, and others\n----------"
	apt-get install gcc							#gcc (C++)
	apt-get install g++							#g++ (C++)
	apt-get install gdb							#debugger (C++)
	apt-get install mesa-common-dev				#"GL/gl.h not found error" fix
	apt-get install libgl1-mesa-dev				#"Cannot find -lGL" fix

	echo "----------\n--Installing gcc, g++, gdb, and others\n----------"
	apt-get install git        					#Git version control

	echo "----------\n--Installing nm-applet\n----------"
	# NM_APPLET NOT REALLY WORKING THE WAY IT SHOULD
	apt-get install network-manager-gnome 		#nm-applet
	
	echo "----------\n--Installing xfce-Screenshooter\n----------"
	apt-get install xfce4-screenshooter			#Screenshooter tool
	
	echo "----------\n--Installing File-Roller Archive Manager\n----------"
	apt-get install file-roller					#Archive Manager
	
	echo "----------\n--Installing p7zip-full\n----------"
	apt-get install p7zip-full					#Allows for password protected .7z files
	
	echo "----------\n--Installing Cheese (Webcam Software)\n----------"
	apt-get install cheese						#Take video and picture from the webcam
	

}

function ConfigureDesktop {
	userSettings="$(eval echo ~${SUDO_USER})/.config"
	rootSettings="/etc/xdg"
	resources="./Resources"
	
	#Copy Autostart, Environment, menu.xml, and rc.xml to root
	cp $resources/openbox/* $rootSettings/openbox/ --backup --suffix=~ --recursive
	
	#Only copy menu.xml, and rc.xml to user
	cp $resources/openbox/menu.xml $userSettings/openbox/ --backup --suffix=~ --recursive
	cp $resources/openbox/rc.xml $userSettings/openbox/ --backup --suffix=~ --recursive
	
	#Copy tint2 to root and user
	cp $resources/tint2/* $rootSettings/tint2/ --backup --suffix=~ --recursive
	cp $resources/tint2/* $userSettings/tint2/ --backup --suffix=~ --recursive
		
	#Copy backgroundshuffle-start/next to /usr/local/bin/
	cp $resources/localBin/backgroundshufflestart /usr/local/bin/ --backup --suffix=~ --recursive
	cp $resources/localBin/backgroundshufflenext /usr/local/bin/ --backup --suffix=~ --recursive
	
	#Copy cb-exit to /usr/local/bin/
	cp $resources/localBin/cb-exit /usr/local/bin/ --backup --suffix=~ --recursive
	
	#Copy background.jpg to /usr/share/backgrounds -- MAKE SURE BACKGROUNDSHUFFLE CORROSPONDS TO THIS
	mkdir /usr/share/backgrounds
	cp $resources/background.jpg /usr/share/backgrounds/ --backup --suffix=~ --recursive
	
	#Copy and set up SLiM
	mkdir /usr/share/slim/themes/slim-hud
	cp $resources/slim-hud/* /usr/share/slim/themes/slim-hud --backup --suffix=~ --recursive
	cp $resources/etc/slim.conf /etc/ --backup --suffix=~ --recursive
	
	#Copy mountPartitions.sh
	cp $resources/localBin/mountPartitions.sh /usr/local/bin/ --backup --suffix=~ --recursive
	
	echo ""
}

########################################################################
# MAIN PROGRAM
########################################################################
echo "WELCOME TO DUAR (Desktop Up And Running)."
echo 
echo "This script will attempt to install a customized Openbox"
echo "desktop. It is loosely based off #! (Crunchbang)."
echo 
echo "We assume that you installed Ubuntu Mini and are now running this"
echo "script to get a simple desktop up and running."
echo 
sleep 1

echo -n "** Do you want to continue with DUAR installation? [y/n] : "
read continue

if [ "$continue" == "y" ] || [ "$continue" == "Y" ] 
	then
	
	echo "----------------------------"
	echo "-----UPDATE AND UPGRADE-----"
	echo "----------------------------"
	apt-get update 					#Update
	apt-get upgrade 				#Upgrade

	echo "----------------------------"
	echo "-------INSTALL DESKTOP------"
	echo "----------------------------"
	echo ""
	InstallDesktop

	echo "----------------------------------------"
	echo "----INSTALL BASIC APPS FOR DESKTOP------"
	echo "----------------------------------------"
	echo ""
	InstallBasicDestopApps

	echo "----------------------------"
	echo "----OTHER APPS TO INSTALL---"
	echo "----------------------------"
	InstallOtherApps
	
	echo "----------------------------"
	echo "----CONFIGURING DESKTOP-----"
	echo "----------------------------"
	ConfigureDesktop
fi

ExitDuar








