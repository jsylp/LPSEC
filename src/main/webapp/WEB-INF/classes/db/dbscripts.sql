------------------------------------------------------------------------------
-- DROP TABLEs
------------------------------------------------------------------------------
DROP TABLE IF EXISTS LoginUser;

------------------------------------------------------------------------------
-- Create TABLEs
------------------------------------------------------------------------------
-- Create Table: LoginUser
CREATE TABLE LoginUser (
	UserName               varchar(64) NOT NULL PRIMARY KEY UNIQUE,
	ContactId              uuid REFERENCES Contact (UniqueId) NOT NULL,
	Password               varchar(512) NOT NULL,
	PasswordHint1          varchar(255),
	PasswordAnswer1        varchar(255),
	PasswordHint2          varchar(255),
	PasswordAnswer2        varchar(255),
	PasswordHint3          varchar(255),
	PasswordAnswer3        varchar(255)
);

------------------------------------------------------------------------------
-- Load testing data
------------------------------------------------------------------------------
-- Load LoginUser
INSERT INTO LoginUser(UserName, ContactId, Password)
	VALUES('aalpha', '07771AE4-236A-49d3-A49E-B1F9E1934D20', 'AllenPassword');
INSERT INTO LoginUser(UserName, ContactId, Password)
	VALUES('bbeta',  '07771AE4-236A-49d3-A49E-B1F9E1934D21', 'BobbyPassword');
INSERT INTO LoginUser(UserName, ContactId, Password)
	VALUES('cgamma', '07771AE4-236A-49d3-A49E-B1F9E1934D22', 'CindyPassword');
