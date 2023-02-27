#!/bin/bash
apt-get update -y
apt-get install git -y
apt-get install python3 -y
cd /home/ubuntu/
TOKEN=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
git clone https://$TOKEN@github.com/Ambika019/Capstone-Project-Blog-Page-App--DjangoC--on-AWS-Environment.git
cd /home/ubuntu/Capstone-Project-Blog-Page-App--DjangoC--on-AWS-Environment
apt install python3-pip -y
apt-get install python3.7-dev libmysqlclient-dev -y
pip3 install -r requirements.txt
cd /home/ubuntu/Capstone-Project-Blog-Page-App--DjangoC--on-AWS-Environment/src
python3 manage.py collectstatic --noinput
python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py runserver 0.0.0.0:80