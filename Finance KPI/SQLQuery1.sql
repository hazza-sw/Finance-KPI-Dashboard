

SELECT b.Region, SUM(s.total_revenue) AS TotalRevenue
FROM services_data s
JOIN branch_data b ON s.branch_id = b.Branch_ID
GROUP BY b.Region
ORDER BY TotalRevenue DESC;


SELECT department, SUM(total_revenue) AS TotalRevenue
FROM services_data
GROUP BY department
ORDER BY TotalRevenue DESC;


SELECT TOP 5 
    client_name,
    SUM(total_revenue) AS TotalRevenue,
    service_date
FROM 
    dbo.services_data
GROUP BY 
    client_name, service_date
ORDER BY 
    TotalRevenue DESC;









SELECT SUM(total_revenue) AS TotalRevenue
FROM services_data;


SELECT SUM(hours) AS TotalHours
FROM services_data;


SELECT 
    department, 
    SUM(total_revenue) AS DepartmentRevenue, 
    (SUM(total_revenue) / (SELECT SUM(total_revenue) FROM services_data)) * 100 AS RevenuePercentage
FROM 
    services_data
GROUP BY 
    department;



WITH MonthlyRevenue AS (
    SELECT 
        FORMAT(service_date, 'yyyy-MM') AS Month,
        SUM(total_revenue) AS Revenue
    FROM 
        services_data
    GROUP BY 
        FORMAT(service_date, 'yyyy-MM')
),
RevenueComparison AS (
    SELECT 
        Month,
        Revenue,
        LAG(Revenue) OVER (ORDER BY Month) AS PreviousMonthRevenue
    FROM 
        MonthlyRevenue
)
SELECT 
    Month,
    Revenue,
    PreviousMonthRevenue,
    CASE 
        WHEN PreviousMonthRevenue > 0 THEN ((Revenue - PreviousMonthRevenue) / PreviousMonthRevenue) * 100 
        ELSE NULL 
    END AS RevenuePercentageIncrease
FROM 
    RevenueComparison
WHERE 
    PreviousMonthRevenue IS NOT NULL;
