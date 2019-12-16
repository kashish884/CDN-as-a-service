echo Downloading
file=/home/local/DN1.txt
ip=$(cat "$file")
file1=/home/local/DN2.txt
ip1=$(cat "$file1")
file2=/home/local/SN.txt
ip2=$(cat "$file2")
sshpass -p serv sftp local@$ip:1.txt .
if [ $? -eq 1 ]
then
   sshpass -p serv sftp local@$ip1:1.txt .
   if [ $? -eq 1 ]
   then
      sshpass -p serv sftp local@$ip2:1.txt .
   fi
fi
