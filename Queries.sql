/* Add a column called total matches to the team table and update the rows of the column using tot_matches = no_wins + no_loses */
ALTER TABLE Team ADD tot_matches INT(6); -- tot_matches added 
UPDATE Team SET tot_matches =  no_wins + no_loses; -- update that column to add the values
SELECT * FROM Team;

-- 1
/* Display the name of the umpires who have umpired matches where one of the participating team is the Australian team */
SELECT umpire_name, umID 
FROM Umpire
WHERE umID IN (SELECT umID FROM Matchs WHERE firstTeam = 'Australian Team' OR secondTeam = 'Australian Team'); -- first team or second team that has australian team as the team in the matches played 

-- 2
/* Display the names, their team name and player number who are WicketKeepers in each team in the database  */ 

SELECT p.pName, p.teamName, w.keeper_playerNum
FROM WicketKeeper w INNER JOIN Player p ON 
w.keeper_playerNum = p.playerNum AND w.teamName = p.teamName;

-- prints only the player names who have the player number in Player table 


-- 3
/* Display which teams have played in matches by counting the match ID and display their team names using a Natural join and sort the total Number from descending order */
-- everything should be printed excpet Nepal Team

SELECT Team.teamName, COUNT(Matchs.MID) AS totalNum
FROM Matchs NATURAL JOIN Team WHERE Team.teamName = Matchs.firstTeam  OR Team.teamName = Matchs.secondTeam -- a team is present in either first team or secon team
GROUP BY Team.teamName
ORDER BY totalNum DESC; -- sort in descending order 

-- 4
/* Retrieve coaches details who have coached teams where no of wins is greater than 30. Number of wins are sorted in ascending order*/
SELECT Coach.CID, Coach.coachName, Team.teamName, Team.no_wins
FROM Coach JOIN Team WHERE 
Coach.CID = Team.CID AND no_wins > 30 -- with a no of wins greater than 30 
ORDER BY Team.no_wins ASC;


-- 5
/*Select the umpire names where there is a 'a' anywhere in the name and  no_standings between 50 to 80 */
SELECT umpire_name, no_standings FROM Umpire WHERE umpire_name LIKE '%a%' AND  no_standings BETWEEN 50 AND 70;

-- 6
/* select the stadium name and city and location to one query and print the results of all the stadiums */
SELECT CONCAT(sName, ' ', city, ' ', country) AS place
FROM Stadium; 

-- 7
/* print all the matches with the first team and second team names where the highest score is greater than 150*/
SELECT m.MID, m.firstTeam, m.secondTeam, score.highestScore 
FROM Matchs m JOIN Scoreboard score ON highestScore >= 150 WHERE 
m.MID = score.MID; -- get the match mids greater than 150


-- SELECT highestScore FROM Achievement WHERE highestScore >=150; 

-- 8
/* List down the players who are captains in the teams with a high tot_score less than the average tot_score in innings played */
SELECT Player.playerNum, Player.teamName, Player.pName AS player_Name, Inning.tot_score
FROM Player NATURAL JOIN Inning WHERE captain = 'YES' AND Inning.tot_score > (SELECT AVG(tot_score) FROM Inning);  

-- 9
/* Display the number of matches played by the Sri lankan team */
SELECT m.MID, m.firstTeam, m.secondTeam, m.umID
FROM Matchs m WHERE m.firstTeam = 'Sri Lankan Team' OR m.secondTeam = 'Sri Lankan Team'
GROUP BY m.MID, m.umID, m.firstTeam, m.secondTeam;

 -- 1o
/* Print the matches where tournament ID is T1 */
SELECT * FROM Matchs
WHERE MID IN(SELECT MID FROM Matchs WHERE TID = 'T1');


-- 11
/* Display matches details and stadium details where a match is played in a stadium capacity greater than 35000*/
SELECT Matchs.MID, Matchs.firstTeam, Matchs.secondTeam, CONCAT(Stadium.sName, ' ', Stadium.city, ' ', Stadium.country) AS location, Stadium.capacity
FROM Matchs INNER JOIN Stadium on Matchs.stadiumID = Stadium.stadiumID
WHERE Stadium.capacity > 35000
ORDER BY Stadium.capacity;

-- 12
/* Select the player name, country, date of birth and the total number of runs  scored as per the innings table of those whom have not been a Captain.*/
SELECT Player.playerNum AS ID , Player.teamName AS Team, Player.pName AS Name, Inning.tot_score
FROM Player NATURAL JOIN Inning WHERE Player.captain IS NULL AND Player.playerNum = Inning.playerNum;

-- 13
/* A subquery to list all the batsmen who have a batting strike rate more than the average batting strike rate out of all the batsmen. */

SELECT playerNum AS ID , teamName AS TEAM ,batting_strike_rate AS Strike_Rate ,no_runs AS Runs 
FROM Batsmen
WHERE  batting_strike_rate >= ALL (SELECT AVG(batting_strike_rate) FROM Batsmen);

