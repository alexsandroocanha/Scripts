#! /bin/bash 

echo "---------------Insira um valor de instalação---------------"
echo "[1] Instalação de Software de DevOps-----------------------"
echo "[2] Instalação de IDE--------------------------------------"
echo "[3] Instalação de Todos os softwares-----------------------"
echo "[x] Sair---------------------------------------------------"

read valorUser

if [[ "$valorUser" == 2 || "$valorUser" == 3 ]];
then

    pacman -S code -y

fi;


if [[ "$valorUser" == 1 || "$valorUser" == 3 ]];
then

    pacman -Syu --needed --noconfirm git 
    pacman -Syu --needed --noconfirm docker 
    pacman -Syu --needed --noconfirm docker-compose 
    pacman -Syu --needed --noconfirm python 
    pacman -Syu --needed --noconfirm terraform 
    pacman -Syu --needed --noconfirm mingw-w64-binutils 
    pacman -Syu --needed --noconfirm nano 
    pacman -Syu --needed --noconfirm ansible 
    
    sudo systemctl enable --now docker

    curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
    sudo chmod 777 kubectl
    sudo mv kubectl /usr/bin/


    rm -rf rancher-desktop
    exit
    git clone https://aur.archlinux.org/rancher-desktop.git
    cd rancher-desktop
    makepkg -si --noconfirm

fi;
