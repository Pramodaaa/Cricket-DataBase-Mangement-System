-- Trigger 1 --

--If the user tries to update the existing highest score in the scoreboard and if it is less than the existing highest score create a trigger to keep the existing highest score on the table.
DROP TRIGGER IF EXISTS updateHighScore; -- drop the trigger first if it already exists 

DELIMITER //
CREATE TRIGGER updateHighScore

AFTER UPDATE ON Scoreboard 

FOR EACH ROW 
	BEGIN
		IF NEW.highestScore < OLD.highestScore THEN 
			UPDATE Scoreboard
				SET highestScore = OLD.highestScore WHERE MID = OLD.MID;
		END IF;
		
	END
//
DELIMITER;


--Testing the trigger 
-- Entering a high score  higher than the older to check if the highest score is getting changed.
SELECT * FROM Scoreboard WHERE MID = 'M10';
UPDATE Scoreboard SET highestScore = 200 where MID ='M10';
SELECT * FROM Scoreboard WHERE MID = 'M10';

-- Entering a high score  that is NULL to the older highest score to check if the highest score is getting changed.
UPDATE Scoreboard SET highestScore = NULL where MID ='M10';
SELECT * FROM  Scoreboard WHERE MID = 'M10';

-- Entering a high score that is greater than to the older lowest score (NULL) to check if the highest score is getting changed.
SELECT * FROM Scoreboard WHERE MID = 'M10';
UPDATE Scoreboard SET highestScore = 15 where MID ='M10';
SELECT * FROM  Scoreboard WHERE MID = 'M10';



-- Trigger 2 --

-- If the user tries to update the number of umpire standings in the umpire table of a particular umpire and the new number that the user tries to insert is lower than the old number of umpire standings create a trigger to give the user a warning saying that the new number of umpire standings should be greater than the old number of umpire standings.
DROP TRIGGER IF EXISTS before_updating_standings;

DELIMITER //
CREATE TRIGGER before_updating_standings
BEFORE UPDATE
ON Umpire FOR EACH ROW 

BEGIN 
	DECLARE error_msg_invalid_stand_number VARCHAR(140);
	SET error_msg_invalid_stand_number  = CONCAT('The new number of Umpire standings ', NEW.no_standings, ' cannot be lower than ', OLD.no_standings);
	IF NEW.no_standings < OLD.no_standings THEN 
		SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = error_msg_invalid_stand_number;
	END IF;
END//

DELIMETER ;

-- Testing the trigger
SELECT * FROM Umpire WHERE umID = '10';
UPDATE Umpire SET  no_standings = 20 WHERE umID ='10'; -- gives the error message
SELECT * FROM Umpire WHERE umID = '10';







-- View 1 --

-- Create a detailed view containing all the information regarding a tournament, getting match, stadium and umpire details
DROP VIEW IF EXISTS Tournament_Details; -- deletes the view if it already exists in the database 

CREATE VIEW Tournament_Details AS
	SELECT Matchs.firstTeam AS Team1, Matchs.secondTeam AS Team2,Tournament.overs AS Overs, Stadium.sName AS stadium, Stadium.city AS city, Umpire.umpire_name 
	FROM Matchs JOIN Stadium ON  Matchs.stadiumID = Stadium. stadiumID JOIN Umpire ON Matchs.umID = Umpire.umID JOIN Tournament ON Matchs.TID = Tournament.TID;
	
-- Testing the View
SELECT * FROM Tournament_Details;
	
	
-- View 2 --

--  Create a view to get all Match details where Netherlands team is Playing by fetching the stadium and tournament details from the relevant tables
DROP VIEW IF EXISTS Netherlands_Details;

CREATE View Netherlands_Details AS
	SELECT Matchs.MID, Stadium.stadiumID  AS Stadium, Tournament.overs AS Overs, Tournament.series AS Series
	FROM Matchs INNER JOIN Tournament ON Matchs.firstTeam = 'Netherlands Team' OR Matchs.secondTeam = 'Netherlands Team' AND Matchs.TID = Tournament.TID INNER JOIN Stadium ON Matchs.stadiumID = Stadium. stadiumID;

-- Testing the View	
SELECT * FROM Netherlands_Details;
	
	
	





























	
