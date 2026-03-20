# dbt Airbnb Project

A dbt project built as part of the [Udemy dbt course](https://www.udemy.com/), using Airbnb data to practice core dbt concepts and best practices.

## Project Overview

This project models Airbnb data (listings, hosts, and reviews) through a layered transformation pipeline built with dbt and Snowflake.

## Data Model Structure

- **src/** — raw source models that reference Airbnb data in Snowflake
- **dim/** — dimension models for hosts and listings (cleaned and enriched)
- **fct/** — fact model for reviews
- **mart/** — mart model joining listings with hosts and full moon data
- **snapshots/** — SCD Type 2 snapshots tracking changes to hosts and listings over time
- **seeds/** — seed file for full moon dates

## Concepts Covered

- Materializations (table, view, incremental, ephemeral)
- Seeds and Sources
- Snapshots (SCD Type 2)
- Tests (generic and singular) *(in progress)*

## Setup

1. Clone this repo
2. Install dbt: `pip install dbt-snowflake`
3. Create your own `profiles.yml` with your Snowflake credentials and place it in `~/.dbt/`
4. Run `dbt deps` to install packages
5. Run `dbt run` to build models
6. Run `dbt test` to run tests

## Tools & Technologies

- [dbt](https://www.getdbt.com/)
- [Snowflake](https://www.snowflake.com/)
