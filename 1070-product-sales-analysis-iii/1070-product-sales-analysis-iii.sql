# Write your MySQL query statement below

SELECT 
    S.product_id,
    first_year,
    quantity,
    price
    FROM Sales S
    INNER JOIN 
    (
        SELECT 
            product_id,
            MIN(year) AS first_year
        FROM Sales
        GROUP BY product_id 
    ) B
    ON S.product_id = B.product_id
    AND S.year = B.first_year