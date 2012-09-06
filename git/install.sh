#!/bin/bash
# This script install git hooks in the git project provided by command line

if [ $# -lt 1 ]; then
    echo -ne "\nUsage: ./install.sh /path/to/befair/project/\n\n"
    exit
fi

cp commit-msg $1/.git/hooks/commit-msg
chmod +x $1/.git/hooks/commit-msg
echo '# insert user names allowed to push on master branch, one per line' > $1/.git/hooks/repo-masters.conf
echo 'feroda' >> $1/.git/hooks/repo-masters.conf
echo 'Befair-git-hooks successfully installed in '$1

