#!/bin/bash

PLAYBOOK_PATH="run_roles.yaml"
INVENTORY_FILE="inventory.ini"
INSTALL_PATH="/home/$(whoami)/ansible"
INSTALL_USER=$(whoami)

# Создание директории 
echo "Создание директории ..."
mkdir -p "$INSTALL_PATH"

# Установка Ansible
echo "Установка Ansible..."
if ! command -v ansible &> /dev/null; then
    sudo apt update
    sudo apt install -y ansible
else
    echo "Ansible уже установлен."
fi

# fiansible-playbook -l <Alias хоста/группы> -i hosts.txt <playbook>.yml

# Запуск playbook
echo "Запуск playbook..."
ansible-playbook -i "$INVENTORY_FILE" "$PLAYBOOK_PATH"  --extra-vars "install_path=$INSTALL_PATH install_user=$INSTALL_USER debug_mode=true"
