@echo off

echo Disabling TrustedInstaller service...
sc config TrustedInstaller start= disabled

echo Disabling wuauserv service...
sc config wuauserv start= disabled

echo TrustedInstaller and wuauserv services have been successfully disabled.

echo Disabling Bluetooth Support Service...
sc config bthserv start= disabled

echo Disabling Bluetooth Audio Gateway Service...
sc config BTAGService start= disabled

echo Disabling Bluetooth Handsfree Service...
sc config BthHFSrv start= disabled

echo Disabling Bluetooth Peripheral Device...
sc config BthHfAudSvc start= disabled

echo Disabling Bluetooth User Support Service...
sc config BthUserService start= disabled

echo Disabling Device Association Service...
sc config das start= disabled

echo Disabling Device Management Enrollment Service...
sc config DmEnrollmentSvc start= disabled

echo Disabling Device Management Update Service...
sc config DmEnrollmentSvc start= disabled

echo Disabling Print Spooler...
sc config Spooler start= disabled

echo Deleting Bluetooth printer devices...
wmic printer where "PortName like 'BT%'" delete

echo Bluetooth printing services have been successfully disabled and Bluetooth printer devices have been deleted.

pause
