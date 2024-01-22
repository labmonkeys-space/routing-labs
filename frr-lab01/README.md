# FRRouting Lab

## Adressing Table
| Device  | Interface                    | IPv4 Address                                                | IPv4 Subnet Mask                                                       | IPv4 CIDR                | Default Gateway    |
|---------|------------------------------|-------------------------------------------------------------|------------------------------------------------------------------------|--------------------------|--------------------|
| router1 | eth1<br>eth2<br>eth3         | 192.168.0.0<br>192.168.0.2<br>192.168.1.1                   | 255.255.255.254<br>255.255.255.254<br>255.255.255.0                    | /31<br>/31<br>/24        | -                  |
| router2 | eth1<br>eth2<br>eth3         | 192.168.0.1<br>192.168.0.4<br>192.168.2.1                   | 255.255.255.254<br>255.255.255.254<br>255.255.255.0                    | /31<br>/31<br>/24        | -                  |
| router3 | eth1<br>eth2<br>eth3<br>eth4 | 192.168.0.3<br>192.168.0.5<br>192.168.3.1<br>192.168.0.6    | 255.255.255.254<br>255.255.255.254<br>255.255.255.0<br>255.255.255.254 | /31<br>/31<br>/24<br>/31 | -                  |
| router4 | eth1<br>eth2<br>eth3<br>eth4 | 192.168.0.8<br>192.168.0.10<br>192.168.4.1<br>192.168.0.7   | 255.255.255.254<br>255.255.255.254<br>255.255.255.0<br>255.255.255.254 | /31<br>/31<br>/24<br>/31 | -                  |
| router5 | eth1<br>eth2<br>eth3         | 192.168.0.9<br>192.168.0.12<br>192.168.5.1                  | 255.255.255.254<br>255.255.255.254<br>255.255.255.0                    | /31<br>/31<br>/24        | -                  |
| router6 | eth1<br>eth2<br>eth3<br>eth4 | 192.168.0.11<br>192.168.0.13<br>192.168.6.1<br>192.168.0.14 | 255.255.255.254<br>255.255.255.254<br>255.255.255.0<br>255.255.255.254 | /31<br>/31<br>/24<br>/31 | -                  |
| router7 | eth1<br>eth2                 | 192.168.0.15<br>192.168.7.1                                 | 255.255.255.254<br>255.255.255.0                                       | /31<br>/24               | -                  |
| pc1     | eth1                         | 192.168.1.11                                                | 255.255.255.0                                                          | /24                      | 172.20.20.1 (eth0) |
| pc2     | eth1                         | 192.168.2.11                                                | 255.255.255.0                                                          | /24                      | 172.20.20.1 (eth0) |
| pc3     | eth1                         | 192.168.3.11                                                | 255.255.255.0                                                          | /24                      | 172.20.20.1 (eth0) |
| pc4     | eth1                         | 192.168.4.11                                                | 255.255.255.0                                                          | /24                      | 172.20.20.1 (eth0) |
| pc5     | eth1                         | 192.168.5.11                                                | 255.255.255.0                                                          | /24                      | 172.20.20.1 (eth0) |
| pc6     | eth1                         | 192.168.6.11                                                | 255.255.255.0                                                          | /24                      | 172.20.20.1 (eth0) |
| pc7     | eth1                         | 192.168.7.11                                                | 255.255.255.0                                                          | /24                      | 172.20.20.1 (eth0) |

## Cheatsheet

### 🏗️ Spinup the topology, setting routes on the PC's and disable LLDP on the management networks on eth0
```
./run.sh
```

### 🗺️ Start a web server and give the URL with a given IP instead of 0.0.0.0
```
clab graph -s <ip>:50080
```

### 🧨 Destroy the whole topology
```
clab destroy
```

### 🕹️ Deploy nodes in OpenNMS
```
cd opennms
./deploy.sh
```

**💁‍ Note:** The deploy.sh script has the following defaults set, adjust accordingly:

```
OPENNMS_HOST=localhost
OPENNMS_USER=admin
OPENNMS_PASS=admin
OPENNMS_PORT=8980
```
