#!/usr/bin/env bash

apt-get update
apt-get -y install python-dev python-pip
iptables -t nat -A OUTPUT -o lo -p tcp --dport 80 -j REDIRECT --to-port 8080
iptables -t nat -A PREROUTING -p tcp --dport 80 -j REDIRECT --to 8080
