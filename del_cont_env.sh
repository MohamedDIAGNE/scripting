#!/bin/bash

echo "Delete package"
echo

sudo apt-get --purge remove lxc -y

echo
echo "desinstallation 'lxc' fait... "
echo

sudo apt-get --purge remove lxctl -y

echo
echo "desinstallation  'lxctl' fait ..."
echo

sudo apt-get --purge remove openvswitch-common -y

echo
echo "desinstallation 'openvswitch-common' fat ..."
echo

sudo apt-get --purge remove openvswitch-switch -y

echo
echo "desinstallation 'openvswitch-switch' fait ... "
echo

sudo apt-get --purge remove lxc-templates -y

echo
echo "desinstallation 'lxc-templates' fait ... "
echo

echo
echo "Delete All package"
echo
