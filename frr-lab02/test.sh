#!/usr/bin/env bash
# Maybe it's time for Batfish :)
RED="\e[31m"
GREEN="\e[32m"
ENDCOLOR="\e[0m"

checkError() {
  if [[ "${1}" -eq 0 ]]; then
    echo -e "${GREEN} ✔ ${ENDCOLOR}"
  else
    echo -e "${RED} ✖ ${ENDCOLOR}"
  fi
}

echo ""
echo "### Check reachability from PC1 (192.168.1.11/24)"
echo ""
echo -n " - Test gateway 192.168.1.1:                   "
docker exec -it clab-frr01-pc1 ping -W 0.5 -c 1 192.168.1.1 2>&1 > /dev/null
checkError "${?}"
echo -n " - Test connectivity to PC2 (192.168.2.11/24): "
docker exec -it clab-frr01-pc1 ping -W 0.5 -c 1 192.168.2.11 2>&1 > /dev/null
checkError "${?}"
echo -n " - Test connectivity to PC3 (192.168.3.11/24): "
docker exec -it clab-frr01-pc1 ping -W 0.5 -c 1 192.168.3.11 2>&1 > /dev/null
checkError "${?}"
