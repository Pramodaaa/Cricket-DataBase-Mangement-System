/* MySQL code to insert values to the next 6 tables created in the Cricket database*/

-- Insert values to Player table
INSERT INTO Player VALUES
(1,'Indian Team', 'Rohit Sharma', '1986-03-14', NULL);
INSERT INTO Player VALUES
(5,'Indian Team', 'Virat Kohli', '1990-04-12', 'YES');
INSERT INTO Player VALUES
(14,'Zimbabwe Team', 'Sikandar Raza', '1986-04-24', 'YES');
INSERT INTO Player VALUES
(10,'Zimbabwe Team', 'Richaz Helen', '1999-08-14', NULL);
INSERT INTO Player VALUES
(5,'Pakistan Team', 'Rishabh Panti', '1997-08-19', NULL);
INSERT INTO Player VALUES
(1,'Pakistan Team', 'Maheesh Theek', '2000-03-01', NULL);
INSERT INTO Player VALUES
(10,'Sri Lankan Team', 'Kusal Mendis', '1995-02-03', NULL);
INSERT INTO Player VALUES
(4,'Sri Lankan Team', 'Dhananjaya de Silva', '1991-11-06', NULL);
INSERT INTO Player VALUES
(16,'Ireland Team', 'Colin de Grand', '1986-01-14', 'YES');
INSERT INTO Player VALUES
(12,'Ireland Team', 'Paul Stirling', '1940-04-12', NULL);
INSERT INTO Player VALUES
(4,'Netherlands Team', 'Gareth Delany', '1997-04-13', NULL);
INSERT INTO Player VALUES
(12,'Netherlands Team', 'Devon Conway', '1991-10-03', 'YES');
INSERT INTO Player VALUES
(9,'New Zealand Team', 'Jacob Oram', '2000-08-19', NULL);
INSERT INTO Player VALUES
(11,'New Zealand Team', 'Chris Cairns', '1996-02-29', NULL);
INSERT INTO Player VALUES
(2,'New Zealand Team', 'Craig McMillan', '1982-08-19', 'YES');
INSERT INTO Player VALUES
(1,'Sri Lankan Team', 'Chamika Karunaratne', '1996-05-29', NULL);
INSERT INTO Player VALUES
(9,'Sri Lankan Team', 'Dasun Shanaka', '1991-12-4', 'YES');
INSERT INTO Player VALUES
(8,'England Team', 'David McBroom', '1994-07-15', NULL);
INSERT INTO Player VALUES
(13,'England Team', 'Jake Bieber', '1999-05-25', 'YES');
INSERT INTO Player VALUES
(14,'Afghanistan Team', 'Geroge Nickson', '1989-07-12', NULL);
INSERT INTO Player VALUES
(14,'Australian Team', 'Geroge Nickson', '1989-07-12', NULL);
INSERT INTO Player VALUES
(7,'Australian Team', 'Marnus Labuschagne', '1994-07-18', 'YES');
INSERT INTO Player VALUES
(16,'Canadian Team', 'Geroge Nickson', '1989-07-12', NULL);
INSERT INTO Player VALUES
(15,'Canadian Team', 'Tim Southee', '1977-09-2', 'YES');
INSERT INTO Player VALUES
(1,'United states Team', 'David Warner', '1986-01-02', NULL);
INSERT INTO Player VALUES
(6,'United states Team', 'Aaron Finch', '1983-11-12', NULL);
INSERT INTO Player VALUES
(15,'Afghanistan Team', 'Mahmudullah', '1989-01-22', 'YES');
INSERT INTO Player VALUES
(8,'Afghanistan Team', 'Litton Das', '1994-02-13', NULL);
INSERT INTO Player VALUES
(4,'Bangladesh Team', 'Shaheen Afridi', '2000-04-23', NULL);
INSERT INTO Player VALUES
(9,'Bangladesh Team', 'Gurdeep Singh', '1998-11-12', 'YES');
INSERT INTO Player VALUES
(3,'Kenya Team', 'Temba Bavuma', '1990-04-23', NULL);
INSERT INTO Player VALUES
(5,'Kenya Team', 'Aman Gandhi', '1999-11-03', 'YES');
INSERT INTO Player VALUES
(10,'South African Team', 'Temba Bavuma', '1998-12-13', 'YES');
INSERT INTO Player VALUES
(17,'South African Team', 'Zeeshan Maqsood', '1998-11-03', NULL);
INSERT INTO Player VALUES
(1,'West Indians Team', 'Babar Azam', '1990-01-13', NULL);
INSERT INTO Player VALUES
(7,'West Indians Team', 'Zaruk Bishu', '1989-12-03', 'YES');



