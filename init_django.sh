# This command initialize a new django project
docker-compose run web django-admin.py startproject django_example /src

sudo chown -R $USER:$USER .