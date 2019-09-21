#! /usr/bin/bash

# Creating bridges
brctl addif br0 enp2s0f1
brctl addbr br1
brctl addif br1 ens2f0
ifconfig br1 up
ifconfig ens2f0 up
brctl addbr br2
brctl addif br2 ens2f1
ifconfig br2 up
ifconfig ens2f1 up

# Starting docker
systemctl start docker.service

# Launching containers
docker container start dcf_dhcp
docker container start dcf_http
docker container start dcf_ftp

# Updating FW rules
iptables -I INPUT 1 -p udp --sport 67:68 --dport 67:68 -j ACCEPT
iptables -I INPUT 1 -p tcp --dport 80 -j ACCEPT
iptables -I FORWARD 1 -s 169.254.255.0/24 -i br0 -j ACCEPT

# Updating NAT rules
iptables -t nat -A POSTROUTING -s 169.254.255.0/24 -o enp2s0f0 -j MASQUERADE
