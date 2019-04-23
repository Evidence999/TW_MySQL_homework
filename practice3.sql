#取得平均薪水最高的公司
#输出公司名称和平均薪水：companyName avgSalary

SELECT compName, Avg_salary AS avgSalary
FROM (
    SELECT AVG(Emp_salary) AS Avg_salary,
           Comp_name AS compName
    FROM Employee LEFT JOIN Company
    ON Employee.Emp_compId = Company.Comp_id
    GROUP BY Emp_compId)
ORDER BY Avg_salary DESC LIMIT 1;

