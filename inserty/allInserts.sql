-- turn off system versioning
ALTER TABLE ArtistBand SET (SYSTEM_VERSIONING = OFF);
ALTER TABLE ArtistBand DROP PERIOD FOR SYSTEM_TIME;
GO

ALTER TABLE ArtistInstrument SET (SYSTEM_VERSIONING = OFF);
ALTER TABLE ArtistInstrument DROP PERIOD FOR SYSTEM_TIME;
GO

ALTER TABLE [Order] SET (SYSTEM_VERSIONING = OFF);
ALTER TABLE [Order] DROP PERIOD FOR SYSTEM_TIME;
GO

-- inserts
insert into Client (clientId, name, surname) values (1, 'Morissa', 'Barnby');
insert into Client (clientId, name, surname) values (2, 'Mario', 'Labet');
insert into Client (clientId, name, surname) values (3, 'Delmor', 'Tilbey');
insert into Client (clientId, name, surname) values (4, 'Mariya', 'Presshaugh');
insert into Client (clientId, name, surname) values (5, 'Josie', 'Ipsgrave');
insert into Client (clientId, name, surname) values (6, 'Francesco', 'Wartonby');
insert into Client (clientId, name, surname) values (7, 'Jaquith', 'Di Pietro');
insert into Client (clientId, name, surname) values (8, 'Chrysa', 'Salman');
insert into Client (clientId, name, surname) values (9, 'Lorraine', 'Sirr');
insert into Client (clientId, name, surname) values (10, 'Ciel', 'Whitebrook');
insert into Client (clientId, name, surname) values (11, 'Cort', 'Barrand');
insert into Client (clientId, name, surname) values (12, 'Eugenie', 'Damato');
insert into Client (clientId, name, surname) values (13, 'Araldo', 'Mayworth');
insert into Client (clientId, name, surname) values (14, 'Wilhelmina', 'Casini');
insert into Client (clientId, name, surname) values (15, 'Vincenz', 'Shakesby');
insert into Client (clientId, name, surname) values (16, 'Madison', 'Gillott');
insert into Client (clientId, name, surname) values (17, 'Hanna', 'Farady');
insert into Client (clientId, name, surname) values (18, 'Alie', 'Grunwald');
insert into Client (clientId, name, surname) values (19, 'Berti', 'Rolls');
insert into Client (clientId, name, surname) values (20, 'Zed', 'Mapholm');
insert into Client (clientId, name, surname) values (21, 'Joice', 'Ambrogiotti');
insert into Client (clientId, name, surname) values (22, 'Simmonds', 'Grealey');
insert into Client (clientId, name, surname) values (23, 'Mollee', 'Stephen');
insert into Client (clientId, name, surname) values (24, 'Cesya', 'Ord');
insert into Client (clientId, name, surname) values (25, 'Tessi', 'Stanyard');
insert into Client (clientId, name, surname) values (26, 'Darcey', 'MacConnal');
insert into Client (clientId, name, surname) values (27, 'Mireielle', 'Venus');
insert into Client (clientId, name, surname) values (28, 'Conrade', 'Rivel');
insert into Client (clientId, name, surname) values (29, 'Carolan', 'Petrelluzzi');
insert into Client (clientId, name, surname) values (30, 'Felipe', 'Beavon');
GO

