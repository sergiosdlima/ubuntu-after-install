#!/bin/bash

## Referências
## ===========
## http://howtoubuntu.org/things-to-do-after-installing-ubuntu-14-04-trusty-tahr
## http://www.erikaheidi.com/blog/setting-up-a-development-machine-with-ubuntu-1404-trusty-tahr
## http://www.webupd8.org/2014/04/10-things-to-do-after-installing-ubuntu.html

echo "#########################" &&
echo "## Atualizando pacotes ##" &&
echo "#########################" &&
sudo apt-get update &&
echo "##########################################################" &&
echo "## Instalando coisas básicas, como vim, curl, git e etc ##" &&
echo "##########################################################" &&
sudo apt-get install -y vim curl git htop python-software-properties
echo "###########################" &&
echo "## Instalando terminator ##" &&
echo "###########################" &&
sudo apt-get install -y terminator
echo "##########################" &&
echo "## Instalando Oh My Zsh ##" &&
echo "##########################" &&
sudo apt-get install -y zsh
curl -L http://install.ohmyz.sh | sh
echo "#######################################" &&
echo "## Instalando ReText editor Markdown ##" &&
echo "#######################################" &&
sudo apt-get install- y retext
echo "#########################################################" &&
echo "## Baixando e instalando GetDeb e PlayDeb repositórios ##" &&
echo "#########################################################" &&
wget http://archive.getdeb.net/install_deb/getdeb-repository_0.1-1~getdeb1_all.deb http://archive.getdeb.net/install_deb/playdeb_0.3-1~getdeb1_all.deb &&
echo "#######################" &&
echo "## Instalando GetDeb ##" &&
echo "#######################" &&
sudo dpkg -i getdeb-repository_0.1-1~getdeb1_all.deb &&
echo "########################" &&
echo "## Instalando PlayDeb ##" &&
echo "########################" &&
sudo dpkg -i playdeb_0.3-1~getdeb1_all.deb &&
echo "###################################################" &&
echo "Removendo arquivos de downloads GetDeb e PlayDeb ##" &&
echo "###################################################" &&
rm -f getdeb-repository_0.1-1~getdeb1_all.deb &&
rm -f playdeb_0.3-1~getdeb1_all.deb
echo "############################################" &&
echo "## Instalando o repositório Oracle Java 8 ##" &&
echo "############################################" &&
sudo add-apt-repository -y ppa:webupd8team/java
echo "#############################################" &&
echo "## Adicionando o repositório do VLC player ##" &&
echo "#############################################" &&
sudo add-apt-repository -y ppa:videolan/stable-daily
echo "########################################################" &&
echo "## Adicionando o repositório do GIMP editor de imagem ##" &&
echo "########################################################" &&
sudo add-apt-repository -y ppa:otto-kesselgulasch/gimp
echo "################################################" &&
echo "## Adicionando o repositório do Y PPA Manager ##" &&
echo "################################################" &&
sudo add-apt-repository -y ppa:webupd8team/y-ppa-manager
echo "###########################################" &&
echo "## Adicionando o repositório do LibDVDSS ##" &&
echo "###########################################" &&
echo 'deb http://download.videolan.org/pub/debian/stable/ /' | sudo tee -a /etc/apt/sources.list.d/libdvdcss.list &&
echo 'deb-src http://download.videolan.org/pub/debian/stable/ /' | sudo tee -a /etc/apt/sources.list.d/libdvdcss.list &&
wget -O - http://download.videolan.org/pub/debian/videolan-apt.asc|sudo apt-key add -
echo "############################################" &&
echo "## Adicionando o repositório trusty-media ##" &&
echo "############################################" &&
sudo add-apt-repository -y ppa:mc3man/trusty-media
echo "######################" &&
echo "## Obtendo pacotes ##" &&
echo "#####################" &&
sudo apt-get update &&
echo "#########################" &&
echo "## Atualizando pacotes ##" &&
echo "#########################" &&
sudo apt-get upgrade
echo "#################################" &&
echo "## Instalando Oracle JDP/JRE 8 ##" &&
echo "#################################" &&
sudo apt-get install -y oracle-java8-installer
sudo apt-get install -y oracle-java8-set-default
echo "###########################" &&
echo "## Instalando VLC player ##" &&
echo "###########################" &&
sudo apt-get install -y vlc
echo "######################################" &&
echo "## Instalando GIMP editor de imagem ##" &&
echo "######################################" &&
sudo apt-get install -y gimp gimp-data gimp-plugin-registry gimp-data-extras
echo "##############################" &&
echo "## Instalando Y PPA Manager ##" &&
echo "##############################" &&
sudo apt-get install -y y-ppa-manager
echo "#############################" &&
echo "## Instalando Flash plugin ##" &&
echo "#############################" &&
sudo apt-get install -y flashplugin-installer
echo "########################################################" &&
echo "## Instalando ferramentas para extração e compactação ##" &&
echo "########################################################" &&
sudo apt-get install -y unace unrar zip unzip p7zip-full p7zip-rar sharutils rar uudeview mpack arj cabextract file-roller 
echo "################################################################" &&
echo "## Instalando codecs para tocar mídias de áudio, vídeo e DVDs ##" &&
echo "################################################################" &&
sudo apt-get install -y libxine1-ffmpeg mencoder flac faac faad sox ffmpeg2theora libmpeg2-4 uudeview libmpeg3-1 mpeg3-utils mpegdemux liba52-dev mpeg2dec vorbis-tools id3v2 mpg321 mpg123 libflac++6 totem-mozilla icedax lame libmad0 libjpeg-progs libdvdcss2 libdvdread4 libdvdnav4 libswscale-extra-2 ubuntu-restricted-extras 
echo "#############################################" &&
echo "## Instalando suporte a H.264 para Firefox ##" &&
echo "#############################################" &&
sudo apt-get install -y gstreamer0.10-ffmpeg
echo "##############################" &&
echo "## Instalando Google Chrome ##" &&
echo "##############################" &&
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb &&
sudo dpkg -i google-chrome-stable_current_amd64.deb &&
rm -f google-chrome-stable_current_amd64.deb
echo "##############################" &&
echo "## Cleaning Up ##" &&
echo "##############################" &&
sudo apt-get -f install &&
sudo apt-get -y autoremove &&
sudo apt-get -y autoclean &&
sudo apt-get -y clean
