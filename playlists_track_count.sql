-- `playlists_track_count.sql`: Provide a query that shows the total number of tracks in each playlist. The Playlist name should be include on the resulant table.

SELECT
p.Name as 'Playlist',
COUNT(*) as 'Tracks'
FROM Playlist p
INNER JOIN PlaylistTrack pt
ON p.PlaylistId = pt.PlaylistId
GROUP BY pt.TrackId