/*
    QUESTION 2 ::
        - Find the name and height of the shortest player in the database. 
		- How many games did he play in? 
		- What is the name of the team for which he played?
    
	SOURCES ::
        * people, appearances, teams, 
    
	DIMENSIONS ::
        * namefirst, namelast, height, teams, g_all
    
	FACTS ::
        * 
			
    FILTERS ::
        *
    
	DESCRIPTION ::
       *
	   
    ANSWER ::
	   * Name: Eddie Gaedel
	     Height: 43 inches
		 Total games played: 1
		 Team: St. Louis Browns

*/

-- Code for Q2

SELECT namefirst, namelast, MIN(height) AS height_inches, g_all AS total_games_played, 
t.name AS team_name
FROM people AS p
INNER JOIN appearances AS a
ON p.playerid = a.playerid
INNER JOIN teams AS t
ON a.teamID = t.teamID
GROUP BY namefirst, namelast, height, g_all, t.name
ORDER BY height  
LIMIT 1;	