-- Insert values to wicketKeeper table
-- Each team has two wicke keepers
INSERT INTO WicketKeeper VALUES
('West Indians Team', 1);
INSERT INTO WicketKeeper VALUES
('West Indians Team', 7);
INSERT INTO WicketKeeper VALUES
('South African Team', 10);
INSERT INTO WicketKeeper VALUES
('South African Team', 7);
INSERT INTO WicketKeeper VALUES
('Kenya Team', 3);
INSERT INTO WicketKeeper VALUES
('Kenya Team', 5);
INSERT INTO WicketKeeper VALUES
('Bangladesh Team', 9);
INSERT INTO WicketKeeper VALUES
('Bangladesh Team', 4);
INSERT INTO WicketKeeper VALUES
('Afghanistan Team', 8);
INSERT INTO WicketKeeper VALUES
('Afghanistan Team', 15);
INSERT INTO WicketKeeper VALUES
('United states Team', 1);
INSERT INTO WicketKeeper VALUES
('United states Team', 6);
INSERT INTO WicketKeeper VALUES
('Canadian Team', 6);
INSERT INTO WicketKeeper VALUES
('Canadian Team', 15);
INSERT INTO WicketKeeper VALUES
('Australian Team', 14);
INSERT INTO WicketKeeper VALUES
('Australian Team', 7);
INSERT INTO WicketKeeper VALUES
('Pakistan Team', 5);
INSERT INTO WicketKeeper VALUES
('Ireland Team', 12);
INSERT INTO WicketKeeper VALUES
('New Zealand Team', 9);
INSERT INTO WicketKeeper VALUES
('Indian Team', 1);
INSERT INTO WicketKeeper VALUES
('Indian Team', 5);
INSERT INTO WicketKeeper VALUES
('Pakistan Team', 2);
INSERT INTO WicketKeeper VALUES
('Sri Lankan Team', 1);
INSERT INTO WicketKeeper VALUES
('Sri Lankan Team', 9);



-- Insert values to Matches table
-- United States team havent won any matches 
INSERT INTO Matchs VALUES
('M1','T2', '15', 's11', 'Australian Team', 'Netherlands Team');
INSERT INTO Matchs VALUES
('M2','T2', '14', 's11', 'Zimbabwe Team', 'Indian Team');
INSERT INTO Matchs VALUES
('M3','T1', '13', 's1', 'Pakistan Team', 'England Team');
INSERT INTO Matchs VALUES
('M4','T1', '12', 's1', 'Indian Team', 'New Zealand Team');
INSERT INTO Matchs VALUES
('M5','T3', '11', 's2', 'Ireland Team', 'Netherlands Team');
INSERT INTO Matchs VALUES
('M6','T3', '10', 's2', 'Sri Lankan Team', 'Australian Team');
INSERT INTO Matchs VALUES
('M7','T7', '9', 's4', 'Kenya Team', 'Bangladesh Team');
INSERT INTO Matchs VALUES
('M8','T7', '8', 's4', 'South African Team', 'Pakistan Team');
INSERT INTO Matchs VALUES
('M9','T9', '7', 's6', 'United states Team', 'Netherlands Team');
INSERT INTO Matchs VALUES
('M10','T9', '6', 's6', 'Canadian Team', 'Netherlands Team');
INSERT INTO Matchs VALUES
('M11','T10', '5', 's7', 'New Zealand Team', 'Zimbabwe Team');
INSERT INTO Matchs VALUES
('M12','T10', '4', 's7', 'Australian Team', 'Pakistan Team');
INSERT INTO Matchs VALUES
('M13','T11', '3', 's8', 'West Indians Team', 'Netherlands Team');
INSERT INTO Matchs VALUES
('M14','T11', '1', 's8', 'Indian Team', 'Sri Lankan Team');
INSERT INTO Matchs VALUES
('M15','T12', '2', 's9', 'Afghanistan Team', 'Zimbabwe Team');
INSERT INTO Matchs VALUES
('M16','T12', '15', 's9', 'Pakistan Team', 'Bangladesh Team');
INSERT INTO Matchs VALUES
('M17','T13', '14', 's10', 'West Indians Team', 'United states Team');
INSERT INTO Matchs VALUES
('M18','T3', '13', 's10', 'South African Team', 'Ireland Team');
INSERT INTO Matchs VALUES
('M19','T14', '5', 's10', 'Ireland Team', 'Sri Lankan Team');
INSERT INTO Matchs VALUES
('M20','T15', '3', 's3', 'New Zealand Team', 'Afghanistan Team');
INSERT INTO Matchs VALUES
('M21','T12', '3', 's3', 'New Zealand Team', 'Sri Lankan Team');



