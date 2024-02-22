1.
    SELECT department_name from departments
    ORDER BY department_name ASC;

2.
    SELECT DISTINCT salary FROM employees
    ORDER BY salary DESC;

3.
    SELECT j.job_title, max_salary, min_salary FROM jobs j
    JOIN employees e ON j.job_id = e.job_id
    ORDER BY max_salary DESC,min_salary DESC ;

4.
    SELECT country_name, region_name FROM countries c
    JOIN regions r ON c.region_id = r.region_id
    ORDER BY region_name, country_name;

5.
    SELECT first_name, last_name, salary, department_name
    FROM employees e JOIN departments d ON e.department_id = d.department_id
    WHERE salary BETWEEN 9000 AND 17000

6.
    SELECT count(country_name) as paises, region_name FROM countries c
    JOIN regions r ON c.region_id = r.region_id
    GROUP BY region_name
    ORDER BY region_name, paises

