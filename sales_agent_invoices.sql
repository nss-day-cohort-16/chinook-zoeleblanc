-- `sales_agent_invoices.sql`: Provide a query that shows the invoices associated with each sales agent. The resultant table should include the Sales Agents full name.

SELECT 
i.*,
e.FirstName || ' ' || e.LastName AS FullName
FROM Invoice i
INNER JOIN Customer c
ON i.CustomerId = c.CustomerId
INNER JOIN Employee e
ON c.SupportRepId = e.EmployeeId
AND e.Title = 'Sales Support Agent'
