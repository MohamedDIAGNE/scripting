#!/bin/bash

sed -z "s/:/\n/g" /home/user/resultat/user31458.txt > rsp.txt

sed -n '1p;3p;5p' rsp.txt > fichOps.txt


