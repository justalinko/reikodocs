#!/bin/bash

which php > /dev/null 2>&1
if [ $? -eq 0 ]; then
     echo "[+] PHP Installed. "
else
     echo "[!] PHP Not installed "
     echo "[-] Please install php to continue"
     echo "[#] You can using autidz for automatic web server installation"
     echo "Run command : git clone https://github.com/bashidorg/autidz.git  ; cd autidz ; chmod +x *.sh ; ./autidz_v1.1.sh"
     exit 1
fi

which composer > /dev/null 2>&1
if [ $? -ne 0 ]; then
     echo "[!] Composer not installed."
     echo "[-] See : https://getcomposer.org/download/ for install"
     exit 1
fi

echo "[!] Downloading reikoframework ..."

composer create-project justalinko/reikoframework:dev-master reikophp
cd reikophp
echo "[!] Default configure reiko ..."
php reiko app:init
echo "[!] Run development mode ..."
php reiko app:run