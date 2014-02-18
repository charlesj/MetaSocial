#!/bin/sh

sudo apt-get install -y mono-gmcs || exit 1

git clone git://github.com/mono/mono.git || exit 1
cd mono
git checkout d6c5db881b26fd0f8ef64a65eba00e72fda552a2 || exit 1
./autogen.sh || exit 1
make || exit 1
sudo make install || exit 1

cd ..
rm -fr mono

sudo apt-get remove -y mono-gmcs || exit 1

exit 0
