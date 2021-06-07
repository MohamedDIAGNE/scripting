

#!/bin/bash

#le nom de l’archive
#le répertoire de base d’installation
nameArch="ff.tar"

rep="repIns"
vf="rw"
droit=$(ls -l ff.tar | awk -F - '{ print $3 }')

if [ -e $nameArch ]
then
 if [[ "$droit" == "vf" ]];
 then
  echo "les droits correspondent"
 else
  echo "Vous avez pas les droits"
 fi
 if [ $nameArch=*.tar -o $nameArch=*.zip -o $nameArch=*.tgz ]
 then
  test -d $rep
  if [ $? -ne 1 ]
  then
   tar xvf $nameArch -C /home/user/$rep
  else
   echo "le repertoire n'existe pas"
  fi
 else
   echo "Erreur au niveau de l'extension du fichier"
 fi
else
  echo "le fichier n'existe pas"
fi
