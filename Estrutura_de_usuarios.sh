#!/bin/bash

echo "Criando diretorios..."

mkdir /publico /adm /ven /sec

echo "Criando grupos de usuarios..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuarios..."

echo "Usuarios ADM..."

useradd carlos -m -s /bin/bash  passwd -e -G GRP_ADM
useradd maria -m -s /bin/bash  passwd -e -G GRP_ADM
useradd joao -m -s /bin/bash  passwd -e  -G GRP_ADM

echo "Usuarios VEN..."

useradd debora -m -s /bin/bash  passwd -e  -G GRP_VEN
useradd sebastiano -m -s /bin/bash  passwd -e  -G GRP_VEN
useradd roberto -m -s /bin/bash  passwd -e  -G GRP_VEN

echo "Usuarios SEC..."

useradd josefina -m -s /bin/bash  passwd -e -G GRP_SEC
useradd amanda -m -s /bin/bash  passwd -e -G GRP_SEC
useradd rogerio -m -s /bin/bash  passwd -e -G GRP_SEC

echo "Especificando permissões dos diretorios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Finalizado"

