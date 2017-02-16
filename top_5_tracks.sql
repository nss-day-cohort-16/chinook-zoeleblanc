-- `top_5_tracks.sql`: Provide a query that shows the top 5 most purchased tracks over all.

SELECT
track_id as 'Track Id',
track_name as 'Song',
track_quantity as 'Number Purchase'
FROM (
    SELECT
    t.TrackId as track_id,
    COUNT(DISTINCT il.TrackId) as track_quantity,
    t.Name as track_name
    FROM InvoiceLine il
    INNER JOIN Track t 
    ON il.TrackId = t.TrackId
    GROUP BY il.InvoiceId
)
ORDER BY track_quantity DESC
LIMIT 5

