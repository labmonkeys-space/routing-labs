#!/bin/sh
clab deploy --topo frr01.clab.yml
./pc-interfaces.sh
./disable-lldp-mgmt.sh
