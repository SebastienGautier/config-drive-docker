#!/bin/bash
cp /opt/data/user_data /tmp/new-drive/openstack/latest/user_data
mkisofs -R -V config-2 -o configdrive.iso /tmp/new-drive
rm -rf /tmp/new-drive
mv configdrive.iso /opt/data/configdrive.iso
