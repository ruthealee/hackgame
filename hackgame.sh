#!/bin/bash
#
# Demonstration for Schools
#
# author Ruth Lee
# version 1.0
# date {TBC}
# email ruth@ruthealee.co.uk
#

r='\033[31m'
w='\033[0m'
g='\033[32m'
b='\033[34m'

OPTS=$(getopt -o h --long help -- "$@")
eval set -- "$OPTS"

while true; do
case "$1" in
  -h|--help)
  echo "An interactive script for kids. No flags needed"
  exit 1;;
  *) break ;;
esac
done

function intro {
echo -e $g"Logging in..."
echo ""
sleep 1
cat << "EOF"

                   .-;+$XHHHHHHX$+;-.
                ,;X@@X%/;=----=:/%X@@X/
              =$@@%=.              .=+H@X:
            -XMX:                      =XMX=
           /@@:                          =H@+
          %@X,                            .$@$
         +@X.                               $@%
        -@@,                                .@@=
        %@%                                  +@$
        H@:                                  :@H
        H@:         :HHHHHHHHHHHHHHHHHHX,    =@H
        %@%         ;@M@@@@@@@@@@@@@@@@@H-   +@$
        =@@,        :@@@@@@@@@@@@@@@@@@@@@= .@@:
         +@X        :@@@@@@@@@@@@@@@M@@@@@@:%@%
          $@$,      ;@@@@@@@@@@@@@@@@@M@@@@@@$.
           +@@HHHHHHH@@@@@@@@@@@@@@@@@@@@@@@+
            =X@@@@@@@@@@@@@@@@@@@@@@@@@@@@X=
              :$@@@@@@@@@@@@@@@@@@@M@@@@$:
                ,;$@@@@@@@@@@@@@@@@@@X/-
                   .-;+$XXHHHHHX$+;-.

		     BLACK MESA INC

*********************************************************************************

This is a BLACK MESA Computer System. This computer system,
including all related equipment, networks, and network devices, are provided only for authorised use. 

Use of this computer system, authorised or unauthorised, constitutes consent to monitoring of this 
system. Evidence collected during monitoring may be used for administrative, criminal, or other 
adverse action including disclosure BLACK MESA personnel, Aperture Laboratories personnel,
authorised officials of other agencies, both domestic and foreign. Use of this
system constitutes consent to monitoring for these purposes.


LOG OFF IMMEDIATELY if you do not agree to the conditions stated in this warning.

*********************************************************************************
EOF
sleep 1
echo ""
sleep 1
echo ""
sleep 1
echo -e $g"\n \nHello, welcome to Black Mesa. We need you to break into a hidden anonymous server and obtain a copy of their plans to hack the ministry of defence. You should have all the tools you need at your disposal to do so. Pick the right command for the job and enter it at the prompt. Are you ready to begin?"
echo ""
read -p "[Y/N]: " INPUT
 if [[ ${INPUT} == "N" ]]; then
   echo "Oh dear better log out now then!"
   exit 1;
 else [[ ${INPUT} == "Y" ]];
   echo "You have accepted the job. Good luck."
   echo ""
 fi
}

function port_scan {
echo "First we need to find our target, there's lots of computer systems out there in the wild, so we need to make sure we have the correct one. Be sure to note down the IP address!"
SUCCESS=0
while [[ ${SUCCESS} == 0 ]]; do
read -p "neo@torvalds:~$: " INPUT
 if [[ ${INPUT} =~ "nmap" ]]; then
  echo "Initializing"
  sleep 2
  bar="."
  counter=0
  echo -n "[scanning] ${bar}"
   while [ ${counter} -lt 15 ]
    do
     counter=$((counter+1))
     for i in "${bar}"
      do
       echo -ne "$i"
       sleep 0.2
      done
     done
   echo -e "  done \n"
  sleep 1
  echo -e "\n Hosts identified"
  sleep 2
  echo -e " \n Hostname: www.google.com \n IP: 8.8.8.8 \n \n Hostname: www.anonserver.com \n IP: 162.141.131.11 \n\n Hostname: www.bobshomepc.com \n IP: 5.79.28.110 \n "
  SUCCESS=1
 else
  echo "That doesn't seem right, try a different command or check your spelling"
 fi
done
}

