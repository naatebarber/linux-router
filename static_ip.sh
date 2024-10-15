#!/bin/bash

ifconfig wlp1s0 down
ifconfig wlp1s0 192.168.1.1 netmask 255.255.255.0 up
ifconfig

systemctl restart hostapd