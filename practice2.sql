# 取得每个company中最高薪水的人员名字
# 输出结果包含公司名称和人员名称：companyName name


SELECT companyName, emp.name
FROM company,(SELECT name,companyId,max(salary) from employee GROUP BY companyId) emp
WHERE emp.companyId = company.id;
