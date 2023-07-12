#!/usr/bin/env bash
# exit on error
set -o errexit

cd source/  # Move to the Django project directory

pip install -r requirements.txt

python manage.py collectstatic --no-input
python manage.py migrate
