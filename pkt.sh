#!/bin/bash
mkdir pkt
cd pkt
# update
sudo apt update
sudo apt install screen -y
# download
wget https://raw.githubusercontent.com/nurfasikin/PKT/main/pkt.sh
chmod +x pkt.sh
# running
screen -S "packetcrypt" -d -m
screen -r "packetcrypt" -X stuff $'./packetcrypt.sh\n'
echo "done"
