USE MusicAlbumsMarket;
GO

-- Zapytanie 1 - Wyświetlenie id, imienia, nazwiska oraz liczby zespołów, do których należał wokalista w 1987 roku. Wynik zapytania zostanie posortowany rosnąco względem id wokalisty. 

SELECT a.artistId, a.name, a.surname, COUNT(*) AS countOfBands
FROM Artist a 
INNER JOIN (
	SELECT * FROM ArtistBand 
	FOR SYSTEM_TIME BETWEEN '1987-01-01' AND '1987-12-31'
			) AS ab ON a.artistId = ab.artistId
WHERE a.isVocalist = 1
GROUP BY a.artistId, a.name, a.surname
ORDER BY artistId;

-- Zapytanie 2 - Wyświetlenie nazwy zespołu do którego należała największa liczba członków przez cały okres istnienia zespołu w bazie danych.

SELECT TOP 1 b.name, COUNT(*) as countOfMembers
FROM Band b
INNER JOIN (
			SELECT * FROM ArtistBand 
			FOR SYSTEM_TIME ALL
			) AS ab ON b.bandId = ab.bandId
GROUP BY b.bandId, b.name