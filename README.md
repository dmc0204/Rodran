# rodran
Database Design and Implementation Course Work

Problem Statement:

	A centralized data repository with intuitive interface for Overwatch League Fans and Administrators to add, remove, update or view league statistics.

System Requirements:

	The system will allow the persistent storage of vital Overwatch League historical data in a centralized database. Only authorized users(admins, superadmins) will be able to add, remove(rarely) or update records on the database. The data contained in the database will be viewable to Fans, Players and Analysts using a GUI interface. The users will be restricted to queries provided by the interface and some simple searches. If possible, we might implement an advanced search. 
  
Functional Requirements:

  Fans/Non-Administrative Users

The system shall allow Non-Administrative Users to retrieve Seasonal Stats.
The system shall allow Non-Administrative Users to retrieve Stats for specific Games during a specified Season or Series. 
The system shall allow Non-Administrative Users to retrieve a Specified Team’s…
Roster, Owner/s, Sponsor/s, Coach and Players.
The system shall allow Non-Administrative Users to retrieve a Players…
Stats, Past Teams, Current Team, win/loss ratio, Personal Information.
The system shall allow Non-Administrative Users retrieve a Characters…
Stats, Who plays them, Win/loss ratio.
	
  Administrative Users

The system will use a RMDBS for all persistent data stores.
The system shall allow Administrative users to…
Add, Remove, Update Seasons on the database.
Add, Remove, Update Games on the database.
Add, Remove, Update Maps on the database.
Add, Remove, Update Teams on the database.
Add, Remove, Update Owners on the database.
Add, Remove, Update Sponsors on the database.
Add, Remove, Update Players on the database.
Add, Remove, Update PlayerStats on the database.
Add, Remove, Update Characters on the database.

  Super-Administrative Users
  
The system will use a RMDBS for all persistent data stores.
The system shall grant Super-Administrative users all the privileges and abilities of Administrative users.
The system shall allow Super-Administrative Users to backup the database data.
The system shall allow Super-Administrative Users to load a backup of the database data.
The system shall
	
Non-Functional Requirements:

The system will be easy to use. (measured by adoption speed of client)
  Usability Requirements
The system will control access to sensitive data.
  Privacy and Security Requirements
The system will use industry standards.
  Standards and Interoperability Requirements
The system will be accessible anywhere there is an internet connection and common world wide web browser.
  Accessibility Requirement

Logical Database Design:

SEASONS (SEASON_ID INT(42), SEASON_SCHEDULE DATE())
		PRIMARY KEY: SEASON_ID

SERIES (SERIES_ID INT(42), SEASON_ID INT(42), SERIES_STARTDATE DATE(), SERIES_ENDDATE DATE(), SERIES_VOD DATE())
		PRIMARY KEY: SERIES_ID
		FOREIGN KEY: SEASON_ID REFERENCES SEASONS

GAMES (GAME_ID INT(42), SERIES_ID INT(42), MAP_ID INT(42), GAME_OUTCOME INT(42))
		PRIMARY KEY: GAME_ID
		FOREIGN KEY: SERIES_ID REFERENCES SERIES
		FOREIGN KEY: MAP_ID REFERENCES MAPS

MAPS (MAP_ID INT(42), MAP_NAME VARCHAR(128), MAP_TYPE VARCHAR(128), MAP_IMG VARCHAR(128))
		PRIMARY KEY: MAP_ID

PARTICIPANTS (SERIESTEAMS_ID INT(42), SERIES_ID INT(42), TEAM_ID INT(42))
		PRIMARY KEY: SERIESTEAMS_ID
		FOREIGN KEY: SERIES_ID REFERENCES SERIES
		FOREIGN KEY: TEAM_ID REFERENCES TEAMS

TEAMS (TEAM_ID INT(42), OWNER_ID INT(42), TEAM_NAME VARCHAR(128), TEAM_CITY VARCHAR(128), TEAM_DIVISION VARCHAR(128), TEAM_COLORS VARCHAR(128), TEAM_LOGO VARCHAR(128))
	PRIMARY KEY: TEAM_ID
	FOREIGN KEY: OWNER_ID REFERENCES OWNERS
	
OWNERS (OWNER_ID INT(42), OWNER_NAME CHAR(128))
		PRIMARY KEY: OWNER_ID

SPONSORS (SPONSOR_ID INT(42), TEAM_ID INT(42), SPONSOR_NAME CHAR(128), SPONSOR_BUSINESS CHAR(128))
	PRIMARY KEY: SPONSOR_ID
	FOREIGN KEY: TEAM_ID REFERENCES TEAMS

PLAYERS (PLAYER_ID INT(42), PLAYER_FIRSTNAME CHAR(128), PLAYER_LASTNAME CHAR(128), PLAYER_AGE INT(42), PLAYER_GENDER CHAR(128))
	PRIMARY KEY: PLAYER_ID

ROSTER (ROSTER_ID INT(42), PLAYER_ID INT(42), TEAM_ID INT(42), ROSTER_STARTDATE DATE(), ROSTER_ENDDATE DATE())
		PRIMARY KEY: ROSTER_ID
		FOREIGN KEY: PLAYER_ID REFERENCES PLAYERS
		FOREIGN KEY: TEAM_ID REFERENCES TEAMS

PLAYERSTATS (PLAYERSTATS_ID INT(42), CHARACTER_ID INT(42), PLAYER_ID INT(42), PLAYERSTATS_DAMAGE INT(42), PLAYERSTATS_HEALING INT(42), PLAYERSTATS_KILLS INT(42))
		PRIMARY KEY: PLAYERSTATS_ID
		FOREIGN KEY: CHARACTER_ID REFERENCES CHARACTERS
		FOREIGN KEY: PLAYER_ID REFERENCES PLAYERS

CHARACTERS (CHARACTER_ID INT(42), CHARACTER_NAME CHAR(128), CHARACTER_ROLE CHAR(128), CHARACTER_AVATAR VARCHAR(128), CHARACTER_IMG VARCHAR(128))
	PRIMARY KEY: CHARACTER_ID

