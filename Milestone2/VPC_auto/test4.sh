#!/bin/bash

sudo ansible-playbook create_vpc.yml
sudo ansible-playbook create_subnet.yml
sudo ansible-playbook create_vm1.yml


