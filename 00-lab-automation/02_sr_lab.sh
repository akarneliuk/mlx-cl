#! /usr/bin/bash

# Creating bridges
brctl addbr br3
ifconfig br3 up
brctl addbr br4
ifconfig br4 up

# Starting VMs
virsh start SR1
virsh start XR1

# Updating FW rules
iptables -I FORWARD 1 -s 10.0.0.0/8 -d 10.0.0.0/8 -j ACCEPT
iptables -I FORWARD 1 -s 169.254.0.0/16 -d 169.254.0.0/16 -j ACCEPT
