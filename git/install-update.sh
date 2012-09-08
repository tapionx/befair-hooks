#!/bin/bash
# This script install the "update" hook in the BARE project provided by command line
# THIS HOOK IS SERVER SIDE

if [ $# -lt 1 ]; then
    echo -ne "\nUsage: ./install-update.sh /path/to/befair/BARE/project/"
    echo -ne "NOTICE: this hook must be installed in a BARE repository\n\n"
    exit
fi

cp update $1/hooks/update
chmod +x $1/hooks/update
echo '# insert user names allowed to push on master branch, one per line' > $1/hooks/repo-masters.conf
echo 'feroda' >> $1/hooks/repo-masters.conf
echo 'Befair-git-hooks successfully installed in '$1

