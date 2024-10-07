# Query Summary
Below is a description of created queries and their results.

## first10_cases.sql
### Description
This query returns the first ten states with reported cases of Covid-19. Because states in the New York Times Covid-19 data are only listed if they have had reported cases, the states that appear most often in the dataset are those that developed cases earliest and are therefore present for more days in the data. My query uses GROUP BY to group the states, ORDER BY to sort by highest state counts, and LIMIT to return the first ten results.

### Result

## top10_cases.sql
### Description
This query returns the ten states with the highest number of reported cases of Covid-19. Because the New York Times Covid-19 data used is cumulative, the dates for each state contain the total reported cases up to that day. My query includes a nested query to obtain the most recent date in the data, which is associated with the maximum id value since dates are in ascending order in the dataset. My query then uses ORDER BY to sort by highest number of cases and LIMIT to return the first ten results.

### Result