-- `top_3_artists.sql`: Provide a query that shows the top 3 best selling artists.

SELECT
artist_name as 'Artist',
total_sales as 'Total Sales'
FROM (
    SELECT
    a.Name as artist_name,
    COUNT(il.Quantity) as total_sales
    FROM Artist a
    INNER JOIN Album al 
    ON a.ArtistId = al.ArtistId 
    INNER JOIN Track t 
    ON al.AlbumId = t.AlbumId 
    INNER JOIN InvoiceLine il 
    ON t.TrackId = il.TrackId
    GROUP BY a.ArtistId
)
ORDER BY total_sales DESC
LIMIT 3