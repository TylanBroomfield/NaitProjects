USE DMIT1508SectionA06_tbroomfield1

CREATE TABLE Employee(
	EmployeeID	INT IDENTITY(1,1)		NOT NULL	CONSTRAINT PK_Employee PRIMARY KEY CLUSTERED 
,	LastName	VARCHAR(100)				NOT NULL
,	FirstName	VARCHAR(100)				NOT NULL	
)

CREATE TABLE EmployeeOnProject(
	EmployeeID		INT	IDENTITY(1,1)	NOT NULL
,	ProjectNumber	INT					NOT NULL
,	WeeklyHours		DECIMAL				NOT NULL

	CONSTRAINT PK_EmployeeOnProject PRIMARY KEY CLUSTERED(EmployeeID, ProjectNumber)
)

CREATE TABLE Project(
	ProjectNumber	INT IDENTITY(1,1)	NOT NULL	CONSTRAINT PK_Project PRIMARY KEY CLUSTERED
,	ProjectName		VARCHAR(100)		NOT NULL
,	ProjectLocation VARCHAR(100)		NOT NULL
)

EXEC sp_help 