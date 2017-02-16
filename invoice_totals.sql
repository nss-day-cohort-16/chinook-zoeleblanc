-- `invoice_totals.sql`: Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.

SELECT
i.Total,
c.FirstName || ' ' || c.LastName AS 'Customer Full Name',
c.Country,
e.FirstName || ' ' || e.LastName AS 'Sales Agent Full Name'
FROM Invoice i
INNER JOIN Customer c
ON i.CustomerId = c.CustomerId
INNER JOIN Employee e
ON c.SupportRepId = e.EmployeeId
AND e.Title = 'Sales Support Agent'
