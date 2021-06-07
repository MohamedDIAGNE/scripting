#!/bin/bash

echo " la liste des arguments avec $* sont mis dans le dossier cnt02_dossier "

for i in ${*:3}
do
	sudo cp $i /var/lib/lxc/$1/rootfs/home/ubuntu/source
done

ssh ubuntu@$2 unison

echo " fichier synchronisé"
