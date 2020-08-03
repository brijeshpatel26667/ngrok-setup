#!/bin/bash

clear
figlet cYBER cRYPTO

echo -e "    \e[101m\e[1;77m:: This Tool Will Help You To Setup NGROK for Port-Forwading :: \e[0m "

read -p $'\n\e[1;36m[\e[0m\e[1;92m*\e[0m\e[1;36m]\e[0m\e[1;92m Enter your Authtoken: \e[0m' auth
read -p $'\n\e[1;36m[\e[0m\e[1;92m*\e[0m\e[1;36m]\e[0m\e[1;92m Enter port for HTTP: \e[0m' port1
read -p $'\n\e[1;36m[\e[0m\e[1;92m*\e[0m\e[1;36m]\e[0m\e[1;92m Enter port for TCP: \e[0m' port2
read -p $'\n\e[1;36m[\e[0m\e[1;92m*\e[0m\e[1;36m]\e[0m\e[1;92m Enter port for TCP2: \e[0m' port3

echo "authtoken: $auth" >> .ngrok2/ngrok.yml
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


