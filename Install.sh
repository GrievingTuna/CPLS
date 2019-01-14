#!/bin/bash

#Merge the config with the code, output it to cpls file
echo 'Merging cpls.cfg with payload...'
cat cpls.cfg payload > /usr/local/bin/cpls_SCORING_ENGINE_DO_NOT_TOUCH
sed -i "s/%KERNEL%/"`uname -r`"/g" /usr/local/bin/cpls_SCORING_ENGINE_DO_NOT_TOUCH
sed -i "s/%INSTALLDATE%/"`date +%s`"/g" /usr/local/bin/cpls_SCORING_ENGINE_DO_NOT_TOUCH
echo -e 'DONE\nInstalling cpls into /usr/local/bin...'
chmod 777 /usr/local/bin/cpls_SCORING_ENGINE_DO_NOT_TOUCH #Make it executable

#Check for crontab entry, add it if it doesn't exist
echo -e 'DONE\nAdding crontab entry...'
if [[ $(crontab -l -u root | grep cpls) ]] ; then :; else
  (crontab -l -u root ; echo "* * * * * /bin/bash /usr/local/bin/cpls_SCORING_ENGINE_DO_NOT_TOUCH")| crontab -
fi

#Check for CYBER folder, create if it doesn't exist
echo -e 'DONE\nCreating /etc/CYBERPATRIOT directory for icons...'
if [ ! -d "/etc/CYBERPATRIOT_DO_NOT_REMOVE" ]
then
  mkdir /etc/CYBERPATRIOT_DO_NOT_REMOVE
  cp logo.png /etc/CYBERPATRIOT_DO_NOT_REMOVE/logo.png
  cp iguana.png /etc/CYBERPATRIOT_DO_NOT_REMOVE/iguana.png
fi

#Fire cpls to create the initial Score Report
echo -e 'DONE\nFiring cpls for the first time...'
cpls_SCORING_ENGINE_DO_NOT_TOUCH

#Finish up
scoreReportLoc=$( grep -Po '(?<=index=\().*?(?=\))' cpls.cfg )
echo -e 'DONE\n----------------------------------\n\nScore Report is located at:' $scoreReportLoc