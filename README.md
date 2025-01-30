# SamsungPersianCalendar
This repo adds Persian Calendar support (Date on Lockscreen) for your samsung device [ROOT ONLY]

Also using this tool you can enable any CSCFeature for your career (e.x. CallRecording, S Bike Mode, etc...)


Basically samsung includes almost all of the features to your phone and just enable/disable them based on your region.

Each region features information are stored in your phone. you just have to edit them. steps to do is pretty simple.

# Step #1 Determining the CSC Region Code
Check your CSC Region code in About Phone > Software Information > Service provider software version

On my device it's LYS ![image](https://github.com/user-attachments/assets/bfc791ed-1d2f-4669-9b90-2c6a468c452f)


# Step #2 Coping the XML file to Internal Storage
Download your preferred ROOT explorer app and navigate to this path (It may be different on other OneUI versions):

On OneUI 6.1.1

/optics/configs/carriers/[YOUR_CSC_REGION_CODE]/conf/system/cscfeature.xml

On OneUI 2.1
/odm/etc/omc/[YOUR_CSC_REGION_CODE]/conf/cscfeature.xml

Copy the file in main folder of your internal storage so you can access it easier.

Open the file using your prefered text editor, On Higher android versions the file are encoded in OMC format so if you are seeing nonesense characters it's totally normal, if not you can skip the Step #3.

# Step #3 Decoding the XML
Install Termux application and enable the permissions for storage manually and paste this command:
```bash
apt update -y && apt upgrade -y
apt install wget
pkg install openjdk-17
wget https://github.com/Ashaxer/SamsungPersianCalendar/raw/refs/heads/main/decode.sh && bash decode.sh
```
Thanks to fei-ke for his [omc-decoder project](https://github.com/fei-ke/OmcTextDecoder)

# Step #4 Modifing the XML
Now we have to make the changes into our xml file.

Open the (decoded) xml file and add or edit your changes into Feature_Set like this:
```xml
<SamsungMobileFeature>
  <FeatureSet>
    <YOUR_FEATURE>TRUE</YOUR_FEATURE>
  </FeatureSet>
</SamsungMobileFeature>
```
Remember, Don't break the format! Prevent duplicate elements by Check if the element already exists before adding it.

Add following elements if you need them, you can find other CscFeatures by googling:

Persian Calendar:
```xml
<CscFeature_Calendar_EnableLocalHolidayDisplay>FARSI</CscFeature_Calendar_EnableLocalHolidayDisplay>
<CscFeature_Common_SupportPersianCalendar>TRUE</CscFeature_Common_SupportPersianCalendar>
```
Voice Recording:
```xml
<CscFeature_VoiceCall_ConfigRecording>RecordingAllowed</CscFeature_VoiceCall_ConfigRecording>
```

# Step #5 Encoding the XML
After saving your file, you have to re-encode the file using following command: (Also skip this step if you skipped Step #3)
```bash
wget https://github.com/Ashaxer/SamsungPersianCalendar/raw/refs/heads/main/decode.sh && bash encode.sh
```

# Step #6 Putting the XML back to it's originate
Put the modified cscfeature.xml file back to it's original path and replace it.

**!IMPORTANT!**
**You have to fix the permission of the file you putted into original path.

In my case it's permissions are -rw-r--r-- or 644**

Now you can reboot your phone and enjoy new featues ;)
