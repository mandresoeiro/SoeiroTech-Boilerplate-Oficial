# SoeiroTech Django Boilerplate

Boilerplate profissional para iniciar projetos Django com uma base organizada, documentada e pronta para evoluir para APIs, paineis administrativos e sistemas web.

## Objetivo

Este repositorio serve como ponto de partida para novos projetos Django da SoeiroTech, com foco em:

- Estrutura modular.
- Separacao de configuracoes por ambiente.
- Usuario customizado.
- Django REST Framework.
- Documentacao com MkDocs.
- Boas praticas de seguranca e manutencao.
- Base preparada para testes, Docker e CI/CD.

## Stack

- Python 3.12
- Testado em CI tambem com Python 3.13
- Django 5
- Django REST Framework
- Poetry
- PostgreSQL via Docker Compose
- Ubuntu 24.04 no Docker
- MkDocs Material
- Pytest
- Black, isort e flake8
- GitHub Actions
- Dependabot

## Estrutura

```text
.
|-- backend/
|   |-- accounts/
|   |-- api/
|   |-- core/
|   |   `-- settings/
|   |-- dashboard/
|   |-- templates/
|   |-- manage.py
|   |-- pyproject.toml
|   `-- .env.example
|-- docs/
|   |-- backend/
|   |-- engenharia-software.md
|   `-- index.md
|-- scripts/
`-- README.md
```

## Como Rodar Localmente

### 1. Clone o repositorio

```bash
git clone https://github.com/mandresoeiro/SoeiroTech-Boilerplate-Oficial.git
cd SoeiroTech-Boilerplate-Oficial/backend
```

### 2. Configure o ambiente

```bash
cp .env.example .env
```

Edite o arquivo `.env` conforme necessario.

### 3. Instale as dependencias

```bash
poetry install
```

### 4. Execute as migracoes

```bash
poetry run python manage.py migrate
```

### 5. Crie um superusuario

```bash
poetry run python manage.py createsuperuser
```

### 6. Rode o servidor

```bash
poetry run python manage.py runserver
```

A aplicacao ficara disponivel em:

```text
http://127.0.0.1:8000/
```

## Docker

Para subir a aplicacao com banco PostgreSQL:

```bash
cd backend
docker compose up --build
```

O Dockerfile usa `ubuntu:24.04` como base.

## Ubuntu

Guia de ambiente Ubuntu/WSL:

```text
docs/ubuntu.md
```

## Criar e Subir um Novo Projeto

Guia completo:

```text
docs/guia-criar-e-subir-projeto.md
```

No WSL, o caminho rapido e:

```bash
cd /mnt/c/dev/django/repos/SoeiroTech-Boilerplate-Oficial
./scripts/new-django-project.sh nome-do-projeto
```

Ou criando e subindo direto:

```bash
./scripts/new-django-project.sh nome-do-projeto https://github.com/mandresoeiro/nome-do-projeto.git
```

## Testes

```bash
cd backend
poetry run pytest
```

## Qualidade de Codigo

```bash
cd backend
poetry run black .
poetry run isort .
poetry run flake8 .
```

## CI e Atualizacoes

O projeto possui GitHub Actions em `.github/workflows/ci.yml` com matriz para Python 3.12 e 3.13.

Antes de atualizar Python, Django ou dependencias principais, rode:

```bash
cd backend
poetry update
poetry run python manage.py check --settings=core.settings.test
poetry run python manage.py makemigrations --check --dry-run --settings=core.settings.test
poetry run pytest
```

O Dependabot esta configurado para abrir atualizacoes semanais agrupadas para stack Django, ferramentas de qualidade e GitHub Actions.

Em producao, `SECRET_KEY` e obrigatoria. O valor padrao existe apenas para desenvolvimento e testes locais.

## Documentacao

O documento de engenharia do projeto fica em:

```text
docs/engenharia-software.md
```

Para rodar a documentacao:

```bash
cd backend
poetry run mkdocs serve
```

## Status

Status atual: `template`

Este projeto esta em processo de organizacao para servir como base oficial de novos projetos Django.
