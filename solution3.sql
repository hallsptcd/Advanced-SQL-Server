SELECT c.name AS "Name", COUNT(t.id) AS "Number of Transactions" FROM customer_tr c LEFT JOIN transactions t ON c.id = t.customerID
GROUP BY c.name;