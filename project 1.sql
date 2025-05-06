-- Query 1
SELECT
  ProductCategory,
  SUM(TotalAmount) AS TotalSales,
  SUM(EstimatedProfit) AS TotalProfit,
  ROUND(SUM(EstimatedProfit) * 100.0 / SUM(TotalAmount), 2) AS ProfitMargin
FROM retail_data
GROUP BY ProductCategory
ORDER BY ProfitMargin ASC;


-- Query 2
SELECT
  strftime('%Y-%m', TransactionDate) AS Month,
  ProductCategory,
  SUM(TotalAmount) AS MonthlySales
FROM retail_data
GROUP BY Month, ProductCategory
ORDER BY Month;


