#!/bin/bash
#Setup and Decode Script

#Update soruces
apt update -y & apt upgrade -y

#Install java
pkg install openjdk-17

#Dwonload the decoder
wget https://github.com/Ashaxer/SamsungPersianCalendar/raw/refs/heads/main/omc-decoder.jar

#Decode the file
java -jar omc-decoder.jar -i /storage/emulated/0/cscfeature.xml -o /storage/emulated/0/cscfeature.decoded.xml

echo "Encoded Successfully -> cscfeature.decoded.xml"
