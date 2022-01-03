select * from employees order by id;
select * from roles_employee; 
select * from roles;
select * from salary;
select * from employee_salary order by id;

-- 1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.

select employee_name, monthly_salary
from employee_salary 
join employees on employee_salary.employee_id = employees.id 
join salary on employee_salary.salary_id = salary.id 

-- 2. Вывести всех работников у которых ЗП меньше 2000.

select employee_name, monthly_salary
from employee_salary 
join employees on employee_salary.employee_id = employees.id 
join salary on employee_salary.salary_id = salary.id
where monthly_salary < '2000' order by monthly_salary

-- 3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

select employee_name, monthly_salary
from employee_salary 
full outer join employees on employee_salary.employee_id = employees.id 
full outer join salary on employee_salary.salary_id = salary.id
where employee_salary.employee_id > '70'

-- 4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

select employee_name, monthly_salary
from employee_salary 
full outer join employees on employee_salary.employee_id = employees.id 
full outer join salary on employee_salary.salary_id = salary.id
where employee_salary.employee_id > '70' and salary.monthly_salary < '2000'

-- 5. Найти всех работников кому не начислена ЗП.

select *
from employees
full join employee_salary on employees.id = employee_salary.employee_id
where employees.id > '30' order by employees.id 



-- 6. Вывести всех работников с названиями их должности.

select employee_name, rol_name
from roles_employee 
join employees on roles_employee.employees_id = employees.id
join roles on roles_employee.role_id = roles.id

-- 7. Вывести имена и должность только Java разработчиков.

select employee_name, rol_name
from roles_employee 
join employees on roles_employee.employees_id = employees.id
join roles on roles_employee.role_id = roles.id
where rol_name like '%Java %'

-- 8. Вывести имена и должность только Python разработчиков.

select employee_name, rol_name
from roles_employee 
join employees on roles_employee.employees_id = employees.id
join roles on roles_employee.role_id = roles.id
where rol_name like '% Python %'

-- 9. Вывести имена и должность всех QA инженеров.

select employee_name, rol_name
from roles_employee 
join employees on roles_employee.employees_id = employees.id
join roles on roles_employee.role_id = roles.id
where rol_name like '% QA %'

-- 10. Вывести имена и должность ручных QA инженеров.

select employee_name, rol_name
from roles_employee 
join employees on roles_employee.employees_id = employees.id
join roles on roles_employee.role_id = roles.id
where rol_name like '% Manual QA %'

-- 11. Вывести имена и должность автоматизаторов QA

select employee_name, rol_name
from roles_employee 
join employees on roles_employee.employees_id = employees.id
join roles on roles_employee.role_id = roles.id
where rol_name like '% Automation %'

-- 12. Вывести имена и зарплаты Junior специалистов

select employee_name, monthly_salary
from employees
join roles_employee on employees.id = roles_employee.employees_id 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
join roles on roles_employee.role_id = roles.id 
where rol_name like '%Junior%'

-- 13. Вывести имена и зарплаты Middle специалистов

select employee_name, monthly_salary, rol_name
from employees
join roles_employee on employees.id = roles_employee.employees_id 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
join roles on roles_employee.role_id = roles.id 
where rol_name like '%Middle%'

-- 14. Вывести имена и зарплаты Senior специалистов

select employee_name, monthly_salary
from employees
join roles_employee on employees.id = roles_employee.employees_id 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
join roles on roles_employee.role_id = roles.id 
where rol_name like '%Senior%'

-- 15. Вывести зарплаты Java разработчиков

select monthly_salary, rol_name
from employees
join roles_employee on employees.id = roles_employee.employees_id 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
join roles on roles_employee.role_id = roles.id 
where rol_name like '% Java %'

-- 16. Вывести зарплаты Python разработчиков

select monthly_salary
from employees
join roles_employee on employees.id = roles_employee.employees_id 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
join roles on roles_employee.role_id = roles.id 
where rol_name like '% Python %'

-- 17. Вывести имена и зарплаты Junior Python разработчиков

