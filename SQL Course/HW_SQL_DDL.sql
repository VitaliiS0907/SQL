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