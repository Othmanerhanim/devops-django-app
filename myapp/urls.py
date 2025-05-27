from django.contrib import admin
from django.urls import path, include  # ajoute include

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', include('todo.urls')),  # ajoute cette ligne
]
