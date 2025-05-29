# 🎮 Juego 2048 en AWS con Terraform + Docker

Este proyecto despliega automáticamente una instancia EC2 en AWS que ejecuta el juego 2048 en un contenedor Docker utilizando **Terraform** para crear la infraestructura y **Docker** para el despliegue de la aplicación.

---

## 📌 Tecnologías utilizadas

- **Terraform** – Infraestructura como código
- **Docker** – Contenerización de la aplicación
- **AWS EC2** – Máquina virtual donde se ejecuta el contenedor
- **Bash** – Script automático de despliegue

---

## ✅ Requisitos previos

Antes de ejecutar este proyecto, asegúrate de tener lo siguiente instalado:

- ✅ Cuenta en AWS (temporal o permanente)
- ✅ Haber ejecutado `aws configure` con tus credenciales
- ✅ [Terraform](https://www.terraform.io/downloads) ≥ v1.3
- ✅ [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html)
- ✅ [Git](https://git-scm.com/)
- ✅ [Git Bash (Windows)](https://gitforwindows.org/) o terminal bash en Linux/macOS

---

## 🚀 Instrucciones de despliegue

```bash
# Clonar el repositorio
git clone https://github.com/david-berri/2048-terraform-docker.git
cd 2048-terraform-docker

# Dar permisos de ejecución al script
chmod +x scripts/deploy.sh

# Ejecutar el despliegue automático
./scripts/deploy.sh
```

El script hará lo siguiente:

1. Inicia Terraform y despliega la infraestructura en AWS.
2. Crea una instancia EC2 con Docker preinstalado.
3. Clona y ejecuta el juego 2048 dentro de un contenedor.
4. Te mostrará la IP pública para que accedas al juego en tu navegador.

---

## 🌐 Acceder al juego

Cuando el script termine, verás algo como:

```bash
🎮 Juego 2048 desplegado exitosamente.
🌐 Accede desde: http://3.123.45.67
```

Abre ese enlace en tu navegador para jugar 🎉

---

## 🧼 Cómo destruir la infraestructura (IMPORTANTE)

Cuando termines de probar el juego, destruye los recursos para evitar cargos en AWS:

```bash
cd terraform
terraform destroy -auto-approve
```

---

## ⚠️ Notas

- Este proyecto crea una instancia EC2 pública. Asegúrate de destruirla si ya no la usas.
- Si cambias el nombre del repositorio o el script, actualiza las rutas correspondientes.
