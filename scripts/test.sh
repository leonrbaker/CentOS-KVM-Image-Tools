#!/bin/sh

IMGNAME=/var/lib/libvirt/images/centostest
EXT=qcow2

# Add leonux repo
curl -o /tmp/leonux.repo https://yum.leonux.co.za/leonux.repo
guestfish -i $IMGNAME.$EXT <<EOF
copy-in /tmp/leonux.repo /etc/yum.repos.d
EOF
rm /tmp/leonux.repo
