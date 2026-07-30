import pytest
from django.contrib.auth import get_user_model
from django.urls import reverse


@pytest.mark.django_db
def test_profile_view(client):
    user_model = get_user_model()
    user = user_model.objects.create_user(username="testuser", password="testpass")
    client.force_login(user)

    response = client.get(reverse("profile"))

    assert response.status_code == 200
    assert "Perfil" in response.content.decode()
