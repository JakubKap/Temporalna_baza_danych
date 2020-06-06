USE MusicAlbumsMarket;
GO

-- Zapytanie a) - na ilu instrumentach grał Lefty Hadwen w zespole Metallica w latach 1980 do 2010
select Band.name, Artist.name, Artist.surname, count(*) AS numOfInstruments
FROM Band
         INNER JOIN ArtistBand on ArtistBand.bandId = Band.bandId
         INNER JOIN
     Artist on Artist.artistId = ArtistBand.artistId
         INNER JOIN
     ArtistInstrument FOR SYSTEM_TIME BETWEEN '1980-01-01' AND '2010-12-31' on ArtistInstrument.artistId = Artist.artistId
WHERE Band.name = 'Metallica' and Artist.name = 'Lefty' and Artist.surname = 'Hadwen'
GROUP BY Band.name, Artist.name, Artist.surname;



-- Zapytanie b) - zamowienia ktorych stan zostal zmeniony jeszcze w czerwcu 2019
select Album.name, [Order].sysStartTime, [Order].sysEndTime
FROM Album
    INNER JOIN [Order] FOR SYSTEM_TIME CONTAINED IN ('2019-06-01', '2019-06-30') on [Order].[albumId] = Album.albumId
Order BY [Order].[sysStartTime];



-- Zapytanie c) - wyświetlenie calej historii zamowien
select Client.name, Client.surname, Album.name AS album, [Order].[orderDate], [Order].sysStartTime, [Order].sysEndTime
from Client
    INNER JOIN
    [Order] FOR SYSTEM_TIME ALL on Client.clientId = [Order].clientId
    INNER JOIN
    Album on Album.albumId = [Order].albumId
ORDER BY Client.name, Client.surname, orderDate;


-- Zapytanie d) - wyświetlenie nazwy zespołu do którego należała największa liczba członków przez cały okres istnienia zespołu w bazie danych.

SELECT TOP 1 b.name, COUNT(*) as countOfMembers
FROM Band b
INNER JOIN (
			SELECT * FROM ArtistBand 
			FOR SYSTEM_TIME ALL
			) AS ab ON b.bandId = ab.bandId
GROUP BY b.bandId, b.name;



-- Zapytanie e) - wyświetlenie id, imion, nazwisk oraz liczby zespołów, do których należeli wokaliści w 1987 roku. Wynik zapytania zostanie posortowany rosnąco względem id wokalisty. 

SELECT a.artistId, a.name, a.surname, COUNT(*) AS countOfBands
FROM Artist a 
INNER JOIN (
	SELECT * FROM ArtistBand 
	FOR SYSTEM_TIME BETWEEN '1987-01-01' AND '1987-12-31'
			) AS ab ON a.artistId = ab.artistId
WHERE a.isVocalist = 1
GROUP BY a.artistId, a.name, a.surname
ORDER BY artistId;

-- Zapytanie f) - wyświetlenie id, imiona oraz nazwiska artystów (którzy nie są wokalistami), który nie grali na żadnym instrumencie w dniu 1990-01-01. Wynik został posortowany po id artysty.

SELECT a.artistId, a.name, a.surname
FROM Artist a
LEFT JOIN (
			SELECT * FROM ArtistInstrument
			FOR SYSTEM_TIME AS OF '1990-01-01'
			) AS ab ON a.artistId = ab.artistId
WHERE a.isVocalist = 0 AND ab.artistId IS NULL
ORDER BY a.artistId;