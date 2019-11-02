#! /usr/bin/bash

# Creating bridges
brctl addbr br3
ifconfig br3 up

# Starting VMs
virsh start SR1
virsh start XR1

# Updating FW rules
ip6tables -I INPUT 1 -s fc00::/16 -j ACCEPT
ip6tables -I FORWARD 1 -s fc00::/16 -j ACCEPT

# Fixing Linux bridges
ip -6 address add dev br1 fc00::a:1FF/120
ip -6 address add dev br2 fc00::a:2FF/120
ip -6 address add dev br3 fc00::a:0FF/120

# Fixing Linux brdiges (madness
ip -6 route add fc00::1:1/128 via fc00::a:1
