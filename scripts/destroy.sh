#!/bin/bash
set -e
cd terraform
echo "🧹 Destruyendo infraestructura..."
terraform destroy -auto-approve
