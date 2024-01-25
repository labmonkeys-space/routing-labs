#!/usr/bin/env bash
sudo docker exec -d clab-ceos01-pc1 ip link set eth1 up
sudo docker exec -d clab-ceos01-pc1 ip addr add 192.168.1.11/24 dev eth1
sudo docker exec -d clab-ceos01-pc1 ip route add 192.168.0.0/16 via 192.168.1.1 dev eth1

sudo docker exec -d clab-ceos01-pc2 ip link set eth1 up
sudo docker exec -d clab-ceos01-pc2 ip addr add 192.168.2.11/24 dev eth1
sudo docker exec -d clab-ceos01-pc2 ip route add 192.168.0.0/16 via 192.168.2.1 dev eth1

sudo docker exec -d clab-ceos01-pc3 ip link set eth1 up
sudo docker exec -d clab-ceos01-pc3 ip addr add 192.168.3.11/24 dev eth1
sudo docker exec -d clab-ceos01-pc3 ip route add 192.168.0.0/16 via 192.168.3.1 dev eth1
