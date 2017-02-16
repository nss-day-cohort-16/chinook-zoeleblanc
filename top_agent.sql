-- `top_agent.sql`: Which sales agent made the most in sales over all?

SELECT full_name as 'Full Name',
MAX(sales_total) as 'Sales Total' 
FROM (
SELECT
e.FirstName || ' ' || e.LastName AS full_name,
SUM(i.Total) as sales_total
FROM Invoice i
INNER JOIN Customer c
ON i.CustomerId = c.CustomerId
INNER JOIN Employee e
ON c.SupportRepId = e.EmployeeId
AND e.Title = 'Sales Support Agent' 
GROUP BY e.EmployeeId
)