# 🦠 COVID-19 Analytics Platform

## 📌 Project Overview
This project analyzes **global COVID-19 case and vaccination data**.  
It demonstrates **automated ingestion, transformation, and dashboarding** using Azure services.

## ⚙️ Technologies Used
- Azure Data Factory (ADF) → Automated ingestion from public datasets  
- Azure Data Lake Storage → Raw/curated storage zones  
- Azure Synapse Analytics → Data warehouse with star schema  
- SQL Server → Fact/Dimension modeling  
- Power BI → Interactive dashboards & insights  

## 🚀 Workflow
1. **Data Ingestion**  
   - Public COVID datasets ingested daily into **Azure Data Lake** via **ADF pipelines**.  

2. **Data Transformation**  
   - SQL scripts model data into **Fact & Dimension tables**.  
   - Schema supports OLAP queries.  

3. **Data Storage**  
   - Optimized for analytics with **Star Schema** in Synapse Analytics.  

4. **Visualization**  
   - Power BI dashboards track cases, deaths, and vaccination rates globally.  

## 📂 Code
All implementation files are in the `code/` folder:  
- `star_schema.sql` → SQL scripts to create fact & dimension tables  
- `covid_etl_pipeline.sql` → ETL transformation scripts  
- `adf_pipeline.json` → Sample ADF copy pipeline configuration  

## 📊 Dashboard Preview
![COVID-19 Dashboard](dashboards/covid_dashboard.png)

## ✅ Skills Demonstrated
- Automated ETL workflows in Azure  
- Fact/Dimension modeling for analytics  
- Daily data refresh with ADF pipelines  
- Interactive BI dashboards with KPIs
