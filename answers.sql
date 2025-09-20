-- ===============================================
-- SQL Joins and Relationships Assignment
-- ===============================================

-- Question 1: INNER JOIN

SELECT
    e.firstName,
    e.lastName,
    e.email,
    e.officeCode
FROM
    employees AS e
INNER JOIN
    offices AS o ON e.officeCode = o.officeCode;


-- Question 2: LEFT JOIN


SELECT
    p.productName,
    p.productVendor,
    p.productLine
FROM
    products AS p
LEFT JOIN
    productlines AS pl ON p.productLine = pl.productLine;


-- Question 3: RIGHT JOIN


SELECT
    o.orderDate,
    o.shippedDate,
    o.status,
    c.customerNumber
FROM
    customers AS c
RIGHT JOIN
    orders AS o ON c.customerNumber = o.customerNumber
LIMIT 10;
