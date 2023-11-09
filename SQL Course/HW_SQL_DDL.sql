-- Таблица employees
-- 1. Создать таблицу employees (id. serial,  primary key) + (employee_name. Varchar(50), not null)
create table employees(
	id serial  primary key,
	employee_name varchar(50) not null
);

-- 2. Наполнить таблицу employee 70 строками.
insert into employees(employee_name)
values ('John Smith'),
    ('Jane Doe'),
    ('Michael Johnson'),
    ('Emily Davis'),
    ('William Brown'),
    ('Olivia Wilson'),
    ('James Lee'),
    ('Emma Taylor'),
    ('Benjamin Harris'),
    ('Sophia Martinez'),
    ('Alexander Jones'),
    ('Ava Anderson'),
    ('Daniel Clark'),
    ('Mia Rodriguez'),
    ('Ethan White'),
    ('Isabella Hall'),
    ('William Turner'),
    ('Abigail Baker'),
    ('Joseph Scott'),
    ('Grace Moore'),
    ('Samuel Allen'),
    ('Sofia Green'),
    ('Matthew Adams'),
    ('Ella Walker'),
    ('Daniel Hernandez'),
    ('Chloe Hill'),
    ('Alexander Martin'),
    ('Liam King'),
    ('Avery Campbell'),
    ('David Nelson'),
    ('Scarlett Wright'),
    ('Benjamin Evans'),
    ('Madison Brooks'),
    ('Mason Hall'),
    ('Lily Rivera'),
    ('Elijah Long'),
    ('Layla Collins'),
    ('Logan Stewart'),
    ('Harper Murphy'),
    ('Logan Morgan'),
    ('Aria Lewis'),
    ('James Lewis'),
    ('Mila Hughes'),
    ('Jackson Scott'),
    ('Victoria Price'),
    ('Les Moran'),
    ('Luna Howard'),
    ('Ethan Ross'),
    ('Ava Jenkins');

-- 3. Создать таблицу salary (id. Serial  primary key) + (monthly_salary. Int, not null)
create table salary(
	id serial  primary key,
	monthly_salary int not null
);

-- 4. Наполнить таблицу salary 15 строками.
insert into salary(monthly_salary)
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
    (2500);

-- 5. Создать таблицу employee_salary (id. Serial  primary key) + (employee_id. Int, not null, unique) + (salary_id. Int, not null)
insert into employee_salary(employee_id, salary_id)

