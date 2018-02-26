#!/bin/sh

#set interface name
iface="eth0"

#shut down interface
ifconfig $iface down

sleep 3

#random mac
MACAddress=$(dd if=/dev/urandom bs=1024 count=1 2>/dev/null|md5sum|sed 's/^\(..\)\(..\)\(..\)\(..\)\(..\)\(..\).*$/00:\2:\3:\4:\5:\6/')

#change mac
ifconfig $iface hw ether $MACAddress

sleep 3

#turn interface on again
ifconfig $iface up

exit 0
