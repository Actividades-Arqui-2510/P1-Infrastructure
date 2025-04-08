# Medical Appointment System

A containerized medical appointment system with Oracle database backend and Jakarta EE SOAP services.

## Overview

This repository contains the infrastructure setup for deploying a medical appointment system with:
* Oracle Database
* Jakarta EE backend with SOAP web services (GlassFish)
* Service health monitoring
* Container orchestration

## Prerequisites

* Docker and Docker Compose (v20.10.0+)
* Git
* 4GB+ available RAM
* Internet connection for image downloads

## Deployment Instructions

### 1. Clone the Repository
```bash
git clone https://github.com/Actividades-Arqui-2510/P1-Infrastructure.git
cd P1-Infrastructure
```

### 2. Configure Environment Variables (Optional)
The system uses default values, but you can customize them by creating an `.env` file:
```bash
cp docker/.env.example docker/.env
# Edit docker/.env to customize values
```

### 3. Run the Setup Script
```bash
# Make the script executable
chmod +x setup.sh

# Run the setup
./setup.sh
```

This script will:
* Create environment variables if not present
* Process SQL templates
* Build and start all containers

### 4. Verify Deployment
```bash
cd docker
docker compose ps
```
Wait until all services show "healthy" status.

## Environment Configuration

The following environment variables can be configured in `docker/.env`:

| Variable | Description | Default |
|----------|-------------|---------|
| `ORACLE_PDB` | Oracle pluggable database name | MEDPDB |
| `ORACLE_PWD` | Oracle system password | 12345 |
| `DB_PORT` | Database port mapping | 1521 |
| `DB_USER` | Application database user | medadmin |
| `DB_PASSWORD` | Application user password | 12345 |
| `BACKEND_PORT` | Backend service port | 8080 |

## Accessing Services (with default credentials)

After successful deployment, you can access:

### Database
* **System User**: `sys/12345@//localhost:1521/MEDPDB as sysdba`
* **Application User**: `medadmin/12345@//localhost:1521/MEDPDB`

### Backend Services
* **SOAP Web Services**: `http://localhost:8080/soap/users?wsdl`
* **GlassFish Admin Console**: `http://localhost:4848` (admin/admin)

## Database Schema

The system initializes with the following tables:
* `doctors`: Medical professionals information
* `patients`: Patient records
* `appointments`: Medical appointments with date, time and status

Sample data is automatically loaded for testing purposes.

## Health Checks

The infrastructure includes health checks to ensure proper operation:
* **Database**: Verifies the database is running and the application user is created
* **Backend**: Confirms GlassFish is running and SOAP services are deployed

## Troubleshooting

### Database Issues
If the database fails to start or initialize:
```bash
# View database logs
docker compose logs database
```

### Backend Issues
If the backend services are unavailable:
```bash
# Check backend logs
docker compose logs backend
```

### Common Problems
1. **Database connection errors**: Ensure Oracle container is healthy before backend starts
2. **Missing tables**: Check SQL initialization scripts in `database/setup/`
3. **Memory issues**: Oracle database needs at least 2GB RAM to function properly

## Resetting the System

To completely reset the system:
```bash
# Stop all containers and remove volumes
docker compose down -v

# Run setup again
cd ..
./setup.sh
```
