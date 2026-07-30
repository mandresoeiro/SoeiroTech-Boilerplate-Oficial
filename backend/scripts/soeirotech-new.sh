#!/usr/bin/env bash
set -euo pipefail

poetry install
poetry run python manage.py migrate
poetry run python manage.py collectstatic --noinput

echo "Setup concluido. Crie o superusuario com:"
echo "  poetry run python manage.py createsuperuser"
