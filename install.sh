sudo apt-get install wine-stable multimedia-jack g++ linux-libc-dev fluidsynth qsynth fluid-soundfont-gm libglu1-mesa -y

xdg-open "magnet:?xt=urn:btih:9B2186AF1F2B46D1126A1A35A68DE445C4597C4A&dn=EverQuest%20Titanium%20-%20Project%201999%20-%20The%20Scars%20of%20Velious&tr=udp%3A%2F%2Ftracker.coppersurfer.tk%3A6969%2Fannounce&tr=udp%3A%2F%2F9.rarbg.to%3A2920%2Fannounce&tr=udp%3A%2F%2Ftracker.opentrackr.org%3A1337&tr=udp%3A%2F%2Ftracker.internetwarriors.net%3A1337%2Fannounce&tr=udp%3A%2F%2Ftracker.leechers-paradise.org%3A6969%2Fannounce&tr=udp%3A%2F%2Ftracker.coppersurfer.tk%3A6969%2Fannounce&tr=udp%3A%2F%2Ftracker.pirateparty.gr%3A6969%2Fannounce&tr=udp%3A%2F%2Ftracker.cyberia.is%3A6969%2Fannounce" &> /dev/null & clear

#This part is in desperate need of revision. Users can't be trusted to adhere to instructions.
printf "\t\t\t\t\t**ALERT VERY IMPORTANT**\n"
printf "Select the Downloads folder for your torrent download location, or you *WILL* break this installer!"
sleep 20
clear
FILE=/home/$USER/Downloads/EverQuest\ Project\ 1999.zip
while true; do
    if test -f "$FILE"; then
        break
    else
        printf "Please be patient while the torrent finishes downloading..."
        sleep 10
        clear
    fi
done

cd /home/$USER/Downloads
unzip EverQuest\ Project\ 1999.zip -d /home/$USER/
cd /home/$USER/'EverQuest Project 1999'/
wget --cipher 'DEFAULT:!DH' https://www.project1999.com/files/P99Files53.zip
unzip 'P99Files53.zip' -d P99spellfiles
rsync -av /home/$USER/EverQuest\ Project\ 1999/P99spellfiles/ /home/$USER/EverQuest\ Project\ 1999/
mv /home/$USER/'EverQuest Project 1999' /home/$USER/Project1999 

cd /home/$USER/Project1999
git clone https://github.com/Zaela/p99-login-middlemand.git
cd p99-login-middlemand
make
cd /home/$USER/Project1999
> eqhost.txt
cat > eqhost.txt <<EOF
[LoginServer]
Host=localhost:5998
EOF
cd /home/$USER/Project1999
cat > run.sh <<EOF
/home/$USER/Project1999/p99-login-middlemand/bin/p99-login-middlemand &
qsynth &
wine eqgame.exe patchme
EOF
