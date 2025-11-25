# SoeiroTech Django Super Template Boilerplate

## Como iniciar o projeto

1. **Clone o repositório:**
   ```bash
   git clone <url-do-repo>
   cd <pasta-do-projeto>
   ```
2. **Crie e configure o .env:**
   Copie o arquivo `.env.example` para `.env` e ajuste as variáveis.
   ```bash
   cp backend/.env.example backend/.env
   ```
3. **Instale as dependências:**
   ```bash
   cd backend
   poetry install
   ```
4. **Aplique as migrações:**
   ```bash
   poetry run python manage.py migrate
   ```
5. **Crie um superusuário:**
   ```bash
   poetry run python manage.py createsuperuser
   ```
6. **Rode o servidor:**
   ```bash
   poetry run python manage.py runserver
   ```

## Estrutura recomendada
- `backend/core/settings/` — configurações separadas por ambiente
- `backend/accounts/` — app de usuários customizado
- `backend/templates/` — templates globais
- `backend/.env.example` — exemplo de variáveis de ambiente
- `docs/REFATORACOES.md` — histórico de melhorias

## Segurança
- Nunca suba o arquivo `.env` real para o repositório.
- Use sempre as configurações de segurança em produção (`prod.py`).

## Documentação
- Use o `mkdocs` para documentar endpoints e arquitetura.

---

> Mantenha este README atualizado conforme o projeto evolui.
