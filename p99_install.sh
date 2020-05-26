#This installs prerequisites for Debian based distros only, uncomment this otherwise
sudo apt-get install wine-stable winehq-stable fluidsynth qsynth fluid-soundfont-gm libglu1-mesa:i386 -y

xdg-open "magnet:?xt=urn:btih:9B2186AF1F2B46D1126A1A35A68DE445C4597C4A&dn=EverQuest%20Titanium%20-%20Project%201999%20-%20The%20Scars%20of%20Velious&tr=udp%3A%2F%2Ftracker.coppersurfer.tk%3A6969%2Fannounce&tr=udp%3A%2F%2F9.rarbg.to%3A2920%2Fannounce&tr=udp%3A%2F%2Ftracker.opentrackr.org%3A1337&tr=udp%3A%2F%2Ftracker.internetwarriors.net%3A1337%2Fannounce&tr=udp%3A%2F%2Ftracker.leechers-paradise.org%3A6969%2Fannounce&tr=udp%3A%2F%2Ftracker.coppersurfer.tk%3A6969%2Fannounce&tr=udp%3A%2F%2Ftracker.pirateparty.gr%3A6969%2Fannounce&tr=udp%3A%2F%2Ftracker.cyberia.is%3A6969%2Fannounce" &> /dev/null

clear

while true; do
    read -p "Has the torrent fully downloaded? Please enter yes or no: " yn
    case $yn in
    [Yy]* ) break;;
    [Nn]* ) continue;;
    * );;
    esac
done

cd /home/$USER/Downloads

unzip EverQuest\ Project\ 1999.zip -d /home/$USER/

cd /home/$USER/'EverQuest Project 1999'/

wget http://www.project1999.com/files/P99Files53.zip

unzip 'P99Files53.zip' -d P99spellfiles

rsync -av /home/$USER/EverQuest\ Project\ 1999/P99spellfiles/ /home/$USER/EverQuest\ Project\ 1999/

echo ""
echo "It's installed. cd into the EverQuest Project 1999 directory and run: wine eqgame patchme"
echo ""
echo "If you aren't seeing any servers upon server select you either need to run a VPN or use https://github.com/Zaela/p99-login-middlemand"
echo ""
echo "I recommend just using a VPN like https://riseup.net/en/vpn/linux"
