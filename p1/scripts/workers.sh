#!/bin/bash
# Get the master node's IP from the arguments
MASTER_IP="192.168.56.110"

# Get the token from the shared folder
TOKEN=$(cat /vagrant/token)

# Install K3s agent (worker) and join the master node
curl -sfL https://get.k3s.io | K3S_URL=https://$MASTER_IP:6443 K3S_TOKEN=$TOKEN INSTALL_K3S_EXEC='--flannel-iface=eth1' sh -