CREATE TABLE employee
(
    name       VARCHAR,
    department INTEGER,
    salary     NUMERIC
);

INSERT INTO employee(name, department, salary)
VALUES ('Ivan', 1, 10000);
INSERT INTO employee(name, department, salary)
VALUES ('Petr', 2, 10000);
INSERT INTO employee(name, department, salary)
VALUES ('Semen', 3, 10000);
INSERT INTO employee(name, department, salary)
VALUES ('Denis', 1, 20000);
INSERT INTO employee(name, department, salary)
VALUES ('Kiril', 2, 20000);
INSERT INTO employee(name, department, salary)
VALUES ('Anna', 1, 30000);

--Есть таблица employee с колонками name, department, salary.
--Вывести максимальную и среднюю зарплату (salary) по каждому отделу, имеющему больше одного сотрудника.

SELECT department, max(salary) as max_salary, avg(salary) as avg_salary
FROM employee
GROUP BY department
HAVING count(name) > 1
ORDER BY department;