-- Insert values to Plays table
INSERT INTO Plays VALUES
(1,'M1', '1998-02-12 12:30:00', 'Australian Team');
INSERT INTO Plays VALUES
(2,'M2', '1986-07-01 14:00:00', 'Indian Team');
INSERT INTO Plays VALUES
(3,'M3', '1976-04-12 11:30:00', 'England Team'); 
INSERT INTO Plays VALUES
(4,'M4', '1990-02-01 16:00:00', 'New Zealand Team');
INSERT INTO Plays VALUES
(5,'M5', '1999-02-24 16:30:00', 'Netherlands Team');
INSERT INTO Plays VALUES
(6,'M6', '1996-01-09 12:30:00', 'Sri Lankan Team');
INSERT INTO Plays VALUES
(7,'M7', '1996-01-16 19:30:00', 'Bangladesh Team');
INSERT INTO Plays VALUES
(8,'M8', '1995-02-12 10:30:00', 'South African Team');
INSERT INTO Plays VALUES
(9,'M9', '2013-01-15 20:00:00', 'Netherlands Team');
INSERT INTO Plays VALUES
(10,'M10', '2013-03-29 18:30:00', 'Canadian Team');
INSERT INTO Plays VALUES
(11,'M11', '2016-02-18 19:30:00', 'Zimbabwe Team');
INSERT INTO Plays VALUES
(12,'M12', '2022-01-22 10:30:00', 'Pakistan Team');
INSERT INTO Plays VALUES
(13,'M13', '2021-02-24 12:30:00', 'West Indians Team');
INSERT INTO Plays VALUES
(14,'M14', '2019-02-12 19:30:00', 'Indian Team');
INSERT INTO Plays VALUES
(15,'M15', '2004-02-12 19:00:00', 'Afghanistan Team');
INSERT INTO Plays VALUES
(16,'M16', '2014-08-12 11:30:00', 'Bangladesh Team');
INSERT INTO Plays VALUES
(17,'M17', '2000-02-22 12:00:00', 'West Indians Team');
INSERT INTO Plays VALUES
(18,'M18', '2010-02-21 15:00:00', 'Ireland Team');
INSERT INTO Plays VALUES
(19,'M19', '2022-02-27 12:00:00', 'Sri Lankan Team');
INSERT INTO Plays VALUES
(20,'M20', '2016-03-20 11:00:00', 'New Zealand Team');


