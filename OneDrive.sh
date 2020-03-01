#!/bin/bash

[ -d /home/wmbai/.local/etc/OneDrive ] && mv -f /home/wmbai/.local/etc/OneDrive /home/wmbai/.local/etc/OneDrive.bak
mkdir -p /home/wmbai/.local/etc/OneDrive
cd /home/wmbai/.local/etc/OneDrive
wget --no-check-certificate -q -O json-parser "https://raw.githubusercontent.com/0oVicero0/OneDrive/master/Business/json-parser"
wget --no-check-certificate -q -O onedrive "https://raw.githubusercontent.com/0oVicero0/OneDrive/master/Business/onedrive"
wget --no-check-certificate -q -O onedrive-d "https://raw.githubusercontent.com/0oVicero0/OneDrive/master/Business/onedrive-d"
wget --no-check-certificate -q -O onedrive-authorize "https://raw.githubusercontent.com/0oVicero0/OneDrive/master/Business/onedrive-authorize"
wget --no-check-certificate -q -O onedrive-base "https://raw.githubusercontent.com/0oVicero0/OneDrive/master/Business/onedrive-base"
wget --no-check-certificate -q -O onedrive.cfg "https://raw.githubusercontent.com/0oVicero0/OneDrive/master/Business/onedrive.cfg"
chmod -R a+x /home/wmbai/.local/etc/OneDrive
ln -sf /home/wmbai/.local/etc/OneDrive/onedrive /home/wmbai/.local/bin/
ln -sf /home/wmbai/.local/etc/OneDrive/onedrive-d /home/wmbai/.local/bin/
[ -d /home/wmbai/.local/etc/OneDrive.bak ] && {
[ -f /home/wmbai/.local/etc/OneDrive.bak/onedrive.cfg ] && cp -rf /home/wmbai/.local/etc/OneDrive.bak/onedrive.cfg /home/wmbai/.local/etc/OneDrive/
[ -f /home/wmbai/.local/etc/OneDrive.bak/.refresh_token ] && cp -rf /home/wmbai/.local/etc/OneDrive.bak/.refresh_token /home/wmbai/.local/etc/OneDrive/
rm -rf /home/wmbai/.local/etc/OneDrive.bak
}

rm -rf $(basename "$0")
