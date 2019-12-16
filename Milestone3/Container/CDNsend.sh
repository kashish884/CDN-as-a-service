file=/home/ece792/Recvmgnt.txt
ip=$(cat "$file")
sudo sshpass -p serv scp CDNclient1.sh local@$ip:~
sudo sshpass -p serv scp CDNclient2.sh local@$ip:~
sudo sshpass -p serv scp CDNclient3.sh local@$ip:~
sudo sshpass -p serv scp CDNclient4.sh local@$ip:~
sudo sshpass -p serv scp CDNclient5.sh local@$ip:~
sudo sshpass -p serv scp SN.txt local@$ip:~
sudo sshpass -p serv scp DN1.txt local@$ip:~
sudo sshpass -p serv scp DN2.txt local@$ip:~
