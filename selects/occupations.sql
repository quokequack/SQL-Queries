(SELECT CONCAT(name, '(', SUBSTR(occupation, 1, 1), ')') AS text FROM occupations)
UNION ALL
(SELECT CONCAT('There are a total of ', COUNT(*), ' ', LOWER(occupation), 's.') FROM occupations GROUP BY occupation) 
ORDER BY text ASC;