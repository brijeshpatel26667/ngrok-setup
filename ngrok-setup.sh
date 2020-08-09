#!/bin/bash
# Ngrok Setup Tool Created By cYBER cRYPTO
# Github:github.com/brijeshpatel26667
# Code Optimized By kNIGHT
# Github:github.com/cyberknight777

#Dependencies

Dep() {

read -p $'\n\e[1;94m Are You Running This Tool On Termux? (Y/N): \e[0m' ostype

if [[ $ostype -eq 'Y' || $ostype -eq 'y' ]]; then

echo -e "\e[4;96m Installing Dependencies.... \e[0m"

sleep 0.5

echo -e "\e[1;95m"
apt install wget toilet figlet unzip exa ruby
gem install lolcat
wget -O $PREFIX/share/figlet/ASCII-Shadow.flf https://raw.githubusercontent.com/xero/figlet-fonts/master/ANSI%20Shadow.flf
touch plugins.installed

echo -e "\e[3;96m Dependencies Installed!"

sleep 2

elif [[ $ostype -eq 'N' || $ostype -eq 'n' ]]; then

echo -e "\e[4;95m Installing Dependencies.... \e[0m"

sleep 0.5

echo -e "\[1;95m"
sudo apt install wget toilet figlet unzip ruby
gem install lolcat
wget -O $PREFIX/share/figlet/ASCII-Shadow.flf https://raw.githubusercontent.com/xero/figlet-fonts/master/ANSI%20Shadow.flf
touch plugins.installed

echo -e "\e[3;96m Dependencies Installed!"

sleep 2

fi

}

clear

#File Availability

File() {


if [ -e "$HOME/.ngrok2/ngrok.yml" ]; then

echo "You Are Good To Go!"

exit 0

else
        echo -e "\e[3;96mDOWNLOADING NGROK \e[0m"
        cd
        wget --no-check-certificate https://bin.equinox.io/a/e93TBaoFgZw/ngrok-2.2.8-linux-arm.zip
        unzip ngrok-2.2.8-linux-arm.zip
        rm ngrok*.zip
fi

}


#Banner

Banner() {

toilet -F border:gay -f ASCII-Shadow bRIZZESh

echo -e "    \e[101m\e[1;77m:: Script Made by cYBER cRYPTO & OPTIMIZED BY kNIGHT         :: \e[0m"

echo -e "    \e[101m\e[1;77m:: This Tool Will Help You To Setup NGROK for Port-Forwading :: \e[0m "

read -p $'\n\e[1;36m[\e[0m\e[1;92m*\e[0m\e[1;36m]\e[0m\e[1;92m Enter your Authtoken: \e[0m' auth
cd && ./ngrok authtoken $auth
read -p $'\n\e[1;36m[\e[0m\e[1;92m*\e[0m\e[1;36m]\e[0m\e[1;92m Enter port for HTTP: \e[0m' port1
read -p $'\n\e[1;36m[\e[0m\e[1;92m*\e[0m\e[1;36m]\e[0m\e[1;92m Enter port for TCP: \e[0m' port2
read -p $'\n\e[1;36m[\e[0m\e[1;92m*\e[0m\e[1;36m]\e[0m\e[1;92m Enter port for TCP2: \e[0m' port3

}

#Configuration

Config() {

echo "authtoken: $auth" > .ngrok2/ngrok.yml
echo "  " >> .ngrok2/ngrok.yml
echo "tunnels:" >> .ngrok2/ngrok.yml
echo "   http:" >> .ngrok2/ngrok.yml
echo "     proto: http" >> .ngrok2/ngrok.yml
echo "     addr: $port1" >> .ngrok2/ngrok.yml
echo " " >> .ngrok2/ngrok.yml
echo "   tcp:" >> .ngrok2/ngrok.yml
echo "     proto: tcp" >> .ngrok2/ngrok.yml
echo "     addr: $port2" >> .ngrok2/ngrok.yml
echo " " >> .ngrok2/ngrok.yml
echo "   tcp2:" >> .ngrok2/ngrok.yml
echo "     proto: tcp" >> .ngrok2/ngrok.yml
echo "     addr: $port3" >> .ngrok2/ngrok.yml

}

if [[ -f plugins.installed ]] ; then

File
clear
Banner
Config

else

	Dep
	File
	clear
	Banner
	Config

fi
