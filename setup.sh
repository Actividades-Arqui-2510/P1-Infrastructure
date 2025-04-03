#!/bin/bash

# Create .env file from example if it doesn't exist
if [ ! -f docker/.env ]; then
    cp docker/.env.example docker/.env
    echo "Created .env file from template"
fi

# Load environment variables
envsubst < docker/database/setup/schema.sql.template > docker/database/setup/schema.sql

# Build and start services
cd docker
docker compose up --build -d

echo "Database container is starting up..."