#!/bin/bash

echo "destruction du bridge"
echo

sudo ip link set dev br0 down
sudo ip link set dev ovs-system down

echo
echo "bridges desactivé"
echo

sudo ovs-vsctl del-br br0

echo
echo "Delete Bridge"
echo

echo
echo "Etat du bridge"
echo

sudo ovs-vsctl show
