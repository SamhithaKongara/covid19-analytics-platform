-- Star schema for COVID-19 analytics

-- Dimension tables
CREATE TABLE dim_date (
    date_id INT PRIMARY KEY,
    full_date DATE,
    year INT,
    month INT,
    day INT
);

CREATE TABLE dim_country (
    country_id INT PRIMARY KEY,
    country_name VARCHAR(100),
    region VARCHAR(50)
);

-- Fact table
CREATE TABLE fact_covid (
    case_id INT IDENTITY(1,1) PRIMARY KEY,
    date_id INT,
    country_id INT,
    new_cases INT,
    new_deaths INT,
    vaccinations INT,
    FOREIGN KEY (date_id) REFERENCES dim_date(date_id),
    FOREIGN KEY (country_id) REFERENCES dim_country(country_id)
);
