#!/usr/bin/env bash

clear
apt update -y && apt upgrade -y
clear
declare -a packages=("python" "python2")
 for i in "${packages[@]}"; do
    if ! dpkg-query -W -f='${Status}' $i 2>/dev/null | grep -q "ok installed"; then
        echo "$i is not installed, Installing now..."
            pkg install "$i" -y
    else
        echo "The $i package has already been installed."
    fi
 done
 clear
python3 -m pip install -r requirements.txt
clear
if [ -d ~/bin ]; then 
    echo ""
else 
    mkdir -p ~/bin
fi
chmod +x aio.py
mv aio.py aio
cp aio ~/bin
export PATH="$PATH:~/bin"
source ~/.bashrc
clear
rm -rf aio.sh
echo "Done installing. type 'python aio' to start the program"
