# This command initialize a new django project
docker-compose run web django-admin.py startproject mysite /src

sudo chown -R $USER:$USER .