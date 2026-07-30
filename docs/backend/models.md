# Models Principais

## Usuario Customizado

O projeto usa `accounts.CustomUser` como modelo de usuario.

```python
class CustomUser(AbstractUser):
    papel = models.CharField(max_length=50, default="aluno")
    ativo = models.BooleanField(default=True)
```

## Diretrizes

- Adicionar campos ao usuario customizado somente quando forem usados por regras do dominio.
- Evitar colocar regras complexas diretamente no model quando houver servicos de dominio mais adequados.
- Documentar campos sensiveis no documento de engenharia.