insert into Artist (artistId, name, surname, isVocalist) values (1, 'Lennie', 'O''Heneghan', 1);
insert into Artist (artistId, name, surname, isVocalist) values (2, 'Nanon', 'Yitzhok', 0);
insert into Artist (artistId, name, surname, isVocalist) values (3, 'Marcus', 'Mellings', 0);
insert into Artist (artistId, name, surname, isVocalist) values (4, 'Kassandra', 'Volante', 0);
insert into Artist (artistId, name, surname, isVocalist) values (5, 'Abraham', 'Guillond', 0);
insert into Artist (artistId, name, surname, isVocalist) values (6, 'Hamish', 'Eayrs', 1);
insert into Artist (artistId, name, surname, isVocalist) values (7, 'Lefty', 'Hadwen', 1);
insert into Artist (artistId, name, surname, isVocalist) values (8, 'Abbie', 'Cass', 0);
insert into Artist (artistId, name, surname, isVocalist) values (9, 'Elnora', 'Meas', 1);
insert into Artist (artistId, name, surname, isVocalist) values (10, 'Clayborne', 'Langsbury', 1);
insert into Artist (artistId, name, surname, isVocalist) values (11, 'Olympie', 'Colkett', 1);
insert into Artist (artistId, name, surname, isVocalist) values (12, 'Rheba', 'Seamen', 1);
insert into Artist (artistId, name, surname, isVocalist) values (13, 'Masha', 'Dwyr', 1);
insert into Artist (artistId, name, surname, isVocalist) values (14, 'Tandie', 'Romero', 1);
insert into Artist (artistId, name, surname, isVocalist) values (15, 'Ursa', 'Saphin', 0);
insert into Artist (artistId, name, surname, isVocalist) values (16, 'Conant', 'Currao', 0);
insert into Artist (artistId, name, surname, isVocalist) values (17, 'Clarita', 'Botton', 1);
insert into Artist (artistId, name, surname, isVocalist) values (18, 'Clarie', 'Grigsby', 1);
insert into Artist (artistId, name, surname, isVocalist) values (19, 'Nikola', 'Kleinplac', 0);
insert into Artist (artistId, name, surname, isVocalist) values (20, 'Emogene', 'Bickerdyke', 1);
insert into Artist (artistId, name, surname, isVocalist) values (21, 'Bevon', 'Mournian', 0);
insert into Artist (artistId, name, surname, isVocalist) values (22, 'Valle', 'Parfrey', 1);
insert into Artist (artistId, name, surname, isVocalist) values (23, 'Laney', 'Glennie', 0);
insert into Artist (artistId, name, surname, isVocalist) values (24, 'Georgiana', 'Dhennin', 0);
insert into Artist (artistId, name, surname, isVocalist) values (25, 'Dud', 'Lydon', 1);
insert into Artist (artistId, name, surname, isVocalist) values (26, 'Dido', 'Albery', 1);
insert into Artist (artistId, name, surname, isVocalist) values (27, 'Mariam', 'Putton', 0);
insert into Artist (artistId, name, surname, isVocalist) values (28, 'Ado', 'Antonat', 0);
insert into Artist (artistId, name, surname, isVocalist) values (29, 'Enrika', 'Whitear', 0);
insert into Artist (artistId, name, surname, isVocalist) values (30, 'Northrop', 'Fearby', 0);
GO

insert into ArtistInstrument (artistId, instrumentName, dateSincePlaysInstrument, sysStartTime, sysEndTime) values (5 , 'Gitara elektryczna', '1978-09-10 16:05:42', '1978-09-10 16:05:42', '9999-12-31 23:59:59.9999999');
insert into ArtistInstrument (artistId, instrumentName, dateSincePlaysInstrument, sysStartTime, sysEndTime) values (10, 'Gitara elektryczna', '2006-04-10 18:46:49', '2006-04-10 18:46:49', '9999-12-31 23:59:59.9999999');
insert into ArtistInstrument (artistId, instrumentName, dateSincePlaysInstrument, sysStartTime, sysEndTime) values (29, 'Gitara akustyczna' , '1979-03-17 05:09:44', '1979-03-17 05:09:44', '9999-12-31 23:59:59.9999999');
insert into ArtistInstrument (artistId, instrumentName, dateSincePlaysInstrument, sysStartTime, sysEndTime) values (19, 'Gitara akustyczna' , '2002-06-24 00:20:11', '2002-06-24 00:20:11', '9999-12-31 23:59:59.9999999');
insert into ArtistInstrument (artistId, instrumentName, dateSincePlaysInstrument, sysStartTime, sysEndTime) values (4 , 'Perkusja'          , '2013-08-06 04:16:55', '2013-08-06 04:16:55', '9999-12-31 23:59:59.9999999');
insert into ArtistInstrument (artistId, instrumentName, dateSincePlaysInstrument, sysStartTime, sysEndTime) values (7 , 'Perkusja'          , '1987-01-08 23:22:21', '1987-01-08 23:22:21', '9999-12-31 23:59:59.9999999');
insert into ArtistInstrument (artistId, instrumentName, dateSincePlaysInstrument, sysStartTime, sysEndTime) values (23, 'Keyboard'          , '2014-06-28 01:54:22', '2014-06-28 01:54:22', '9999-12-31 23:59:59.9999999');
insert into ArtistInstrument (artistId, instrumentName, dateSincePlaysInstrument, sysStartTime, sysEndTime) values (17, 'Keyboard'          , '1971-08-10 10:38:34', '1971-08-10 10:38:34', '9999-12-31 23:59:59.9999999');
insert into ArtistInstrument (artistId, instrumentName, dateSincePlaysInstrument, sysStartTime, sysEndTime) values (16, 'Trąbka'            , '2016-01-12 23:24:44', '2016-01-12 23:24:44', '9999-12-31 23:59:59.9999999');
insert into ArtistInstrument (artistId, instrumentName, dateSincePlaysInstrument, sysStartTime, sysEndTime) values (7 , 'Trąbka'            , '2017-10-29 10:19:24', '2017-10-29 10:19:24', '9999-12-31 23:59:59.9999999');
GO

