#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ti
mkdir /comercial
mkdir /financeiro
mkdir /fiscal
mkdir /rh

echo "Diretórios criados....."

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_TI
groupadd GRP_COMERCIAL
groupadd GRP_FINANCEIRO
groupadd GRP_FISCAL
groupadd GRP_RH

echo "Grupos criados....."

echo "Criando usuários..."

useradd adm1 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd adm2 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd adm3 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd suporte1 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_TI
useradd suporte2 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_TI
useradd suporte3 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_TI

useradd comercial1 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_COMERCIAL
useradd comercial2 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_COMERCIAL
useradd comercial3 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_COMERCIAL

useradd financeiro1 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_FINANCEIRO
useradd financeiro2 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_FINANCEIRO
useradd financeiro3 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_FINANCEIRO

useradd fiscal1 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_FISCAL
useradd fiscal2 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_FISCAL
useradd fiscal3 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_FISCAL

useradd rh1 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_RH
useradd rh2 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_RHL
useradd rh3 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_RH

echo "Usuários criados....."

echo "Especificando permissões dos diretórios...."

chown root:GRP_ADM /adm
chown root:GRP_TI /ti
chown root:GRP_COMERCIAL /comercial
chown root:GRP_FINANCEIRO /financeiro
chown root:GRP_FISCA /fiscal
chown root:GRP_RH /rh

chmod 770 /adm
chmod 770 /ti
chmod 770 /comercial
chmod 770 /financeiro
chmod 770 /fiscal
chmod 770 /rh
chmod 777 /publico

echo "Permissões configuradas"
echo "Fim....."



