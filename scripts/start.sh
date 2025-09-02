#!/bin/bash
cd /home/ubuntu/College_ERP
source venv/bin/activate
# Stop existing Gunicorn if running
pkill gunicorn || true
# Start Gunicorn
nohup gunicorn CollegeERP.wsgi:application --bind 0.0.0.0:8000 --daemon