function bruteforce {
echo -e "\nNow we know what's out there we need to somehow get the login details for the correct server.\n"
SUCCESS=0
while [[ ${SUCCESS} == 0 ]]; do
read -p "neo@torvalds:~$: " INPUT
 if [[ ${INPUT} =~ "bruteforce 162.141.131.11" ]]; then
  echo "Attempting to bruteforce host 162.141.131.11"
  echo "Generating possible usernames"
  sleep 1
  echo "Running algorithms"
  sleep 1
  max=10
  printf "Cracking [" 
  tput sc 
  i=0 
  while [[ ${i} -le ${max} ]];do  
   j=0 
    while [[ ${j} -le ${i} ]];do 
     echo -n "#" 
     let j=${j}+1 
     done 
  printf "%-$((${max}-${i}))s] $(((${i})*100/${max}))%%" 
  tput rc 
  sleep 1 
  let i=${i}+1 
done 
echo  
echo "Complete"
  sleep 1
  echo -e "\nSuccess! \n\n Credentials \n -------------- \n username: root \n password: calvin \n --------------"
  SUCCESS=1
 else
  if [[ ${INPUT} == "bruteforce" ]]; then
  echo "You'll need to provide a computer system to bruteforce, try adding an IP address to the end of the command";
  elif [[ ${INPUT} =~ "bruteforce 8" ]]; then
  echo -e $r"Warning! Attempting to bruteforce Google's servers will result in criminal charges being pressed. Your IP address has been logged."$g
  elif
  [[ ${INPUT} =~ "bruteforce 5" ]]; then
  echo -e $r"This is a private computer belonging to Bob. Please don't attempt to bruteforce it."$g
  else
  echo "That doesn't seem right, try a different command or check your spelling."
  fi
 fi
done
}

function login {
echo "Great, we've cracked the credentials. Let's login to that server now."
SUCCESS=0
while [[ ${SUCCESS} == 0 ]]; do
read -p "neo@torvalds:~$: " INPUT
 if [[ ${INPUT} =~ "ssh root@162.141.131.11" ]]; then
  while [[ ${SUCCESS} == 0 ]]; do
  read -p "root@62.141.131.11's password: " INPUT
   if [[ ${INPUT} =~ "calvin" ]]; then
     echo -e "Password accepted. \n"
     sleep 2
     cat << "EOF"

******************************************************************************************************
______     __   __     ______     __   __     __  __     __    __     ______     __  __     ______   
/\  __ \   /\ "-.\ \   /\  __ \   /\ "-.\ \   /\ \_\ \   /\ "-./  \   /\  __ \   /\ \/\ \   /\  ___\  
\ \  __ \  \ \ \-.  \  \ \ \/\ \  \ \ \-.  \  \ \____ \  \ \ \-./\ \  \ \ \/\ \  \ \ \_\ \  \ \___  \ 
 \ \_\ \_\  \ \_\\"\_\  \ \_____\  \ \_\\"\_\  \/\_____\  \ \_\ \ \_\  \ \_____\  \ \_____\  \/\_____\
  \/_/\/_/   \/_/ \/_/   \/_____/   \/_/ \/_/   \/_____/   \/_/  \/_/   \/_____/   \/_____/   \/_____/
                                                                                                      
******************************************************************************************************
  People shouldn't be afraid of their government. Governments should be afraid of their people. 
EOF
     echo ""
     echo -e "Welcome to Anonymous Node 1\nYou are logged in as root"
     SUCCESS=1
     sleep 2
   else
     echo -e "Incorrect password, try again"
   fi
  done
 elif [[ ${INPUT} =~ "ssh" ]]; then
   echo "You might be missing some parts of this command, try ssh <username>@<IP address>"
 else
  echo "That doesn't seem right, try a different command or check your spelling"
 fi
done
}

function directory {
echo -e "\n\n Let's see what directories are on the server!"
SUCCESS=0
while [[ ${SUCCESS} == 0 ]]; do
read -p "root@anonserver:~$: " INPUT
 if  [[ ${INPUT} =~ "ls" ]]; then
    echo -e "\nhome \nsystem \nplans \n"
    echo ""
    echo "Okay, now we need to pick the right directory and navigate into it."
    while [[ ${SUCCESS} == 0 ]]; do
    read -p "root@anonserver:~$: " INPUT
    if  [[ ${INPUT} =~ "cd plans" ]]; then
    echo -e "\nBank-heist-2010 \nEquipment-list \nMinistry-of-Defence-Attack \n"
    SUCCESS=1
    elif [[ ${INPUT} =~ "cd home" ]]; then
    echo "This directory is empty, try another"
    elif [[ ${INPUT} =~ "cd system" ]]; then
    echo "You do not have permission to access this directory"
    else
    echo "That doesn't seem right, try a different command or check your spelling"
    fi
    done
 else
   echo "That doesn't seem right, try a different command or check your spelling"
 fi
done
}

