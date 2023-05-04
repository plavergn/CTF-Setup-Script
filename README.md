# CTF-Setup-Script

What does this script do ?

  -Create a folder for working on your CTF
  -Create info.txt (an empty file for writing all the stuff that you will need during the CTF)
  -Launch an OpenVPN on a new window with your file.opvpn (You need to modify the filename on the script)
  -Create two new tab on your terminal
  -Do four different nmap scan on your target
  -Put the results of the scans in differents files on a folder (Nmap_scans)
  -Do two gobuster dir (one with the dirb/common.txt wordlist and the other with dirbuster/directory-list-2.3-medium.txt wordlist)
  -Put the results of the dir scans in differents files on a folder (Gobuster)
 
You need to have "xdotool" installed. If not : 
  $ sudo apt-get install xdotool
