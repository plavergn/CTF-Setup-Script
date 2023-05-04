#!/bin/bash


ovpn_file = "filename.ovpn" # Change this


read -p "Enter the name of the folder you want to create and work in:" folder
mkdir $folder
cd $folder
current_dir=$folder
touch info.txt
read -p "Enter ip:" ip
sudo updatedb # Update the database of locate to find your openvpn file
path_vpn=$(locate "$ovpn_file")
if pgrep openvpn > /dev/null; then
	echo "OpenVPN is already running"
else
	gnome-terminal --title="OpenVPN" -- sudo openvpn $path_vpn
fi
read -p "Press Enter when OpenVpn is launch and ready" dontcare
xdotool type --delay 0 --clearmodifiers "cd $current_dir"
xdotool key Return
gnome-terminal --tab
gnome-terminal --tab
clear
echo "Starting nmap..."
mkdir Nmap_scans
nmap -sC -sV $ip > Nmap_scans/basic_port_nmap
nmap -sC -sV -p- $ip > Nmap_scans/all_port_nmap
nmap -sC -sV -Pn $ip > Nmap_scans/basic_port_Pn_nmap
nmap -sC -sV -p- -Pn $ip > Nmap_scans/all_port_Pn_nmap
echo "Starting gobuster..."
mkdir Gobuster
gobuster dir -u $ip -w /usr/share/wordlists/dirb/common.txt -t 60 > Gobuster/common
gobuster dir -u $ip -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -t 60 > Gobuster/medium
