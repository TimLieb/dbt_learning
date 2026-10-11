# Car Sales Data Warehouse — dbt & Snowflake

## Introduction

This project is a personal data engineering learning project developed to build practical experience with **dbt, Snowflake, SQL and dimensional data modelling**. It supports my development from a Data Analyst towards a Data Engineer role by applying data engineering concepts to a real-world-style dataset.

The project uses a car sales dataset retrieved from [Kaggle](https://www.kaggle.com/), which serves as the source for building a structured data warehouse. Using dbt and Snowflake, I am developing a series of data transformation models to prepare raw data for analytical consumption, with an emphasis on reusable transformations, data integrity and maintainable SQL.

The planned data warehouse design separates vehicle attributes from individual sales transactions through a dimensional model, consisting of a vehicle dimension and a sales fact table. This provides an opportunity to explore surrogate key generation, fact-to-dimension relationships, incremental processing and the principles behind designing reliable analytical data models.

### Project objectives

- **Data transformation:** Build modular, SQL-based transformation models using dbt's staging and downstream modelling capabilities.
- **Dimensional modelling:** Design fact and dimension tables with clearly defined grains, surrogate keys and relationships.
- **Data quality:** Identify and address inconsistencies in source data, apply appropriate data types and validate transformation outputs.
- **Testing and validation:** Learn to implement dbt data tests and custom validation checks to verify data quality, enforce model assumptions, identify duplicates and null values, and maintain referential integrity between fact and dimension tables.
- **Data governance and documentation:** Explore data governance practices by documenting models and business rules, maintaining clear data lineage, establishing consistent definitions for analytical datasets, and improving the traceability and reliability of transformed data.
- **Maintainability and reusability:** Use dbt's model dependencies and refactoring capabilities to create a structured, maintainable transformation pipeline.
- **Version control:** Use Git and GitHub to track development, document design decisions and manage changes.

This project is being developed iteratively as I learn and apply data engineering practices, with the aim of building a stronger understanding of the processes involved in transforming source data into reliable, well-structured datasets for downstream reporting and analytics.
