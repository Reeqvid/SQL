-- Таблица employees
--Создать таблицу employees
-- id. serial,  primary key,
-- employee_name. Varchar(50), not null
--Наполнить таблицу employee 70 строками.

create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);
-- Наполняю таблицу через python

select * from employees;
-----------------------------------------------------------

-- Создать таблицу Salary
-- id serial primary key,
-- monthly_salary varchar(50) not null
create table salary (
	id serial primary key,
	monthly_salary varchar(50) not null
)

select * from salary;
---наполнить таблицу 20 строками 1000 = 1000 + 100
insert into salary (monthly_salary)
values (1000),
		(1100),
		(1200),
		(1300),
		(1400),
		(1500),
		(1600),
		(1700),
		(1800),
		(1900),
		(2000),
		(2100),
		(2200),
		(2300),
		(2400),
		(2500),
		(2600),
		(2700),
		(2800),
		(2900);

----------------------------------------------------------
	
--Создать таблицу employee_salary
-- id. Serial  primary key,
-- employee_id. Int, not null, unique
-- salary_id. Int, not null
--Наполнить таблицу employee_salary 40 строками:
-- в 10 строк из 40 вставить несуществующие employee_id
-- Наполнение таблицы делал через Python
create table employee_salary (
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
)

select * from employee_salary;
------------------------------------------------------------

--Создать таблицу roles
-- id. Serial  primary key,
-- role_name. int, not null, unique
--Поменять тип столба role_name с int на varchar(30)
--Наполнить таблицу roles 20 строками:

create table roles (
	id serial primary key,
	rol_name int unique not null
)

ALTER TABLE roles ALTER COLUMN rol_name type VARCHAR(30);

select * from roles

insert into roles (rol_name)
values ('Middle Python developer'),('Senior Python developer'),
('Junior Java developer'),('Middle Java developer'),('Senior Java developer'),('Junior Javascript developer'),
('Middle Javascript developer'),('Senior Javascript developer'),('Junior Manual QA Engineer'),
('Middle Manual QA Engineer'),('Senior Manual QA Engineer'),('Project Manager'),
('Designer'),('HR'),('CEO'),('Sales manager'),
('Junior Automation QA Engineer'),('Middle Automation QA Engineer'),
('Senior Automation QA Engineer')

-------------------------------------------------------------------

--Создать таблицу roles_employee
-- id. Serial  primary key,
-- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
-- Наполнить таблицу roles_employee 40 строками
-- Наполнение делал через Python
create table roles_employee (
	id serial primary key,
	employees_id int not null unique,
	role_id int not null,
	foreign key (employees_id)
		references employees(id),
	foreign key (role_id) 
		references roles(id)
)

select * from roles_employee;

----------------------------------------------------------------------

