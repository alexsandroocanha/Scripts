#! /bin/bash/ /usr/bin/bash/ 

echo "---------------Insira um valor de instalação---------------"
echo "[1] Instalação de Software de DevOps-----------------------"
echo "[2] Instalação de IDE--------------------------------------"
echo "[3] Instalação de Todos os softwares-----------------------"
echo "[x] Sair---------------------------------------------------"

read valorUser

if [ "$valorUser" == 1 || "$valorUser" == 3 ];
then;

    pacman -S git -y
    pacman -S docker -y
    pacman -S docker-compose -y
    pacman -S python -y
    pacman -S terraform -y
    pacman -S mingw-w64-binutils -y
    pacman -S nano -y
    pacman -S ansible -y
    

    curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
    chmod 777 kubectl
    mv kubectl /usr/bin/

    git clone https://aur.archlinux.org/rancher-desktop.git
    cd rancher-desktop
    makepkg -si

fi;


if [ "$valorUser" == 2 || "$valorUser" == 3 ];
then;

    pacman -S code -y

fi;
