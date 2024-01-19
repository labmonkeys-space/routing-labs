#!/usr/bin/env bash
for i in {1..5}; do
  echo "Disabled LLDP on eth0 on clab-frr01-router${i}."
  docker exec clab-frr01-router${i} lldpcli configure system interface pattern \!eth0,eth*;
done
