sudo sshpass -p EcE792net! scp ece792@192.168.122.158:~/SN.txt .
sudo sshpass -p EcE792net! scp ece792@192.168.122.158:~/DN.txt .
echo Downloading
file=/home/local/DN.txt
ip=$(cat "$file")
file1=/home/local/SN.txt
ip1=$(cat "$file1")
sftp local@$ip:1.txt .
if [ $? -eq 1 ]
then
   sftp local@$ip1:1.txt .
fi
