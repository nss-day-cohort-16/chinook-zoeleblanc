-- `total_sales_{year}.sql`: What are the respective total sales for each of those years?

SELECT
* FROM
(SELECT 
-- COUNT(DISTINCT i.InvoiceId) as 'Invoice 2009',
SUM(il.UnitPrice) as 'Total Sales 2009'
From Invoice i
INNER JOIN InvoiceLine il
ON i.InvoiceId = il.InvoiceId
AND i.InvoiceDate BETWEEN "2009-01-01 00:00:00" AND "2010-01-01 00:00:00"
) ,
(SELECT
-- COUNT(DISTINCT i.InvoiceId) as 'Invoice 2011',
SUM(il.UnitPrice) as 'Total Sales 2011'
From Invoice i
INNER JOIN InvoiceLine il
ON i.InvoiceId = il.InvoiceId
AND i.InvoiceDate BETWEEN "2011-01-01 00:00:00" AND "2012-01-01 00:00:00"
) 