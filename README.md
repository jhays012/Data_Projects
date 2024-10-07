# Data Projects Overview

## Excel
- Applied Skills: Pivot Tables, VLOOKUP, XLOOKUP

### Project List

[**Lookups**](https://github.com/jhays012/Data_Projects/tree/main/Excel/Lookups)
> I utilized [Paris 2024 Olympics medals data](https://www.kaggle.com/datasets/berkayalan/paris-2024-olympics-medals/) to demonstrate the VLOOKUP and XLOOKUP Excel functions. I created two tables in the "NATO_Medals" tab:
> 1. nato_total, which uses VLOOKUP to count the total medals earned by each NATO country, and
> 2. nato_gold, which uses XLOOKUP to count the total gold medals earned by each NATO country.
>
> The United States was the top total medal earner as well as the top gold medal earner. There were seven NATO countries that did not earn any medals in the Paris 2024 Olympics: Estonia, Finland, Iceland, Latvia, Luxembourg, Montenegro, and North Macedonia. There were eleven NATO countries that did not earn any gold medals in the Paris 2024 Olympics: the previous seven mentioned as well as Albania, Lithuania, Slovakia, and Turkey.

[**Pivot Tables**](https://github.com/jhays012/Data_Projects/tree/main/Excel/Pivot_Tables)
> I utilized [supermarket sales data](https://www.kaggle.com/datasets/aungpyaeap/supermarket-sales) to demonstrate the use of pivot tables. I created two pivot tables in the "Pivot_Tables" tab:
> 1. quantity sold and net income by product category, and
> 2. quantity sold by product category and customer gender.
>
> The product category most purchased by customers was electronic accessories. However, the highest net income was gained in food/beverages. Female customers most purchased fashion accessory and food/beverage products, while male customers most purchased health/beauty and electronic accessory products.

## Python
- Applied Skills: Data Cleaning, Pandas
- Platform: JupyterLab

### Project List

[**Data Cleaning**](https://github.com/jhays012/Data_Projects/tree/main/Python/Data_Cleaning)
> I utilized [online store reviews data](https://www.kaggle.com/datasets/syedafroz6284/fashion-nova-reviews) to demonstrate data cleaning. I loaded the data in the uncleaned CSV file "store_reviews.csv" into a Pandas dataframe. After dropping unwanted columns from the data, I performed data cleaning on four columns:
> 1. Review Count: This column originally contained strings in the format "x review" or "x reviews", where x is the number of reviews. My goal was to have the column contain single integer values with the number of reviews. To accomplish this, I first removed " review" and " reviews" from the column, leaving just the number of reviews as a string, then converted the string to an integer.
> 2. Review Date: This column originally contained strings in the format "YYYY-MM-DDTHH:MM:SS.SSSZ", where the date and time of the review were grouped together. My goal was to split the date and time into two columns and drop the milliseconds (.SSSZ) portion of the time. To accomplish this, I first split the strings at the "T", putting the first portion (the date) back into the "Review Date" column and putting the second portion (the time) into a new column, "Review Time". Then, I removed the milliseconds from the "Review Time" column since each row had zero milliseconds.
> 3. Rating: This column originally contained strings in the format "Rated x out of 5 stars", where x is the rating given by the reviewer. Similarly to the reviews, my goal was to have the column contain single integer values with the rating. To accomplish this, I first removed "Rated " and " out of 5 stars" from the column, leaving just the rating as a string, then converted the string to an integer.
> 4. Date of Experience: This column originally contained strings in the format "DD-Mth-YY". My goal was to format the date into the same format used in the "Review Date" column (YYYY-MM-DD) for consistency. To accomplish this, I used the datetime module to reformat each entry in the column.
>
> After cleaning up the data, I wrote my Pandas dataframe to the new CSV file "store_reviews_cleaned.csv".

## SQL
- Applied Skills: ETL, Queries, Nested Queries
- RDBMS: PostgreSQL

### Project List

[**Covid-19**](https://github.com/jhays012/Data_Projects/tree/main/SQL/Covid-19)
> I utilized [New York Times Covid-19 data](https://github.com/nytimes/covid-19-data/blob/master/us-states.csv) to demonstrate single-source ETL and SQL statements and queries. This project can be broken down into four steps:
>
> [ETL](https://github.com/jhays012/Data_Projects/tree/main/SQL/Covid-19/ETL)
> 1. Extract and Transform Data: Using Python, I extracted the New York Times data directly from the GitHub url into a Pandas dataframe. I then performed a simple transformation on the data by adding an id column, which would be used as the primary key once the data was loaded into my database. I wrote the resulting Pandas dataframe into a CSV file, "nytimes_clean.csv".
> 2. Create Table: In PostgreSQL, I wrote an SQL statement to create an empty table that the transformed data would be loaded into. The created table, "states", consists of six columns: <ins>id</ins> (INT), date (VARCHAR), state (VARCHAR), fips (INT), cases (INT), and deaths (INT).
> 3. Load Data: In PostgreSQL, I wrote an SQL statement to load my CSV file (nytimes_clean.csv) into my "states" table using the COPY command.
>
> [SQL Queries](https://github.com/jhays012/Data_Projects/tree/main/SQL/Covid-19/Queries)
>
>  4. Query Data: In PostgreSQL, I wrote various SQL queries to retrieve specific information from the data. A description of the queries and their results can be found [here](https://github.com/jhays012/Data_Projects/blob/main/SQL/Covid-19/Queries/README.md).

## Tableau
- Applied Skills: Data Visualization
