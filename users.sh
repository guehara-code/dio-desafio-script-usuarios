#! /bin/bash

userdel -r carlos
userdel -r maria
userdel -r joao
userdel -r debora
userdel -r sebastiana
userdel -r roberto
userdel -r josefina
userdel -r amanda
userdel -r rogerio

rm -r /publico /adm /ven /sec
groupdel GRP_ADM
groupdel GRP_VEN
groupdel GRP_SEC


groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
mkdir /publico /adm /ven /sec
chgrp GRP_ADM /adm
chgrp GRP_VEN /ven
chgrp GRP_SEC /sec
chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

useradd -m -s /bin/bash carlos
usermod -a -G GRP_ADM carlos

useradd -m -s /bin/bash maria
usermod -a -G GRP_ADM maria

useradd -m -s /bin/bash joao
usermod -a -G GRP_ADM joao

useradd -m -s /bin/bash debora
usermod -a -G GRP_VEN debora

useradd -m -s /bin/bash sebastiana
usermod -a -G GRP_VEN sebastiana

useradd -m -s /bin/bash roberto
usermod -a -G GRP_VEN roberto

useradd -m -s /bin/bash josefina
usermod -a -G GRP_VEN josefina

useradd -m -s /bin/bash amanda
usermod -a -G GRP_VEN amanda

useradd -m -s /bin/bash rogerio
usermod -a -G GRP_VEN rogerio

