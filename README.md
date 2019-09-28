# Mellanox/Cumulus labs
This repo contains the details for the articles about Mellanox SN 2010 running Cumulus Linux at karneliuk.com.

## Host preparation
In this blogpost the server is used as a management host. The following scripts are available in the folder `00-lab-automation`:
- `00_prepare_carrier.sh` brings the server in the operational state (Docker, containers, iptables, etc) accordng to the blogpost: http://bit.ly/2kPxBRL
- `00_SR1_KVM.sh` creates the Nokia SR OS VNF (VSR)
- `00_XR1_KVM.sh` creates the Cisco IOS XRv (virtual ASR 9000) VNF
- `02_sr_lab.sh` launches Nokia VSR and Cisco IOS XRv for the Segment Routing lab:
- `03_acl_lab.sh` launches Nokia VSR and Cisco IOS XRv for the Control Plane/Data Plane protection lab

## Network topologies
Each folder contains two topology files:
- `topology_physical.txt` shows the connectivity of the Mellanox SN 2010 device to the server
- `topology_logical.txt` describes the routing related to each particluar lab between PNF (Mellanox/Cumulus) and VNFs (Cisco IOS XRs / Nokia VSR)

## ZTP
to be updated

## Segment Routing
In the folder `02-segment-routing` you find the configuration files for Segment Routing lab:
- The folder `initial-configs` contains the starting configuration files for Cisco IOS XR, Nokia SR OS and Cumulus Linux
- The folder `final-configs` contains the resulting configuration files for Cisco IOS XR, Nokia SR OS and Cumulus Linux

## Control Plane / Data Plane Protection
In the folder `03-control-data-protection` you find the configuration files for Security lab:
- The folder `initial-configs` contains the starting configuration files for Cisco IOS XR, Nokia SR OS and Cumulus Linux
- The folder `final-configs` contains the resulting configuration files for Cisco IOS XR, Nokia SR OS and Cumulus Linux

# Do you want to automate network like a profi?
Join the network automation course: http://training.karneliuk.com

(c) 2016-2019 karneliuk.com
