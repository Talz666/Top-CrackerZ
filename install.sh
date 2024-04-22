#!/bin/env & bash

#Color Pack
black="\033[1;30m"
red="\033[1;31m"
green="\033[1;32m"
yellow="\033[1;33m"
blue="\033[1;34m"
purple="\033[1;35m"
cyan="\033[1;36m"
violate="\033[1;37m"
white="\033[0;37m"
nc="\033[00m"
LRED='\033[01;31m'
LGREEN='\033[01;32m'
LYELLOW='\033[01;33m'
LBLUE='\033[01;34m'
LPURPLE='\033[01;35m'
LCYAN='\033[01;36m'
WHITE='\033[01;37m'
BOLD='\e[100;92m'

#Symbol
errorSymbol="[-] - " #error symbol
loadingSymbol="[~] - " #loading symbol
successSymbol="[+] - " #success symbol
infoSymbol="[=] - " #info symbol

#Installing All Packages Needed

#NodeJs Installation
nodejsInstall(){
  if dpkg -l | grep -q "nodejs"; then
    echo -e "${infoSymbol}All Packages Is Installed"
  else
    pkg i nodejs
    echo -e "${infoSymbol}All Packages Is Installed"
  fi
}

#Lolcat Installation
lolcatInstall(){
  if gem list | grep -q "lolcat"; then
    #Calling The Next Function
    nodejsInstall #Function Name
  else
    echo -e "${loadingSymbol}}Installing Lolcat"
    gem install lolcat
    #Calling The Next Function
    nodejsInstall #Function Name
  fi
}

#Ruby Installation
rubyInstall(){ #Function
  if dpkg -l | grep -q "ruby"; then
    #Calling The Next Function
    lolcatInstall #Function Name
  else
    echo -e "${loadingSymbol}Installing Ruby"
    pkg i ruby -y
    #Calling The Next Function
    lolcatInstall #Function Name
  fi
}


#Figlet Installation
figletInstall(){ #Function
  if dpkg -l | grep -q "figlet"; then
    echo -e "${infoSymbol}Putting Bloody Font"
    #Putting Some Font Bloody
    cp Bloody.flf /data/data/com.termux/files/home
    cp Bloody.flf /data/data/com.termux/files/usr/share/figlet
    #Calling The Next Function
    rubyInstall #Function Name
  else
    echo -e "${loadingSymbol}Installing Figlet"
    pkg i figlet -y
    echo -e "${infoSymbol}Putting Bloody Font"
    #Putting Some Font Bloody
    cp Bloody.flf /data/data/com.termux/files/home
    cp Bloody.flf /data/data/com.termux/files/usr/share/figlet
    #Calling The Next Function
    rubyInstall #Function Name
  fi
}

#Calling The First Function
figletInstall #Function Name