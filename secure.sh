#!/bin/bash

RED='\033[1;31m'
GREEN='\033[1;32m'
BLUE='\033[1;34m'
NC='\033[0m' # No Color

# Internet conectando?
checa_internet () {
if ! ping -c 1 8.8.8.8 -q &> /dev/null; then
  echo -e "${RED}   [ERROR] - Seu computador não tem conexão com a Internet. Verifique os cabos e o modem.${NC}";sleep 2
  exit 1
else
  echo -e "${GREEN}   [CHECK] - Conexão com a Internet funcionando normalmente.${NC}";sleep 2
fi
}

checa_internet

cat /etc/*release | grep PRETTY_NAME=