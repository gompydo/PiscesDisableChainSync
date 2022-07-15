#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root"
   exit 1
fi

echo "Downloading the new sys.config"
curl -sLf https://raw.githubusercontent.com/gompydo/PiscesDisableChainSync/main/sys.config -o /home/pi/hnt/miner/configs/sys.config
echo -n "Restarting miner..."
docker restart miner
echo "Script Complete!"
