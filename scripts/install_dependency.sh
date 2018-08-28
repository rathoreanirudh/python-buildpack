#!/bin/bash
set -euo pipefail

export BoostInstallDir="/tmp/boost"
mkdir -p $BoostInstallDir

echo "Installing boost"
cd $BoostInstallDir
apt-get install libboost-all-dev
