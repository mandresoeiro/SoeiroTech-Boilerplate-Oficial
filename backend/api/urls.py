from django.urls import path

from .views import HealthCheckView, HelloWorldView

urlpatterns = [
    path("health/", HealthCheckView.as_view(), name="api-health"),
    path("hello/", HelloWorldView.as_view(), name="api-hello"),
]
