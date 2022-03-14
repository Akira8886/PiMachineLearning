#!/bin/bash

gitpath=$(head -1 gitpath.txt)
wget https://raw.githubusercontent.com/$gitpath/main/createvm.sh
wget https://raw.githubusercontent.com/$gitpath/main/vmcreate.sh
wget https://raw.githubusercontent.com/$gitpath/main/list_region_createvm.txt

cat list_region_createvm.txt | awk 'BEGIN{srand();}{print rand()"\t"$0}' | sort -k1 -n | cut -f2- > list_region_createvm_use.txt

chmod +x createvm.sh
chmod +x vmcreate.sh
./script-bash-default.sh

echo "CAI DAT CLI HOAN THANH, CHO REBOOT VA LOGIN VAO LAI"
sudo reboot
