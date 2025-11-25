## 2025-11-24 (dashboard)

### [dashboard/]
- Criado app `dashboard` com view protegida e template base de dashboard com sidebar.

### [templates/base.html]
- Adicionado Bootstrap, navbar e footer global para servir todos os apps.
## 2025-11-24 (exemplos práticos)

### [api/]
- Criado app `api` com exemplo de endpoint REST usando DRF (`HelloWorldView`).

### [templates/base.html, 404.html, 500.html]
- Criados templates globais base e de erro para o projeto.

### [accounts/models.py]
- Adicionado método de permissão customizada `has_dashboard_access` ao modelo de usuário.
# Histórico de Refatorações e Melhorias do Boilerplate

Este documento registra todas as melhorias, refatorações e boas práticas aplicadas ao projeto, servindo como referência para evolução contínua do boilerplate.

---



## 2025-11-24 (aplicações práticas - continuação)

### [accounts/tests.py, core/tests.py]
- Adicionados arquivos de teste básico para pytest e pytest-django.

### [Dockerfile, docker-compose.yml]
- Adicionados arquivos para facilitar deploy e onboarding com Docker.

### [.pre-commit-config.yaml]
- Adicionado configuração de pre-commit hooks para black, isort e flake8.

### [scripts/soeirotech-new.sh]
- Script de setup automatizado: instala dependências, roda migrações, cria superusuário e coleta estáticos.

### [accounts/models.py]
- Adicionados type hints no modelo CustomUser.

### [base.py]
- Adicionado `AUTH_USER_MODEL = "accounts.CustomUser"` para uso do modelo customizado.

### [prod.py]
- Adicionadas configurações de segurança recomendadas para produção: `SECURE_SSL_REDIRECT`, `SESSION_COOKIE_SECURE`, `CSRF_COOKIE_SECURE`, `SECURE_HSTS_SECONDS`, etc.

### [backend/templates/]
- Criada pasta global para templates compartilhados.

### [.env.example]
- Adicionados exemplos comentados e explicações para cada variável.

### [README.md]
- Criado README com instruções de uso, onboarding e boas práticas.

### Organização e Estrutura
- Separação dos arquivos de configuração (`base.py`, `dev.py`, `prod.py`).
- Sugestão de adicionar `local.py` para configurações pessoais.
- Criação de pasta global para templates (`backend/templates/`).
- Inclusão de `.env.example` comentado.

### Usuário Customizado
- Adicionado `AUTH_USER_MODEL = "accounts.CustomUser"` em `settings/base.py`.
- Sugestão de expandir o modelo de usuário com métodos úteis.

### Modularização
- Incentivo à criação de apps por funcionalidade (ex: `api`, `dashboard`).
- Sugestão de criar app `api` com DRF.

### Documentação
- Uso do `mkdocs` para documentação técnica e de endpoints.
- Explicação sobre README detalhado.

### Testes
- Inclusão de pytest e pytest-django no projeto.
- Sugestão de criar arquivos de teste em cada app.

### Scripts e DevOps
- Expansão do script `soeirotech-new.sh` para automação de setup.
- Sugestão de adicionar Docker para facilitar deploy.

### Padrões de Código
- Uso de `black`, `isort`, `flake8` e recomendação de pre-commit hooks.
- Incentivo ao uso de type hints.

### Segurança
- Garantir que `.env` real não seja versionado.
- Configurações de produção reforçadas em `prod.py`.

---

## Como usar este arquivo

- Sempre que uma nova melhoria/refatoração for feita, acrescente um novo bloco com a data, descrição e arquivos afetados.
- Use este histórico para onboarding de novos devs e para manter o padrão do projeto.

---

> Última atualização: 2025-11-24
