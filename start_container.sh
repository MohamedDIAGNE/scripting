#!/bin/bash
#start_container.sh
oldIFS=$IFS
IFS='
'
def=$( echo $1|grep \* )
mot_pas_etoile=$(echo $1 | tr -d "*")
if [ $def ]
then
   table=( $(sudo lxc-ls | tr " " "\n" | grep $mot_pas_etoile ) )
for i in ${table[@]}
do
   sudo lxc-start -n $i
done
echo "start conteneur"
else
   sudo lxc-start -n $1
   if [ $? -ne 0 ]
   then
     echo "le conteneur n'existe pas"
   exit 1
   else
     echo "start conteneur"
   exit 0
   fi
fi
echo "*******Container*****"
sudo lxc-ls --fancy
IFS=$oldIFS
echo "*************************"
