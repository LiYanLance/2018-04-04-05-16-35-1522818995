# 1.创建数据库employee_db

# 2.在数据库employee_db中创建table：`Employee`

# 3.将`employee-data.csv`文件中的数据导入数据表Employee中

# 4.在数据库employee_db中创建table：`Company`

# 5.将`company-data.csv`文件中的数据导入Company数据表中

# 6.找出Employee表中姓名包含`n`字符并且薪资大于6000的雇员所有个人信息

# ps:本练习中只需要将6的结果复制到`result.txt`文件中


create table Employee (id int, name varchar(20), age int, gender varchar(6), companyId int, salary decimal(10,2));

create table Company (id int, companyName varchar(20), employeesNumber int);

load data infile 'C:/Program Files/MySQL/mysql-files/employee-data.csv'
into table Employee
fields terminated by ','  optionally enclosed by '\'' escaped by '"'
lines terminated by '\r\n';

# 如果有权限问题：https://stackoverflow.com/questions/31951468/error-code-1290-the-mysql-server-is-running-with-the-secure-file-priv-option

load data infile 'C:/Program Files/MySQL/mysql-files/company-data.csv'
into table Company
fields terminated by ','  optionally enclosed by '\'' escaped by '"'
lines terminated by '\r\n';

select * from employee where name like "%n%" and salary > 6000;
