COPY states(id, date, state, fips, cases, deaths)
FROM 'C:\Users\Public\Documents\nytimes_clean.csv'
DELIMITER ','
CSV HEADER;