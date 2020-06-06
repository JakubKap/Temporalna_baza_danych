-- wyświetlenie calej historii zamowien
select Client.name, Client.surname, Album.name AS album, [Order].[orderDate], [Order].sysStartTime, [Order].sysEndTime
from Client
    INNER JOIN
    [Order] FOR SYSTEM_TIME ALL on Client.clientId = [Order].clientId
    INNER JOIN
    Album on Album.albumId = [Order].albumId
ORDER BY Client.name, Client.surname, orderDate


-- na ilu instrumentach grał Lefty Hadwen w zespole Metallica w latach 1980 do 2010
select Band.name, Artist.name, Artist.surname, count(*) AS numOfInstruments
FROM Band
         INNER JOIN ArtistBand on ArtistBand.bandId = Band.bandId
         INNER JOIN
     Artist on Artist.artistId = ArtistBand.artistId
         INNER JOIN
     ArtistInstrument FOR SYSTEM_TIME BETWEEN '1980-01-01' AND '2010-12-31' on ArtistInstrument.artistId = Artist.artistId
WHERE Band.name = 'Metallica' and Artist.name = 'Lefty' and Artist.surname = 'Hadwen'
GROUP BY Band.name, Artist.name, Artist.surname


-- zamowienia ktorych stan zostal zmeniony jeszcze w czerwcu 2019
select Album.name, [Order].sysStartTime, [Order].sysEndTime
FROM Album
    INNER JOIN [Order] FOR SYSTEM_TIME CONTAINED IN ('2019-06-01', '2019-06-30') on [Order].[albumId] = Album.albumId
Order BY [Order].[sysStartTime]