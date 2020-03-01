#!/bin/bash

[ -d /home/local/etc/OneDrive ] && mv -f /home/local/etc/OneDrive /home/local/etc/OneDrive.bak
mkdir -p /home/local/etc/OneDrive
cd /home/local/etc/OneDrive
wget --no-check-certificate -q -O json-parser "https://raw.githubusercontent.com/0oVicero0/OneDrive/master/Business/json-parser"
wget --no-check-certificate -q -O onedrive "https://raw.githubusercontent.com/0oVicero0/OneDrive/master/Business/onedrive"
wget --no-check-certificate -q -O onedrive-d "https://raw.githubusercontent.com/0oVicero0/OneDrive/master/Business/onedrive-d"
wget --no-check-certificate -q -O onedrive-authorize "https://raw.githubusercontent.com/0oVicero0/OneDrive/master/Business/onedrive-authorize"
wget --no-check-certificate -q -O onedrive-base "https://raw.githubusercontent.com/0oVicero0/OneDrive/master/Business/onedrive-base"
wget --no-check-certificate -q -O onedrive.cfg "https://raw.githubusercontent.com/0oVicero0/OneDrive/master/Business/onedrive.cfg"
chmod -R a+x /home/local/etc/OneDrive
ln -sf /home/local/etc/OneDrive/onedrive /home/local/bin/
ln -sf /home/local/etc/OneDrive/onedrive-d /home/local/bin/
[ -d /home/local/etc/OneDrive.bak ] && {
[ -f /home/local/etc/OneDrive.bak/onedrive.cfg ] && cp -rf /home/local/etc/OneDrive.bak/onedrive.cfg /home/local/etc/OneDrive/
[ -f /home/local/etc/OneDrive.bak/.refresh_token ] && cp -rf /home/local/etc/OneDrive.bak/.refresh_token /home/local/etc/OneDrive/
rm -rf /home/local/etc/OneDrive.bak
}

rm -rf $(basename "$0")