select employee_name, monthly_salary
from employees
join roles_employee on employees.id = roles_employee.employees_id 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
join roles on roles_employee.role_id = roles.id 
where rol_name like '%Junior Python %'

-- 18. Вывести имена и зарплаты Middle JS разработчиков

select employee_name , monthly_salary
from employees
join roles_employee on employees.id = roles_employee.employees_id 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
join roles on roles_employee.role_id = roles.id 
where rol_name like '%Middle Javascript %'

-- 19. Вывести имена и зарплаты Senior Java разработчиков

select *
from employees
join roles_employee on employees.id = roles_employee.employees_id 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
join roles on roles_employee.role_id = roles.id 
where rol_name like '%Senior Java%'


-- 20. Вывести зарплаты Junior QA инженеров

select monthly_salary
from employees
join roles_employee on employees.id = roles_employee.employees_id 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
join roles on roles_employee.role_id = roles.id 
where rol_name like '%Junior % QA %'

-- 21. Вывести среднюю зарплату всех Junior специалистов

select AVG(monthly_salary)
from employees
join roles_employee on employees.id = roles_employee.employees_id 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
join roles on roles_employee.role_id = roles.id 
where rol_name like 'Junior%'

-- 22. Вывести сумму зарплат JS разработчиков

select SUM(monthly_salary)
from employees
join roles_employee on employees.id = roles_employee.employees_id 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
join roles on roles_employee.role_id = roles.id 
where rol_name like '%Javascript%'

-- 23. Вывести минимальную ЗП QA инженеров

select min(monthly_salary)
from employees
join roles_employee on employees.id = roles_employee.employees_id 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
join roles on roles_employee.role_id = roles.id 
where rol_name like '% QA Engineer'

-- 24. Вывести максимальную ЗП QA инженеров

select max(monthly_salary)
from employees
join roles_employee on employees.id = roles_employee.employees_id 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
join roles on roles_employee.role_id = roles.id 
where rol_name like '% QA Engineer'

-- 25. Вывести количество QA инженеров

select count(roles.rol_name)
from employees
join roles_employee on employees.id = roles_employee.employees_id 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
join roles on roles_employee.role_id = roles.id 
where rol_name like '% QA Engineer'

-- 26. Вывести количество Middle специалистов.

select count(rol_name)
from employees
join roles_employee on employees.id = roles_employee.employees_id 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
join roles on roles_employee.role_id = roles.id 
where rol_name like 'Middle %'

-- 27. Вывести количество разработчиков

select count(rol_name)
from employees
join roles_employee on employees.id = roles_employee.employees_id 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
join roles on roles_employee.role_id = roles.id 
where rol_name like '%developer'

-- 28. Вывести фонд (сумму) зарплаты разработчиков.

select sum(monthly_salary)
from employees
join roles_employee on employees.id = roles_employee.employees_id 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
join roles on roles_employee.role_id = roles.id 
where rol_name like '%developer'

-- 29. Вывести имена, должности и ЗП всех специалистов по возрастанию

select employee_name, rol_name, monthly_salary
from employees
join roles_employee on employees.id = roles_employee.employees_id 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
join roles on roles_employee.role_id = roles.id 
order by monthly_salary

-- 30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300

select employee_name, rol_name, monthly_salary
from employees
join roles_employee on employees.id = roles_employee.employees_id 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
join roles on roles_employee.role_id = roles.id 
where monthly_salary between '1700' and '2300' order by monthly_salary

-- 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300

select employee_name, rol_name, monthly_salary
from employees
join roles_employee on employees.id = roles_employee.employees_id 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
join roles on roles_employee.role_id = roles.id 
where monthly_salary < '2300' order by monthly_salary

-- 32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000

select employee_name, rol_name, monthly_salary
from employees
join roles_employee on employees.id = roles_employee.employees_id 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
join roles on roles_employee.role_id = roles.id 
where monthly_salary in ('1100','1500', '2000') order by monthly_salary


