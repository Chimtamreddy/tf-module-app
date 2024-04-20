#!/bin/bash
yum install ansible python3.11-pip.noarch -y &>>/opt/userdata.log
ansible-pull -i localhost, -U https://github.com/Chimtamreddy/roboshop-ansib.git main.yml -e component=${component} -e env=${env} &>>/opt/userdata.log