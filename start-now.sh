#!/bin/bash

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

#About User
whoisMe=$(whoami)

#Symbol
errorSymbol="${WHITE}[${red}-${WHITE}] ${purple}- ${LYELLOW}" #error symbol
loadingSymbol="${WHITE}[${cyan}~${WHITE}] ${purple}- ${LYELLOW}" #loading symbol
successSymbol="${WHITE}[${green}+${WHITE}] ${purple}- ${LYELLOW}" #success symbol
infoSymbol="${WHITE}[${blue}=${WHITE}] ${purple}- ${LYELLOW}" #info symbol

#Tool List
backTomenu(){
  echo ""
  printf "type o for back to main menu: "
  read oBack
  if [[ $oBack == "o" ]]; then
    #Calling The Function
    mainPage #Function Name
  else
    #Calling The Function
    backTomenu #Function Name
  fi
}
tool4(){
  if [ -d "Wifi-Brute" ]; then
    echo -e "Wifi-Brute -- Installed"
    #Calling The Function
    backTomenu #Function Name
  else
    echo -e "Wifi-Brute -- Not Installed"
    #Calling The Function
    backTomenu #Function Name
  fi
}
tool3(){
  if [ -d "HackerCam" ]; then
    echo -e "HackerCam -- Installed"
    #Calling The Function
    tool4 #Function Name
  else
    echo -e "HackerCam -- Not Installed"
    #Calling The Function
    tool4 #Function Name
  fi
}
tool2(){
  if [ -d "zphisher" ]; then
    echo -e "Zphisher -- Installed"
    #Calling The Function
    tool3 #Function Name
  else
    echo -e "Zphisher -- Not Installed"
    #Calling The Function
    tool3 #Function Name
  fi
}
tool1(){
  if [ -d "UserFinder" ]; then
    echo -e "UserFinder -- Installed"
    #Calling The Function
    tool2 #Function Name
  else
    echo -e "UserFinder -- Not Installed"
    #Calling The Function
    tool2 #Function Name
  fi
}

#mainPage Function
mainPage(){ #Function
  clear
  figlet -c -f Bloody "TOpHAck" | lolcat
  echo ""
  echo -e "           ${LRED}[${WHITE}u${LRED}] ${purple}= ${LYELLOW}User Finder"
  sleep 0.7
  echo -e "           ${LRED}[${WHITE}s${LRED}] ${purple}= ${LYELLOW}Social Media Phishing"
  sleep 0.7
  echo -e "           ${LRED}[${WHITE}c${LRED}] ${purple}= ${LYELLOW}Camera Phishing Hacking"
  sleep 0.7
  echo -e "           ${LRED}[${WHITE}w${LRED}] ${purple}= ${LYELLOW}Wifi [WEP/WPA/WPA2] Cracking"
  sleep 0.7
  echo -e "           ${LRED}[${WHITE}l${LRED}] ${purple}= ${LYELLOW}List Attack"
  sleep 0.7
  echo -e "           ${LRED}[${WHITE}e${LRED}] ${purple}= ${LYELLOW}Exit T0p_H4ckz"
  sleep 0.7
  echo ""
  printf "${LYELLOW}T0p${WHITE}@${LRED}H4ckz:# "
  read userChoice
  if [ -z $userChoice ]; then
    echo -e "
    ${errorSymbol}The $userChoice Is Not Valid"
    sleep 1
    #Calling The Function
    mainPage #Function Name
  elif [[ $userChoice == "u" ]]; then
    echo -e "
    ${LYELLOW}TOOL INFORMATION
    ${LPURPLE}________________
    ${LRED}Name: ${black}UserFinder
    ${LRED}Creator: ${black}Misha Korzhik
    "
    printf "${LYELLOW}Do You Want To Install ${WHITE}(${LRED}y${LCYAN}N${WHITE})${LYELLOW}:${nc} "
    read yN
    if [[ $yN == "y" ]]; then
      clear
      figlet -c -f Bloody "Install" | lolcat
      echo ""
      pkg update
      pkg install git -y
      git clone https://github.com/mishakorzik/UserFinder
      cd UserFinder
      chmod +x UserFinder.sh
      bash UserFinder.sh
    else
      #Calling The Function
      mainPage #Function Name
    fi
  elif [[ $userChoice == "s" ]]; then
    echo -e "
    ${LYELLOW}TOOL INFORMATION
    ${LPURPLE}________________
    ${LRED}Name: ${black}Zphisher
    ${LRED}Creator: ${black}Htr-Tech
    "
    printf "${LYELLOW}Do You Want To Install ${WHITE}(${LRED}y${LCYAN}N${WHITE})${LYELLOW}:${nc} "
    read yN
    if [[ $yN == "y" ]]; then
      clear
      figlet -c -f Bloody "Install" | lolcat
      git clone --depth=1 https://github.com/htr-tech/zphisher.git
      cd zphisher
      bash zphisher.sh
    else
      #Calling The Function
      mainPage #Function Name
    fi
  elif [[ $userChoice == "c" ]]; then
    echo -e "
    ${LYELLOW}TOOL INFORMATION
    ${LPURPLE}________________
    ${LRED}Name: ${black}HackerCam
    ${LRED}Creator: ${black}K4itrun
    "
    printf "${LYELLOW}Do You Want To Install ${WHITE}(${LRED}y${LCYAN}N${WHITE})${LYELLOW}:${nc} "
    read yN
    if [[ $yN == "y" ]]; then
      clear
      figlet -c -f Bloody "Install" | lolcat
      git clone https://github.com/k4itrun/HackerCam.git && cd HackerCam && termux-setup-storage
      bash hcam.sh
    else
      #Calling The Function
      mainPage #Function Name
    fi
  elif [[ $userChoice == "w" ]]; then
    echo -e "
    ${LYELLOW}TOOL INFORMATION
    ${LPURPLE}________________
    ${LRED}Name: ${black}Wifi-Brute
    ${LRED}Creator: ${black}Cyber-Dioxide
    "
    printf "${LYELLOW}Do You Want To Install ${WHITE}(${LRED}y${LCYAN}N)${LYELLOW}:${nc} "
    read yN
    if [[ $yN == "y" ]]; then
      clear
      figlet -c -f Bloody "Install" | lolcat
      git clone https://github.com/Cyber-Dioxide/Wifi-Brute
      cd Wifi-Brute
      chmod +x *
      python3 wifi-brute.py --help
      python3 wifi-brute.py
      python3 wifi-brute.py
    else
      #Calling The Function
      mainPage #Function Name
    fi
  elif [[ $userChoice == "l" ]]; then
    clear
    figlet -c -f Bloody "Tools" | lolcat
    #Calling The Function
    tool1 #Function Name
  elif [[ $userChoice == "e" ]]; then
    clear
    figlet -c -f Bloody "Bye Bye" | lolcat
    echo -e "Thanks For Using"
  fi
}

#starting Function
starting(){ #Function
  echo -e "
  ${loadingSymbol}Please Wait"
  sleep 2 #Timing
  printf "
  ${infoSymbol}Username: "
  printf $whoisMe #Who Is Me
  sleep 1 #Timing
  bash install.sh #Install Packages
  #Calling The Function
  mainPage #Function Name
}

#Calling The Function
starting #Fumction Name