-- `invoices_line_item_count.sql`: Provide a query that shows all Invoices but includes the # of invoice line items.

SELECT
i.*,
COUNT(*) as 'Line Items'
FROM Invoice i 
INNER JOIN InvoiceLine il 
GROUP BY il.InvoiceId