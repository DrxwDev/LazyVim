#!/bin/bash

echo "🔍 Deteniendo contenedores activos..."
sudo docker ps -q | xargs -r sudo docker stop

echo "🛑 Deteniendo Docker..."
sudo systemctl stop docker.service
sudo systemctl stop docker.socket

echo "🚫 Deshabilitando Docker..."
sudo systemctl disable docker.service
sudo systemctl disable docker.socket

echo "✅ Docker y su socket han sido detenidos y deshabilitados."
