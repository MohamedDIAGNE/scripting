#!/bin/bash

echo "Bridge creation"
echo

sudo ovs-vsctl add-br br0

echo
echo "Creation faite!"
echo

sudo ip link set dev br0 up
sudo ip link set dev ovs-system up

echo "Activation du bridge réussie"

echo
echo "Etat du bridge!"
echo

sudo ovs-vsctl show

echo
