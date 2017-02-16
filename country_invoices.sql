-- `country_invoices.sql`: Provide a query that shows the # of invoices per country. HINT: [GROUP BY](http://www.sqlite.org/

SELECT
BillingCountry as 'Country',
COUNT(*) as 'Country Count'
FROM Invoice
GROUP BY BillingCountry

