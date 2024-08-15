@echo off
color 0a
title 	Connect Dubai VPN
::vpn=Dubai
SET vpn="Dubai"
echo
::rasdial %vpn%
route add 192.168.240.0 mask 255.255.255.0 10.1.0.1
route add 192.168.254.0 mask 255.255.255.0 10.1.0.1
ping 192.168.240.1
