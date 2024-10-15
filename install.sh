#!/bin/bash

dnf install hostapd -y
dnf install dnsmasq -y
dnf install iptables-services -y
dnf install ufw -y

systemctl stop firewalld
systemctl disable firewalld
systemctl enable ufw
systemctl start ufw
