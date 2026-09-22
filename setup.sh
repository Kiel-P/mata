#!/bin/bash

echo "Memulai proses instalasi dan konfigurasi..."

# 1. Update dan install paket
pkg update -y && pkg upgrade -y
pkg install ruby cowsay toilet figlet nano -y
pkg install git -y && pkg install python
gem install lolcat

# 2. Setup storage (Meminta izin akses penyimpanan)
termux-setup-storage

# 3. Konfigurasi .bashrc
cat << 'EOF' > ~/.bashrc
clear
blue='\e[1;34m'
green='\e[1;32m'
purple='\e[1;35m'
cyan='\e[1;36m'
red='\e[1;31m'
white='\e[1;37m'
yellow='\e[1;33m'
NOW=`date "+%d.%m.%Y"`
TIME=`date "+%H:%M"`
cowsay -f eyes Kiki Hendri Prasetyo | lolcat
toilet -f standard " WELCOME " -F gay
echo -e $blue'======================================================'
echo Login Bersama...| lolcat
echo -e $red'======================================================'
echo Username-: K I H E O | lolcat
echo E-Mail---: Kikihendriprasetyo@gmail.com | lolcat
echo No HP----: +62 859-4600-0042 | lolcat
echo -e $yellow'======================================================'
date | lolcat
echo -e $green'======================================================'

alias 0='source ~/.bashrc'
alias 00='nano ~/.bashrc'
alias 1='exit'
alias l='ls'
alias a='cd me-cli && python main.py'
alias g='cd git && python main.py'
alias k='cd kiel && python main.py'
alias 3='git pull'
alias h='clear'
alias p='python main.py'
alias c='cd ~/'
alias m='cd /sdcard'
alias cc='cd ..'
EOF

# 4. Konfigurasi bash.bashrc (Prompt PS1)
cat << 'EOF' > $PREFIX/etc/bash.bashrc
PS1='\e[1;36m\]╭─\e[1;31m\] 🐑Kiheo🐑 \e[1;32m\]\w\e[0m\]\n\e[1;36m\]╰─ \033[01;31m\]» \[\033[01;35m\]'
EOF

# 5. Hapus motd (tulisan bawaan termux)
rm -rf $PREFIX/etc/motd

echo "Setup selesai! Silakan restart aplikasi Termux untuk melihat hasilnya."
