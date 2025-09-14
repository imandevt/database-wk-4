1. 
use salesdb;
select * from payments;
select paymentDate, amount from payments
order by
 paymentDate desc;

 2. 
 select customerName, country,
avg(creditLimit) as average_credit_limit
from customers
GROUP BY 
    customerName, 
    country
    
3. 
use salesdb;
select productCode, quantityOrdered,
sum(priceEach) as total_price
from orderdetails
GROUP BY 
    productCode, 
    quantityOrdered

4.
SELECT 
    checkNumber, 
    MAX(amount) AS highest_amount
FROM 
    payments
GROUP BY 
    checkNumber
