#!/bin/bash

# Colores para mensajes
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${YELLOW}🚀 Iniciando flujo de trabajo Git...${NC}"

# Paso 1: Ver estado actual
echo -e "\n${YELLOW}📊 Estado actual:${NC}"
git status

# Paso 2: Agregar todos los cambios
echo -e "\n${YELLOW}📦 Agregando cambios...${NC}"
git add .

# Paso 3: Ver estado después de agregar
echo -e "\n${YELLOW}📊 Estado después de git add:${NC}" 
git status

# Paso 4: Hacer commit
echo -e "\n${YELLOW}💾 Haciendo commit...${NC}"
read -p "📝 Mensaje del commit: " commit_message
git commit -m "$commit_message"

# Paso 5: Mostrar resultado
echo -e "\n${GREEN}✅ ¡Commit realizado!${NC}"
echo -e "${YELLOW}📜 Historial reciente:${NC}"
git log --oneline -5

echo -e "\n${GREEN}🎉 ¡Flujo completado!${NC}"
