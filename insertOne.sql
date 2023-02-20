/* MySQL code to insert values to the first 5 tables created in the Cricket database*/

-- Insert values to Tournament table
INSERT INTO Tournament VALUES
('T1','Test match','1984','90');
INSERT INTO Tournament VALUES
('T2','ODI','1986','50');
INSERT INTO Tournament VALUES
('T3','T20','1976','20');
INSERT INTO Tournament VALUES
('T4','T10','1990','10');
INSERT INTO Tournament VALUES
('T5','Test match','1997','101');
INSERT INTO Tournament VALUES
('T6','T20','1999','20');
INSERT INTO Tournament VALUES
('T7','T10','1996','10');
INSERT INTO Tournament VALUES
('T8','ODI','2013','50');
INSERT INTO Tournament VALUES
('T9','ODI','2000','50');
INSERT INTO Tournament VALUES
('T10','Test match','2004','90');
INSERT INTO Tournament VALUES
('T11','T20','2010','20');
INSERT INTO Tournament VALUES
('T12','T10','2014','101');
INSERT INTO Tournament VALUES
('T13','ODI','2019','50');
INSERT INTO Tournament VALUES
('T14','T20','2022','20');
INSERT INTO Tournament VALUES
('T15','Test match','2020','101');
INSERT INTO Tournament VALUES
('T16','ODI','2019','50');
INSERT INTO Tournament VALUES
('T17','T10','2022','20');
INSERT INTO Tournament VALUES
('T18','T20','2014','20');
INSERT INTO Tournament VALUES
('T19','Test match','2016','10');
INSERT INTO Tournament VALUES
('T20','ODI','2016','50');


-- Insert values to Umpire table first before inserting to matchs table
INSERT INTO Umpire VALUES
('1','Ian Gould',72);
INSERT INTO Umpire VALUES
('2','Nigel Long',89);
INSERT INTO Umpire VALUES
('3','Rod Tucker',16);
INSERT INTO Umpire VALUES
('4','Kumar Dharamsena',56);
INSERT INTO Umpire VALUES
('5','Chris Gaffaney',65);
INSERT INTO Umpire VALUES
('6','Billy Bowden',27);
INSERT INTO Umpire VALUES
('7','Boson Nicken',44);
INSERT INTO Umpire VALUES
('8','Angel dave',12);
INSERT INTO Umpire VALUES
('9','Aleem Dar',77);
INSERT INTO Umpire VALUES
('10','Joel Wilson', 33);
INSERT INTO Umpire VALUES
('11','Mark Benson',10);
INSERT INTO Umpire VALUES
('12','David Nilsen',77);
INSERT INTO Umpire VALUES
('13','Tony Hill', 37);
INSERT INTO Umpire VALUES
('14','Jason Fred',62);
INSERT INTO Umpire VALUES
('15','Russell Bird',100);



-- Insert values to Stadium table before inserting to Matchs table
INSERT INTO Stadium VALUES
('s1','Eden Garden','Kolkata','India', 68000);
INSERT INTO Stadium VALUES
('s2','Perth Stadium','Perth','Australia', 61900);
INSERT INTO Stadium VALUES
('s3','The Gabba','Brisbane','Australia', 42000);
INSERT INTO Stadium VALUES
('s4','Eden Park','Auckland','New Zealand', 55000);
INSERT INTO Stadium VALUES
('s5','Chinnaswamy','Bengaluru','India', 60000);
INSERT INTO Stadium VALUES
('s6','Sky Stadium','Wellington','New Zealand', 63500);
INSERT INTO Stadium VALUES
('s7','R. Premadasa Stadium','Colombo','Sri Lanka', 35000);
INSERT INTO Stadium VALUES
('s8','Greenfield Stadium','Trelawny Parish','Jamaica', 25000);
INSERT INTO Stadium VALUES
('s9','Buffalo Park','East-London','South Africa', 16000);
INSERT INTO Stadium VALUES
('s10','Narendra Modi Stadium','Ahemedabad','India', 120000);
INSERT INTO Stadium VALUES
('s11','National Stadium','Karachi','Pakistan', 34288);


-- Insert values to Coach table before inserting to Team table
INSERT INTO Coach VALUES
('c1','Sanjay Bangar');
INSERT INTO Coach VALUES
('c2','Justin Langer');
INSERT INTO Coach VALUES
('c3','Mike Hesson');
INSERT INTO Coach VALUES
('c4','Ottis Gibson');
INSERT INTO Coach VALUES
('c5','Gary Kristen');
INSERT INTO Coach VALUES
('c6','Austin Mcbroom');
INSERT INTO Coach VALUES
('c7','John Wright');
INSERT INTO Coach VALUES
('c8','Mickey Arthur');
INSERT INTO Coach VALUES
('c9','Andy Flower');
INSERT INTO Coach VALUES
('c10','Roy Dais');
INSERT INTO Coach VALUES
('c11','Jill Zara');
INSERT INTO Coach VALUES
('c12','Jack Cart');
INSERT INTO Coach VALUES
('c13','Curt shaks');
INSERT INTO Coach VALUES
('c14','Landon Geroge');
INSERT INTO Coach VALUES
('c15','Lal Gunarathne');
INSERT INTO Coach VALUES
('c16','Luke Nasis');




-- Insert values to Team table
INSERT INTO Team VALUES
('England Team','c10', 37, 30, 7, 5, 2);
INSERT INTO Team VALUES
('Sri Lankan Team','c11', 78, 44, 6, 6, 1);
INSERT INTO Team VALUES
('New Zealand Team','c1', 42, 20, 8, 4, 2);
INSERT INTO Team VALUES
('Australian Team','c2', 49, 23, 4, 6, 4);
INSERT INTO Team VALUES
('Afghanistan Team','c4', 41, 55, 4, 4, 2);
INSERT INTO Team VALUES
('Pakistan Team','c3', 12, 23, 6, 5, 2);
INSERT INTO Team VALUES
('Indian Team','c8', 77, 50, 5, 5, 3);
INSERT INTO Team VALUES
('West Indians Team','c12', 44, 34, 4, 4, 2);
INSERT INTO Team VALUES
('Zimbabwe Team','c7', 44, 30, 5, 6, 2);
INSERT INTO Team VALUES
('Ireland Team','c6', 37, 55, 7, 5, 1);
INSERT INTO Team VALUES
('Bangladesh Team','c5', 56, 38, 7, 7, 3);
INSERT INTO Team VALUES
('South African Team','c13', 36, 54, 6, 8, 3);
INSERT INTO Team VALUES
('Netherlands Team','c9', 49, 40, 7, 7, 1);
INSERT INTO Team VALUES
('Kenya Team','c16', 50, 44, 6, 6, 3);
INSERT INTO Team VALUES
('United states Team','c14', 10, 30, 7, 5, 2);
INSERT INTO Team VALUES
('Canadian Team','c15', 20, 49, 6, 8, 2);
INSERT INTO Team VALUES
('Nepal Team','c13', 30, 9, 2, 8, 2);









































