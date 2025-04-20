#!/bin/bash

# Create .env file from example if it doesn't exist
if [ ! -f docker/.env ]; then
    cp docker/.env.example docker/.env
    echo "Created .env file from template"
fi

# Load environment variables
export $(grep -v '^#' docker/.env | xargs)

# Process templates
envsubst < docker/database/setup/schema.sql.template > docker/database/setup/01_schema.sql
envsubst < docker/database/setup/data.sql.template > docker/database/setup/02_data.sql

# Build and start services
cd docker
docker compose up --build -d

echo "Database container is starting up..."