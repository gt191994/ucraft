#!/bin/bash
sudo apt update && sudo apt install nfs-kernel-server -y
sudo mkdir /var/nfs/laravel -p
sudo chown nobody:nogroup /var/nfs/laravel
echo "/var/nfs/laravel    0.0.0.0/0(rw,sync,no_subtree_check)" >> /etc/exports
sudo systemctl restart nfs-kernel-server
