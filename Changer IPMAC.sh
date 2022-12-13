#!/bin/bash
#!/bin/zsh

echo "IP:  `ifconfig eth0 |grep "inet "| cut -d: -f1-30| awk '{print $2, $4}'`"
echo "MAC: `ifconfig eth0 |grep "ether "| cut -d: -f1-20| awk '{print $2}'`"

VAR1=$
sudo ifconfig eth0 $1
sudo macchanger eth0 -r |echo "------------------------------|"
echo "IP:  `ifconfig eth0 |grep "inet "| cut -d: -f1-30| awk '{print $2, $4}'`"
echo "MAC: `ifconfig eth0 |grep "ether "| cut -d: -f1-20| awk '{print $2}'`"
