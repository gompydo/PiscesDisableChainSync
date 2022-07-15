#!/bin/bash

echo "Downloading the new sys.config"
curl -sLf https://raw.githubusercontent.com/gompydo/PiscesDisableChainSync/main/sys.config -o /home/pi/hnt/miner/configs/sys.config
echo -n "Restarting miner..."
docker restart miner
echo "Script Complete!"