#!/bin/bash

VERSAO="0.1"
DHUSER=mtsribeiro

## Download da imagem java
docker pull openjdk:22-bullseye

## Cria a imagem 
docker build -t ${DHUSER}/openjdk:${VERSAO} .

## Define a nova imagem como latest
docker tag ${DHUSER}/openjdk:${VERSAO} ${DHUSER}/openjdk

## Push das imagens para o Docker Hub
docker push mtsribeiro/openjdk:${VERSAO}
docker push mtsribeiro/openjdk
#docker logout