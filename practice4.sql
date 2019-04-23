# 找出薪水在公司的平均薪水之上的人员名字
# 输出标准中包含Employee中所有字段和该employee所在公司名称以及该公司平均薪资：
# id | name | age | gender | companyId | salary | companyName | avgsal

SELECT E.Emp_id AS id,
       E.Emp_name AS name,
       E.Emp_age AS age,
       E.Emp_gender AS gener,
       E.Emp_compId AS companyId,
       E.Emp_salary AS salary,
       C.Comp_name AS companyName,
       EC.Avg_salary AS avgsal
FROM Employee AS E
LEFT JOIN (
    SELECT Emp_compId AS companyId,
           AVG(Emp_salary) AS Avg_salary
    FROM Employee
    GROUP BY Emp_compId) AS EC
ON E.Emp_compId = EC.
LEFT JOIN Company AS C
ON E.Emp_compId = C.Comp_id
WHERE E.Emp_compId = EC.companyId AND E.Emp_salary > EC.Avg_salary;