-- `total_invoices_{year}.sql`: How many Invoices were there in 2009 and 2011? 

SELECT
* FROM(
    (SELECT
    COUNT(*) as 'Invoice 2009'
    From Invoice
    WHERE InvoiceDate BETWEEN "2009-01-01 00:00:00" AND "2010-01-01 00:00:00"
    ) ,
    (SELECT
    COUNT(*) as 'Invoice 2011'
    From Invoice
    WHERE InvoiceDate BETWEEN "2011-01-01 00:00:00" AND "2012-01-01 00:00:00"
    ) 
)