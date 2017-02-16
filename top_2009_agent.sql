-- `top_2009_agent.sql`: Which sales agent made the most in sales in 2009?

--     > **Hint:** Use the [MAX](https://www.sqlite.org/lang_aggfunc.html#maxggunc) function on a [subquery](http://beginner-sql-tutorial.com/sql-subquery.htm).
SELECT full_name as 'Full Name',
MAX(sales_total) as 'Sales Total' 
FROM (
SELECT
e.FirstName || ' ' || e.LastName AS full_name,
SUM(i.Total) as sales_total
FROM Invoice i
INNER JOIN Customer c
ON i.CustomerId = c.CustomerId
AND i.InvoiceDate BETWEEN "2009-01-01 00:00:00" AND "2010-01-01 00:00:00"
INNER JOIN Employee e
ON c.SupportRepId = e.EmployeeId
AND e.Title = 'Sales Support Agent' 
GROUP BY e.EmployeeId
)

