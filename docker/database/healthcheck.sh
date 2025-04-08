#!/bin/bash

# Print debug information
echo "Checking database connection with user: ${DB_USER}"
echo "Using database: ${ORACLE_PDB} on port ${DB_PORT}"

# Try to connect with the user with error output
sqlplus -s ${DB_USER}/${DB_PASSWORD}@//localhost:${DB_PORT}/${ORACLE_PDB} <<EOF
SET PAGESIZE 0 FEEDBACK OFF VERIFY OFF HEADING OFF ECHO OFF;
SELECT 'User is functional' FROM dual;
EXIT;
EOF

# Store the exit code
result=$?
if [ $result -eq 0 ]; then
  echo "Database connection successful!"
  exit 0
else
  echo "Database connection failed with exit code: $result"
  exit 1
fi