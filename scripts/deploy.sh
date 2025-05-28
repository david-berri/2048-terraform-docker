#!/bin/bash
set -e
cd terraform
echo "⚙️ Inicializando Terraform..."
terraform init

echo "🚀 Aplicando infraestructura..."
terraform apply -auto-approve

IP=$(terraform output -raw instance_ip)
echo "🎮 Accede al juego 2048 en: http://$IP"
