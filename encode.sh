#!/bin/bash
#Setup and Decode Script

#Delete the existing file
rm -f /storage/emulated/0/cscfeature.xml

#Encode the file
java -jar omc-decoder.jar -e -i /storage/emulated/0/cscfeature.decoded.xml -o /storage/emulated/0/cscfeature.xml

echo "Encoded Successfully -> cscfeature.xml"