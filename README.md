The CPLS can score multiple events such as:

Deleting "bad" users
Creating new "good" users
Changing passwords on accounts
Removing users from the admininstrator group
Creating groups
Securing /etc/sudoers file
Disabling guest login
Disabling autologin
Disabling usernames on the login page
Setting the minimum password age
Setting the maximum password age
Setting the maximum number of login tries
Setting password history value
Setting password length
Installing "good" programs
Uninstalling "bad" programs
Deleting prohibited files
Removing backdoors (malicious services)
Enabling the firewall
Securing ssh
Configuring the hosts files
Updating the kernel
Removing things from user crontabs
Updating clamav virus definitions
Removing things from startup
Answering the forensics question correctly
Changing update options
Adding or uncommenting lines from config files
Deleting or commenting lines from config files

This scoring system can also deduct points for deleting good users and deleting desired programs.

This can also be set to run on "Anti-Detection" mode, which makes it so student will not be able to se the different vulnerabilties in the machine.

How to Install:
Set up your image and put your vulnerabilities in place.
Install the following prerequisites: git and python-tk.
Clone into CPLS by typing: sudo git clone https://github.com/GrievingTuna/CPLS
Run python configurator.py to set up the config file.
Run the installer by typing sudo ./install in the CPLS directory.
After you are satisfied that it is working how you want, you can delete the CPLS directory.
