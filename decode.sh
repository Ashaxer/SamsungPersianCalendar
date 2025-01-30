#!/bin/bash
#Decode Script

#Dwonload the decoder
wget https://github.com/Ashaxer/SamsungPersianCalendar/raw/refs/heads/main/omc-decoder.jar

#Decode the file
java -jar omc-decoder.jar -i /storage/emulated/0/cscfeature.xml -o /storage/emulated/0/cscfeature.decoded.xml

echo "Encoded Successfully -> cscfeature.decoded.xml"
