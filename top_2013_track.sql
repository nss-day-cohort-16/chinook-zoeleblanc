-- `top_2013_track.sql`: Provide a query that shows the most purchased track of 2013.

SELECT * FROM (
    (SELECT
    MAX(track_quantity) as 'Number Purchase'
    FROM(
        SELECT
        SUM(il.Quantity) as track_quantity,
        t.Name as track_name
        FROM InvoiceLine il
        INNER JOIN Track t 
        ON il.TrackId = t.TrackId
        INNER JOIN Invoice i
        ON il.InvoiceId = i.InvoiceId
        AND i.InvoiceDate BETWEEN "2013-01-01 00:00:00" AND "2014-01-01 00:00:00"
        GROUP BY il.InvoiceId
        ) 
    ),
    (
        SELECT 
        track_name as 'Song'
        FROM (
        SELECT
        SUM(il.Quantity) as track_quantity,
        t.Name as track_name
        FROM InvoiceLine il
        INNER JOIN Track t 
        ON il.TrackId = t.TrackId
        INNER JOIN Invoice i
        ON il.InvoiceId = i.InvoiceId
        AND i.InvoiceDate BETWEEN "2013-01-01 00:00:00" AND "2014-01-01 00:00:00"
        GROUP BY il.InvoiceId
        ) 
    )
) 
