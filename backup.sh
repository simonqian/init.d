#!/bin/bash
##cron 0 */5 * * * /home/rancho/chanshunli/test/backup.sh
#ssh-keygen -t rsa -C "chanshunli@gmail.com"
#eval `ssh-agent` &&ssh-add 
#ssh git@github.com  &&git config --global ...
#cd /home/rancho/chanshunli/sed.chip
git init
git add *
##rm -f ./.git/index.lock ///if "fatal: Unable to create .git/index.lock"
git commit -am "Commit - @ $(date)"
git remote add origin git@github.com:chanshunli/init.d.git
git push -u origin master
##ruby -e 'system "git status" while sleep 1'