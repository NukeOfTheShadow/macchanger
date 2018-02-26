#!/bin/bash

#set interface
ifaces=(eth0)
#You can also set more than one interface by seperating the list with spaces. For example:
#ifaces=(eth0 wlan0)

#For each interface -> change mac
for iface in "${ifaces[@]}"; do

	#shut down interface
	ifconfig $iface down

	#generate random mac
	MACAddress=$(dd if=/dev/urandom bs=1024 count=1 2>/dev/null|md5sum|sed 's/^\(..\)\(..\)\(..\)\(..\)\(..\)\(..\).*$/00:\2:\3:\4:\5:\6/')

	#change mac on given interface
	ifconfig $iface hw ether $MACAddress

	#turn interface on again
	ifconfig $iface up

done

exit 0
