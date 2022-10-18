#!/bin/bash
echo 'atualizando o servidor...'
sudo apt-get update -y && sudo apt upgrade -y
echo'atualização ok...'

echo 'instalação apache...'
sudo apt-get install apache2 -y
echo 'instalação apache ok...'

echo 'instalação unzip...'
sudo apt-get install unzip -y
echo 'instalação unzip ok...'

echo 'instalação wget ...'
sudo apt-get install wget -y
echo 'instalação wget ok...'

echo 'download aplicação web...'
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
echo 'download aplicação web ok...'

echo 'descompactar e copiar arquivos diretório padrão apache'
unzip main.zip
cp /tmp/linux-site-dio-main/* /var/www/html -R
echo 'arquivos copiados...'

echo 'restart serviço apache...'
sudo systemctl restart apache2
echo 'restart serviço apache ok...'

echo 'seridor web OK!!!'