insert into ArtistInstrumentHistory (artistId, instrumentName, dateSincePlaysInstrument, sysStartTime, sysEndTime) values (8 , 'Flet'         , '1985-11-12 22:42:21', '1985-11-12 22:42:21', '1995-04-04 02:06:12');
insert into ArtistInstrumentHistory (artistId, instrumentName, dateSincePlaysInstrument, sysStartTime, sysEndTime) values (20, 'Flet'         , '2003-10-29 00:28:22', '2003-10-29 00:28:22', '2003-11-10 22:25:50');
insert into ArtistInstrumentHistory (artistId, instrumentName, dateSincePlaysInstrument, sysStartTime, sysEndTime) values (4 , 'Gitara basowa', '1975-10-11 07:47:04', '1975-10-11 07:47:04', '1990-01-17 01:49:41');
insert into ArtistInstrumentHistory (artistId, instrumentName, dateSincePlaysInstrument, sysStartTime, sysEndTime) values (9 , 'Gitara basowa', '1999-12-12 22:30:06', '1999-12-12 22:30:06', '2000-01-03 06:53:13');
insert into ArtistInstrumentHistory (artistId, instrumentName, dateSincePlaysInstrument, sysStartTime, sysEndTime) values (7 , 'Pianino'      , '2006-05-19 06:35:58', '2006-05-19 06:35:58', '2009-05-19 07:38:59');
insert into ArtistInstrumentHistory (artistId, instrumentName, dateSincePlaysInstrument, sysStartTime, sysEndTime) values (10, 'Gitara elektryczna', '2003-03-01 10:55:08', '2003-03-01 10:55:08', '2003-03-10 18:46:49');
insert into ArtistInstrumentHistory (artistId, instrumentName, dateSincePlaysInstrument, sysStartTime, sysEndTime) values (10, 'Gitara elektryczna', '2003-03-10 18:46:49', '2003-03-10 18:46:49', '2003-04-10 18:46:49');
insert into ArtistInstrumentHistory (artistId, instrumentName, dateSincePlaysInstrument, sysStartTime, sysEndTime) values (10, 'Gitara elektryczna', '2003-04-10 18:46:49', '2003-04-10 18:46:49', '2006-04-10 18:46:49');
insert into ArtistInstrumentHistory (artistId, instrumentName, dateSincePlaysInstrument, sysStartTime, sysEndTime) values (29, 'Gitara akustyczna' , '1979-02-17 23:48:28', '1979-02-17 23:48:28', '1979-02-20 23:41:50');
insert into ArtistInstrumentHistory (artistId, instrumentName, dateSincePlaysInstrument, sysStartTime, sysEndTime) values (29, 'Gitara akustyczna' , '1979-02-20 23:41:50', '1979-02-20 23:41:50', '1979-02-22 07:09:12');
insert into ArtistInstrumentHistory (artistId, instrumentName, dateSincePlaysInstrument, sysStartTime, sysEndTime) values (29, 'Gitara akustyczna' , '1979-02-22 07:09:12', '1979-02-22 07:09:12', '1979-03-15 06:05:34');
insert into ArtistInstrumentHistory (artistId, instrumentName, dateSincePlaysInstrument, sysStartTime, sysEndTime) values (29, 'Gitara akustyczna' , '1979-03-15 06:05:34', '1979-03-15 06:05:34', '1979-03-17 05:09:44');
insert into ArtistInstrumentHistory (artistId, instrumentName, dateSincePlaysInstrument, sysStartTime, sysEndTime) values (19, 'Gitara akustyczna' , '2000-06-24 00:20:11', '2000-06-24 00:20:11', '2002-02-24 16:03:29');
insert into ArtistInstrumentHistory (artistId, instrumentName, dateSincePlaysInstrument, sysStartTime, sysEndTime) values (19, 'Gitara akustyczna' , '2002-02-24 16:03:29', '2002-02-24 16:03:29', '2002-06-24 00:20:11');
insert into ArtistInstrumentHistory (artistId, instrumentName, dateSincePlaysInstrument, sysStartTime, sysEndTime) values (4 , 'Perkusja'          , '2013-06-03 00:14:31', '2013-06-03 00:14:31', '2013-08-06 04:16:55');
insert into ArtistInstrumentHistory (artistId, instrumentName, dateSincePlaysInstrument, sysStartTime, sysEndTime) values (7 , 'Perkusja'          , '1985-01-08 14:54:00', '1985-01-08 14:54:00', '1987-01-08 23:22:21');
insert into ArtistInstrumentHistory (artistId, instrumentName, dateSincePlaysInstrument, sysStartTime, sysEndTime) values (17, 'Keyboard'          , '1971-06-10 02:12:01', '1971-06-10 02:12:01', '1971-08-10 10:38:34');
insert into ArtistInstrumentHistory (artistId, instrumentName, dateSincePlaysInstrument, sysStartTime, sysEndTime) values (16, 'Trąbka'            , '2013-03-08 12:36:26', '2013-03-08 12:36:26', '2016-01-12 23:24:44');
GO

