#!/bin/sh
sudo docker exec -d clab-frr01-pc1 ip link set eth1 up
sudo docker exec -d clab-frr01-pc1 ip addr add 192.168.1.11/24 dev eth1
sudo docker exec -d clab-frr01-pc1 ip route add 192.168.0.0/16 via 192.168.1.1 dev eth1

sudo docker exec -d clab-frr01-pc2 ip link set eth1 up
sudo docker exec -d clab-frr01-pc2 ip addr add 192.168.2.11/24 dev eth1
sudo docker exec -d clab-frr01-pc2 ip route add 192.168.0.0/16 via 192.168.2.1 dev eth1

sudo docker exec -d clab-frr01-pc3 ip link set eth1 up
sudo docker exec -d clab-frr01-pc3 ip addr add 192.168.3.11/24 dev eth1
sudo docker exec -d clab-frr01-pc3 ip route add 192.168.0.0/16 via 192.168.3.1 dev eth1

sudo docker exec -d clab-frr01-pc4 ip link set eth1 up
sudo docker exec -d clab-frr01-pc4 ip addr add 192.168.4.11/24 dev eth1
sudo docker exec -d clab-frr01-pc4 ip route add 192.168.0.0/16 via 192.168.4.1 dev eth1

sudo docker exec -d clab-frr01-pc5 ip link set eth1 up
sudo docker exec -d clab-frr01-pc5 ip addr add 192.168.5.11/24 dev eth1
sudo docker exec -d clab-frr01-pc5 ip route add 192.168.0.0/16 via 192.168.5.1 dev eth1

sudo docker exec -d clab-frr01-pc6 ip link set eth1 up
sudo docker exec -d clab-frr01-pc6 ip addr add 192.168.6.11/24 dev eth1
sudo docker exec -d clab-frr01-pc6 ip route add 192.168.0.0/16 via 192.168.6.1 dev eth1
