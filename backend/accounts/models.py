from django.contrib.auth.models import AbstractUser
from django.db import models


class CustomUser(AbstractUser):
    papel = models.CharField(max_length=50, default="aluno")
    ativo = models.BooleanField(default=True)

    def __str__(self) -> str:
        return self.username

    def has_dashboard_access(self) -> bool:
        """Retorna se o usuario pode acessar o dashboard."""
        return self.is_active and self.is_staff
