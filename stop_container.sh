#!/bin/bash
#stop_container.sh

IFS='
'
def=$( echo $1|grep \* )
mot_pas_etoile=$(echo $1 | tr -d "*")
if [ $def ]
then
   table=( $(sudo lxc-ls | tr " " "\n" | grep $mot_pas_etoile ) )
for i in ${table[@]}
do
   sudo lxc-stop -n $i
done
echo "stop conteneurs"
else
   sudo lxc-stop -n $1
   if [ $? -ne 0 ]
   then
     echo "le conteneur n'existe pas"
   exit 1
   else
     echo "stop conteneur"
   exit 0
   fi
fi
echo "*******Container*****"
sudo lxc-ls --fancy

echo "*************************"
