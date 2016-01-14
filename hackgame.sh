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
b='\033[1;34m'

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
echo -e $g"\n \nHello, welcome to Systems Inc. We need you to break into a hidden anonymous server and obtain a copy of their plans to hack the ministry of defence. You should have all the tools you need at your disposal to do so. Pick the right command for the job and enter it at the prompt. Are you ready to begin? [Y/N]"
echo ""
read -p "neo@torvalds:~$: " INPUT
 if [[ ${INPUT} == "N" ]]; then
   echo "Oh dear better log out now then!"
   exit 1;
 else
   echo -e "Great, good luck then!\n\n"
 fi
}

function port_scan {
echo "First we need to find our target, there's lots of computer systems out there in the wild, so we need to make sure we have the correct one. Be sure to note down the IP address!"
SUCCESS=0
while [[ ${SUCCESS} == 0 ]]; do
read -p "neo@torvalds:~$: " INPUT
 if [[ ${INPUT} =~ "nmap" ]]; then
  echo "Scanning network.."
  sleep 1
  echo "..."
  sleep 1
  echo "..."
  sleep 1
  echo -e "\n Hosts identified"
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
  echo "Crack in progress [#    ] 20%"
  sleep 1
  echo "Crack in progress [##   ] 40%"
  sleep 1
  echo "Crack in progress [###  ] 60%"
  sleep 1
  echo "Crack in progress [#### ] 80%"
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
     sleep 1
     echo -e "Welcome to Anonymous Mainframe Node 1 \n"
     echo -e "Logged in as root"
     SUCCESS=1
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
echo -e "\n\n Let's see what directories and files are on the server! Remember, directories will show up in blue.\n"
SUCCESS=0
while [[ ${SUCCESS} == 0 ]]; do
read -p "root@anonserver:~$: " INPUT
 if  [[ ${INPUT} =~ "ls" ]]; then
    echo -e $b"\n home \n system \n plans \n"$g
    while [[ ${SUCCESS} == 0 ]]; do
    read -p "root@anonserver:~$: " INPUT
    if  [[ ${INPUT} =~ "cd plans" ]]; then
    echo -e "\n Bank-heist-2010 \n Equipment-list \n Ministry-of-Defence-Attack \n"
    SUCCESS=1
    elif [[ ${INPUT} =~ "cd home" ]]; then
    echo "This directory is empty"
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
   sleep 1
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
echo -e "\ntorvalds: Welcome to the server\n You're logged in as Neo \n \n One file changed since login: Ministry-of-Defence-Attack recently added."
sleep 2
echo -e "\n You've successfully stolen the plans from Anonymous' server."
echo -e "\n All the steps you have taken are a simplified version of how many hackers access and copy confidential data\n"
echo -e "\n If you've enjoyed this we encourage you to check out games such as Uplink and Hacknet and to explore Linux further\n\n"
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
