-- `top_media_type.sql`: Provide a query that shows the most purchased Media Type.

SELECT
media_type as 'Media Type',
total_sales as 'Total Sales'
FROM (
    SELECT
    m.Name as media_type,
    COUNT(il.Quantity) as total_sales
    FROM MediaType m
    INNER JOIN Track t 
    ON m.MediaTypeId = t.MediaTypeId
    INNER JOIN InvoiceLine il 
    ON t.TrackId = il.TrackId
    GROUP BY m.MediaTypeId
)
ORDER BY total_sales DESC
LIMIT 1