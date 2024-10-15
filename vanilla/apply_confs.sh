#!/bin/bash

cat hostapd.conf > /etc/hostapd/hostapd.conf
cat dnsmasq.conf > /etc/dnsmasq.conf
cat NetworkManager.conf > /etc/NetworkManager/NetworkManager.conf
cat sysctl.conf > /etc/sysctl.conf
cat before.rules > /etc/ufw/before.rules
cat after.rules > /etc/ufw/after.rules

systemctl restart hostapd
systemctl restart dnsmasq
systemctl restart ufw
systemctl restart NetworkManager