insert into Band (bandid, name) values (1, 'AC/DC');
insert into Band (bandid, name) values (2, 'Metallica');
insert into Band (bandid, name) values (3, 'Judas Priest');
insert into Band (bandid, name) values (4, 'Kiss');
insert into Band (bandid, name) values (5, 'Scorpions');
insert into Band (bandid, name) values (6, 'Kobranocka');
insert into Band (bandid, name) values (7, 'Lady Pank');
insert into Band (bandid, name) values (8, 'Perfect');
insert into Band (bandid, name) values (9, 'Maanam');
insert into Band (bandid, name) values (10, 'Kult');
insert into Band (bandid, name) values (11, 'Slayer');
insert into Band (bandid, name) values (12, 'The Rolling Stones');
insert into Band (bandid, name) values (13, 'Nirvana');
insert into Band (bandid, name) values (14, 'The White Stripes');
insert into Band (bandid, name) values (15, 'Elektryczne Gitary');
insert into Band (bandid, name) values (16, 'Czerwone Gitary');
insert into Band (bandid, name) values (17, 'Róże Europy');
insert into Band (bandid, name) values (18, 'Linkin Park');
insert into Band (bandid, name) values (19, 'Green Day');
insert into Band (bandid, name) values (20, 'Bajm');
insert into Band (bandid, name) values (21, 'Golec uOrkiestra');
insert into Band (bandid, name) values (22, 'Zakopower');
insert into Band (bandid, name) values (23, 'Wilki');
insert into Band (bandid, name) values (24, 'Vox');
insert into Band (bandid, name) values (25, 'Brathanki');
insert into Band (bandid, name) values (26, 'Myslovitz');
insert into Band (bandid, name) values (27, 'Oddział zamknięty');
insert into Band (bandid, name) values (28, 'Kombii');
insert into Band (bandid, name) values (29, 'Skaldowie');
insert into Band (bandid, name) values (30, 'Dżem');
GO

