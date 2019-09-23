# Mellanox/Cumulus labs
This repo contains the details for the articles about Mellanox SN 2010 running Cumulus Linux at karneliuk.com.

## Host preparation
In this blogpost the server is used as a management host. The following scripts are available:
- `prepare_carrier.sh` brings the server in the operational state (Docker, containers, iptables, etc) accordng to the blogpost: http://bit.ly/2kPxBRL
- `sr_lab.sh` launches Nokia VSR and Cisco IOS XRv for the Segment Routing lab: 

## Segment Routing
In the folder `segment-routing` you find the configuration files for Segment Routing lab:
- The folder `initial-configs` contains the starting configuration files for Cisco IOS XR, Nokia SR OS and Cumulus Linux
- The folder `final-configs` contains the resulting configuration files for Cisco IOS XR, Nokia SR OS and Cumulus Linux

# Do you want to automate network like a profi?
Join the network automation course: http://training.karneliuk.com

(c) 2016-2019 karneliuk.com
