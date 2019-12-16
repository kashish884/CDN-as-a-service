sudo virsh domifaddr Recv>out.txt
python3 py.py>ip.txt
file=/home/ece792/ip.txt
ip=$(cat "$file")
sudo sshpass -p serv ssh root@$ip "ip addr show eth1 > eth1ip.txt"
sudo sshpass -p serv scp root@$ip:/root/eth1ip.txt .
python3 py5.py>Recv.txt
