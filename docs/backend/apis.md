# APIs

As APIs do sistema sao criadas com Django REST Framework.

## Padrao Inicial

Endpoints devem ser organizados por app e expostos pelo arquivo `urls.py` de cada modulo.

Exemplo:

```python
from rest_framework.response import Response
from rest_framework.views import APIView


class PingView(APIView):
    def get(self, request):
        return Response({"status": "ok"})
```

## Diretrizes

- Validar entradas com serializers.
- Separar regras de negocio de views sempre que o fluxo crescer.
- Registrar endpoints relevantes na documentacao.
- Proteger rotas sensiveis com autenticacao e permissoes.