insert into ArtistBand (bandId, artistId, dateSinceArtistInBand, sysStartTime, sysEndTime) values (1, 5 , '1990-10-21 20:58:16', '1990-10-21 20:58:16', '9999-12-31 23:59:59.9999999');
insert into ArtistBand (bandId, artistId, dateSinceArtistInBand, sysStartTime, sysEndTime) values (1, 11, '2005-06-12 08:56:50', '2005-06-12 08:56:50', '9999-12-31 23:59:59.9999999');
insert into ArtistBand (bandId, artistId, dateSinceArtistInBand, sysStartTime, sysEndTime) values (1, 8 , '2011-12-01 16:10:19', '2011-12-01 16:10:19', '9999-12-31 23:59:59.9999999');
insert into ArtistBand (bandId, artistId, dateSinceArtistInBand, sysStartTime, sysEndTime) values (1, 26, '1987-11-09 03:01:51', '1987-11-09 03:01:51', '9999-12-31 23:59:59.9999999');
insert into ArtistBand (bandId, artistId, dateSinceArtistInBand, sysStartTime, sysEndTime) values (2, 7 , '1970-07-10 21:51:29', '1970-07-10 21:51:29', '9999-12-31 23:59:59.9999999');
insert into ArtistBand (bandId, artistId, dateSinceArtistInBand, sysStartTime, sysEndTime) values (2, 1 , '2014-04-01 18:16:45', '2014-04-01 18:16:45', '9999-12-31 23:59:59.9999999');
insert into ArtistBand (bandId, artistId, dateSinceArtistInBand, sysStartTime, sysEndTime) values (3, 4 , '2017-08-15 17:43:20', '2017-08-15 17:43:20', '9999-12-31 23:59:59.9999999');
insert into ArtistBand (bandId, artistId, dateSinceArtistInBand, sysStartTime, sysEndTime) values (4, 13, '1985-01-06 21:18:14', '1985-01-06 21:18:14', '9999-12-31 23:59:59.9999999');
insert into ArtistBand (bandId, artistId, dateSinceArtistInBand, sysStartTime, sysEndTime) values (4, 27, '2010-01-22 23:55:38', '2010-01-22 23:55:38', '9999-12-31 23:59:59.9999999');
insert into ArtistBand (bandId, artistId, dateSinceArtistInBand, sysStartTime, sysEndTime) values (4, 20, '2010-06-08 09:19:01', '2010-06-08 09:19:01', '9999-12-31 23:59:59.9999999');
GO

