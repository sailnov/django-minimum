import sys

"""
Settings
========
Would normally go in project_app/settings.py
"""
from django.conf import settings

settings.configure(
    DEBUG = True,
    SECRET_KEY = 'yourrandomsecretkey',
    ROOT_URLCONF = __name__,
    MIDDLEWARE_CLASSES = (),
)

"""
Views
=====
Would normally go in app/views.py
"""
from django.http import HttpResponse

def index(request):
    return HttpResponse('Hello World')

"""
URLs
====
The root URL config normally goes in project_app/urls.py
"""
from django.urls import path

urlpatterns = (
    path("", index),
)

"""
Manage.py
=========
Some setup code typically found in manage.py
"""
if __name__ == '__main__':
    try:
        from django.core.management import execute_from_command_line
    except ImportError as exc:
        raise ImportError(
            "Couldn't import Django. Are you sure it's installed and "
            "available on your PYTHONPATH environment variable? Did you "
            "forget to activate a virtual environment?"
        ) from exc
    execute_from_command_line(sys.argv)
