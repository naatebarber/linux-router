#!/bin/bash

cat hostapd.conf > /etc/hostapd/hostapd.conf
cat dnsmasq.conf > /etc/dnsmasq.conf
cat NetworkManager.conf > /etc/NetworkManager/NetworkManager.conf
cat sysctl.conf > /etc/sysctl.conf
cat before.rules > /etc/ufw/before.rules
cat after.rules > /etc/ufw/after.rules

cat static_ip.service > /etc/systemd/system/static_ip.service
cp static_ip.sh /usr/local/bin/static_ip.sh

systemctl disable systemd-resolved
systemctl stop systemd-resolved

systemctl restart hostapd
systemctl restart dnsmasq
systemctl restart ufw
systemctl restart NetworkManager

systemctl enable static_ip.service
systemctl start static_ip.service
