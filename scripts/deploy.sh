#!/bin/bash
set -e

# Obtener la ruta absoluta del directorio raíz del proyecto
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(dirname "$SCRIPT_DIR")"
cd "$PROJECT_ROOT/terraform"

echo "⚙️ Inicializando Terraform..."
terraform init

echo "🚀 Aplicando infraestructura..."
terraform apply -auto-approve

IP=$(terraform output -raw instance_ip)
echo "🎮 Accede al juego 2048 en: http://$IP"