insert into ArtistBandHistory (bandId, artistId, dateSinceArtistInBand, sysStartTime, sysEndTime) values (8, 16, '1996-03-29 03:49:56', '1996-03-29 03:49:56', '1996-05-29 11:17:31');
insert into ArtistBandHistory (bandId, artistId, dateSinceArtistInBand, sysStartTime, sysEndTime) values (8, 17, '1996-03-22 16:08:50', '1996-03-22 16:08:50', '2000-03-22 09:08:23');
insert into ArtistBandHistory (bandId, artistId, dateSinceArtistInBand, sysStartTime, sysEndTime) values (8, 18, '1996-10-08 17:59:18', '1996-10-08 17:59:18', '1996-11-10 14:35:04');
insert into ArtistBandHistory (bandId, artistId, dateSinceArtistInBand, sysStartTime, sysEndTime) values (9, 19, '2011-03-24 14:25:39', '2011-03-24 14:25:39', '2012-01-12 12:49:58');
insert into ArtistBandHistory (bandId, artistId, dateSinceArtistInBand, sysStartTime, sysEndTime) values (9, 20, '1987-05-20 03:29:22', '1987-05-20 03:29:22', '1987-05-20 05:37:57');
insert into ArtistBandHistory (bandId, artistId, dateSinceArtistInBand, sysStartTime, sysEndTime) values (9, 21, '2019-01-20 14:03:28', '2019-01-20 14:03:28', '2020-01-18 03:57:31');
insert into ArtistBandHistory (bandId, artistId, dateSinceArtistInBand, sysStartTime, sysEndTime) values (1, 5 , '1990-07-06 02:48:50', '1990-07-06 02:48:50', '1990-09-21 18:23:36');
insert into ArtistBandHistory (bandId, artistId, dateSinceArtistInBand, sysStartTime, sysEndTime) values (1, 5 , '1990-09-21 18:23:36', '1990-09-21 18:23:36', '1990-10-18 23:10:07');
insert into ArtistBandHistory (bandId, artistId, dateSinceArtistInBand, sysStartTime, sysEndTime) values (1, 5 , '1990-10-18 23:10:07', '1990-10-18 23:10:07', '1990-10-21 18:58:16');
insert into ArtistBandHistory (bandId, artistId, dateSinceArtistInBand, sysStartTime, sysEndTime) values (1, 5 , '1990-10-21 18:58:16', '1990-10-21 18:58:16', '1990-10-21 20:58:16');
insert into ArtistBandHistory (bandId, artistId, dateSinceArtistInBand, sysStartTime, sysEndTime) values (1, 11, '2004-03-02 10:02:18', '2004-03-02 10:02:18', '2004-03-02 12:05:25');
insert into ArtistBandHistory (bandId, artistId, dateSinceArtistInBand, sysStartTime, sysEndTime) values (1, 11, '2004-03-02 12:05:25', '2004-03-02 12:05:25', '2005-06-02 00:27:23');
insert into ArtistBandHistory (bandId, artistId, dateSinceArtistInBand, sysStartTime, sysEndTime) values (1, 11, '2005-06-02 00:27:23', '2005-06-02 00:27:23', '2005-06-12 08:56:50');
insert into ArtistBandHistory (bandId, artistId, dateSinceArtistInBand, sysStartTime, sysEndTime) values (1, 8 , '2011-09-10 16:29:37', '2011-09-10 16:29:37', '2011-10-10 18:20:40');
insert into ArtistBandHistory (bandId, artistId, dateSinceArtistInBand, sysStartTime, sysEndTime) values (1, 8 , '2011-10-10 18:20:40', '2011-10-10 18:20:40', '2011-10-10 20:37:50');
insert into ArtistBandHistory (bandId, artistId, dateSinceArtistInBand, sysStartTime, sysEndTime) values (1, 8 , '2011-10-10 20:37:50', '2011-10-10 20:37:50', '2011-12-01 16:10:19');
insert into ArtistBandHistory (bandId, artistId, dateSinceArtistInBand, sysStartTime, sysEndTime) values (1, 26, '1987-07-21 04:13:26', '1987-07-21 04:13:26', '1987-07-24 23:17:43');
insert into ArtistBandHistory (bandId, artistId, dateSinceArtistInBand, sysStartTime, sysEndTime) values (1, 26, '1987-07-24 23:17:43', '1987-07-24 23:17:43', '1987-11-09 03:01:51');
insert into ArtistBandHistory (bandId, artistId, dateSinceArtistInBand, sysStartTime, sysEndTime) values (2, 7 , '1970-07-01 22:58:32', '1970-07-01 22:58:32', '1970-07-10 21:51:29');
insert into ArtistBandHistory (bandId, artistId, dateSinceArtistInBand, sysStartTime, sysEndTime) values (4, 20, '2010-03-04 22:46:53', '2010-03-04 22:46:53', '2010-06-08 09:19:01');
GO

