import datetime
import mysql.connector
from mysql.connector import Error

# Makes the connection to the database 
try: 
    # Connecting to the MySQL server 
    connection = mysql.connector.connect(
        host = 'localhost', 
        database = 'CricketDB_20531218',
        user = 'root',
        password = 'mynewpassword')

    # provides MySQL server version information 
    if connection.is_connected():
        db_Info = connection.get_server_info()
        print("\nMySQL Server version ", db_Info)

        # Instanitaite a cursor 
        cursor = connection.cursor()

        # successfully connected to the database 
        print("\nYou're successfully connected to the database !!")
        
        # Query 1
        print("\nShows the umpire details who have umpired matches played by Australian team: ")
        umpire_details = "SELECT umpire_name, umID FROM Umpire WHERE umID IN (SELECT umID FROM Matchs WHERE firstTeam = 'Australian Team' OR secondTeam = 'Australian Team')"
        cursor.execute(umpire_details)
        umpire_name_rows = cursor.fetchall()
        
        for x in umpire_name_rows:
        	print("id: ",x[1]," name: ",x[0]) # gets into a table format 
        
        # Query 2 	
        print("\nObtains Wicket Keeper details from each team available (each team have 2 wicketkeepers): ")
        wicketkeeper_details = "SELECT p.pName, p.teamName, w.keeper_playerNum FROM WicketKeeper w INNER JOIN Player p ON w.keeper_playerNum = p.playerNum AND w.teamName = p.teamName"
        cursor.execute(wicketkeeper_details)
        wicket_keeper_rows = cursor.fetchall()
        
        for x in wicket_keeper_rows:
        	print(x)
        	
        # Query 3
        print("\nDisplay the number of matches played by each team: ")
        no_matchs_played = "SELECT Team.teamName, COUNT(Matchs.MID) AS totalNum FROM Matchs NATURAL JOIN Team WHERE Team.teamName = Matchs.firstTeam  OR Team.teamName = Matchs.secondTeam GROUP BY Team.teamName ORDER BY totalNum DESC"
        cursor.execute(no_matchs_played)
        no_matchs_rows = cursor.fetchall()
        
        for x in  no_matchs_rows:
        	print(x)

	# Query 4
        coach_details = "SELECT Coach.CID, Coach.coachName, Team.teamName, Team.no_wins FROM Coach JOIN Team WHERE  Coach.CID = Team.CID AND no_wins > 30 ORDER BY Team.no_wins ASC"
        cursor.execute(coach_details)
        coach_rows = cursor.fetchall()
        
        print("\nObtain coach and team details that have coached a team where their no of wins are greater than 30:")
        for x in  coach_rows:
        	print(x)
        	
        # Query 5
        umpire_table = "SELECT umpire_name, no_standings FROM Umpire WHERE umpire_name LIKE '%a%' AND  no_standings BETWEEN 50 AND 70"
        cursor.execute(umpire_table)
        umpire_rows = cursor.fetchall()
        
        print("\nShow the umpire details that have 'a' in their name with a standing between 50 and 70:")
        for x in umpire_rows:
        	print(x)
        	
        # Query 6
        score_team_details = "SELECT m.MID, m.firstTeam, m.secondTeam, score.highestScore FROM Matchs m JOIN Scoreboard score ON highestScore >= 150 WHERE  m.MID = score.MID"
        cursor.execute(score_team_details)
        score_team_rows = cursor.fetchall()
        
        print("\nShow all the matches with the first team and second team names where the highest score is greater than 150:")
        for x in score_team_rows:
        	print(x)
        	
        # Query 7
        cap_details = "SELECT Player.playerNum, Player.teamName, Player.pName AS player_Name, Inning.tot_score FROM Player NATURAL JOIN Inning WHERE captain = 'YES' AND Inning.tot_score > (SELECT AVG(tot_score) FROM Inning)"
        cursor.execute(cap_details)
        cap_rows = cursor.fetchall()
        
        print("\nDisplay the players who are captains in the teams with a high tot_score less than the average tot_score in innings played:")
        for x in cap_rows:
        	print(x)
        	
        # Query 8
        SL_details = "SELECT m.MID, m.firstTeam, m.secondTeam, m.umID FROM Matchs m WHERE m.firstTeam = 'Sri Lankan Team' OR m.secondTeam = 'Sri Lankan Team' GROUP BY m.MID, m.umID, m.firstTeam, m.secondTeam"
        cursor.execute(SL_details)
        SL_rows = cursor.fetchall()
        
        print("\nDisplay the number of matches played by the Sri lankan team:")
        for x in SL_rows:
        	print(x)
        	
        # Query 9
        stadium_match = "SELECT Matchs.MID, Matchs.firstTeam, Matchs.secondTeam, CONCAT(Stadium.sName, ' ', Stadium.city, ' ', Stadium.country) AS location, Stadium.capacity FROM Matchs INNER JOIN Stadium on Matchs.stadiumID = Stadium.stadiumID WHERE Stadium.capacity > 35000 ORDER BY Stadium.capacity"
        cursor.execute(stadium_match)
        stadium_match_rows = cursor.fetchall()
        
        print("\nDisplay matches details and stadium details where a match is played in a stadium capacity greater than 35000")
        for x in stadium_match_rows:
        	print(x)
        	
        # Query 10
        umpire_match_score = "SELECT umpire_name, umID FROM Umpire WHERE umID IN (SELECT umID FROM Matchs WHERE Matchs.MID IN (SELECT MID FROM Scoreboard WHERE highestScore > 200))"
        cursor.execute(umpire_match_score)
        match_score_rows = cursor.fetchall()
        
        print("\nDisplay the umpire details who have umpired matches that have a high score of more than 200")
        for x in match_score_rows:
        	print(x)
        	
        # Query 11
        tot_sixes_match = "(SELECT scoreID, MID, tot_sixes, played.winner FROM Scoreboard NATURAL JOIN Plays played WHERE tot_sixes IS NULL AND Scoreboard.MID = played.MID) UNION (SELECT scoreID, MID, tot_sixes, played.winner FROM Scoreboard NATURAL JOIN Plays played WHERE tot_sixes IS NOT NULL AND Scoreboard.MID = played.MID) ORDER BY tot_sixes ASC"
        cursor.execute(tot_sixes_match)
        tot_sixes_rows = cursor.fetchall()
        
        print("\nDisplay scoreboard details where the winner of the match scored 0 sixes and where they obtained sixes and order the tot_sixes obtained by a group in ascending order")
        for x in tot_sixes_rows:
        	print(x)
		
        # Query 12
        bowling_economy = "SELECT pName, teamName FROM Player WHERE playerNum in (SELECT playerNum from Bowler WHERE bowling_economy > 12.00)"
        cursor.execute(bowling_economy)
        bowling_rows = cursor.fetchall()
        
        print("\nDisplay the names of players and their respective team names  who have a bowling economy more than 12.00:")   
        for x in bowling_rows: 
        	print(x)
        	
        # Query 13
        player_keeper = "SELECT p.playerNum, p.teamName, p.pName AS playerName, DATE_FORMAT(p.dob, '%W, %e %M %Y') AS birthdate FROM Player p NATURAL JOIN WicketKeeper w WHERE captain IS NULL AND w.keeper_playerNum = p.playerNum"
        cursor.execute(player_keeper)
        keeper_rows = cursor.fetchall()
        
        print("\nDisplays a list of players who is a wicket keeper but not a captain:")
        for x in keeper_rows:
        	print(x)
        	
        # Query 14
        player_age = "SELECT playerNum, pName AS playerName, teamName,  DATE_FORMAT(FROM_DAYS(DATEDIFF(NOW(), dob)), '%Y') + 0 AS Age FROM Player"
        cursor.execute(player_age)
        player_age_rows = cursor.fetchall()
        
        print("\nObtain the age of each player from the player table:")
        for x in player_age_rows:
        	print(x)
        	
        # Query 15 
        score_details = "SELECT Tournament.TID, Tournament.series, RankIn.teamName, Tournament.year, RankIn.ranking FROM RankIn NATURAL JOIN Tournament WHERE Tournament.TID = RankIn.TID AND RankIn.ranking BETWEEN 10 AND 16 ORDER BY ranking DESC"
        cursor.execute(score_details)
        score_details_rows = cursor.fetchall()
        
        print("\nPrint all the ranks in between 10 and 16 and their series and overs played:")
        for x in score_details_rows:
        	print(x)
        	
             	
# If connection fails, then print the error details         
except Error as e:
    print("Error ocurred when trying to connect to MySQL server", e)

finally:
    
    # After completeing the job, close the connections 
    if connection.is_connected():
        cursor.close()
        connection.close()
        print("\nMySQL Server connection is closed! Goodbye!")  
        
