#!/usr/bin/env bash
set -euo pipefail

PROJECT_NAME="${1:-}"
GITHUB_REMOTE="${2:-}"

TEMPLATE_DIR="/mnt/c/dev/django/repos/SoeiroTech-Boilerplate-Oficial"
PROJECTS_DIR="/mnt/c/dev/projects/django/active"

if [ -z "$PROJECT_NAME" ]; then
    echo "Uso:"
    echo "  ./scripts/new-django-project.sh nome-do-projeto"
    echo "  ./scripts/new-django-project.sh nome-do-projeto https://github.com/usuario/nome-do-projeto.git"
    exit 1
fi

TARGET_DIR="$PROJECTS_DIR/$PROJECT_NAME"

if [ -e "$TARGET_DIR" ]; then
    echo "Erro: a pasta ja existe:"
    echo "  $TARGET_DIR"
    exit 1
fi

echo "Criando pasta base..."
mkdir -p "$PROJECTS_DIR"

echo "Copiando boilerplate para:"
echo "  $TARGET_DIR"
cp -r "$TEMPLATE_DIR" "$TARGET_DIR"

cd "$TARGET_DIR"

echo "Removendo historico Git do boilerplate..."
rm -rf .git

echo "Inicializando novo repositorio Git..."
git init
git add -A
git commit -m "Initial project from SoeiroTech Django boilerplate"
git branch -M main

if [ -n "$GITHUB_REMOTE" ]; then
    echo "Configurando remote:"
    echo "  $GITHUB_REMOTE"
    git remote add origin "$GITHUB_REMOTE"

    echo "Enviando para o GitHub..."
    git push -u origin main
else
    echo ""
    echo "Projeto criado localmente."
    echo "Para subir para o GitHub, crie o repositorio e rode:"
    echo "  cd $TARGET_DIR"
    echo "  git remote add origin https://github.com/SEU-USUARIO/$PROJECT_NAME.git"
    echo "  git push -u origin main"
fi

echo ""
echo "Pronto:"
echo "  $TARGET_DIR"
