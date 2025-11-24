# APIs

As APIs do sistema são criadas com Django Rest Framework.

Exemplo:

```python
from rest_framework.views import APIView
from rest_framework.response import Response

class PingView(APIView):
    def get(self, request):
        return Response({"status": "ok"})
