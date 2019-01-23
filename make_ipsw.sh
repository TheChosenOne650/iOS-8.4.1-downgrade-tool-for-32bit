echo Make sure you have an iOS 8.4.1 ipsw downloaded and placed in this directory before continuing
sleep 1
echo building ipsw
./Tools/ipsw iPad2,1_8.4.1_12H321_Restore.ipsw iPad2,1_8.4.1_12H321_Odysseus.ipsw --memory --ota Tools/Manifests/K93BM.plist
echo ipsw creation complete