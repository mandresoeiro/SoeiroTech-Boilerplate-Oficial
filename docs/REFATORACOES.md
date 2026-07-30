# Historico de Refatoracoes e Melhorias do Boilerplate

Este documento registra melhorias, refatoracoes e boas praticas aplicadas ao projeto.

## 2026-07-30 (organizacao profissional)

### [estabilidade e atualizacoes]

- Adicionados `.python-version`, `.editorconfig` e `.gitattributes`.
- Adicionado workflow de CI com matriz para Python 3.12 e 3.13.
- Confirmado CI em `ubuntu-latest`.
- Alterado Dockerfile para usar `ubuntu:24.04`.
- Adicionado guia `docs/ubuntu.md`.
- Adicionado guia `docs/guia-criar-e-subir-projeto.md`.
- Adicionado script `scripts/new-django-project.sh` para criar projetos novos a partir do boilerplate.
- Ajustado script para criar projetos em `C:\dev\django\active`.
- Adicionado Dependabot para dependencias Python e GitHub Actions.
- Adicionado `core.settings.test` para execucao isolada de testes.
- Adicionada configuracao do pytest no `pyproject.toml`.
- Adicionada configuracao `.flake8`, pois o flake8 padrao nao le `pyproject.toml` sem plugin.
- Adicionado endpoint publico `GET /api/health/`.
- Adicionado `docs/roadmap.md`.

### [README.md]

- Reescrito README com objetivo, stack, estrutura, comandos de execucao, Docker, testes e documentacao.

### [docs/engenharia-software.md]

- Adicionado documento de engenharia de software como base para evolucao profissional do boilerplate.

### [backend/pyproject.toml]

- Ajustado nome do pacote para `soeirotech-django-boilerplate`.
- Atualizada descricao do projeto.
- Incluidos apps `api` e `dashboard` nos pacotes.
- Corrigido caminho do README.

### [backend/core/settings/]

- Ajustado `ALLOWED_HOSTS` para padrao local seguro.
- Adicionados `STATIC_ROOT`, `MEDIA_URL` e `MEDIA_ROOT`.
- Corrigidos comentarios quebrados.
- Removida configuracao obsoleta de seguranca em producao.

### [backend/accounts/migrations/]

- Adicionada migration inicial para `CustomUser`, essencial para o primeiro `migrate` do projeto.

### [backend/.gitignore]

- Reescrito arquivo para remover linhas quebradas e manter regras claras para Python, Django, ambientes, caches, Docker e segredos.

### [backend/Dockerfile, backend/docker-compose.yml]

- Ajustado Dockerfile para nao depender de `poetry.lock` inexistente.
- Adicionado volume persistente para PostgreSQL no Docker Compose.

### [docs/]

- Corrigida documentacao com caracteres quebrados.
- Normalizado arquivo `docs/backend/models.md`.
- Atualizado `mkdocs.yml` para usar `../docs`.

## 2025-11-24 (dashboard)

### [dashboard/]

- Criado app `dashboard` com view protegida e template base de dashboard com sidebar.

### [templates/base.html]

- Adicionado Bootstrap, navbar e footer global para servir todos os apps.

## 2025-11-24 (exemplos praticos)

### [api/]

- Criado app `api` com exemplo de endpoint REST usando DRF (`HelloWorldView`).

### [templates/base.html, 404.html, 500.html]

- Criados templates globais base e de erro para o projeto.

### [accounts/models.py]

- Adicionado metodo de permissao customizada `has_dashboard_access` ao modelo de usuario.

## 2025-11-24 (aplicacoes praticas - continuacao)

### [accounts/tests.py, core/tests.py]

- Adicionados arquivos de teste basico para pytest e pytest-django.

### [Dockerfile, docker-compose.yml]

- Adicionados arquivos para facilitar deploy e onboarding com Docker.

### [.pre-commit-config.yaml]

- Adicionada configuracao de pre-commit hooks para black, isort e flake8.

### [scripts/soeirotech-new.sh]

- Script de setup automatizado: instala dependencias, roda migracoes, cria superusuario e coleta estaticos.

### [base.py]

- Adicionado `AUTH_USER_MODEL = "accounts.CustomUser"` para uso do modelo customizado.

### [prod.py]

- Adicionadas configuracoes de seguranca recomendadas para producao.

### [backend/templates/]

- Criada pasta global para templates compartilhados.

### [.env.example]

- Adicionados exemplos comentados e explicacoes para cada variavel.

## Como usar este arquivo

- Sempre que uma nova melhoria ou refatoracao for feita, acrescente um novo bloco com a data, descricao e arquivos afetados.
- Use este historico para onboarding de novos devs e para manter o padrao do projeto.

> Ultima atualizacao: 2026-07-30