-- 14
/* A sub query to display the names of players and their respective team names  who have a bowling economy more than 12.00. */
SELECT pName , teamName FROM Player WHERE playerNum in (SELECT playerNum from Bowler WHERE bowling_economy > 12.00);


-- 15
/* print the batting strie rate of every bastmen player in Zimbawe, Sri Lankan, Afghanistan and West Indians teams and round it off to a whole number, display the player details as well with player number and their relative team name*/
SELECT playerNum, teamName, ROUND(batting_strike_rate, 0) AS batting_strike_rate
FROM Batsmen
WHERE teamName IN('Zimbabwe Team','Sri Lankan Team','England Team','Afghanistan Team','West Indians Team');


-- 16
/* Produce a list of players who work is a wicket player but not a captain, showing player number, team name, player name and birth date. Show only the date and month of the birth date in the form Friday, 6 August 2022. */
SELECT p.playerNum, p.teamName, p.pName AS playerName, DATE_FORMAT(p.dob, '%W, %e %M %Y') AS birthdate
FROM Player p NATURAL JOIN WicketKeeper w
WHERE captain IS NULL AND w.keeper_playerNum = p.playerNum;

-- 17
/* Shows the age of each player in the database */
SELECT playerNum, pName AS playerName, teamName,  DATE_FORMAT(FROM_DAYS(DATEDIFF(NOW(), dob)), '%Y') + 0 AS Age
FROM Player;


-- 18
/* Display the umpire details who have umpired matches that have a high score of more than 200*/
SELECT umpire_name, umID
FROM Umpire
WHERE umID IN (SELECT umID
	FROM Matchs
    WHERE Matchs.MID IN (SELECT MID
		FROM Scoreboard
        WHERE highestScore > 200));


-- 19
/* Get the count of winnings of each team that have played in a match */
SELECT Achievement.winner as Team, COUNT(Achievement.winner) as Winnings
FROM Achievement LEFT JOIN Matchs ON Matchs.MID = Achievement.MID
GROUP BY (Achievement.winner);


-- 20
/* Give all the matches held on the stadium where the stadium is situated in india, the name of the stadium and capacity of the stadium */
SELECT MID, CONCAT(sName, ' ', 'in', ' ',  city, ' ') AS StadiumName, Stadium.capacity 
FROM Matchs
LEFT OUTER JOIN Stadium ON Stadium.stadiumID = Matchs.stadiumID AND Stadium.country = 'India'; 


-- 21
/* Show the ranks of the sri lankan team in the scorebaord for each tournament played in the hosted year, overs, and the series name*/ 
SELECT *
FROM RankIn NATURAL JOIN Tournament
WHERE teamName = 'Sri Lankan Team' AND Tournament.TID = RankIn.TID;


-- 22
/* Print all the ranks in between 10 and 16 and their series and overs played */
SELECT Tournament.TID, Tournament.series, RankIn.teamName, Tournament.year, RankIn.ranking
FROM RankIn NATURAL JOIN Tournament
WHERE Tournament.TID = RankIn.TID AND RankIn.ranking BETWEEN 10 AND 16
ORDER BY ranking DESC;


-- 23 
/* Display the schedule details and match details such as winner, runnerup and man of the match in each match that has a highest score between 10 and 100 */
SELECT played.scheduleID, played.date_time, achieve.winner, achieve.runnerUp, achieve.highestScore, achieve.man_of_match 
FROM Achievement achieve  NATURAL JOIN Plays played 
WHERE achieve.highestScore IN(SELECT highestScore FROM Achievement WHERE highestScore BETWEEN 10 AND 100) AND achieve.MID = played.MID
ORDER BY (scheduleID) ASC; -- order schedule ID in ascending order


-- 24
/* Get the scoreboard details where the winner of the match scored 0 sixes and where the winner scored sixes in the match  and order the tot_sixes obtained by a group in ascending order */
(SELECT scoreID, MID, tot_sixes, played.winner
FROM Scoreboard NATURAL JOIN Plays played WHERE tot_sixes IS NULL AND Scoreboard.MID = played.MID)
UNION -- to get results for query where tot_sixes is null and not null 
(SELECT scoreID, MID, tot_sixes, played.winner
FROM Scoreboard NATURAL JOIN Plays played WHERE tot_sixes IS NOT NULL AND Scoreboard.MID = played.MID)
ORDER BY tot_sixes ASC;


-- 25 
/* Get the maxium batting strike player in each team and make team name column sort in ascending order */
SELECT MAX(batting_strike_rate) AS player_with_max_strike_rate, Player.teamName
FROM Batsmen NATURAL JOIN Player WHERE Player.teamName = Batsmen.teamName
GROUP BY Player.teamName
ORDER BY Player.teamName ASC;  
