insert into Album (albumId, bandId, name, releasedDate) values (1, 20, 'Highway to hell', '1986-08-02');
insert into Album (albumId, bandId, name, releasedDate) values (2, 1, 'Lust of love', '1994-03-13');
insert into Album (albumId, bandId, name, releasedDate) values (3, 26, 'Uno', '1982-10-12');
insert into Album (albumId, bandId, name, releasedDate) values (4, 17, 'Black album', '2002-01-10');
insert into Album (albumId, bandId, name, releasedDate) values (5, 26, 'Awinion', '2005-11-20');
insert into Album (albumId, bandId, name, releasedDate) values (6, 7, 'Piąty bieg', '2006-04-16');
insert into Album (albumId, bandId, name, releasedDate) values (7, 8, 'Korova Milky Bar', '1975-07-05');
insert into Album (albumId, bandId, name, releasedDate) values (8, 14, 'Nie zadzieraj nosa', '2010-09-29');
insert into Album (albumId, bandId, name, releasedDate) values (9, 30, 'Dookie', '2006-05-12');
insert into Album (albumId, bandId, name, releasedDate) values (10, 4, 'Warning', '1996-12-24');
insert into Album (albumId, bandId, name, releasedDate) values (11, 16, 'Hotter than hell', '1994-04-11');
insert into Album (albumId, bandId, name, releasedDate) values (12, 29, 'Dynasty', '1995-07-30');
insert into Album (albumId, bandId, name, releasedDate) values (13, 27, 'Nocny patrol', '1975-11-25');
insert into Album (albumId, bandId, name, releasedDate) values (14, 17, 'Mental cut', '1996-01-09');
insert into Album (albumId, bandId, name, releasedDate) values (15, 24, 'Lady Pank', '2016-03-28');
insert into Album (albumId, bandId, name, releasedDate) values (16, 10, 'Tacy sami', '2017-01-18');
insert into Album (albumId, bandId, name, releasedDate) values (17, 1, 'Terapia', '1992-06-06');
insert into Album (albumId, bandId, name, releasedDate) values (18, 19, 'Greatest Hits', '1999-05-07');
insert into Album (albumId, bandId, name, releasedDate) values (19, 8, 'Sticky Fingers', '1997-03-16');
insert into Album (albumId, bandId, name, releasedDate) values (20, 21, 'Some Girls', '1972-04-12');
insert into Album (albumId, bandId, name, releasedDate) values (21, 12, 'Szklanka wody', '2000-12-08');
insert into Album (albumId, bandId, name, releasedDate) values (22, 18, 'Martwa woda', '1999-01-13');
insert into Album (albumId, bandId, name, releasedDate) values (23, 26, 'Painkiller', '1998-02-03');
insert into Album (albumId, bandId, name, releasedDate) values (24, 21, 'British Steel', '1984-02-01');
insert into Album (albumId, bandId, name, releasedDate) values (25, 26, 'Reigh In Blood', '1997-12-22');
insert into Album (albumId, bandId, name, releasedDate) values (26, 1, 'Repentless', '1988-04-26');
insert into Album (albumId, bandId, name, releasedDate) values (27, 15, 'Nevermind', '1978-11-24');
insert into Album (albumId, bandId, name, releasedDate) values (28, 21, 'In Utero', '1997-04-09');
insert into Album (albumId, bandId, name, releasedDate) values (29, 1, 'Elephant', '1999-09-25');
insert into Album (albumId, bandId, name, releasedDate) values (30, 21, 'White Blood Cells', '2015-03-13');
GO

insert into [Order] (albumId, clientId, orderDate, sysStartTime, sysEndTime) values (20, 6 , '2019-10-26 05:03:45', '2019-10-26 05:03:45', '9999-12-31 23:59:59.9999999');
insert into [Order] (albumId, clientId, orderDate, sysStartTime, sysEndTime) values (21, 27, '2019-06-15 00:26:23', '2019-06-15 00:26:23', '9999-12-31 23:59:59.9999999');
insert into [Order] (albumId, clientId, orderDate, sysStartTime, sysEndTime) values (20, 26, '2020-05-08 19:56:49', '2020-05-08 19:56:49', '9999-12-31 23:59:59.9999999');
insert into [Order] (albumId, clientId, orderDate, sysStartTime, sysEndTime) values (14, 16, '2019-02-20 07:42:56', '2019-02-20 07:42:56', '9999-12-31 23:59:59.9999999');
insert into [Order] (albumId, clientId, orderDate, sysStartTime, sysEndTime) values (2 , 3 , '2018-06-14 10:58:31', '2018-06-14 10:58:31', '9999-12-31 23:59:59.9999999');
insert into [Order] (albumId, clientId, orderDate, sysStartTime, sysEndTime) values (10, 2 , '2020-01-10 11:53:12', '2020-01-10 11:53:12', '9999-12-31 23:59:59.9999999');
insert into [Order] (albumId, clientId, orderDate, sysStartTime, sysEndTime) values (25, 2 , '2018-11-06 00:08:21', '2018-11-06 00:08:21', '9999-12-31 23:59:59.9999999');
insert into [Order] (albumId, clientId, orderDate, sysStartTime, sysEndTime) values (12, 30, '2018-07-16 23:50:56', '2018-07-16 23:50:56', '9999-12-31 23:59:59.9999999');
insert into [Order] (albumId, clientId, orderDate, sysStartTime, sysEndTime) values (2 , 14, '2019-08-19 21:41:41', '2019-08-19 21:41:41', '9999-12-31 23:59:59.9999999');
insert into [Order] (albumId, clientId, orderDate, sysStartTime, sysEndTime) values (20, 24, '2019-06-15 19:58:07', '2019-06-15 19:58:07', '9999-12-31 23:59:59.9999999');
GO

