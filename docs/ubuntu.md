# Ambiente Ubuntu

Este boilerplate e preparado para rodar em Ubuntu, WSL Ubuntu, Docker e GitHub Actions.

## Versao Recomendada

- Ubuntu 24.04 LTS
- Python 3.12
- Poetry
- PostgreSQL 15 ou superior

## Instalar Dependencias no Ubuntu

```bash
sudo apt update
sudo apt install -y \
  build-essential \
  curl \
  git \
  libpq-dev \
  python3 \
  python3-dev \
  python3-pip \
  python3-venv
```

## Instalar Poetry

```bash
python3 -m pip install --user pipx
python3 -m pipx ensurepath
pipx install poetry
```

Feche e abra o terminal depois do `ensurepath`, se necessario.

## Rodar o Projeto

```bash
cd backend
cp .env.example .env
poetry install
poetry run python manage.py migrate
poetry run python manage.py runserver
```

## Rodar com Docker

O `Dockerfile` usa `ubuntu:24.04` como imagem base.

```bash
cd backend
docker compose up --build
```

## Rodar Validacoes

```bash
cd backend
poetry run black --check .
poetry run isort --check-only .
poetry run flake8 --config=../.flake8 .
poetry run python manage.py check --settings=core.settings.test
poetry run python manage.py makemigrations --check --dry-run --settings=core.settings.test
poetry run pytest
```

## GitHub Actions

O workflow `.github/workflows/ci.yml` roda em `ubuntu-latest` com matriz para Python 3.12 e 3.13.
