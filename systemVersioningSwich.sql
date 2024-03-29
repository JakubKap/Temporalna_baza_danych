-- turning off system versioning

ALTER TABLE ArtistBand SET (SYSTEM_VERSIONING = OFF);
ALTER TABLE ArtistBand DROP PERIOD FOR SYSTEM_TIME;
GO

ALTER TABLE ArtistInstrument SET (SYSTEM_VERSIONING = OFF);
ALTER TABLE ArtistInstrument DROP PERIOD FOR SYSTEM_TIME;
GO

ALTER TABLE [Order] SET (SYSTEM_VERSIONING = OFF);
ALTER TABLE [Order] DROP PERIOD FOR SYSTEM_TIME;
GO

-- turning on system versioning

ALTER TABLE ArtistBand ADD PERIOD FOR SYSTEM_TIME(SysStartTime, SysEndTime);
ALTER TABLE ArtistBand SET (SYSTEM_VERSIONING = ON (HISTORY_TABLE = dbo.ArtistBandHistory));

ALTER TABLE ArtistInstrument ADD PERIOD FOR SYSTEM_TIME(SysStartTime, SysEndTime);
ALTER TABLE ArtistInstrument SET (SYSTEM_VERSIONING = ON (HISTORY_TABLE = dbo.ArtistInstrumentHistory));

ALTER TABLE [Order] ADD PERIOD FOR SYSTEM_TIME(SysStartTime, SysEndTime);
ALTER TABLE [Order] SET (SYSTEM_VERSIONING = ON (HISTORY_TABLE = dbo.[OrderHistory]));