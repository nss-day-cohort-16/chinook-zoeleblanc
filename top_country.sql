-- `top_country.sql`: Which countrys customers spent the most?

-- IF per country is by BillingCountry
SELECT
country_name as 'Country',
MAX(total_sales) as 'Country Sales'
FROM (
    SELECT
    SUM(Total) as total_sales,
    BillingCountry as country_name
    FROM Invoice
    GROUP BY BillingCountry
)
-- IF per country is by customer Country
SELECT
country_name as 'Country',
MAX(total_sales) as 'Country Sales'
FROM (
    SELECT
    SUM(i.Total) as total_sales,
    c.Country as country_name
    FROM Invoice i 
    INNER JOIN Customer c 
    ON i.CustomerId = c.CustomerId
    GROUP BY c.Country
)
-- RETURNS SAME RESULT