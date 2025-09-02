#!/bin/bash
cd /home/ubuntu/College-ERP
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
python manage.py migrate
python manage.py collectstatic --noinput
