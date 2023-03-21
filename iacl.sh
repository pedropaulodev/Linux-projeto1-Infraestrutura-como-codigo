#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Diretórios criados"


echo "Criando grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Grupos Criados..."



echo "Criando usuarios em seus respectivos grupos..."

useradd carlos -c "usuario padrão" -m  -s /bin/bash -G GRP_ADM
useradd maria -c "usuario padrão" -m  -s /bin/bash -G GRP_ADM
useradd joao -c "usuario padrão" -m  -s /bin/bash -G GRP_ADM

useradd debora -c "usuario padrão" -m  -s /bin/bash -G GRP_VEN
useradd sebastiana -c "usuario padrão" -m  -s /bin/bash -G GRP_VEN
useradd roberto -c "usuario padrão" -m  -s /bin/bash -G GRP_VEN

useradd josefina -c "usuario padrão" -m  -s /bin/bash -G GRP_SEC
useradd amanda -c "usuario padrão" -m  -s /bin/bash -G GRP_SEC
useradd rogero -c "usuario padrão" -m  -s /bin/bash -G GRP_SEC

echo "Usuarios criados..."



echo "Adicionando grupos aos diretórios ..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "grupos adicionados..."


echo "Adicionando permissões......"

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Permissões adicionadas e fim!......"











