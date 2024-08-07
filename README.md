# CashFlowControl.Solution

[![CI Pipeline](https://github.com/mgracietti/CashFlowControl.Solution/actions/workflows/ci.yml/badge.svg)](https://github.com/mgracietti/CashFlowControl.Solution/actions/workflows/ci.yml)

## Introduction
CashFlowControl.Solution is a comprehensive financial management application designed to streamline cash flow tracking, transaction management, and daily financial summaries. This solution employs clean architecture principles, ensuring maintainability, scalability, and testability.

## Project Structure
The project is structured following the Clean Architecture approach, which separates concerns and facilitates the addition of new features and services.

### Key Components:
- **Core**: Contains the business logic and domain entities.
- **Application**: Includes the services and application logic.
- **Infrastructure**: Handles data access, external services, and other infrastructure concerns.
- **Presentation**: Manages the user interface and API endpoints.

### Clear Architecture - Horizontal Layer View
![Untitled Diagram drawio](https://github.com/user-attachments/assets/c13ddb59-6f5e-44cb-9920-2d17e4bafeef)

![1Untitled Diagram drawio](https://github.com/user-attachments/assets/07d2b792-fe91-4293-98b8-912b1e0a3235)

## Technologies Used
- **ASP.NET Core**: For building web APIs.
- **Entity Framework Core**: For database management and ORM.
- **xUnit**: For unit testing.
- **Moq**: For mocking dependencies in tests.
- **Docker**: For containerization.
- **Swagger**: For API documentation.

## Installation and Setup

### Prerequisites
- [.NET 8 SDK](https://dotnet.microsoft.com/download/dotnet/8.0)
- [Docker](https://www.docker.com/products/docker-desktop)

### Steps to Run the Application
1. **Clone the Repository**
   ```bash
   git clone https://github.com/mgracietti/CashFlowControl.Solution.git      
   ```
2. **Run setup script**

   *Linux*
   ```bash
   cd CashFlowControl.Solution/scripts   
   ./run.sh
   ```
   *Windows*
   ```bash
   cd CashFlowControl.Solution/scripts   
   ./run.ps1
   ```

2. **Nativatge to API Documentation**

In your browser access the API documentation and explore the available endpoints.
- TransactionsService: [http://localhost:8080/swagger/index.html](http://localhost:8080/swagger/index.html)
- DailySummaryService: [http://localhost:8081/swagger/index.html]( http://localhost:8081/swagger/index.html)

### Usage Examples
1. **Adding a Transaction**
```bash
curl -X POST "http://localhost:8080/api/transactions" -H "Content-Type: application/json" -d '{
  "amount": 100,
  "date": "2024-08-05T04:55:56Z",
  "isCredit": true,
  "description": "Payment received"
}'

```


2. **Getting Daily Summary**
```bash
curl -X GET "http://localhost:8080/api/dailysummary?date=2024-08-05"
```
