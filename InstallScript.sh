#!/bin/bash
echo "----------------------------"
echo "-----UPDATE AND UPGRADE-----"
echo "----------------------------"
sleep 1.5
apt-get update 
apt-get upgrade 

echo "----------------------------"
echo "-----INSTALLING DESKTOP-----"
echo "----------------------------"
sleep 1.5
apt-get install xorg 						#xorg... duh
apt-get install openbox 					#Openbox Window Manager 
apt-get install obmenu 						#Openbox Menu Editor
apt-get install slim 						#LogIn Manager
apt-get install thunar						#File Manager
apt-get install gnome-icon-themes-full		#Icons for Thunar
apt-get install 



sudo apt-get install xorg         #xorg… duh
sudo apt-get install openbox obmenu     #openbox window manager and menu editor
sudo apt-get install slim         #login screen 
sudo apt-get install firefox        #firefox… another duh
sudo apt-get instal thunar        #Thunar file manager
sudo apt-get install geany        #Geany Text Editor
sudo apt-get install synaptic        #Synaptic install manager
sudo apt-get install terminator    #Terminal 
sudo apt-get install gnome-icon-themes-full
                        #Installs icons in thunar
sudo apt-get install gksu        #Installs the sudo dialog
sudo apt-get install lxtask        #Task manager
sudo apt-get install htop         #Task manager terminal
sudo apt-get install alsa-base alsa-utils 
sudo apt-get install nitrogen        #Can set the background with this
sudo apt-get install pulseaudio      #Sound Server
sudo apt-get install pavucontrol     #Pulse audio volume controller
sudo apt-get install gparted        #Disk Partitioner
sudo apt-get install simplecal    #Little calendar for tint2
sudo apt-get install volumeicon-alsa #installs the volume icon
sudo apt-get install thunar-archive-plugin #extract files
sudo apt-get install pm-utils        # allows for suspend 
sudo apt-get install git        #Git version control




