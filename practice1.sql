# 1.创建数据库employee_db
CREATE DATABASE IF NOT EXISTS `employee_db`;

# 2.在数据库employee_db中创建table：`Employee`
use employee_db;
CREATE TABLE Employee(
    Emp_id INT PRIMARY KEY;
    Emp_name VARCHAR(20) NOT NULL;
    Emp_age INT NOT NULL;
    Emp_gender VARCHAR(10);
    Emp_compId INT NOT NULL;
    Emp_salary INT NOT NULL;
)

# 3.将`employee-data.csv`文件中的数据导入数据表Employee中
LOAD DATA LOCAL INFILE 'C:\Users\Administrator\Desktop\Markdown\MySQL\MySQL-Quiz-2019-3-14-7-49-4-960-master\employee-data.csv'
INTO TABLE Employee FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' (Emp_id, Emp_name, Emp_age, Emp_gender, Emp_compId, Emp_salary);

# 4.在数据库employee_db中创建table：`Company`
CREATE TABLE Company(
    Comp_id INT PRIMARY KEY;
    Comp_name VARCHAR(30) NOT NULL;
    Comp_EmpNum INT NOT NULL;
)

# 5.将`company-data.csv`文件中的数据导入Company数据表中
LOAD DATA LOCAL INFILE 'C:\Users\Administrator\Desktop\Markdown\MySQL\MySQL-Quiz-2019-3-14-7-49-4-960-master\company-data.csv'

# 6.找出Employee表中姓名包含`n`字符并且薪资大于6000的雇员所有个人信息
SELECT * FROM Employee
WHERE Emp_name LIKE '%n%' AND Emp_salary>6000;

# ps:本练习中只需要将6的结果复制到`result.txt`文件中