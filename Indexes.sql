-- Index 1

-- Make two indexes called TournamentInd and MacthesInd to find the series and all the macthes played in a tournament that is played in the 'Test match' series and the firstTeam/ one the participating team includes New Zealand team. 

-- drop indexes if exists 
DROP INDEX TournamentInd ON Tournament;
DROP INDEX MatchesInd ON Matchs;

-- create indexes
CREATE INDEX TournamentInd ON Tournament(series);
CREATE INDEX MatchesInd ON Matchs(firstTeam);

-- Testing the index and retrieve tournamnet details where series equals to test match and first team equals to New Zealand Team. 
SELECT series, firstTeam, Tournament.TID
FROM Tournament NATURAL JOIN Matchs
WHERE series LIKE '%Test Match%'
AND firstTeam LIKE '%New Zealand Team%' AND Tournament.TID = Matchs.TID;


-- Index 2

-- Use two indexes called AchievementInd and PlaysInd to find the winner, runner up and highestscore in a match and the date,time and the schedule ID of that match where the highestScore is greater than 160. These two indexes can be used to speed up the process of finding the winner and its schedule details. 

-- drop indexes if exists 
DROP INDEX AchievementInd ON Achievement;
DROP INDEX PlaysInd ON Plays;

-- create indexes
CREATE INDEX AchievementInd ON Achievement(winner, highestScore, runnerUp);
CREATE INDEX PlaysInd ON Plays(date_time,scheduleID);

-- Testing the index by retriving winner details in a match played where the high score is greater than 160 and the relevant match's schedule details 
SELECT achieve.winner, achieve.runnerUp, achieve.highestScore, achieve.man_of_match, played.scheduleID, played.date_time
FROM Achievement achieve NATURAL JOIN Plays played
WHERE achieve.highestScore > 160 AND achieve.MID = played.MID
ORDER BY (scheduleID) ASC; -- order schedule ID in ascending order
