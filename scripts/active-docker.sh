#!/bin/bash

echo "🔄 Habilitando Docker..."
sudo systemctl enable docker.service
sudo systemctl enable docker.socket

echo "🚀 Iniciando Docker..."
sudo systemctl start docker.service

echo "✅ Docker está habilitado y corriendo."
