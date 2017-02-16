-- `sales_agent_total_sales.sql`: Provide a query that shows total sales made by each sales agent.

SELECT 
e.FirstName || ' ' || e.LastName AS 'Full Name' ,
SUM(i.Total) as 'Total Sales'
FROM Employee e 
INNER JOIN Customer c 
ON e.EmployeeId = c.SupportRepId
AND e.Title = 'Sales Support Agent'
INNER JOIN Invoice i 
ON c.CustomerId = i.CustomerId
GROUP BY e.EmployeeId