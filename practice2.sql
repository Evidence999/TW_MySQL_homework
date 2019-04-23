# 取得每个company中最高薪水的人员名字
# 输出结果包含公司名称和人员名称：companyName name

SELECT Company.Comp_name AS companyName,
       Employee.Emp_name AS name
FROM Employee LEFT JOIN Company
ON Employee.Emp_compId = Company.Comp_id
WHERE (Employee.Emp_compId, Employee.Emp_salary) IN (
    SELECT Emp_compId, MAX(Emp_salary)
    FROM Employee
    GROUP BY Emp_compId
);

