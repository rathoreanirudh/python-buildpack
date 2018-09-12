#!/bin/bash
set -euo pipefail

export BoostInstallDir="/tmp/boost"
mkdir -p $BoostInstallDir

echo "Installing boost"


URL=https://dl.bintray.com/boostorg/release/1.68.0/source/boost_1_68_0.tar.gz

  
curl -s -L --retry 15 --retry-delay 2 $URL -o /tmp/boost.tar.gz


tar xzf /tmp/boost.tar.gz -C $BoostInstallDir
cd $BoostInstallDir/boost_1_68_0/


echo "Running bootstrap.sh"
./bootstrap.sh --with-libraries=python
echo "Running ./b2"
./b2
echo "Running b2 install"
./b2 install
echo "done"
rm /tmp/boost.tar.gz
