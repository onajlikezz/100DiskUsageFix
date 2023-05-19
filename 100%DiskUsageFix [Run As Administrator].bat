@echo off

echo Onemogucavanje servisa TrustedInstaller...
sc config TrustedInstaller start= disabled
echo Servis TrustedInstaller je uspjesno onemogucen.

echo Onemogucavanje servisa wuauserv...
sc config wuauserv start= disabled

echo Servis wuauserv je uspjesno onemogucen.

echo Onemogucavanje servisa Bluetooth Support Service...
sc config bthserv start= disabled
echo Servis Bluetooth Support je uspjesno onemogucen.

echo Onemogucavanje servisa Bluetooth Audio Gateway Service...
sc config BTAGService start= disabled
echo Servis Bluetooth Audio Gateway je uspjesno onemogucen.

echo Onemogucavanje servisa Bluetooth Handsfree Service...
sc config BthHFSrv start= disabled
echo je Servis Bluetooth Handsfree uspjesno onemogucen.

echo Onemogucavanje servisa Bluetooth Peripheral Device...
sc config BthHfAudSvc start= disabled
echo je Servis Bluetooth Peripheral Device uspjesno onemogucen.

echo Onemogucavanje servisa Bluetooth User Support Service...
sc config BthUserService start= disabled
echo je Servis Bluetooth User Support uspjesno onemogucen.

echo Onemogucavanje servisa Device Association Service...
sc config das start= disabled
echo Servis Bluetooth Association je uspjesno onemogucen.

echo Onemogucavanje servisa Device Management Enrollment Service...
sc config DmEnrollmentSvc start= disabled
echo Servis Bluetooth Device Management Enrollment je uspjesno onemogucen.

echo Onemogucavanje servisa Device Management Update Service...
sc config DmEnrollmentSvc start= disabled
echo Servis Bluetooth Device Management Update je uspjesno onemogucen.

echo Onemogucavanje servisa Print Spooler...
sc config Spooler start= disabled
echo Servis Bluetooth Print Spooler je uspjesno onemogucen.

echo Brisanje stampanje Bluetooth printera...
wmic printer where "PortName like 'BT%'" delete

echo Servisi za stampanje Bluetooth uredaja su uspjesno onemoguceni i stampanje Bluetooth printera je obrisano.

pause
