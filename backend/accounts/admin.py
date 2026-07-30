from django.contrib import admin

from .models import CustomUser


@admin.register(CustomUser)
class CustomUserAdmin(admin.ModelAdmin):
    list_display = ("username", "email", "papel", "ativo", "is_staff")
    search_fields = ("username", "email")
    list_filter = ("papel", "ativo", "is_staff")
