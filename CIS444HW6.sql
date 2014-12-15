DROP TABLE teams;

CREATE TABLE teams
(
teamID int NOT NULL AUTO_INCREMENT, 
teamName VARCHAR(50), 
startYear int, 
ownerName VARCHAR(50), 
GMName VARCHAR(50), 
coachName VARCHAR(50), 
startQB VARCHAR(50), 
officeAddress VARCHAR(50), 
city VARCHAR(50), 
state CHAR(2), 
zipCode  int, 
phone VARCHAR(50), 
overallRecord VARCHAR(50), 
confRecord VARCHAR(50),
PRIMARY KEY(teamID)
);

INSERT INTO teams
VALUES (1, 'Chargers', 1960, 'A.G. Spanos', 'Tom Telesco', 'Mike McCoy', 'Philip Rivers', '4020 Murphy Canyon Road', 'San Diego', 'CA', 92123, '(858)874-4500', 'W5-L4', 'W1-L2');

INSERT INTO teams
VALUES (NULL, '49ers', 1946, 'Jed York', 'Trent Baalke', 'Jim Harbaugh', 'Colin Kaepernick', '4900 Marie P. DeBartolo Way' , 'Santa Clara', 'CA', 95054, '(415)464-9377', 'W5-L4', 'W1-L2');

INSERT INTO teams
VALUES (NULL, 'Raiders', 1960, 'Mark Davis', 'Reggie McKenzie', 'Tony Sparano', 'Derek Carr', '1220 Harbor Bay Parkway', 'Alameda', 'CA', 94502, '(510)864-5000', 'W0-L9', 'W0-L2');
