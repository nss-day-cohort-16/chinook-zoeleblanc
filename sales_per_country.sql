-- `sales_per_country.sql`: Provide a query that shows the total sales per country.

-- IF per country is by BillingCountry
SELECT
BillingCountry as 'Country',
SUM(Total) as 'Total Sales'
FROM Invoice
GROUP BY BillingCountry

-- IF per country is by customer Country
SELECT
c.Country as 'Country',
SUM(i.Total) as 'Total Sales'
FROM Invoice i 
INNER JOIN Customer c 
ON i.CustomerId = c.CustomerId
GROUP BY c.Country