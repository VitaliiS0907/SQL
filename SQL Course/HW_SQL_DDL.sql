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
create table employee_salary(
    id serial  primary key,
    employee_id int unique not null,
    salary_id int not null
);
    
-- 6. Наполнить таблицу employee_salary 40 строками (в 10 строк из 40 вставить несуществующие employee_id):
insert into employee_salary(employee_id, salary_id)
values (1, 1),
    (2, 1),
    (3, 1),
    (4, 2),
    (5, 2),
    (6, 2),
    (7, 3),
    (8, 3),
    (9, 3),
    (10, 4),
    (11, 4),
    (12, 4),
    (13, 5),
    (14, 5),
    (15, 5),
    (16, 6),
    (17, 7),
    (18, 6),
    (19, 7),
    (20, 6),
    (21, 7),
    (71, 8),
    (22, 8),
    (72, 8),
    (23, 9),
    (73, 9),
    (24, 9),
    (74, 10),
    (25, 11),
    (75, 12),
    (26, 13),
    (76, 14),
    (27, 15),
    (81, 1),
    (28, 2),
    (82, 4),
    (29, 7),
    (83, 16),
    (30, 9),
    (84, 11);

-- 7. Создать таблицу roles (id. Serial  primary key) + (role_name. int, not null, unique):
create table roles(
	id serial  primary key,
	role_name int unique not null
);

-- 8. Поменять тип столба role_name с int на varchar(30):
alter table roles
alter column role_name type varchar(30);

-- 9. Наполнить таблицу roles 20 строками:
insert into roles(role_name)
values ('Junior Python developer'),
    ('Middle Python developer'),
    ('Senior Python developer'),
    ('Junior Java developer'),
    ('Middle Java developer'),
    ('Senior Java developer'),
    ('Junior JavaScript developer'),
    ('Middle JavaScript developer'),
    ('Senior JavaScript developer'),
    ('Junior Manual QA engineer'),
    ('Middle Manual QA engineer'),
    ('Senior Manual QA engineer'),
    ('Project Manager'),
    ('Designer'),
    ('HR'),
    ('CEO'),
    ('Sales manager'),
    ('Junior Automation QA engineer'),
    ('Middle Automation QA engineer'),
    ('Senior Automation QA engineer');

-- 10. Создать таблицу roles_employee (id. Serial  primary key) + (employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)) + (role_id. Int, not null (внешний ключ для таблицы roles, поле id))
create table roles_employee(
    id serial  primary key,
    employee_id int unique not null,
    role_id int not null,
    foreign key (employee_id) references employees(id),
    foreign key (role_id) references roles(id)
);

-- 11. Наполнить таблицу roles_employee 40 строками:
insert into roles_employee(employee_id, role_id)
values (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7),
    (8, 8),
    (9, 9),
    (10, 10),
    (11, 11),
    (12, 12),
    (13, 13),
    (14, 14),
    (15, 15),
    (16, 1),
    (17, 2),
    (18, 3),
    (19, 4),
    (20, 5),
    (21, 16),
    (22, 17),
    (23, 18),
	(24, 19),
	(25, 20),
    (26, 6),
	(27, 7),
	(28, 8),
    (29, 9),
	(30, 10),
	(31, 11),
    (32, 12),
	(33, 13),
	(34, 14),
    (35, 15),
	(36, 16),
	(37, 17),

