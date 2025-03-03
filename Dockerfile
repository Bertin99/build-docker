# Étape 1 : Utiliser l'image de base Ubuntu 22.04
FROM ubuntu:22.04

# Étape 2 : Mettre à jour les paquets et installer l'utilitaire ping
RUN apt-get update && apt-get install -y iputils-ping


