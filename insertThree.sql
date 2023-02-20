/* MySQL code to insert values to the last 4 tables created in the Cricket database*/


-- Insert values to Batsmen table (the information entered here are obtained from the current match)
-- 
INSERT INTO Batsmen VALUES
(1,'Indian Team', 333.3, 4, 7, 44);
INSERT INTO Batsmen VALUES
(14,'Zimbabwe Team', 230.31, 2, 9, 34);
INSERT INTO Batsmen VALUES
(5,'Pakistan Team', 100.34, 6, 12, 41);
INSERT INTO Batsmen VALUES
(10,'Sri Lankan Team', 239.0, 2, 7, 14);
INSERT INTO Batsmen VALUES
(11,'New Zealand Team', 445.5, 6, 3, 34);
INSERT INTO Batsmen VALUES
(1,'Sri Lankan Team', 472.34, 5, 10, 50);
INSERT INTO Batsmen VALUES
(7,'Australian Team', 628.0, 6, 17, 35);
INSERT INTO Batsmen VALUES
(16,'Ireland Team', 253.23, 14, 5, 42);
INSERT INTO Batsmen VALUES
(4,'Netherlands Team', 334.5, 4, 17, 34);
INSERT INTO Batsmen VALUES
(9,'New Zealand Team', 458.1, 3, 8, 24);
INSERT INTO Batsmen VALUES
(15,'Canadian Team', 560.9, 7, 17, 44);
INSERT INTO Batsmen VALUES
(8,'England Team', 678.0, 5, 8, 34);
INSERT INTO Batsmen VALUES
(1,'United states Team', 459.0, 7, 9, 54);
INSERT INTO Batsmen VALUES
(15,'Afghanistan Team', 236.12, 5, 7, 53);
INSERT INTO Batsmen VALUES
(4,'Bangladesh Team', 456.2, 6, 6, 24);
INSERT INTO Batsmen VALUES
(3,'Kenya Team', 569.0, 3, 6, 37);
INSERT INTO Batsmen VALUES
(10,'South African Team', 459.49, 4, 6, 34);
INSERT INTO Batsmen VALUES
(1,'West Indians Team', 368.5, 3, 6, 37);


-- create the Bowler table (the information entered here are obtained from the current match)
INSERT INTO Bowler VALUES
(5,'Indian Team', 22.0, 4, 2);
INSERT INTO Bowler VALUES
(10,'Zimbabwe Team', 12.4, 6, 5);
INSERT INTO Bowler VALUES
(1,'Pakistan Team', 3.33, 2, 4);
INSERT INTO Bowler VALUES
(4,'Sri Lankan Team', 23.1, 4, 6);
INSERT INTO Bowler VALUES
(9,'New Zealand Team', 44.0, 4, 7);
INSERT INTO Bowler VALUES
(9,'Sri Lankan Team', 47.3, 8 , 10);
INSERT INTO Bowler VALUES
(14,'Australian Team', 16.0, 6, 17);
INSERT INTO Bowler VALUES
(12,'Ireland Team', 25.0, 3, 5);
INSERT INTO Bowler VALUES
(12,'Netherlands Team', 12.0, 3, 4);
INSERT INTO Bowler VALUES
(2,'New Zealand Team', 5.10, 3, 8);
INSERT INTO Bowler VALUES
(16,'Canadian Team', 5.90, 7, 7);
INSERT INTO Bowler VALUES
(13,'England Team', 16.1, 2, 8);
INSERT INTO Bowler VALUES
(6,'United states Team', 12.0, 7, 9);
INSERT INTO Bowler VALUES
(8,'Afghanistan Team', 53.0, 5, 7);
INSERT INTO Bowler VALUES
(9,'Bangladesh Team', 46.12, 6, 2);
INSERT INTO Bowler VALUES
(5,'Kenya Team', 56.10, 3, 6);
INSERT INTO Bowler VALUES
(17,'South African Team', 45.9, 4, 6);
INSERT INTO Bowler VALUES
(7,'West Indians Team', 36.0, 3, 6);


-- Insert values to Inning table
INSERT INTO Inning VALUES
('I1',1,'Indian Team', 100);
INSERT INTO Inning VALUES
('I2', 14,'Zimbabwe Team', 12);
INSERT INTO Inning VALUES
('I3', 5,'Pakistan Team', 34);
INSERT INTO Inning VALUES
('I4', 10,'Sri Lankan Team', NULL);
INSERT INTO Inning VALUES
('I5', 11,'New Zealand Team', 50);
INSERT INTO Inning VALUES
('I6', 1,'Sri Lankan Team',NULL);
INSERT INTO Inning VALUES
('I7', 7,'Australian Team', 35);
INSERT INTO Inning VALUES
('I8', 16,'Ireland Team', 76);
INSERT INTO Inning VALUES
('I9', 4,'Netherlands Team', 35);
INSERT INTO Inning VALUES
('I10', 9,'New Zealand Team',24);
INSERT INTO Inning VALUES
('I11', 15,'Canadian Team', 44);
INSERT INTO Inning VALUES
('I12', 16,'Canadian Team', 7);
INSERT INTO Inning VALUES
('I13', 13,'England Team', 100);
INSERT INTO Inning VALUES
('I14', 6,'United states Team', 50);
INSERT INTO Inning VALUES
('I15', 8,'Afghanistan Team', NULL);
INSERT INTO Inning VALUES
('I16', 9,'Bangladesh Team', NULL);


-- Insert values to RankIn table
INSERT INTO RankIn VALUES
('T1','England Team', 14);
INSERT INTO RankIn VALUES
('T2','England Team', 4);
INSERT INTO RankIn VALUES
('T3','England Team', 16);
INSERT INTO RankIn VALUES
('T4','England Team', 6);
INSERT INTO RankIn VALUES
('T5','Sri Lankan Team', 1);
INSERT INTO RankIn VALUES
('T6','Sri Lankan Team', 2);
INSERT INTO RankIn VALUES
('T7','Sri Lankan Team', 6);
INSERT INTO RankIn VALUES
('T8','Sri Lankan Team', 12);
INSERT INTO RankIn VALUES
('T9','Afghanistan Team', 13);
INSERT INTO RankIn VALUES
('T10','Afghanistan Team', 8);
INSERT INTO RankIn VALUES
('T11','Australian Team', 1);
INSERT INTO RankIn VALUES
('T12','Netherlands Team', 7);
INSERT INTO RankIn VALUES
('T13','Bangladesh Team', 12);
INSERT INTO RankIn VALUES
('T14','Afghanistan Team', 13);
INSERT INTO RankIn VALUES
('T15','Afghanistan Team', 3);
INSERT INTO RankIn VALUES
('T16','Australian Team', 12);
INSERT INTO RankIn VALUES
('T17','Netherlands Team', 13);
INSERT INTO RankIn VALUES
('T18','Netherlands Team', 7);
INSERT INTO RankIn VALUES
('T19','Bangladesh Team', 12);
INSERT INTO RankIn VALUES
('T20','Afghanistan Team', 1);
INSERT INTO RankIn VALUES
('T15','Kenya Team', 3);
INSERT INTO RankIn VALUES
('T16','South African Team', 7);
INSERT INTO RankIn VALUES
('T17','West Indians Team', 6);











