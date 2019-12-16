#!/bin/bash
sudo virsh domifaddr Client1>out.txt
python3 py.py > Recvmgnt.txt
file1=/home/ece792/Recvmgnt.txt
ip=$(cat "$file1")
sudo sshpass -p serv ssh -o StrictHostKeyChecking=no -t root@$ip "ip addr show eth1 > eth1ip.txt"
sudo sshpass -p serv scp root@$ip:/root/eth1ip.txt .
python3 py5.py >Recv.txt
