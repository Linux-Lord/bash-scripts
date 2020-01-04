#!/bin/bash

# Script for setting up, enabling, configuring
# Apache2 HTTP Server Software on Ubuntu/Other (Tested on Mint 19.3)
# requires sudo, do not run as root account if being managed by user

# ansi color chart tput for reference 
# 0=black 1=red 2=green 3=yellow 4=blue
# 5=magenta 6=cyan 7=white

# some echo color variables
bg='tput setab '
txt='tput setaf '
black_bg='${bg}0'
black='${txt}0'
red_bg='${bg}1'
red='${txt}1'
green='${txt}2'
green_bg='${bg}2'
yellow='${txt}3'
yellow_bg='${bg}3'
blue='${txt}4'
blue_bg='${bg}4'
magenta='${txt}5'
magenta_bg='${bg}5'
cyan='${txt}6'
cyan_bg='${bg}6'
white='${txt}7'
white_bg='${bg}7'
reset=`tput sgr0`

# update sources and install apache2

sudo apt update
sudo apt -y install apache2
# check apache2 version to see if it's running
apache2 -version

# list possible apps to control via Uncomplicated Firewall
ufw app list
# select which type of Apache2 to accept into UFW
echo "${red}${white_bg} Select which version of Apache2 you'd like to"
echo "${red}${white_bg} Accept into the Firewall ${reset}"
sleep 1
echo "${black_bg}${green} 1.${reset}${black_bg}${white} Apache (HTTP port 80 only) ${reset}"
echo "${black_bg}${green} 2.${reset}${black_bg}${white} Apache Full (HTTP+HTTPS 80+443) ${reset}"
echo "${black_bg}${green} 3.${reset} ${black_bg} ${white} Apache Secure (HTTPS 443 only) ${reset}"
sleep 3
echo "${red}${white_bg} Select the version that suits your needs. ${reset}"
echo '${black_bg}${red} e.g. "${reset}$(white_bg}${green}1${reset}${black_bg}${red}/$}{reset}${white_bg}${green}2${reset}${black_bg}${red}/${reset}${white_bg}${green}3${reset}${black_bg}${red}" ${reset}'
read $apache_type
# if then statement to determine the answer
if 
