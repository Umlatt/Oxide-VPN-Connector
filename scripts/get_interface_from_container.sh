#!/bin/bash
veth_mac=$(vzctl exec [CTID] ip a | grep veth0@ -A 1 | grep link | awk '{print $2}' | awk -F: '{print $3$4$5$6}')
veth_uniquename=$(echo "veth$veth_mac)