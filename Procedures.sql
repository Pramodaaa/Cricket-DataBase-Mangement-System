-- Stored Procedure 1

-- A stored procedure to get all the schedules of the matches played where the user can get the schedule details with the data and time and the schedule ID 
DROP PROCEDURE IF EXISTS get_schedules; -- first drop the procedure if it exists

DELIMITER //  
CREATE PROCEDURE get_schedules()  
COMMENT 'To get the total schedules of the matches available in the database'
BEGIN  
    SELECT Plays.date_time FROM Plays;  
    SELECT COUNT(scheduleID) AS Total_Schedules FROM Plays;    
END //
DELIMITER ;  


CALL get_schedules; -- to test the procedure, we can call it



-- Stored Procedure 2
-- To insert to the team table where the user can insert to the table if the no of wins and no of loses is greater than 1 then enter the values with else make tot_score null. 
DROP PROCEDURE IF EXISTS insToTeam;

DELIMITER $$ 
CREATE PROCEDURE insToTeam(
	teamname  VARCHAR(24),
        coachID   CHAR(4),
        wins   INT(4),
        loses  INT(4),
        bowlers INT(4),
        batsmen INT(4),  
        allRounders INT(4),
        tot_matches INT(6)   
)
COMMENT 'Insert new Team information into the team table'
BEGIN
IF wins > 1 AND loses > 1 THEN -- if wins and loses greater than 1
	INSERT INTO Team(teamName, CID, no_wins, no_loses, no_bowlers, no_batsmen, no_allRounders, tot_matches)
	VALUES(teamname, coachID, wins, loses, bowlers, batsmen, allRounders, tot_matches);
ELSE 
	INSERT INTO Team(teamName, CID, no_wins, no_loses, no_bowlers, no_batsmen, no_allRounders, tot_matches)
	VALUES(teamname, coachID, 0, 0, bowlers, batsmen, allRounders, NULL);
	
END IF;
END $$
DELIMITER ; -- end of the procedure 	

CALL insToTeam('Qatar Team', 'c3', 38, 67, 5, 9, 3, 102); -- insert using the procedure where wins and loses are greater than 1
CALL insToTeam('Hong Kong Team', 'c6', 0, 0, 4, 5, 5, NULL); -- insert using the procedure where wins and loses are less than 1

SELECT * FROM Team; -- to check if the newly entered teams are showed. 


-- Stored procedure 3
-- Calculates the total_matches played by every match and team in the dataabase and takes it out as a out parameter when a user tries to insert to the Team table 
DROP PROCEDURE IF EXISTS insToTeamTotMacthes;

DELIMITER $$ 
CREATE PROCEDURE insToTeamTotMacthes(
	teamname  VARCHAR(24),
        coachID   CHAR(4),
        wins   INT(4),
        loses  INT(4),
        bowlers INT(4),
        batsmen INT(4),  
        allRounders INT(4),
        tot_matches INT(6),
	OUT total INT 
)
COMMENT 'Update Team information by inserting a new team in to the team table'
BEGIN
IF wins > 1 AND loses > 1 THEN
	SELECT SUM(tot_matches) FROM Team INTO total;
	INSERT INTO Team(teamName, CID, no_wins, no_loses, no_bowlers, no_batsmen, no_allRounders, tot_matches)
	VALUES(teamname, coachID, wins, loses, bowlers, batsmen, allRounders, tot_matches);
ELSE 
	SELECT SUM(tot_matches) FROM Team INTO total;
	INSERT INTO Team(teamName, CID, no_wins, no_loses, no_bowlers, no_batsmen, no_allRounders, tot_matches)
	VALUES(teamname, coachID, 0, 0, bowlers, batsmen, allRounders, NULL);
	
END IF;
END $$
DELIMITER ; -- end of the procedure 	

CALL insToTeamTotMacthes('Jersey Team', 'c8', 12, 6, 4, 5, 2, 18, @total); -- insert a new team 

SELECT * FROM Team; -- to check if the newly entered teams are showed. 

SELECT @total; -- check the @total matches played outside the procedure 

SHOW PROCEDURE STATUS WHERE db = 'CricketDB_20531218'; -- to check if the procedures are enetered properly. 




