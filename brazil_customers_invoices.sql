-- `brazil_customers_invoices.sql`: Provide a query showing the Invoices of customers who are from Brazil. The resultant table should show the customers full name, Invoice ID, Date of the invoice and billing country.

SELECT 
c.FirstName || ' ' || c.LastName AS FullName,
i.InvoiceId, 
i.InvoiceDate,
i.BillingCountry
FROM Invoice i
INNER JOIN Customer c
ON i.customerId = c.customerId
AND c.Country = 'Brazil'
