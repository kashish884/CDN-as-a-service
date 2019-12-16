#sudo sshpass -p EcE792net! scp ece792@192.168.122.158:~/SN.txt .
#sudo sshpass -p EcE792net! scp ece792@192.168.122.158:~/DN1.txt .
#sudo sshpass -p EcE792net! scp ece792@192.168.122.158:~/DN2.txt .
echo Downloading
file=/home/local/DN1.txt
ip=$(cat "$file")
file1=/home/local/DN2.txt
ip1=$(cat "$file1")
file2=/home/local/SN.txt
ip2=$(cat "$file2")
sshpass -p serv sftp local@$ip:3.txt .
if [ $? -eq 1 ]
then
   sshpass -p serv sftp local@$ip1:3.txt .
   if [ $? -eq 1 ]
   then
      sshpass -p serv sftp local@$ip2:3.txt .
   fi
fi
