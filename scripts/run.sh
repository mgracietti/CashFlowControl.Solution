#!/bin/bash
set -e

# Navigate to the script directory
cd "$(dirname "$0")"

# Start MySQL service
docker-compose up -d mysql

# Wait for MySQL to be ready
echo "Waiting for MySQL to be ready (30 seconds)..."
sleep 30

# Start all services
echo "Starting all services..."
docker-compose up --build

# # Apply migrations for TransactionsService
# echo "Applying migrations for TransactionsService..."
# docker-compose run --rm transactions-service dotnet ef database update --project src/TransactionsService

# # Apply migrations for DailySummaryService
# echo "Applying migrations for DailySummaryService..."
# docker-compose run --rm daily-summary-service dotnet ef database update --project src/DailySummaryService


