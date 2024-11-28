SELECT 
    transaction_day AS day,
    CASE 
        WHEN avg_sale > sales THEN 'below avg'
        WHEN avg_sale < sales THEN 'above avg'
        ELSE 'average'
    END AS sales_type,
    CONCAT(ROUND(sales, 1), 'k') AS sales
FROM (
    SELECT 
        transaction_day,
        sales,
        ROUND(AVG(sales) OVER (), 1) AS avg_sale  -- Use window function for avg_sale
    FROM (
        SELECT 
            DAY(transaction_date) AS transaction_day,
            SUM(transaction_qty * unit_price) / 1000 AS sales
        FROM css
        WHERE MONTH(transaction_date) = 5
        GROUP BY DAY(transaction_date)
    ) AS daily_sales
) AS avg_sales;
