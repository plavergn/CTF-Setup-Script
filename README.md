# CTF-Setup-Script

<h2>What does this script do ?</h2>
<ul>
<li>Create a folder for working on your CTF</li><br/>
<li>Create info.txt (an empty file for writing all the stuff that you will need during the CTF)</li><br/>
<li>Launch an OpenVPN on a new window with your file.opvpn (You need to modify the filename on the script)</li><br/>
<li>Create two new tab on your terminal</li><br/>
<li>Do four different nmap scan on your target</li><br/>
<li>Put the results of the scans in differents files on a folder (Nmap_scans)</li><br/>
<li>Do two gobuster dir (one with the dirb/common.txt wordlist and the other with dirbuster/directory-list-2.3-medium.txt wordlist)</li><br/>
<li>Put the results of the dir scans in differents files on a folder (Gobuster)</li><br/>
</ul>
 
<h3>You need to have "xdotool" installed. If not :</h3> 

<code>$ sudo apt-get install xdotool</code>
