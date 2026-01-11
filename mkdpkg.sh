#!/bin/bash

python3 generate-themes.py

echo "building debian package"
mkdir package
cp -r usr/ package
cp -r DEBIAN package
dpkg-deb --root-owner-group --build "package" > /dev/null
mv package.deb 20.3-Mint-Y-Themes.deb
rm -rf package

"making tar achive"
tar -czf 20.3-Mint-Y-Themes.tar.gz usr
