#!/bin/bash

# Generate a random secret key and put it into the environment variable file
# run this after setting up sentry server
docker-compose run --rm sentry-base sentry config generate-secret-key

# Run database migrations (build the database)
docker-compose run --rm sentry-base sentry upgrade --noinput

# Startup the whole service
docker-compose up -d
