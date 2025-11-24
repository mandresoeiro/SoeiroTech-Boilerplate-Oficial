
Conteúdo:

```bash
#!/usr/bin/env bash

if [ -z "$1" ]; then
    echo "❌ Informe o nome do projeto. Exemplo:"
    echo "   ./soeirotech-new.sh academus"
    exit 1
fi

PROJECT=$1

echo "📁 Criando projeto: $PROJECT..."
mkdir "$PROJECT"

echo "📦 Copiando backend..."
cp -r ../backend "$PROJECT/backend"

echo "📚 Copiando documentação..."
cp -r ../docs "$PROJECT/docs"

echo "🔧 Copiando scripts internos..."
mkdir "$PROJECT/scripts"
cp ./soeirotech-new.sh "$PROJECT/scripts"

echo "📦 Instalando dependências Poetry..."
cd "$PROJECT/backend" || exit
poetry install

cp .env.example .env

echo ""
echo "🎉 Projeto criado!"
echo "👉 cd $PROJECT/backend"
echo "👉 poetry shell"
echo "👉 python manage.py migrate"
echo "👉 python manage.py runserver"
