sudo virt-install \
  --name=SR1 \
  --description "SR1 VM" \
  --os-type=Linux \
  --sysinfo type='smbios',system_product='TIMOS:address=169.254.255.31/24@active static-route=192.168.1.0/24@169.254.255.1 license-file=ftp://dcf_helper:aq1sw2de3fr4@169.254.255.1/sros19.lic slot=A chassis=SR-1 card=iom-1 mda/1=me6-100gb-qsfp28'\
  --ram=4096 \
  --vcpus=2 \
  --boot hd \
  --disk path=/var/lib/libvirt/images/SR1.qcow2,bus=virtio,size=4 \
  --import \
  --graphics vnc \
  --serial tcp,host=0.0.0.0:3311,mode=bind,protocol=telnet \
  --network=bridge:br0,mac=52:54:00:09:01:00,model=virtio \
  --network=bridge:br1,mac=52:54:00:09:01:01,model=virtio \
  --network=bridge:br3,mac=52:54:00:09:01:02,model=virtio 
