# Juego 2048 en AWS con Terraform + Docker

Este proyecto despliega automáticamente una instancia EC2 en AWS que ejecuta el juego 2048 en un contenedor Docker.

## 🚀 Requisitos

- Cuenta temporal o permanente de AWS
- Tener configurado `aws configure`
- Terraform ≥ 1.3
- AWS CLI
- Git
- Bash (usa Git Bash si estás en Windows)

## 📦 Instrucciones

```bash
git clone https://github.com/TU_USUARIO/2048-terraform-aws.git
cd 2048-terraform-aws
chmod +x scripts/*.sh
./scripts/deploy.sh
