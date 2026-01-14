# End-to-End Dockerized E-Commerce ETL Pipeline

## 📌 Project Overview
This project demonstrates an **industry-level, end-to-end Data Engineering ETL pipeline** built using real-world e-commerce data. The pipeline follows best practices such as **Dockerization, configuration management, logging, retry logic, and data modeling**, and delivers insights through an interactive **Power BI dashboard**.

The goal of this project is to simulate how data is ingested, processed, stored, and visualized in a real production environment.

---

## 🏗️ Architecture

```
Kaggle CSV Dataset
      ↓
Python ETL (Docker Container)
      ↓
PostgreSQL Data Warehouse (Docker Container)
      ↓
Power BI Dashboard
```

---

## 🧰 Tech Stack

- **Programming Language:** Python
- **Data Processing:** Pandas
- **Database:** PostgreSQL
- **Containerization:** Docker & Docker Compose
- **Visualization:** Power BI
- **Dataset Source:** Kaggle (Amazon E-Commerce Products Dataset)

---

## 📂 Project Structure

```
ecommerce_etl_project/
├── docker/
│   ├── Dockerfile
│   └── docker-compose.yml
├── scripts/
│   ├── etl.py          # Main ETL pipeline
│   ├── config.py       # Configuration management
│   └── logger.py       # Logging setup
├── data/
│   └── amazon_products.csv
├── sql/
│   └── schema.sql      # Star schema (optional)
├── powerbi/
│   └── dashboard.pbix
└── README.md
```

---

## 🔄 ETL Pipeline Details

### 1️⃣ Extract
- Reads raw CSV data downloaded from Kaggle
- Performs schema and basic validation checks

### 2️⃣ Transform
- Handles missing values
- Cleans and standardizes columns
- Prepares data for analytical use

### 3️⃣ Load
- Loads transformed data into PostgreSQL
- Uses Dockerized database for consistency

---

## ⚙️ Key Features

- ✅ Fully Dockerized ETL pipeline
- ✅ PostgreSQL data warehouse
- ✅ Retry logic for database connection
- ✅ Centralized configuration management
- ✅ Structured logging for production readiness
- ✅ Power BI dashboard for business insights

---

## ▶️ How to Run the Project

### Prerequisites
- Docker Desktop (Running)
- Git
- Power BI Desktop (for visualization)

### Steps

1. Clone the repository
```bash
git clone <your-github-repo-url>
cd ecommerce_etl_project
```

2. Run the ETL pipeline using Docker Compose
```bash
docker compose -f docker/docker-compose.yml up --build
```

3. Verify data in PostgreSQL
```sql
SELECT COUNT(*) FROM fact_sales;
```

4. Connect Power BI to PostgreSQL
- Server: `localhost`
- Database: `ecommerce`
- Username: `etl_user`
- Password: `etl_pass`

---

## 📊 Power BI Dashboard

The dashboard provides:
- Sales and product overview
- Category-level analysis
- Price and rating insights
- Interactive filters and KPIs

*(Dashboard screenshots can be added here)*

---

## 🧠 Learnings & Skills Demonstrated

- Data Engineering ETL workflows
- Docker & container orchestration
- Relational data modeling
- SQL and PostgreSQL
- Business Intelligence with Power BI
- Writing production-ready Python code

---

## 🚀 Future Enhancements

- Add Apache Airflow for orchestration
- Implement incremental data loading
- Deploy on cloud (AWS/GCP)
- Add automated data quality checks

---

## 👤 Author

**Muhammad Zaid**  
Aspiring Data Engineer  

- GitHub: https://github.com/<your-username>
- LinkedIn: https://linkedin.com/in/<your-profile>

---

## ⭐ If you find this project useful, please give it a star!
