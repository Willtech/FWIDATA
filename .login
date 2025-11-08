#!/bin/bash
# .login script

# Create fwidata
~/fwidata.sh
echo ""

# Create Backup
cd ~/
echo ""
git init 2>&1
echo ""
git checkout working
echo ""
git add --all
echo ""
git commit -m "`printf '%(%Y-%m-%d %H:%M:%S)T\n' -1` Auto Backup"
echo ""


# Display a random cookie on each login.
if [ -x /usr/bin/fortune ] ; then /usr/bin/fortune ; fi

# Launch Bitcoin
 ~/runBitcoin.sh
