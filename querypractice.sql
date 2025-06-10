-- Aggregate functions
SELECT ROUND(AVG(budget),2) AS avg_budget
FROM films;

SELECT MAX(budget) 
FROM films;

-- non-numerical data
-- return last data(alphabatically)
SELECT MAX(country)
from films;

-- return first data(alphabatically)
SELECT MIN(country)
from films;

SELECT 
	SUM(budget) AS total_budget,
	COUNT(budget) AS total_num_of_films,
FROM films
WHERE release_year >= 2000;


SELECT * 
FROM 
	(SELECT 
		(gross - budget) AS profit
	FROM films)
WHERE profit is NOT NULL;

-- Order BY
SELECT title, budget
FROM films
WHERE budget IS NOT NULL
ORDER BY budget DESC
LIMIT 10;

SELECT name, birthdate, deathdate
FROM people
WHERE deathdate IS NOT NULL
ORDER BY birthdate;


SELECT title,release_year
FROM films
WHERE country = 'India'
ORDER BY release_year DESC, title asc;

-- GROUP BY 
SELECT country, release_year, COUNT(title) AS number_of_films
FROM films
WHERE country IS NOT NULL
GROUP BY country, release_year
ORDER BY number_of_films DESC;

-- GROUP BY WITH HAVING
SELECT certification, language, COUNT(title) AS num_of_films
FROM films
WHERE certification IS NOT NULL
GROUP BY certification, language
HAVING COUNT(title) > 3
ORDER BY num_of_films DESC;


SELECT release_year, ROUND(AVG(duration),2)
FROM films
GROUP BY release_year  
HAVING AVG(duration) > 120;



