# Guia: Criar e Subir um Projeto Django

Este guia mostra como criar um novo projeto a partir do SoeiroTech Django Boilerplate e subir esse projeto para o GitHub.

## 1. Organizar a Pasta Local

Use esta estrutura local para manter seus projetos organizados:

```text
C:\dev\projects\django\
  templates\
  active\
  archive\
```

Recomendacao:

- `templates`: bases reutilizaveis.
- `active`: projetos em andamento.
- `archive`: projetos antigos ou pausados.

O boilerplate pode ficar em:

```text
C:\dev\projects\django\templates\SoeiroTech-Boilerplate-Oficial
```

Projetos novos devem ficar em:

```text
C:\dev\projects\django\active\nome-do-projeto
```

## 2. Copiar o Boilerplate

No PowerShell:

```powershell
New-Item -ItemType Directory -Force C:\dev\projects\django\active

Copy-Item -Recurse `
  C:\dev\django\repos\SoeiroTech-Boilerplate-Oficial `
  C:\dev\projects\django\active\nome-do-projeto
```

Troque `nome-do-projeto` pelo nome real do projeto.

Exemplo:

```powershell
Copy-Item -Recurse `
  C:\dev\django\repos\SoeiroTech-Boilerplate-Oficial `
  C:\dev\projects\django\active\gestao-clientes
```

## 3. Remover o Git do Boilerplate

O projeto copiado ainda aponta para o repositorio do boilerplate. Remova o Git antigo:

```powershell
cd C:\dev\projects\django\active\nome-do-projeto
Remove-Item -Recurse -Force .git
```

## 4. Ajustar Nome e Documentacao

Atualize estes arquivos antes de subir:

- `README.md`
- `docs\engenharia-software.md`
- `docs\roadmap.md`
- `backend\pyproject.toml`
- `backend\.env.example`

No `backend\pyproject.toml`, altere:

```toml
name = "soeirotech-django-boilerplate"
description = "Boilerplate profissional para projetos Django da SoeiroTech"
```

Para algo do seu projeto:

```toml
name = "gestao-clientes"
description = "Sistema Django para gestao de clientes"
```

## 5. Criar o Ambiente

No Ubuntu ou WSL:

```bash
cd /mnt/c/dev/projects/django/active/nome-do-projeto/backend
cp .env.example .env
poetry install
poetry run python manage.py migrate
poetry run python manage.py runserver
```

No PowerShell, se Python e Poetry estiverem instalados:

```powershell
cd C:\dev\projects\django\active\nome-do-projeto\backend
Copy-Item .env.example .env
poetry install
poetry run python manage.py migrate
poetry run python manage.py runserver
```

## 6. Rodar Validacoes

Antes de subir para o GitHub:

```bash
cd backend
poetry run black --check .
poetry run isort --check-only .
poetry run flake8 --config=../.flake8 .
poetry run python manage.py check --settings=core.settings.test
poetry run python manage.py makemigrations --check --dry-run --settings=core.settings.test
poetry run pytest
```

Se algum comando falhar, corrija antes de publicar.

## 7. Criar o Repositorio no GitHub

No GitHub:

1. Clique em **New repository**.
2. Escolha um nome claro, por exemplo `gestao-clientes`.
3. Escolha `Public` se for portfolio ou `Private` se ainda estiver incompleto.
4. Nao marque para criar README, `.gitignore` ou license, porque o projeto ja possui esses arquivos.
5. Clique em **Create repository**.

## 8. Iniciar Git Novo e Subir

No PowerShell:

```powershell
cd C:\dev\projects\django\active\nome-do-projeto
git init
git add -A
git commit -m "Initial project from SoeiroTech Django boilerplate"
git branch -M main
git remote add origin https://github.com/SEU-USUARIO/nome-do-projeto.git
git push -u origin main
```

Exemplo:

```powershell
git remote add origin https://github.com/mandresoeiro/gestao-clientes.git
git push -u origin main
```

## 9. Conferir no GitHub

Depois do push:

- Abra o repositorio no GitHub.
- Confira se o README aparece corretamente.
- Confira se a aba **Actions** executou o CI.
- Se o CI falhar, abra o erro, corrija localmente, commit e push novamente.

## 10. Fluxo Diario de Trabalho

Para trabalhar em uma melhoria:

```powershell
git switch -c codex/nome-da-melhoria
```

Depois de alterar arquivos:

```powershell
git status
git add -A
git commit -m "Describe the improvement"
git push -u origin codex/nome-da-melhoria
```

No GitHub, abra um Pull Request para `main`.

## Checklist Antes de Publicar como Portfolio

- README explica o problema do projeto.
- `docs\engenharia-software.md` esta adaptado ao projeto real.
- Existe `.env.example`.
- O projeto roda localmente.
- Testes passam.
- CI passa no GitHub.
- Repositorio tem nome claro.
- Projeto nao contem segredos, senhas ou arquivos `.env`.

