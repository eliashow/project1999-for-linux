# Project1999 For Linux
This is a small shell script that installs EverQuest Project 1999 on Linux.

It also sets up https://github.com/Zaela/p99-login-middlemand so you can get around the UDP "no servers at server select" bug.

## Prerequisites
You need a torrent client, and a Debian based distro. I tested this using Linux Mint.

## Running The Script
```
git clone https://github.com/eliashow/project1999-for-linux.git
cd project1999-for-linux
bash install.sh
```
Make sure the torrent is being downloaded to '/home/$USER/Downloads' and the rest is done for you.

## Playing The Game
```
cd /home/$USER/Project1999
bash run.sh
```


### A Few Things To Note
Your game is likely going to crash the first time you try entering world. Just run the game again.

The 'Project1999' folder is in /home/$USER/ so just cd into that directory and run 'bash run.sh'

To fix the sound and play the MIDI tracks you'll have to configure that manually through qsynth. See this wiki for additional information: https://wiki.project1999.com/EverQuest_in_Linux_Guide

## Sound
https://github.com/eliashow/project1999-for-linux/tree/master/Screenshots

Qsynth must be running to get sound in Project1999 EverQuest

In Qsynth: click Setup -> make sure MDI Driver under MIDI tab is set to alsa_seq -> Audio Driver under Audio tab is set to alsa -> Open FluidR3_GM.sf2 under Soundfonts tab -> click ok and restart qsynth as prompted.

See attached screenshots and ensure your Qsynth matches mine.

### To Do
Needs some revision, a ncurses user interface may be nice.

Need to move away from torrent install and instead use wine to install EQ titanium from discs

rewrite in brainfuck
