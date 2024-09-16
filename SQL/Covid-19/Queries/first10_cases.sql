--First 10 states with reported cases
SELECT state
FROM states
GROUP BY state
ORDER by COUNT(state) DESC
LIMIT 10;