-- Insert values to Scoreboard table
INSERT INTO Scoreboard VALUES
('01','M1', 8, 55, 10, 19, 191);
INSERT INTO Scoreboard VALUES
('02','M2', 4, 59, 5, 13, 141);
INSERT INTO Scoreboard VALUES
('03','M3', 6, 34, 12, 29, 222);
INSERT INTO Scoreboard VALUES
('04','M4', 9, 43, NULL, 15, 103);
INSERT INTO Scoreboard VALUES
('05','M5', 10, 45, 2, 19, 133);
INSERT INTO Scoreboard VALUES
('06','M6', 3, 34, 10, 12, 142);
INSERT INTO Scoreboard VALUES
('07','M7', 5, 23, 9, 33, 209);
INSERT INTO Scoreboard VALUES
('08','M8', 8, 45, NULL, 14, 101);
INSERT INTO Scoreboard VALUES
('09','M9', 9, 58, NULL, 20, 138);
INSERT INTO Scoreboard VALUES
('010','M10', 4, 45, 5, 22, 163);
INSERT INTO Scoreboard VALUES
('011','M11', 7, 35, NULL, 12, 83);
INSERT INTO Scoreboard VALUES
('012','M12', 8, 47, 2, 19, 135);
INSERT INTO Scoreboard VALUES
('013','M13', 10, 35, 2, 9, 73);
INSERT INTO Scoreboard VALUES
('014','M14', 7, 46, NULL, 29, 162);
INSERT INTO Scoreboard VALUES
('015','M15', 6, 56, NULL, 39, 212);
INSERT INTO Scoreboard VALUES
('016','M16', 9, 44, 1, 29, 161);
INSERT INTO Scoreboard VALUES
('017','M17', 10, 49, 5, 27, 187);
INSERT INTO Scoreboard VALUES
('018','M18', 4, 12, 6, 5, 98);
INSERT INTO Scoreboard VALUES
('019','M19', 10, 40, NULL, 49, 236);
INSERT INTO Scoreboard VALUES
('020','M20', 3, 35, 7, 20, 157);
INSERT INTO Scoreboard(scoreID, MID, tot_wickets, tot_runs, tot_sixes, tot_fours) VALUES
('021','M21', 5, 0, 0, 0); -- inserting certain values only



-- Insert values to Achievement table
INSERT INTO Achievement VALUES
(191,'M1', 'Australian Team', 'Netherlands Team', 'Geroge Nickson');
INSERT INTO Achievement VALUES
(141,'M2', 'Indian Team', 'Zimbabwe Team', 'Virat Kohli');
INSERT INTO Achievement VALUES
(222,'M3', 'England Team', 'Pakistan Team', 'David McBroom');
INSERT INTO Achievement VALUES
(103,'M4', 'New Zealand Team', 'Indian Team', 'Craig McMillan');
INSERT INTO Achievement VALUES
(133,'M5', 'Netherlands Team', 'Ireland Team', 'Devon Conway');
INSERT INTO Achievement VALUES
(142,'M6', 'Sri Lankan Team', 'Australian Team', 'Chamika Karunaratne');
INSERT INTO Achievement VALUES
(209,'M7', 'Bangladesh Team', 'Kenya Team', 'Gurdeep Singh');
INSERT INTO Achievement VALUES
(101,'M8', 'South African Team', 'Pakistan Team', 'Zeeshan Maqsood');
INSERT INTO Achievement VALUES
(138,'M9', 'Netherlands Team', 'United states Team', 'Devon Conway');
INSERT INTO Achievement VALUES
(163,'M10', 'Canadian Team', 'Netherlands Team', 'Tim Southee');
INSERT INTO Achievement VALUES
(83,'M11', 'Zimbabwe Team', 'New Zealand Team', 'Sikandar Raza');
INSERT INTO Achievement VALUES
(135,'M12', 'Pakistan Team', 'Australian Team', 'Rishabh Panti');
INSERT INTO Achievement VALUES
(73,'M13', 'West Indians Team', 'Netherlands Team', 'Babar Azam');
INSERT INTO Achievement VALUES
(162,'M14', 'Indian Team', 'Sri Lankan Team', 'Rohit Sharma');
INSERT INTO Achievement VALUES
(212,'M15', 'Afghanistan Team', 'Zimbabwe Team', 'Litton Das');
INSERT INTO Achievement VALUES
(161,'M16', 'Bangladesh Team', 'Pakistan Team', 'Shaheen Afridi');
INSERT INTO Achievement VALUES
(187,'M17', 'West Indians Team', 'United states Team', 'Zaruk Bishu');
INSERT INTO Achievement VALUES
(98,'M18', 'Ireland Team', 'South African Team', 'Colin de Grand');
INSERT INTO Achievement VALUES
(236,'M19', 'Sri Lankan Team', 'Ireland Team', 'Kusal Mendis');
INSERT INTO Achievement VALUES
(157,'M20', 'New Zealand Team', 'Afghanistan Team', 'Jacob Oram');










































































