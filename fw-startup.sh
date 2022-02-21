#!/bin/sh
IPT="/usr/sbin/iptables"
INTIF="eth1"
EXTIF="eth0"

$IPT -t nat -A POSTROUTING -m iprange --src-range 10.0.0.0-10.255.255.255 -o $EXTIF -j MASQUERADE

echo 1 > /proc/sys/net/ipv4/ip_forward