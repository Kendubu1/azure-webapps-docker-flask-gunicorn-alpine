#!/bin/sh

echo "Starting SSH..."
/etc/init.d/sshd start
echo "Starting Gunicorn..."
gunicorn -w 4 -b 0.0.0.0:5000 main:app