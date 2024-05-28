
 --what are overall employees in the company
select count(EmployeeID) total_employee
from [Attrition data] ;

--what are the total number of attrition of the employee in the company
select count([Attrition]) total_attrition
from [Attrition data] 
where [Attrition]='Yes' 

alter table [Attrition data]
alter column [Age] int;

--What are the average age of the total employees
select Avg(Age) 
from [Attrition data]

--What are the total number of employess according to job roles
alter table[Attrition data]
alter column[EmployeeCount] int;
alter table[Attrition data]
alter column[JobLevel] int;
select sum([EmployeeCount]) employees,[JobRole]
from [Attrition data]
group by [JobRole]

-- what are the job satisfaction rating by job roles
select [JobRole],count([JobSatisfaction]),[JobSatisfaction]
from [Attrition data]
group by [JobSatisfaction],[JobRole]

--What are the attrition count by job role
select count([Attrition]) total_attrition , [JobRole]
from [Attrition data] 
where [Attrition]='Yes' 
group by [JobRole]
order by total_attrition desc

--What are the attrition count by education field
select count([Attrition]) total_attrition ,[EducationField]
from [Attrition data] 
where [Attrition]='Yes' 
group by [EducationField]
order by total_attrition desc


