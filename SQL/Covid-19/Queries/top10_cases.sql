--Top 10 states by number of cases
SELECT state, fips, cases, deaths
FROM states
WHERE date = (SELECT date FROM states WHERE id=(SELECT MAX(id) FROM states))
ORDER BY cases DESC
LIMIT 10;
