#!/bin/bash
echo "Parando container aslave-care-api"
docker stop aslave-care-api

echo "Removendo container aslave-care-api"
docker rm aslave-care-api

echo "Removendo imagens não vinculadas a containers"
docker image prune -f

echo "Buscando as credenciais para baixar a imagem da aslave-care-api"
eval "$(aws ecr get-login --no-include-email | sed 's|https://||')"

echo "Baixando a nova imagem da aslave-care-api"
#docker pull 188933738655.dkr.ecr.eu-west-1.amazonaws.com/$1:$2

echo "Iniciando o servidor AslaveCare API"
docker-compose up -d
