-- 1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select employees.employee_name, salary.monthly_salary from employee_salary
join employees
on employee_salary.employee_id = employees.id
join salary
on employee_salary.salary_id = salary.id;

-- 2. Вывести всех работников, у которых зарплата меньше 2000.
select employees.employee_name, salary.monthly_salary from employee_salary
join employees
on employee_salary.employee_id = employees.id
join salary
on employee_salary.salary_id = salary.id
where salary.monthly_salary < 2000;

-- 3. Вывести все зарплатные позиции, но работник по ним не назначен (зарплата есть, но не понятно кто её получает)
select monthly_salary from employee_salary
join employees
on employee_salary.employee_id = employees.id
join salary
on employee_salary.salary_id = salary.id;

-- 4. Вывести все зарплатные позиции меньше 2000, но работник по ним не назначен (зарплата есть, но не понятно кто её получает)
select monthly_salary from employee_salary
join employees
on employee_salary.employee_id = employees.id
join salary
on employee_salary.salary_id = salary.id
where salary.monthly_salary < 2000;

-- 5. Найти всех работников кому не начислена зарплата.
select employee_name from employees
left join employee_salary
on employees.id = employee_salary.employee_id
where employee_salary.salary_id is null;

-- 6. Вывести всех работников с названиями их должности.
select employee_name, role_name from roles_employee
join employees
on roles_employee.employee_id = employees.id
join roles
on roles_employee.role_id = roles.id;

-- 7. Вывести имена и должность только Java разработчиков.
select employee_name, role_name from roles_employee
join employees
on roles_employee.employee_id = employees.id 
join roles
on roles_employee.role_id = roles.id
where roles.role_name like '%Java developer%';

-- 8. Вывести имена и должность только Python разработчиков.
select employee_name, role_name from roles_employee
join employees
on roles_employee.employee_id = employees.id 
join roles
on roles_employee.role_id = roles.id
where roles.role_name like '%Python developer%';

-- 9. Вывести имена и должность всех QA инженеров.
select employee_name, role_name from roles_employee
join employees
on roles_employee.employee_id = = employees.id 
join roles
on roles_employee.role_id = roles.id
where roles.role_name like '%QA%';

-- 10. Вывести имена и должность ручных QA инженеров.
select employee_name, role_name from roles_employee
join employees
on roles_employee.employee_id = employees.id 
join roles
on roles_employee.role_id = roles.id
where roles.role_name '%Manual QA%';

-- 11. Вывести имена и должность автоматизаторов QA.
select employee_name, role_name from roles_employee
join employees
on roles_employee.employee_id = employees.id 
join roles
on roles_employee.role_id = roles.id
where roles.role_name like '%Auto% QA%';

-- 12. Вывести имена и зарплаты Junior специалистов.
select employee_name, salary.monthly_salary, roles.role_name from employees
join employee_salary  
on employees.id = employee_salary.employee_id 
join salary 
on salary.id = employee_salary.salary_id
join roles_employee 
on employees.id = roles_employee.employee_id
join roles 
on roles.id = roles_employee.role_id
where roles.role_name like '%Junior%';

-- 13. Вывести имена и зарплаты Middle специалистов.
select employee_name, salary.monthly_salary, roles.role_name from employees
join employee_salary 
on employees.id = employee_salary.employee_id 
join salary 
on salary.id = employee_salary.salary_id
join roles_employee 
on employees.id = roles_employee.employee_id
join roles 
on roles.id = roles_employee.role_id
where roles.role_name like '%Middle%';

-- 14. Вывести имена и зарплаты Senior специалистов.
select employee_name, salary.monthly_salary, roles.role_name from employees
join employee_salary 
on employees.id = employee_salary.employee_id  
join salary 
on salary.id = employee_salary.salary_id
join roles_employee 
on employees.id = roles_employee.employee_id
join roles 
on roles.id = roles_employee.role_id
where roles.role_name like '%Senior%';

-- 15. Вывести зарплаты Java разработчиков.
select salary.monthly_salary, roles.role_name from salary
join employee_salary 
on salary.id = employee_salary.salary_id
join roles_employee 
on roles_employee.employee_id = employee_salary.employee_id
join roles 
on roles.id = roles_employee.role_id
where roles.role_name like '%Java developer%';

-- 16. Вывести зарплаты Python разработчиков.
select salary.monthly_salary, roles.role_name from salary
join employee_salary 
on salary.id = employee_salary.salary_id 
join roles_employee 
on roles_employee.employee_id = employee_salary.employee_id
join roles 
on roles.id = roles_employee.role_id
where roles.role_name like '%Python developer%';

-- 17. Вывести имена и зарплаты Junior Python разработчиков.
select employee_name, salary.monthly_salary, roles.role_name from employees
join employee_salary 
on employees.id = employee_salary.employee_id 
join salary 
on salary.id = employee_salary.salary_id
join roles_employee 
on employees.id = roles_employee.employee_id
join roles 
on roles.id = roles_employee.role_id
where roles.role_name like '%Junior Python developer%';

-- 18. Вывести имена и зарплаты Middle JS разработчиков.
select employee_name, salary.monthly_salary, roles.role_name from employees
join employee_salary 
on employees.id = employee_salary.employee_id
join salary 
on salary.id = employee_salary.salary_id
join roles_employee 
on employees.id = roles_employee.employee_id

-- 19. Вывести имена и зарплаты Senior Java разработчиков.
select employee_name, salary.monthly_salary, roles.role_name from employees
join employee_salary 
on employees.id = employee_salary.employee_id
join salary 
on salary.id = employee_salary.salary_id
join roles_employee 
on employees.id = roles_employee.employee_id
join roles 
on roles.id = roles_employee.role_id
where roles.role_name like '%Senior Java developer%';

-- 20. Вывести зарплаты Junior QA инженеров.
select salary.monthly_salary, roles.role_name from salary
full outer join employee_salary 
on salary.id = employee_salary.salary_id
full outer join roles_employee 
on roles_employee.employee_id = employee_salary.employee_id
full outer join roles
on roles.id = roles_employee.role_id
where roles.role_name like '%Junior% QA%';

-- 21. Вывести среднюю зарплату всех Junior специалистов.
select avg(salary.monthly_salary) from salary
join employee_salary 
on salary.id = employee_salary.salary_id
join roles_employee 
on roles_employee.employee_id = employee_salary.employee_id
join roles 
on roles.id = roles_employee.role_id
where roles.role_name like '%Junior%';

-- 22. Вывести сумму зарплат JS разработчиков.
-- 23. Вывести минимальную зарплату QA инженеров.
-- 24. Вывести максимальную зарплату QA инженеров.
-- 25. Вывести количество QA инженеров.
-- 26. Вывести количество Middle специалистов.
-- 27. Вывести количество разработчиков.
-- 28. Вывести фонд (сумму) зарплаты разработчиков.
-- 29. Вывести имена, должности и зарплату всех специалистов по возрастанию.
-- 30. Вывести имена, должности и зарплату всех специалистов по возрастанию специалистов, у которых зарплата от 1700 до 2300.
-- 31. Вывести имена, должности и зарплату всех специалистов по возрастанию у специалистов, у которых зарплата меньше 2300.
-- 32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов, у которых зарплата равна 1100, 1500, 2000.

