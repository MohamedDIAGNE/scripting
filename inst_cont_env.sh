#!/bin/bash

echo "package installation"

echo "installation de lxc"

sudo apt-get install lxc -y

echo "installation de lxctl"

sudo apt-get install lxctl -y

echo "installation de openvswitch-common"

sudo apt-get install openvswitch-common -y

echo "installation de openvswitch-switch"

sudo apt-get install openvswitch-switch -y

echo "Installation lxc-templates"

sudo apt-get install lxc-templates

echo "Installation Finish"
