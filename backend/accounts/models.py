from django.contrib.auth.models import AbstractUser
from django.db import models

class CustomUser(AbstractUser):
    papel = models.CharField(max_length=50, default="aluno")
    ativo = models.BooleanField(default=True)

    def __str__(self):
        return self.username
