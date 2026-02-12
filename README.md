An end-to-end data engineering and analytics pipeline that loads raw Netflix viewing data from AWS S3 into Snowflake, transforms it using dbt (Data Build Tool), and produces analytics-ready tables. Built using modern data stack tools to demonstrate real-world ELT data workflows.


🚀 Project Overview

This repository contains the code and configuration to build a complete ELT pipeline using:

AWS S3 – for raw data storage.

Snowflake – enterprise cloud data warehouse.

dbt (Data Build Tool) – SQL-based transformation framework.

dbt Models, Snapshots, Tests, Macros, Sources – core dbt concepts.

Incremental Loads & Slowly Changing Dimensions (SCD Type-2).

SQL for analytical modeling and business insights.


🧠 Tech Stack
Tool / Service	                  Purpose
AWS S3	                          Store raw Netflix data in CSV format.
Snowflake	                        Central cloud data warehouse for structured data.
dbt (Data Build Tool)	            Transform and model raw data inside Snowflake.
GitHub	                          Version control and CI/CD integration.


📥 ELT vs ETL

Unlike ETL (Extract, Transform, Load), this project uses ELT (Extract, Load, Transform):

Extract raw data from AWS S3.

Load it into Snowflake.

Transform inside Snowflake using dbt’s SQL-based models and logic.


🛠 dbt Concepts 

These dbt features are used in the project:

dbt Model – SQL files that define a transformation step and produce tables/views.

dbt Snapshot – Maintains historical changes for SCD Type-2 tracking.

dbt Test – Assertion rules written in SQL to validate data quality.

dbt Source – Metadata definitions for raw tables from Snowflake.

dbt Seed – Load static reference data from CSV into Snowflake for use in models.

dbt Macro – Reusable SQL snippets (functions) to eliminate duplicate logic.

dbt Materializations – Dictate how models are built (view, table, incremental).

Incremental Models – Only process new/changed rows to improve performance.

Documentation & Lineage – Auto-generated model docs and relationship graphs.


📌 Key Features Implemented
✅ Data Ingestion & Loading

Raw Netflix CSVs stored in AWS S3.

Snowflake Stages configured using IAM roles.

Data loaded into Snowflake tables via COPY INTO.

✅ Data Transformation Using dbt

Staging (Bronze) — Clean and standardize raw data.

Intermediate (Silver) — Apply business logic, enrich data.

Analytical (Gold) — Create final tables for reporting.

✅ Slowly Changing Dimensions (SCD)

Snapshots implemented for tracking history (e.g., user ratings).

✅ Data Quality

dbt Tests ensure:

Required fields are not null.

Referential integrity is preserved.

Business logic constraints are verified.

✅ Reusability & Automation

Macros used to encapsulate reusable SQL logic.

Seeds for static tables and config data.

Version control and CI/CD via GitHub workflows.


📌 How to Run

1. Clone repository

git clone https://github.com/deveshpandey8/Netflix-Data-Analysis-Project-End-to-End-ELT-Pipeline.git


2. Configure dbt profiles.yml with Snowflake credentials.

3. Load raw data into Snowflake from AWS S3.

4. Run dbt:

dbt deps
dbt seed
dbt run
dbt snapshot
dbt test
