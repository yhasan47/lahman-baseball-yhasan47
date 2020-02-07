
/*
    QUESTION 1 ::
        What range of years does the provided database cover? 
    
	SOURCES ::
        * batting, pitching, fielding, appearances, teams, people
    
	DIMENSIONS ::
        * yearid, debut, finalgame
    
	FACTS ::
        * 
			
    FILTERS ::
        *  
    
	DESCRIPTION ::
       
	   
    ANSWER ::
        1871 through 2016 
*/

-- Different codes for Q1: 
SELECT MIN (yearid), MAX (yearid)
FROM batting

SELECT MIN (yearid), MAX (yearid)
FROM pitching

SELECT MIN (yearid), MAX (yearid)
FROM fielding

SELECT MIN (yearid), MAX (yearid)
FROM appearances

SELECT MIN (yearid), MAX (yearid)
FROM teams


-- The following queries for Q1 gave the range from 1871 to 2017. 

SELECT MIN (debut), MAX(finalgame)
FROM people

SELECT MIN (debut), MAX(debut)
FROM people

-- Aliasing for Q1:

SELECT MIN(yearid) AS start_year, MAX(yearid) AS end_year
FROM batting;

SELECT MIN(debut) AS start_date, MAX(finalgame) AS end_date
FROM people;


-- The query that Taylor used in class for Q1: 

SELECT MIN (min_year), MAX (max_year)
FROM (
	SELECT MIN (yearid) AS min_year, MAX(yearid) AS max_year
	FROM batting
UNION ALL 
SELECT MIN (yearid), MAX (yearid)
FROM fielding
UNION ALL
SELECT MIN (yearid), MAX (yearid)
FROM pitching
UNION ALL
	SELECT MIN (yearid), MAX (yearid)
	FROM teams
) AS sub; 
