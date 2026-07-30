#!/usr/bin/env bash
set -euo pipefail

if [ -z "${1:-}" ]; then
    echo "Informe o nome do projeto. Exemplo:"
    echo "  ./soeirotech-new.sh meu-projeto"
    exit 1
fi

PROJECT="$1"

echo "Criando projeto: $PROJECT"
mkdir -p "$PROJECT"

echo "Copiando backend..."
cp -r ../backend "$PROJECT/backend"

echo "Copiando documentacao..."
cp -r ../docs "$PROJECT/docs"

echo "Copiando scripts internos..."
mkdir -p "$PROJECT/scripts"
cp ./soeirotech-new.sh "$PROJECT/scripts/"

echo "Instalando dependencias Poetry..."
cd "$PROJECT/backend"
poetry install

cp .env.example .env

echo ""
echo "Projeto criado."
echo "Proximos comandos:"
echo "  cd $PROJECT/backend"
echo "  poetry run python manage.py migrate"
echo "  poetry run python manage.py runserver"