insert into [OrderHistory] (albumId, clientId, orderDate, sysStartTime, sysEndTime) values (29, 21, '2018-11-21 14:13:25', '2018-11-25 11:32:33', '2018-11-27 21:49:52');
insert into [OrderHistory] (albumId, clientId, orderDate, sysStartTime, sysEndTime) values (22, 1 , '2020-01-09 08:52:33', '2020-03-09 04:04:19', '2020-03-15 13:42:35');
insert into [OrderHistory] (albumId, clientId, orderDate, sysStartTime, sysEndTime) values (12, 22, '2019-03-09 14:33:16', '2019-05-12 16:20:17', '2019-07-08 11:12:51');
insert into [OrderHistory] (albumId, clientId, orderDate, sysStartTime, sysEndTime) values (20, 6 , '2019-08-08 16:21:12', '2019-08-08 16:21:12', '2019-10-21 11:41:52');
insert into [OrderHistory] (albumId, clientId, orderDate, sysStartTime, sysEndTime) values (20, 6 , '2019-10-21 11:41:52', '2019-10-21 11:41:52', '2019-10-26 05:03:45');
insert into [OrderHistory] (albumId, clientId, orderDate, sysStartTime, sysEndTime) values (21, 27, '2019-05-17 01:49:10', '2019-05-17 01:49:10', '2019-05-18 01:49:10');
insert into [OrderHistory] (albumId, clientId, orderDate, sysStartTime, sysEndTime) values (21, 27, '2019-05-18 01:49:10', '2019-05-18 01:49:10', '2019-05-26 06:03:52');
insert into [OrderHistory] (albumId, clientId, orderDate, sysStartTime, sysEndTime) values (21, 27, '2019-05-26 06:03:52', '2019-05-26 06:03:52', '2019-06-14 00:27:24');
insert into [OrderHistory] (albumId, clientId, orderDate, sysStartTime, sysEndTime) values (21, 27, '2019-06-14 00:27:24', '2019-06-14 00:27:24', '2019-06-15 00:26:23');
insert into [OrderHistory] (albumId, clientId, orderDate, sysStartTime, sysEndTime) values (14, 16, '2019-02-18 07:42:56', '2019-02-18 07:42:56', '2019-02-20 07:42:56');
insert into [OrderHistory] (albumId, clientId, orderDate, sysStartTime, sysEndTime) values (2 , 3 , '2018-02-19 00:27:24', '2018-02-19 00:27:24', '2018-03-10 10:53:45');
insert into [OrderHistory] (albumId, clientId, orderDate, sysStartTime, sysEndTime) values (2 , 3 , '2018-03-10 10:53:45', '2018-03-10 10:53:45', '2018-06-14 10:58:31');
insert into [OrderHistory] (albumId, clientId, orderDate, sysStartTime, sysEndTime) values (12, 30, '2018-07-15 00:57:50', '2018-07-15 00:57:50', '2018-07-16 23:50:56');
insert into [OrderHistory] (albumId, clientId, orderDate, sysStartTime, sysEndTime) values (2 , 14, '2019-08-10 03:57:24', '2019-08-10 03:57:24', '2019-08-19 21:41:41');
insert into [OrderHistory] (albumId, clientId, orderDate, sysStartTime, sysEndTime) values (20, 24, '2018-01-15 23:58:59', '2018-01-15 23:58:59', '2019-06-15 19:58:07');
GO

-- turn on system versioning
ALTER TABLE ArtistBand ADD PERIOD FOR SYSTEM_TIME(SysStartTime, SysEndTime);
ALTER TABLE ArtistBand SET (SYSTEM_VERSIONING = ON (HISTORY_TABLE = dbo.ArtistBandHistory));
GO

ALTER TABLE ArtistInstrument ADD PERIOD FOR SYSTEM_TIME(SysStartTime, SysEndTime);
ALTER TABLE ArtistInstrument SET (SYSTEM_VERSIONING = ON (HISTORY_TABLE = dbo.ArtistInstrumentHistory));
GO

ALTER TABLE [Order] ADD PERIOD FOR SYSTEM_TIME(SysStartTime, SysEndTime);
ALTER TABLE [Order] SET (SYSTEM_VERSIONING = ON (HISTORY_TABLE = dbo.[OrderHistory]));
GO