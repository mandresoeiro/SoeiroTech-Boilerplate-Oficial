# Arquitetura do Backend

## Estrutura Principal

```text
backend/
|-- core/
|   |-- urls.py
|   `-- settings/
|-- accounts/
|-- api/
|-- dashboard/
|-- templates/
`-- manage.py
```

## Apps Incluidos

- `accounts`: usuario customizado, autenticacao e perfil.
- `api`: exemplos e base para endpoints REST.
- `dashboard`: area administrativa ou operacional protegida.
- `core`: configuracoes, rotas principais e entrada WSGI/ASGI.

## Principios

- Separar configuracoes por ambiente.
- Manter regras de negocio fora de views quando houver complexidade.
- Documentar decisoes tecnicas em `docs`.
- Tratar seguranca como requisito desde o inicio.
