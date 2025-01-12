#!/bin/bash

# Función para detectar la distribución de Linux
detect_distro() {
    if [ -f /etc/os-release ]; then
        . /etc/os-release
        DISTRO=$ID
    else
        echo "No se pudo detectar la distribución de Linux."
        exit 1
    fi
}

# Función para actualizar sistemas basados en Debian/Ubuntu
update_debian() {
    echo "Actualizando el sistema en distribución Debian/Ubuntu..."
    sudo apt-get update && sudo apt-get upgrade -y
}

# Función para actualizar sistemas basados en RedHat/CentOS
update_rhel() {
    echo "Actualizando el sistema en distribución RedHat/CentOS..."
    sudo yum update -y
}

# Función para instalar NVM y Node.js
install_nvm_node() {
    echo "Instalando NVM (Node Version Manager)..."
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash


    # Cargar nvm inmediatamente sin necesidad de abrir una nueva shell
    export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # Cargar nvm

    echo "Instalando Node.js versión estable (LTS)..."
    nvm install --lts

    echo "Node.js instalado con NVM. Versión:"
    node -v
}

# Ejecutar la función adecuada dependiendo de la distribución
detect_distro

if [[ "$DISTRO" == "ubuntu" || "$DISTRO" == "debian" ]]; then
    update_debian
elif [[ "$DISTRO" == "rhel" || "$DISTRO" == "centos" || "$DISTRO" == "fedora" ]]; then
    update_rhel
else
    echo "Distribución no soportada: $DISTRO"
    exit 1
fi

# Instalar NVM y Node.js
install_nvm_node
