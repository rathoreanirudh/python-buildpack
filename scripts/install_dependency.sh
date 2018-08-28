#!/bin/bash
set -euo pipefail

export BoostInstallDir="/tmp/boost"
mkdir -p $BoostInstallDir

echo "Installing boost"
cd $BoostInstallDir
sudo apt-get install libboost-all-dev
