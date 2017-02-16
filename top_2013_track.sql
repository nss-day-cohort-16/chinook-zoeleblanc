-- `top_2013_track.sql`: Provide a query that shows the most purchased track of 2013.

SELECT
invoice_date as 'Invoice Date',
track_name as 'Song',
MAX(track_quantity) as 'Number Purchase'
FROM(
    SELECT
    i.InvoiceDate as invoice_date,
    SUM(il.Quantity) as track_quantity, #or COUNT(DISTINCT il.TrackId)
    t.Name as track_name
    FROM InvoiceLine il
    INNER JOIN Track t 
    ON il.TrackId = t.TrackId
    INNER JOIN Invoice i
    ON il.InvoiceId = i.InvoiceId
    AND i.InvoiceDate BETWEEN "2013-01-01 00:00:00" AND "2014-01-01 00:00:00"
    GROUP BY il.InvoiceId
)

-- FIND out how to limit dynamically
SELECT
invoice_date as 'Invoice Date',
track_name as 'Song',
track_quantity as 'Number Purchase'
FROM(
    SELECT
    i.InvoiceDate as invoice_date,
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
ORDER BY track_quantity DESC
