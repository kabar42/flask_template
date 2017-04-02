#!/bin/bash

cp /workspace/nginx.conf /etc/nginx.conf

# Setup the virtualenv
sudo pip install virtualenv
virtualenv flaskapp
source flaskapp/bin/activate

# Run the flask application
sudo pip install -r requirements.txt

# Run nginx and connect it to the application
nohup uwsgi --socket 0.0.0.0:8000 --protocol=http -w flaskapp &
/usr/sbin/nginx -t
nohup /usr/sbin/nginx &
