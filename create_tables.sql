
/* create_tables.sql: MySQL file for table creation in Assignment for Cricket database*/

-- create the tournament table
DROP TABLE IF EXISTS Tournament;
CREATE TABLE Tournament(
        TID    CHAR(4) NOT NULL,
        series VARCHAR(12) NOT NULL,
        year	CHAR(4),
        overs  CHAR(3),
	PRIMARY KEY(TID)
);


-- create the umpire table
DROP TABLE IF EXISTS Umpire;
CREATE TABLE Umpire(
        umID        CHAR(2) NOT NULL,
        umpire_name VARCHAR(20) NOT NULL,
        no_standings INT(4),
	PRIMARY KEY(umID)
);


-- create the stadium table
DROP TABLE IF EXISTS Stadium;
CREATE TABLE Stadium(
        stadiumID CHAR(4) NOT NULL,
        sName     VARCHAR(24) NOT NULL,
        city      VARCHAR(18),
        country   VARCHAR(18),
        capacity  INT(20),
	PRIMARY KEY(stadiumID)
);


-- create the Coach table
DROP TABLE IF EXISTS Coach;
CREATE TABLE Coach(
        CID       CHAR(4) NOT NULL,
        coachName VARCHAR(24) NOT NULL,
	PRIMARY KEY(CID)
);


-- create the team table
DROP TABLE IF EXISTS Team;
CREATE TABLE Team(
        teamName  VARCHAR(24) NOT NULL,
        CID       CHAR(4) NOT NULL,
        no_wins   INT(4),
        no_loses  INT(4),
        no_bowlers INT(4),
        no_batsmen INT(4),  
        no_allRounders   INT(4),                              
	PRIMARY KEY(teamName),
	FOREIGN KEY(CID) REFERENCES Coach(CID)
);

-- create the Player table
DROP TABLE IF EXISTS Player;
CREATE TABLE Player(
        playerNum  INT(5) NOT NULL,
        teamName   VARCHAR(24) NOT NULL,
        pName      VARCHAR(24),
        dob        DATE,
        captain  CHAR(3), -- suggests if captain or not                
	PRIMARY KEY(playerNum, teamName),
	FOREIGN KEY(teamName) REFERENCES Team(teamName) 
);

-- create the wicketKeeper table
DROP TABLE IF EXISTS WicketKeeper;
CREATE TABLE WicketKeeper(
        teamName  VARCHAR(24) NOT NULL,
        keeper_playerNum  INT(5) NOT NULL,    
        PRIMARY KEY(teamName, keeper_playerNum),
        FOREIGN KEY(keeper_playerNum) REFERENCES Player(playerNum)
);

-- create the Match table
DROP TABLE IF EXISTS Matchs;
CREATE TABLE Matchs(
        MID  CHAR(4) NOT NULL,
        TID  CHAR(4) NOT NULL,
        umID  CHAR(2) NOT NULL,
        stadiumID CHAR(4) NOT NULL,
        firstTeam VARCHAR(24) NOT NULL,
        secondTeam VARCHAR(24) NOT NULL,                 
	PRIMARY KEY(MID),
	FOREIGN KEY(TID) REFERENCES Tournament(TID) ON DELETE CASCADE, -- with on delete casade changes in parent table (Tournament) reflects in the child table (Match)
	FOREIGN KEY(umID) REFERENCES Umpire(umID) ON DELETE CASCADE,
	FOREIGN KEY(stadiumID) REFERENCES Stadium(stadiumID) ON DELETE CASCADE
);

-- create the Plays table
DROP TABLE IF EXISTS Plays;
CREATE TABLE Plays(
	scheduleID INT(3) NOT NULL,
	MID CHAR(4) NOT NULL, 
	date_time DATETIME, 
	winner VARCHAR(24),
	PRIMARY KEY(scheduleID, MID, winner),
	FOREIGN KEY(MID) REFERENCES Matchs(MID) ON DELETE CASCADE,	
	FOREIGN KEY(winner) REFERENCES Team(teamName) ON DELETE CASCADE	
);


-- create the Scoreboard table of the team that won
DROP TABLE IF EXISTS Scoreboard;
CREATE TABLE Scoreboard(
	scoreID CHAR(4) NOT NULL,
	MID CHAR(4) NOT NULL,
	tot_wickets INT(4), -- of the winner team
	tot_runs INT(4), -- of the winner team
	tot_sixes INT(4), -- of the winner team
	tot_fours INT(4), 
	highestScore INT(12)
	DEFAULT 0, -- if no score for the team set it as 0
	PRIMARY KEY(scoreID),
	FOREIGN KEY(MID) REFERENCES Matchs(MID) ON DELETE CASCADE	 
);


-- create the Achievement table
DROP TABLE IF EXISTS Achievement;
CREATE TABLE Achievement(
	highestScore INT(12) NOT NULL,
	MID CHAR(4) NOT NULL,
	winner VARCHAR(24), 
	runnerUp VARCHAR(24) NOT NULL,
	man_of_match VARCHAR(24), 
	PRIMARY KEY(highestScore, MID)		 
);


-- create the Batsmen table
DROP TABLE IF EXISTS Batsmen;
CREATE TABLE Batsmen(
	playerNum INT(5) NOT NULL,
	teamName   VARCHAR(24) NOT NULL,
	batting_strike_rate DECIMAL(5,2),
	no_sixes  INT(4), 
	no_fours  INT(4),
	no_runs  INT(4),
	PRIMARY KEY(playerNum, teamName),
	FOREIGN KEY(playerNum) REFERENCES Player(playerNum)
);


-- create the Bowler table
DROP TABLE IF EXISTS Bowler;
CREATE TABLE Bowler(
	playerNum INT(5) NOT NULL,
	teamName   VARCHAR(24) NOT NULL,
	bowling_economy DECIMAL(5,2),
	no_wide_balls  INT(4),
	tot_wickets  INT(4),
	PRIMARY KEY(playerNum, teamName),
	FOREIGN KEY(playerNum) REFERENCES Player(playerNum),
	FOREIGN KEY(teamName) REFERENCES Team(teamName) 
);

-- create the Inning table for the batsmen that played during the match
DROP TABLE IF EXISTS Inning;
CREATE TABLE Inning(
	inningID CHAR(5) NOT NULL, 
	playerNum INT(5) NOT NULL,
	teamName   VARCHAR(24) NOT NULL,
	tot_score VARCHAR(12),  -- tot_score = current match score 
	PRIMARY KEY(inningID),
	FOREIGN KEY(playerNum) REFERENCES Player(playerNum) ON DELETE CASCADE, -- no player exist then delete the result here as well
	FOREIGN KEY(teamName) REFERENCES Team(teamName) ON DELETE CASCADE
);


-- create the RankIn table
DROP TABLE IF EXISTS RankIn;
CREATE TABLE RankIn(
	TID CHAR(4) NOT NULL,
	teamName  VARCHAR(24) NOT NULL,
	ranking INT(6) CHECK (ranking >= 1),
	PRIMARY KEY(TID, teamName),
	FOREIGN KEY(TID) REFERENCES Tournament(TID) ON DELETE CASCADE,
	FOREIGN KEY(teamName) REFERENCES Team(teamName) ON DELETE CASCADE 
);














































































