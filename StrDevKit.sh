#!/bin/bash 
colorAm=$'\e[93m'
colorAz=$'\e[36m'

    echo -e "\e[36m
+================================================+
|     ____ _____ ____  _   _            _        |
|    / ___|_   _|  _ \| \ | | ___  ___ | |__     |
|    \___ \ | | | |_) |  \| |/ _ \/ _ \| '_ \    |
|     ___) || | |  _ <| |\  |  __/ (_) | | | |   |
|    |____/ |_| |_| \_\_| \_|\___|\___/|_| |_|   |
|                                                |
|           ____ ${colorAm}   V1.0.1  ${colorAz} _  ___ _            |
|          |  _ \  _____   _| |/ (_) |_          |
|          | | | |/ _ \ \ / / ' /| | __|         |
|          | |_| |  __/\ V /| . \| | |_          |
|          |____/ \___| \_/ |_|\_\_|\__|         |
|                                                |
|    ${colorAm}       web and mobile development ${colorAz}          |
+================================================+
"$1

PS3="
┌─[✗]─[${colorAm}STRNeoh${colorAz}]─[${colorAm}DevKit${colorAz}]
└──╼ ${colorAm}$ ${colorAz}"

options=(
    "Angular JS"
    "Hamachi & Haguichi"
    "PHP  "
    "Node JS" 
    "Grails" 
    "Ionic/Cordova" 
    "Composer"
    "Spotify" 
    "Sair"
)

select opt in "${options[@]}"
do
    case $opt in
        "Angular JS")
            npm install -g @angular/cli
            ;;
        "Hamachi & Haguichi")
            wget -c https://www.vpn.net/installers/logmein-hamachi_2.1.0.203-1_amd64.deb
            sudo -H dpkg -i logmein-hamachi_2.1.0.203-1_amd64.deb
            sudo apt-get install -f
            # *********************haguichi***********************
            sudo sh -c 'echo "deb http://ppa.launchpad.net/webupd8team/haguichi/ubuntu bionic main" > /etc/apt/sources.list.d/haguichi.list'				
            sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys C2518248EEA14886
            sudo apt update
            sudo apt install -y haguichi
            ;;
        "PHP  ")
            sudo apt install -y php
            ;;
        "Node JS")
            sudo apt install -y nodejs
            ;;
        "Grails")
            sudo curl -s https://get.sdkman.io | bash
            source "$HOME/.sdkman/bin/sdkman-init.sh"
            sdk install grails
            ;;
        "Ionic/Cordova")
            sudo -H npm install -g ionic cordova
            ;;
        "Composer")
            php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
            php -r "if (hash_file('sha384', 'composer-setup.php') === '48e3236262b34d30969dca3c37281b3b4bbe3221bda826ac6a9a62d6444cdb0dcd0615698a5cbe587c3f0fe57a54d8f5') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
            php composer-setup.php
            php -r "unlink('composer-setup.php');"
            sudo mv composer.phar /usr/local/bin/composer
            ;;
        "Spotify")  
            sudo apt install snapd
            sudo snap install spotify
            ;;
        "Sair")
            break
            ;;
        *) echo "opção invalida $REPLY";;
    esac
done