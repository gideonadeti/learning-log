#!/usr/bin/env bash

# Exit the script if any command fails.
set -o errexit

# Install the requirements.
pip install -r requirements.txt

# Collect static files.
python manage.py collectstatic --no-input

# Apply database migrations.
python manage.py migrate