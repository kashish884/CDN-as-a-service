Readme:
========

Infrastructure Deployment:
===========================
VPC Creation:
create_vpc.yml
create_subnet.yml
create_vm1.yml
=================
test4.sh:
calls the yml scripts on both their respective hypervisors and created the required txt files of IP addresses for further CDN use.
=========
test5.sh:
Calls test4.sh on both hypervisors and connects tenant brige 1 with vxlan.
========

Creates the complete infrastructure of VPC according to the config given by the client for subnet_vars, vpc_vars and vm_vars.

cdn_automate.sh :
===============

Creates the complete infrastructure for the tenant including the control node. an automated way of running this script i.e CDN.json and the details of the hypervisors can be given in the cdnauto.json file and contains the information about choosing the control node, or 

It should be run as given here : bash cdn_automate.sh

--> CDNsend1.sh : it is invovled in sending the required bash scripts into the correct places in the created vm for creating the CDN topology as thought about it by the user.

--> opposite.sh: 
Functional features Implementation:
===================================

--> Replication.bash
    ================
This script is used for replication of the delivery node VM when the number of hits for the previous delivery nodes reaches a particular threshold. After the new delivery node VM is created, load balancing takes place in both these VM's to distribute the traffic across these VM's.

--> CNfetchDN.sh
   =======
This script is placed in control node that fetches the count.txt from the delivery node and if this count reaches a particular threshold , then this initiates the script that is present on the hypervisor.
Here, count is the variable which reads the value from sftp.log file. 

--> py.py
    ======
This script fetches the management ip address of the replicated VM using regex pattern so that we can login and do modifications to the newly created VM

--> py5.py
    =======
This script is used to name the VM's and is incremented every time after it's run and writes the new name to name.txt

--> daterep.sh
    =====
This script is used in the control node to fetch the number of hits(failure) for a particular file and based upon a threshold it will send out that particular content to the respective delivery node(where request failed) from the storage node.

Management Features Implementation:
===================================

--> Sftp.sh
    =======
This script can be used to fetch the sftp logs, and create a csv file based on timestamp and also on the given user discretion they can see the amount of times a pacticular node was accesed and how much resouces are being utilized. 