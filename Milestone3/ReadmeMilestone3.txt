Readme:
========

Infrastructure Deployment:
============================
VPC & Container Creation:
create_vpc.yml
create_subnet.yml
connect_container_bridge.yml
create_server_instance.yml
server_instance_config.yml
============================
test8.sh:
calls the yml scripts on both their respective hypervisors and created the required txt files of IP addresses for further CDN use.
========
test9.sh:
Calls test8.sh on both hypervisors and connects tenant brige 1 with vxlan.
========
Creates the complete infrastructure of VPC according to the config given by the client for subnet_vars, vpc_vars and instance_vars.

cdn_automate.sh :
===============

Creates the complete infrastructure for the tenant including the control node. an automated way of running this script i.e CDN.json and the details of the hypervisors can be given in the cdnauto.json file and contains the information about choosing the control node, or 

It should be run as given here : bash cdn_automate.sh

--> CDN1send1.sh: it is invovled in sending the required bash scripts into the correct places in the created vm for creating the CDN topology as thought about it by the user.

--> Cdnautomate.py:

Functional features Implementation:
===================================

--> containerrep.py
    ===============
This python script runs rhe containerrep.sh after it sees a partuclar count as given by user which in turn is read from sftp log indicating how many times the container was accesed and then it will trigger the container replication accordingly.

--> containerrep.bash
    ================
This script is used for replication of the delivery node VM when the number of hits for the previous delivery nodes reaches a particular threshold. After the new delivery node VM is created, load balancing takes place in both these containers to distribute the traffic across these container.

--> CNfetchDN.sh
   =============
This script is placed in control node that fetches the count.txt from the delivery node and if this count reaches a particular threshold , then this initiates the script that is present on the hypervisor.
Here, count is the variable which reads the value from sftp.log file. 

--> daterep.sh
    ==========
This script is used in the control node to fetch the number of hits(failure) for a particular file and based upon a threshold it will send out that particular content to the respective delivery node(where request failed) from the storage node.

Management Features Implementation:
===================================

--> Sftp.sh
    =======
This script can be used to fetch the sftp logs, and create a csv file based on timestamp and also on the given user discretion they can see the amount of times a pacticular node was accesed and how much resouces are being utilized. 
--> SelfHealing.py
This Python script is used for starting an already existing container if it was stopped or exited accidently, it is based on the kubernetese way of self healing feature. 