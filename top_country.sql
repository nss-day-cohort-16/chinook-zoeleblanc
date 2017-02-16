-- `top_country.sql`: Which countrys customers spent the most?


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

