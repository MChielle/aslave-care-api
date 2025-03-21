#!/bin/bash
echo "Parando container slave-care-api"
docker stop slave-care-api

echo "Removendo container slave-care-api"
docker rm slave-care-api

echo "Removendo imagens não vinculadas a containers"
docker image prune -f

echo "Buscando as credenciais para baixar a imagem da slave-care-api"
eval "$(aws ecr get-login --no-include-email | sed 's|https://||')"

echo "Baixando a nova imagem da slave-care-api"
docker pull 188933738655.dkr.ecr.eu-west-1.amazonaws.com/$1:$2

echo "Iniciando o servidor SlaveCare API"
docker-compose up -d