function copy_file {
echo "Looks like we found the plans! Now we need to copy them over to our own server. Remember, your home server is called 'torvalds'"
SUCCESS=0
while [[ ${SUCCESS} == 0 ]]; do
read -p "root@anonserver:~$: " INPUT
 if  [[ ${INPUT} =~ "scp -file Ministry-of-Defence-Attack -dest torvalds" ]]; then
   echo -e "\nCopying file"
   sleep 1
   echo -e "Success: Ministry-of-Defence-Attack copied to torvalds\n"
   SUCCESS=1
 elif [[ ${INPUT} =~ "scp " ]]; then
    echo "That might not be the right format or you might be using the wrong filename or destination. Try scp -file <filename> -dest <destination>"
 else
    echo "That doesn't seem right, try a different command or check your spelling"
 fi
done
}

function remove_logs {
echo "Great work, we have the file. The last step is to erase our tracks. The log we want to delete is called /var/log/secure"
SUCCESS=0
while [[ ${SUCCESS} == 0 ]]; do
read -p "root@anonserver:~$: " INPUT
 if  [[ ${INPUT} =~ "rm /var/log/secure" ]]; then
   echo -e "\nErasing logs"
   sleep 1
   echo -e "Success\n"
   sleep 1
   echo -e "Logging out of system\n"
   sleep 4
   echo -e "anon-server: Goodbye\n"
   SUCCESS=1
 elif [[ ${INPUT} =~ "rm" ]]; then
    echo "That might not be the right format, try rm <file location>"
 else
    echo "That doesn't seem right, try a different command or check your spelling"
 fi
done
}

function outro {
echo -e "Logging in..."
echo ""
sleep 1
cat << "EOF"

                   .-;+$XHHHHHHX$+;-.
                ,;X@@X%/;=----=:/%X@@X/
              =$@@%=.              .=+H@X:
            -XMX:                      =XMX=
           /@@:                          =H@+
          %@X,                            .$@$
         +@X.                               $@%
        -@@,                                .@@=
        %@%                                  +@$
        H@:                                  :@H
        H@:         :HHHHHHHHHHHHHHHHHHX,    =@H
        %@%         ;@M@@@@@@@@@@@@@@@@@H-   +@$
        =@@,        :@@@@@@@@@@@@@@@@@@@@@= .@@:
         +@X        :@@@@@@@@@@@@@@@M@@@@@@:%@%
          $@$,      ;@@@@@@@@@@@@@@@@@M@@@@@@$.
           +@@HHHHHHH@@@@@@@@@@@@@@@@@@@@@@@+
            =X@@@@@@@@@@@@@@@@@@@@@@@@@@@@X=
              :$@@@@@@@@@@@@@@@@@@@M@@@@$:
                ,;$@@@@@@@@@@@@@@@@@@X/-
                   .-;+$XXHHHHHX$+;-.

                     BLACK MESA INC
*********************************************************************************

This is a BLACK MESA Computer System. This computer system,
including all related equipment, networks, and network devices, are provided only for authorised use. 

Use of this computer system, authorised or unauthorised, constitutes consent to monitoring of this 
system. Evidence collected during monitoring may be used for administrative, criminal, or other 
adverse action including disclosure BLACK MESA personnel, Aperture Laboratories personnel,
authorised officials of other agencies, both domestic and foreign. Use of this
system constitutes consent to monitoring for these purposes.


LOG OFF IMMEDIATELY if you do not agree to the conditions stated in this warning.

*********************************************************************************
EOF
sleep 1
echo ""
sleep 1
echo ""
echo -e "torvalds: Welcome to the server\n You're logged in as Neo\n \n"
echo -e "One file changed since login: New file - Ministry-of-Defence-Attack"
sleep 5
echo -e "\nYou've successfully stolen the plans from Anonymous' server. Black Mesa will inform the relevant authorities to help them foil the attack."
sleep 5

echo -e "\nAll the steps you have taken are a simplified version of how many hackers access and copy confidential data\n"
sleep 3
echo -e "\nIf you've enjoyed this we encourage you to check out games such as Uplink and Hacknet and to explore Linux further\n\n"
echo -e $w""
sleep 5
}

intro
port_scan
bruteforce
login
directory
copy_file
remove_logs
outro

exit 1
