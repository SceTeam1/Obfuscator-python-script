#!/bin/bash

clear
echo -e "\033[1;35mInstallation des dépendances pour Termux...\033[0m"
sleep 2

pkg update -y
pkg install -y python
python -m ensurepip --upgrade
pip install --user pyarmor

echo -e "\033[1;32mInstallation terminée sur Termux!\033[0m"
chmod +x run.sh