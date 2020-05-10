# P99-Linux-Installer
A small shell script that installs Project 1999 on Linux.

## Prerequisites
You need a torrent client, and you need a Debian based distro. I tested this using Linux Mint and it ran flawlessly.

## Running The Script
```
bash p99_install.sh
```
Make sure you place the torrent download in Downloads (this is usually a default directory)
The rest is done for you, wait, and don't enter yes until the torrent has fully downloaded.

## Playing The Game
```
cd /home/$USER/'EverQuest Project 1999'/
```
```
wine eqgame patchme
```


### A Few Things To Note
Your game is likely going to crash the first time you try entering world. Just run the game again.

The 'EverQuest Project 1999' folder is in /home/$USER/ so just cd into that directory and run 'wine eqgame patchme'

To fix the sound and play the MIDI tracks you'll have to configure that manually through qsynth. See this wiki for additional information: https://wiki.project1999.com/EverQuest_in_Linux_Guide
