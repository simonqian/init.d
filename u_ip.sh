#!/bin/bash
ifconfig eth0 10.193.9.220 netmask 255.255.255.0 && route add default gw 10.193.9.254
echo "nameserver 202.101.226.69" >/etc/resolv.conf
