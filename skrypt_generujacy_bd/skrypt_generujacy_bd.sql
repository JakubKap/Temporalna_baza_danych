IF NOT EXISTS 
   (
     SELECT name FROM master.dbo.sysdatabases 
     WHERE name = N'MusicAlbumsMarket'
    )
CREATE DATABASE MusicAlbumsMarket;
GO


USE MusicAlbumsMarket;
GO


IF EXISTS (
    SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Order'
)
ALTER TABLE dbo.[Order] SET (SYSTEM_VERSIONING = OFF);


IF EXISTS (
    SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'ArtistInstrument'
)
ALTER TABLE dbo.ArtistInstrument SET (SYSTEM_VERSIONING = OFF);


IF EXISTS (
    SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'ArtistBand'
)
ALTER TABLE dbo.ArtistBand SET (SYSTEM_VERSIONING = OFF);



DROP TABLE IF EXISTS [Order];
DROP TABLE IF EXISTS OrderHistory;
DROP TABLE IF EXISTS ArtistInstrument;
DROP TABLE IF EXISTS ArtistInstrumentHistory;
DROP TABLE IF EXISTS ArtistBand;
DROP TABLE IF EXISTS ArtistBandHistory;
DROP TABLE IF EXISTS Album;
DROP TABLE IF EXISTS Band;
DROP TABLE IF EXISTS Artist;
DROP TABLE IF EXISTS Client;
GO


CREATE TABLE [Order] (
	albumId int NOT NULL, 
	clientId int NOT NULL, 
	orderDate datetime NOT NULL, 
	sysStartTime datetime2 GENERATED ALWAYS AS ROW START NOT NULL, 
	sysEndTime datetime2 GENERATED ALWAYS AS ROW END NOT NULL, 
	PERIOD FOR SYSTEM_TIME (sysStartTime, sysEndTime),
	PRIMARY KEY (albumId, clientId)
) WITH (   
    SYSTEM_VERSIONING = ON (HISTORY_TABLE = dbo.OrderHistory)   
);
GO
	
	
CREATE TABLE ArtistBand (
	bandId int NOT NULL, 
	artistId int NOT NULL, 
	dateSinceArtistInBand datetime NOT NULL, 
	sysStartTime datetime2 GENERATED ALWAYS AS ROW START NOT NULL, 
	sysEndTime datetime2 GENERATED ALWAYS AS ROW END NOT NULL,
    PERIOD FOR SYSTEM_TIME (sysStartTime, sysEndTime),	
	PRIMARY KEY (bandId, artistId)
) WITH (   
    SYSTEM_VERSIONING = ON (HISTORY_TABLE = dbo.ArtistBandHistory)   
);
GO
	
CREATE TABLE Client (
	clientId int NOT NULL PRIMARY KEY CLUSTERED, 
	name varchar(40) NOT NULL, 
	surname varchar(40) NOT NULL
	);
	
	
CREATE TABLE ArtistInstrument (
	artistId int NOT NULL, 
	instrumentName varchar(100) NOT NULL, 
	dateSincePlaysInstrument datetime NOT NULL, 
	sysStartTime datetime2 GENERATED ALWAYS AS ROW START NOT NULL, 
	sysEndTime datetime2 GENERATED ALWAYS AS ROW END NOT NULL,
    PERIOD FOR SYSTEM_TIME (sysStartTime, sysEndTime),	
	PRIMARY KEY (artistId, instrumentName)
) WITH (   
    SYSTEM_VERSIONING = ON (HISTORY_TABLE = dbo.ArtistInstrumentHistory)   
);
GO


CREATE TABLE Band (
	bandId int NOT NULL PRIMARY KEY CLUSTERED, 
	name varchar(40) NOT NULL
);

CREATE TABLE Album (
	albumId int NOT NULL PRIMARY KEY CLUSTERED,
	bandId int NOT NULL, 
	name varchar(40) NOT NULL, 
	releasedDate date NOT NULL
);
	
CREATE TABLE Artist (
	artistId int NOT NULL PRIMARY KEY CLUSTERED,
	name varchar(40) NOT NULL, 
	surname varchar(40) NOT NULL, 
	isVocalist bit NOT NULL
);


ALTER TABLE ArtistInstrument ADD CONSTRAINT FKArtistInst42011 FOREIGN KEY (artistId) REFERENCES Artist (artistId);
ALTER TABLE ArtistBand ADD CONSTRAINT FKArtistBand813046 FOREIGN KEY (bandId) REFERENCES Band (bandId);
ALTER TABLE ArtistBand ADD CONSTRAINT FKArtistBand782270 FOREIGN KEY (artistId) REFERENCES Artist (artistId);
ALTER TABLE [Order] ADD CONSTRAINT FKOrder24084 FOREIGN KEY (albumId) REFERENCES Album (albumId);
ALTER TABLE [Order] ADD CONSTRAINT FKOrder575191 FOREIGN KEY (clientId) REFERENCES Client (clientId);
ALTER TABLE Album ADD CONSTRAINT FKAlbum669027 FOREIGN KEY (bandId) REFERENCES Band (bandId);


