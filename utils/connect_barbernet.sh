#!/bin/bash

nmcli device wifi list ifname wlp7s0

nmcli device wifi connect "barbernet" password "charlotte" ifname wlp7s0

nmcli con show
