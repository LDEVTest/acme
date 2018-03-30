CREATE TABLE JDBCDATANODE (
	GUID			VARCHAR(256)	NOT NULL,
	POSITION		CHAR(16)		NOT NULL,
	DATAKEY		VARCHAR(256)	NOT NULL,
	DTYPE		CHAR(1)		NOT NULL,
	CLASSNAME	VARCHAR(256)	NULL,
	LASTUPDATED	VARCHAR(16)	NOT NULL,
	DATA			VARCHAR(1024)	NULL)
;

CREATE TABLE JDBCDATABLOB (
	GUID			VARCHAR(256)	NOT NULL,
	POSITION		CHAR(16)		NOT NULL,
	DATA			BLOB			NOT NULL)
;

CREATE TABLE JDBCDATAMUTEX(
	GUID			VARCHAR(256)	NOT NULL,
	MUTEX		INT			NOT NULL)
;

CREATE TABLE JDBCDATAREF (
	GUID			VARCHAR(256)	NOT NULL,
	REPOIDATAREF	INT			NOT NULL)
;

CREATE UNIQUE INDEX JDBCDATANODEIDX ON JDBCDATANODE (GUID, POSITION) ;
CREATE UNIQUE INDEX JDBCDATABLOBSIDX ON JDBCDATABLOB (GUID, POSITION) ;
CREATE UNIQUE INDEX JDBCDATAMUTEXIDX ON JDBCDATAMUTEX (GUID) ;
CREATE UNIQUE INDEX JDBCDATAREFIDX ON JDBCDATAREF (GUID) ;
COMMIT ;
