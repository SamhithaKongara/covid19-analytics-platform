-- ETL pipeline for COVID-19 dataset

-- Staging table
CREATE TABLE stg_covid_raw (
    report_date DATE,
    country VARCHAR(100),
    new_cases INT,
    new_deaths INT,
    vaccinations INT
);

-- Insert into dimension & fact tables
INSERT INTO dim_date (full_date, year, month, day)
SELECT DISTINCT report_date, YEAR(report_date), MONTH(report_date), DAY(report_date)
FROM stg_covid_raw;

INSERT INTO dim_country (country_name, region)
SELECT DISTINCT country, 'Unknown'
FROM stg_covid_raw;

INSERT INTO fact_covid (date_id, country_id, new_cases, new_deaths, vaccinations)
SELECT d.date_id, c.country_id, r.new_cases, r.new_deaths, r.vaccinations
FROM stg_covid_raw r
JOIN dim_date d ON r.report_date = d.full_date
JOIN dim_country c ON r.country = c.country_name;
