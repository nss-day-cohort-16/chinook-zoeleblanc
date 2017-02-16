-- `sales_agent_customer_count.sql`: Provide a query that shows the count of customers assigned to each sales agent.

SELECT
e.FirstName || ' ' || e.LastName AS 'Full Name' ,
Count(c.CustomerId) as 'Customer Count'
FROM Customer c 
INNER JOIN Employee e
ON c.SupportRepId = e.EmployeeId
AND e.Title = 'Sales Support Agent'
GROUP BY e.EmployeeId
