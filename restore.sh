#!/bin/bash
echo Make sure your device is in kDFU mode
echo you can do this on most devices using an app in Cydia repo: repo.tihmstar.net
sleep 3
## set device ##
PS3='Please enter your choice: '
options=("iPad 2 WiFi" "iPhone 4S" "iPad Mini WiFi" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "iPad 2 WiFi")
         	echo Restoring iPad2,1 please wait...
			./tools/idevicerestore -e -o Tools/Manifests/K93AP.plist iPad2,1_8.4.1_12H321_Odysseus.ipsw 
			break
            ;;
        "iPhone 4S")
            echo Restoring iPhone4,1 please wait...
			./tools/idevicerestore -e -o Tools/Manifests/N94AP.plist iPhone4,1_8.4.1_12H321_Odysseus.ipsw 
			break
            ;;
        "iPad Mini WiFi")
            echo Restoring iPad2,5 please wait...
			./tools/idevicerestore -e -o Tools/Manifests/P105AP.plist iPad2,5_8.4.1_12H321_Odysseus.ipsw 
			break
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
		
echo Done!
echo restore complete
