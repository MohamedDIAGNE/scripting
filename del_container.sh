#!/bin/bash
#delete_container.sh

IFS='
'
def=$( echo $1|grep \* )
mot_pas_etoile=$(echo $1 | tr -d "*")
if [ $def ]
then
   table=( $(sudo lxc-ls | tr " " "\n" | grep $mot_pas_etoile ) )
for i in ${table[@]}
do
   sudo lxc-destroy -n $i
done
echo "delete conteneurs"
else
   sudo lxc-destroy -n $1
   if [ $? -ne 0 ]
   then
     echo "le conteneur n'existe pas"
   exit 1
   else
     echo "delete conteneur"
   exit 0
   fi
fi
echo "*******Container*****"
sudo lxc-ls --fancy

echo "*************************"
