#!/bin/bash
echo Make sure you have an iOS 8.4.1 ipsw downloaded and placed in this directory before continuing
sleep 1
echo chose a device

## set device ##
PS3='Please enter your choice: '
options=("iPad 2 WiFi" "iPhone 4S" "iPad Mini WiFi" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "iPad 2 WiFi")
         	echo building ipsw for iPad2,1 please wait...
			./Tools/ipsw iPad2,1_8.4.1_12H321_Restore.ipsw iPad2,1_8.4.1_12H321_Odysseus.ipsw --memory --ota Tools/Manifests/K93AP.plist
			echo ipsw creation complete
			break
            ;;
        "iPhone 4S")
            echo building ipsw for iPhone4,1 please wait...
			./Tools/ipsw iPhone4,1_8.4.1_12H321_Restore.ipsw iPhone4,1_8.4.1_12H321_Odysseus.ipsw --memory --ota Tools/Manifests/N94AP.plist --bbupdate
			echo ipsw creation complete
			break
            ;;
        "iPad Mini WiFi")
			echo building ipsw for iPad2,5 please wait...
			./Tools/ipsw iPad2,5_8.4.1_12H321_Restore.ipsw iPad2,5_8.4.1_12H321_Odysseus.ipsw --memory --ota Tools/Manifests/P105AP.plist
			echo ipsw creation complete
			break
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
		
echo Done!