
# Script de Actualización de Linux e Instalación de Node.js con NVM

Este repositorio contiene un script en **Bash** que actualiza tu sistema operativo Linux e instala **Node.js** utilizando **nvm (Node Version Manager)**. El script es compatible con distribuciones basadas en **Debian/Ubuntu** y **RedHat/CentOS/Fedora**.

## Características

- Actualiza el sistema operativo Linux.
- Instala **nvm (Node Version Manager)**.
- Utiliza **nvm** para instalar la versión LTS más reciente de **Node.js**.
- Detecta automáticamente la distribución de Linux.

## Requisitos

- Distribuciones compatibles:
  - **Debian/Ubuntu**
  - **RedHat/CentOS/Fedora**
  
  *Nota: Se puede adaptar a otras distribuciones si es necesario.*

## Instrucciones

### Clonar el Repositorio

Clona este repositorio en tu máquina local:

```bash
git clone https://github.com/tu-usuario/tu-repositorio.git
cd tu-repositorio
```

### Dar Permisos al Script

Asigna permisos de ejecución al script:

```bash
chmod +x actualizar_instalar_node_con_nvm.sh
```

### Ejecutar el Script

Ejecuta el script para actualizar tu sistema e instalar **Node.js** usando **nvm**:

```bash
./actualizar_instalar_node_con_nvm.sh
```

El script realizará los siguientes pasos:
1. Detectar la distribución de Linux.
2. Actualizar el sistema utilizando los gestores de paquetes adecuados (apt o yum).
3. Instalar **nvm**.
4. Instalar la versión LTS de **Node.js** utilizando **nvm**.
5. Verificar la instalación de **Node.js** mostrando la versión instalada.

## Verificar la Instalación

Después de ejecutar el script, puedes verificar que **Node.js** ha sido instalado correctamente ejecutando:

```bash
node -v
```

Esto mostrará la versión de Node.js que has instalado a través de **nvm**.

## Notas

- Este script también se puede adaptar para instalar versiones específicas de **Node.js** utilizando `nvm install <version>`.
- **nvm** te permite instalar y gestionar múltiples versiones de Node.js, ideal para proyectos con diferentes requerimientos de versiones.

## Contribuciones

Las contribuciones son bienvenidas. Si encuentras algún error o deseas agregar nuevas características, no dudes en abrir un **issue** o enviar un **pull request**.

## Licencia

Este proyecto está licenciado bajo la [MIT License](LICENSE).
