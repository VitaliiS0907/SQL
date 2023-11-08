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