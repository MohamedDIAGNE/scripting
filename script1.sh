#!/bin/bash

# script non intéractif nomMachine  interfaceReseaux carteReseau ipAdresse DNS

#Affectation du nom de l'hôte

echo "Change Hostname"

host=$(cat /etc/hostname)

new_host=$(hostname $1)

sed -i "s/$host/$1/g" /etc/hostname

new_=$(cat /etc/hostname)

echo "le nouveau hostname \"$new_\"."

###############################################################
# Désactivation de la carte réseau
#Modification de l'adresse de la carte réseau
#Activation de l'interface réseau, et si nécessaire du service réseau

if [[ ! -d /sys/class/net/${2} ]];
	then
		echo No such interface: $2
		exit 1
	else
###############################################################

		#echo " desactivation de la carte réseaux"

		#ifconfig $2 down

		#echo "interface $2 est désactivé"

###############################################################

                v1="- 172.18.10.25"
		echo " Modification de l'adresse de la carte réseau"
         	sed -i "s/$v1/$3/g" /etc/netplan/00-installer-config.yaml
fi

















