#!/bin/bash

VERSAO="0.1"
DHUSER=mtsribeiro

## Download da imagem python
docker pull python

## Cria a imagem base
docker build -t ${DHUSER}/st:base -f Dockerfile_base .

## Cria a imagem com a aplicação
docker build --no-cache -t ${DHUSER}/st:${VERSAO} .

## Define a nova imagem como latest
docker tag ${DHUSER}/st:${VERSAO} ${DHUSER}/st

## Push das imagens para o Docker Hub
docker push mtsribeiro/st:base
docker push mtsribeiro/st:${VERSAO}
docker push mtsribeiro/st
#docker logout
