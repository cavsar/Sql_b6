SELECT LENGTH('hello my name is name') AS length FROM dual;

SELECT LENGTH(first_name) as length from employees;


SELECT first_name, LENGTH(first_name) as length FROM employees
WHERE LENGTH(first_name) = 6;

SELECT SUBSTR('hello', 2) FROM employees;

SELECT SUBSTR('hello', 2, 2) FROM employees;

-- 'hello' 2  e  
-- 'hello' 2, 2  el
-- 'hello' 2, 3  ell

SELECT SUBSTR('hello', 2, 3) FROM employees;

SELECT SUBSTR('Hello my name is', 10) FROM dual;

SELECT SUBSTR('Hello my name is', 10, 5) FROM dual;

SELECT LENGTH(SUBSTR('Hello my name is', 10, 5)) FROM dual;

select instr(LOWER(city), 'a') from locations;

-- 5.  Write the query to get all last names that starting from index number 2 and add 4 more character from employees.

SELECT SUBSTR(last_name, 2, 4) FROM employees;

-- 6.  Write the query to get all last names that starting from index number 4 from employees .

SELECT SUBSTR(last_name, 4) FROM employees;

-- 7.  Write the query to find the city includes 'a' character in locations.

SELECT city FROM locations
WHERE INSTR(city, 'a') > 0;

-- 8.  Write the query to return first name and last name combined as lower case with the space and 
--     find the index number of 'k' from combined firstname and lastname from employees.

SELECT LOWER(first_name || ' ' || last_name) as "full_name", INSTR(LOWER(first_name || ' ' || last_name), 'k') as "index number" FROM employees;
-----HOMEWORK-----
1.	Write a query to display the first name, last name, and hire date of all employees who were hired between January 1, 2000, and December 31, 2000, and whose last name begins with the letter 'S'.
SELECT first_name ,last_name, hire_date from employees
where hire_date between '00-01-01' and '00-12-31'
AND last_name LIKE 'S%';
2.	Write a query to display the first name, last name, and job title of all employees who work in the Sales or Accounting departments.
SELECT first_name ,last_name,job_id from employees;

3.	Write a query to display the first name, last name, and salary of all employees who earn more than $10,000 and less than $20,000.
select first_name ,last_name, salary from employees
where salary between 10000 and 20000;

4.	Write a query to display the first name, last name, and hire date of all employees who do not have a manager.
select first_name ,last_name, hire_date from employees;
where Manager_id is null;
5.	Write a query to display the first name, last name, and job title of all employees who are either Sales Representatives or Sales Managers.

6.	Write a query to display the first name, last name, and hire date of all employees who were not hired in the year 2000.
select first_name, last_name ,hire_date from employees
where hire_date not between '00-01-01' and '00-12-31';
7.	Write a query to display the first name and last name of all employees, concatenated as "First Last".
SELECT first_name, last_name, concat(concat(first_name, ' ' ),(last_name)) as "First Last" FROM employees;
8.	Write a query to display the first name, last name, and salary of all employees, sorted by salary in descending order.
SELECT FIRST_NAME, LAST_NAME ,SALARY FROM EMPLOYEES
ORDER BY SALARY DESC;
9.	Write a query to display the first name, last name, and job title of all employees whose job title contains the word "Manager".

10.	Write a query to display the first name, last name, and salary of all employees whose salary is not null.
SELECT FIRST_NAME, LAST_NAME ,SALARY FROM EMPLOYEES
WHERE SALARY IS NOT NULL;
11.	Write a query to display the first name, last name, and job title of all employees, with the first name and last name in uppercase letters and the job title in lowercase letters.

12.	Write a query to display the first name, last name, and job title of all employees, with the first letter of each word in the job title capitalized.

13.	Write a query to display the first name, last name, and length of the job title of all employees.

14.	Write a query to display the first name, last name, and a concatenated string of the first name, last name, and job title of all employees.

15.	Write a query to display the first name, last name, and the first three characters of the job title of all employees.

16.	Write a query to display the first name, last name, and the position of the first occurrence of the letter "a" in the job title of all employees.

17.	Write a query to display the first name, last name, and salary of all employees, with the salary rounded to the nearest thousand dollars.

18.	Write a query to display the first name, last name, and salary of all employees, with the salary truncated to the nearest thousand dollars.

19.	Write a query to display the first name, last name, and the length of the first name of all employees
SELECT first_name,last_name, LENGTH(first_name) as "the length of the first name" FROM employees;
20.	Write a query to display the first name, last name, and a concatenated string of the first name, a comma, and the last name of all employees.

21.	Write a query to display the first name, last name, and the first three characters of the first name of all employees.
SELECT first_name,last_name, substr(first_name,0,3) FROM employees;

22.	Write a query to display the first name, last name, and the position of the first occurrence of the letter "e" in the first name of all employees.

23.	Write a query to display the first name, last name, and the length of the last name of all employees.
SELECT first_name,last_name, LENGTH(last_name) as "the length of the last name" FROM employees;

24.	Write a query to display the first name, last name, and the first three characters of the last name of all employees.

25.	Write a query to display the first name, last name, and the position of the first occurrence of the letter "a" in the last name of all employees.




Search TechGlobal-C6





TechGlobal-C6














general


general




45

Loading history...


Burak Simsek
  12:28 PM
-- SELECT <columnName> FROM <tableName>;

SELECT * FROM employees;

-- SUGGESTED FORMAT --
SELECT * FROM JOBS;

select * from employees;

SeLeCt * FrOm eMploYEES;


SELECT * FROM regions;


SELECT manager_id FROM employees;


SELECT first_name, hire_date FROM employees;

-- Write a querty to retrieve all the information from the phone number, job id, and manager id from employees table

select phone_number, job_id, manager_id from employees;



SELECT * FROM employees
WHERE job_id = 'IT_PROG';









--1. FROM   -> First retrieves the table.
--2. WHERE  -> filters the rows in the table, or tables.
--3. SELECT -> selects the specific column from the table.



-- Write the query to get the department name column for department id = 50 from departments table.

select department_name, department_id from departments
WHERE department_id = 50;


SELECT * FROM EMPLOYEES
WHERE first_name = 'Neena'
AND last_name = 'King'
AND JOB_ID = 'AD_PRES';


-- Write a query and retrieve first_name with Bruce and David;

SELECT * FROM EMPLOYEES
WHERE first_name != 'David';

SELECT * FROM EMPLOYEES
WHERE salary in (17000, 9000, 3100, 2900);

SELECT * FROM EMPLOYEES
WHERE first_name in ('Neena', 'Alexander');


SELECT * FROM EMPLOYEES
WHERE salary <> 17000
or salary <> 9000
or salary <> 3100
or salary <> 2900;


--Write the query to get all columns from the employees' table if the department id is 50 and the job id is "ST_MAN"

SELECT * FROM employees
WHERE department_id = 50
AND job_id = 'ST_MAN';

--Write the query to get all columns from the employees' table if the department id is 50 or the job id is "ST_MAN"

SELECT * FROM employees
WHERE department_id = 50
OR job_id = 'ST_MAN';

--Write the query to get all columns from the employees' table if the department id is 70 or the salary is more than 5000

SELECT * FROM employees
WHERE department_id = 70
OR salary > 5000;


--Write the query to get all columns from the employees' table if the department id is 70 and the salary is more than 5000

SELECT * FROM employees
WHERE department_id = 70
AND salary > 5000;


--Write the query to find the employees who are not displayed in step 4.

SELECT * FROM employees
WHERE department_id <> 70
or salary <= 5000;

SELECT * FROM employees
WHERE NOT (department_id = 70 AND salary > 5000 );


SELECT * FROM employees
WHERE commission_pct IS NOT null;


SELECT * FROM employees
WHERE salary BETWEEN 7000 AND 10000;

SELECT * FROM employees
WHERE salary > 7000
AND salary < 10000;


SELECT * FROM employees
WHERE hire_date BETWEEN '01-JUL-96' AND '31-JUL-96';



--1. Write the query to get all columns from employees table if salary is between 1000 and 10000

SELECT * FROM employees
WHERE salary BETWEEN 1000 AND 10000;


--2. Write the query to get all columns from employees table if salary is between 6000 and 100000 and hire date is after June 7, 1997

SELECT * FROM employees
WHERE salary BETWEEN 6000 AND 10000
AND hire_date > '07-JUN-97';

SELECT * FROM  EMPLOYEES
WHERE (salary >= 6000 and salary <= 100000)
AND hire_date > '07-JUN-97';



select first_name || ' ' || last_name from employees;


select first_name from employees;



--1. Write the query to get last name and add them '@gmail.com' as columnName is 'gmailAccount' from employees table

SELECT last_name || '@gmail.com' as gmailAccount from employees;

--2. Write the query to get last name and add them '@gmail.com' as columnName is 'Gmail Account' from employees table.

SELECT concat(last_name, '@gmail.com') as "gmail account" from employees
order by last_name desc;


-- Write the query to get all columns from the employee's table for salaries more than 5000 and order the result for hire date in descending order.

SELECT * FROM employees
WHERE salary > 5000
ORDER BY hire_date desc;

SELECT * FROM employees
WHERE first_name LIKE 'A%';


Select * from employees
Where first_name like '%t_p%'
Order by first_name;



-- 1.	Write a query that returns those employees who have  commission less than their salary

SELECT * FROM employees
WHERE commission_pct < salary;

-- 2.	Write a query that returns all employees that have a salary greater than 2500 and also work in department_id no 20

SELECT * FROM employees
WHERE salary > 2500
and DEPARTMENT_ID = 20;

-- 3.	Write a query that returns all employees that are not AD_VP nor SA_REP and have a salary greater than or equal to 2000

SELECT * FROM employees
WHERE job_id NOT IN  ( 'AD_VP', 'SA_REP' )
AND salary >= 2000;

-- 4.	Write a query to retrieve the first names and last names of all employees along with their job IDs, and concatenate them into a job_id column
--      in the format: <first_name> <last_name> works as a <job_id>. Alias this column as "Full Info".

SELECT first_name, last_name, first_name || ' ' || last_name || ' works as a ' || job_id AS "Full Info" FROM employees;

SELECT first_name, last_name, concat(concat(concat(first_name, ' ' ), concat(last_name, ' works as a ')), job_id) as "Full Info" FROM employees;

-- 5.	Write a query prints first name column as salary, and prints every name in a cell as " Steven makes $24000 per month "

SELECT first_name || ' makes $' || salary || ' per month' as "monthly salary" from employees;

-- 6. -- 5.	Write a query prints first name column as salary, and prints every name in a cell as " Steven makes $24000 per year "

SELECT first_name || ' makes $' || (salary * 12)  || ' per year' as "yearly salary" from employees;

select first_name from employees;



------------------------------------------------------
---------------- SINGLE ROW FUNCTIONS ----------------
------------------------------------------------------

SELECT UPPER('hello') from employees;

SELECT UPPER('hello') from dual;

select *  from dual;

SELECT INITCAP('hello my name is NAME') AS sentence from dual;

SELECT LOWER('THIS IS TECHGLOBAL B6') from dual;

select LOWER(job_id) from employees;

select * from employees;

-- Write a query to concats first_name and job id columns from the employees table
-- and returns them as a concat first_name in upper case and job_id in lower case

-- STEVEN ad_pres NOTE : PLEASE USE CONCAT FUNCTION NOT ||

SELECT CONCAT(CONCAT(UPPER(first_name), ' '), lower(job_id)) from employees;

--1. Write the query to get all employees last names in upper case.

SELECT UPPER(last_name) FROM employees;

--2. Write the query to get all employees emails in lower case.

SELECT LOWER(email) FROM employees;

--3. Write the query to get all employees first name in upper case, last names in lower case and emails in only first letter upper case. 

SELECT UPPER(first_name), LOWER(last_name), INITCAP(email) from employees;

--4. Write a query to retrieve the first names and last names of all employees in uppercase, and their job titles in lowercase. 
--   Additionally, alias the columns as "First Name", "Last Name", and "Job Title" respectively.

SELECT UPPER(first_name) AS "First Name", UPPER(last_name) AS "Last Name", LOWER(job_id) AS "Job Title" FROM employees;


--5. Write a query and return each row in this format "steve IS THE NAME and their job is: MANAGER "

select CONCAT(CONCAT(LOWER(first_name), UPPER(' is the name ')), CONCAT('and their job is: ', job_id)) as "concat function" FROM employees;




SELECT LENGTH('hello my name is name') AS length FROM dual;

SELECT LENGTH(first_name) as length from employees;


SELECT first_name, LENGTH(first_name) as length FROM employees
WHERE LENGTH(first_name) = 6;

SELECT SUBSTR('hello', 2) FROM employees;

SELECT SUBSTR('hello', 2, 2) FROM employees;

-- 'hello' 2  e  
-- 'hello' 2, 2  el
-- 'hello' 2, 3  ell

SELECT SUBSTR('hello', 2, 3) FROM employees;

SELECT SUBSTR('Hello my name is', 10) FROM dual;

SELECT SUBSTR('Hello my name is', 10, 5) FROM dual;

SELECT LENGTH(SUBSTR('Hello my name is', 10, 5)) FROM dual;

select instr(LOWER(city), 'a') from locations;

-- 5.  Write the query to get all last names that starting from index number 2 and add 4 more character from employees.

SELECT SUBSTR(last_name, 2, 4) FROM employees;

-- 6.  Write the query to get all last names that starting from index number 4 from employees .

SELECT SUBSTR(last_name, 4) FROM employees;

-- 7.  Write the query to find the city includes 'a' character in locations.

SELECT city FROM locations
WHERE INSTR(city, 'a') > 0;

-- 8.  Write the query to return first name and last name combined as lower case with the space and 
--     find the index number of 'k' from combined firstname and lastname from employees.

SELECT LOWER(first_name || ' ' || last_name) as "full_name", INSTR(LOWER(first_name || ' ' || last_name), 'k') as "index number" FROM employees;
New


Burak Simsek
  9:51 AM
07-02-2023 SQL Group-row Functions


	Execution order for a simple query

		1. FROM		-> Which calls the table
		2. WHERE	-> Filtering condition
		3. SELECT 	-> Filters the column


	Single-row Functions:

		It performas a specific action in each row, and returns back to each row with that specifed action.

		- upper() and lower(): It converts the data to upper or lower case
		Example:
			upper('hello')			-> 'HELLO'

		- substr(): Extract the substring from a string based on specified position
		Example:
			substr('Hello', 1, 5) 	-> 'Hello'

		- initcap(): Making the first letter of any word capital
		Example:
			initcap('hello my name is name') 	-> 'Hello My Name Is Name'

		- instr():  Returns the index of a string
		Example:
			instr('hello', 'e')	-> 2

		- trim() - LTRIM(), RTRIM(): It clears all whitespaces, or givin character
		Example:
			trim('     hello    ') 	-> 'hello'
			LTRIM('hhhhello', 'h') 	-> 'ello'
			RTRIM('hellohhh', 'h') 	-> 'hello'

		- length(): Returns to length of the givin string
		Example:
			length('hello') 	-> 5

		- round(): It can take 1, or 2 argument. It rounds up the number after the decimal point if we provide 2 arguments. And it rounds up depends on the number specified in the argument.
		Example:
			round(107.088)		-> 108
			round(107.088, 2) 	-> 107.09
			round(107.084, 2) 	-> 107.08

		- trunc(): Again, it can take 1 or 2 arguments. If it's called with single argument, it will remove all decimal points. If we call it with 2 arguments, then it will keep seconds arguments amount of numbers as decimals.
			trunc(107.09890089080) 		-> 107
			trunc(107.09890089080, 2) 	-> 107.09


Burak Simsek
  10:27 AM
-- SELECT <columnName> FROM <tableName>;

SELECT * FROM employees;

-- SUGGESTED FORMAT --
SELECT * FROM JOBS;

select * from employees;

SeLeCt * FrOm eMploYEES;


SELECT * FROM regions;


SELECT manager_id FROM employees;


SELECT first_name, hire_date FROM employees;

-- Write a querty to retrieve all the information from the phone number, job id, and manager id from employees table

select phone_number, job_id, manager_id from employees;



SELECT * FROM employees
WHERE job_id = 'IT_PROG';









--1. FROM   -> First retrieves the table.
--2. WHERE  -> filters the rows in the table, or tables.
--3. SELECT -> selects the specific column from the table.



-- Write the query to get the department name column for department id = 50 from departments table.

select department_name, department_id from departments
WHERE department_id = 50;


SELECT * FROM EMPLOYEES
WHERE first_name = 'Neena'
AND last_name = 'King'
AND JOB_ID = 'AD_PRES';


-- Write a query and retrieve first_name with Bruce and David;

SELECT * FROM EMPLOYEES
WHERE first_name != 'David';

SELECT * FROM EMPLOYEES
WHERE salary in (17000, 9000, 3100, 2900);

SELECT * FROM EMPLOYEES
WHERE first_name in ('Neena', 'Alexander');


SELECT * FROM EMPLOYEES
WHERE salary <> 17000
or salary <> 9000
or salary <> 3100
or salary <> 2900;


--Write the query to get all columns from the employees' table if the department id is 50 and the job id is "ST_MAN"

SELECT * FROM employees
WHERE department_id = 50
AND job_id = 'ST_MAN';

--Write the query to get all columns from the employees' table if the department id is 50 or the job id is "ST_MAN"

SELECT * FROM employees
WHERE department_id = 50
OR job_id = 'ST_MAN';

--Write the query to get all columns from the employees' table if the department id is 70 or the salary is more than 5000

SELECT * FROM employees
WHERE department_id = 70
OR salary > 5000;


--Write the query to get all columns from the employees' table if the department id is 70 and the salary is more than 5000

SELECT * FROM employees
WHERE department_id = 70
AND salary > 5000;


--Write the query to find the employees who are not displayed in step 4.

SELECT * FROM employees
WHERE department_id <> 70
or salary <= 5000;

SELECT * FROM employees
WHERE NOT (department_id = 70 AND salary > 5000 );


SELECT * FROM employees
WHERE commission_pct IS NOT null;


SELECT * FROM employees
WHERE salary BETWEEN 7000 AND 10000;

SELECT * FROM employees
WHERE salary > 7000
AND salary < 10000;


SELECT * FROM employees
WHERE hire_date BETWEEN '01-JUL-96' AND '31-JUL-96';



--1. Write the query to get all columns from employees table if salary is between 1000 and 10000

SELECT * FROM employees
WHERE salary BETWEEN 1000 AND 10000;


--2. Write the query to get all columns from employees table if salary is between 6000 and 100000 and hire date is after June 7, 1997

SELECT * FROM employees
WHERE salary BETWEEN 6000 AND 10000
AND hire_date > '07-JUN-97';

SELECT * FROM  EMPLOYEES
WHERE (salary >= 6000 and salary <= 100000)
AND hire_date > '07-JUN-97';



select first_name || ' ' || last_name from employees;


select first_name from employees;



--1. Write the query to get last name and add them '@gmail.com' as columnName is 'gmailAccount' from employees table

SELECT last_name || '@gmail.com' as gmailAccount from employees;

--2. Write the query to get last name and add them '@gmail.com' as columnName is 'Gmail Account' from employees table.

SELECT concat(last_name, '@gmail.com') as "gmail account" from employees
order by last_name desc;


-- Write the query to get all columns from the employee's table for salaries more than 5000 and order the result for hire date in descending order.

SELECT * FROM employees
WHERE salary > 5000
ORDER BY hire_date desc;

SELECT * FROM employees
WHERE first_name LIKE 'A%';


Select * from employees
Where first_name like '%t_p%'
Order by first_name;



-- 1.	Write a query that returns those employees who have  commission less than their salary

SELECT * FROM employees
WHERE commission_pct < salary;

-- 2.	Write a query that returns all employees that have a salary greater than 2500 and also work in department_id no 20

SELECT * FROM employees
WHERE salary > 2500
and DEPARTMENT_ID = 20;

-- 3.	Write a query that returns all employees that are not AD_VP nor SA_REP and have a salary greater than or equal to 2000

SELECT * FROM employees
WHERE job_id NOT IN  ( 'AD_VP', 'SA_REP' )
AND salary >= 2000;

-- 4.	Write a query to retrieve the first names and last names of all employees along with their job IDs, and concatenate them into a job_id column
--      in the format: <first_name> <last_name> works as a <job_id>. Alias this column as "Full Info".

SELECT first_name, last_name, first_name || ' ' || last_name || ' works as a ' || job_id AS "Full Info" FROM employees;

SELECT first_name, last_name, concat(concat(concat(first_name, ' ' ), concat(last_name, ' works as a ')), job_id) as "Full Info" FROM employees;

-- 5.	Write a query prints first name column as salary, and prints every name in a cell as " Steven makes $24000 per month "

SELECT first_name || ' makes $' || salary || ' per month' as "monthly salary" from employees;

-- 6. -- 5.	Write a query prints first name column as salary, and prints every name in a cell as " Steven makes $24000 per year "

SELECT first_name || ' makes $' || (salary * 12)  || ' per year' as "yearly salary" from employees;

select first_name from employees;



------------------------------------------------------
---------------- SINGLE ROW FUNCTIONS ----------------
------------------------------------------------------

SELECT UPPER('hello') from employees;

SELECT UPPER('hello') from dual;

select *  from dual;

SELECT INITCAP('hello my name is NAME') AS sentence from dual;

SELECT LOWER('THIS IS TECHGLOBAL B6') from dual;

select LOWER(job_id) from employees;

select * from employees;

-- Write a query to concats first_name and job id columns from the employees table
-- and returns them as a concat first_name in upper case and job_id in lower case

-- STEVEN ad_pres NOTE : PLEASE USE CONCAT FUNCTION NOT ||

SELECT CONCAT(CONCAT(UPPER(first_name), ' '), lower(job_id)) from employees;

--1. Write the query to get all employees last names in upper case.

SELECT UPPER(last_name) FROM employees;

--2. Write the query to get all employees emails in lower case.

SELECT LOWER(email) FROM employees;

--3. Write the query to get all employees first name in upper case, last names in lower case and emails in only first letter upper case. 

SELECT UPPER(first_name), LOWER(last_name), INITCAP(email) from employees;

--4. Write a query to retrieve the first names and last names of all employees in uppercase, and their job titles in lowercase. 
--   Additionally, alias the columns as "First Name", "Last Name", and "Job Title" respectively.

SELECT UPPER(first_name) AS "First Name", UPPER(last_name) AS "Last Name", LOWER(job_id) AS "Job Title" FROM employees;


--5. Write a query and return each row in this format "steve IS THE NAME and their job is: MANAGER "

select CONCAT(CONCAT(LOWER(first_name), UPPER(' is the name ')), CONCAT('and their job is: ', job_id)) as "concat function" FROM employees;




SELECT LENGTH('hello my name is name') AS length FROM dual;

SELECT LENGTH(first_name) as length from employees;


SELECT first_name, LENGTH(first_name) as length FROM employees
WHERE LENGTH(first_name) = 6;

SELECT SUBSTR('hello', 2) FROM employees;

SELECT SUBSTR('hello', 2, 2) FROM employees;

-- 'hello' 2  e  
-- 'hello' 2, 2  el
-- 'hello' 2, 3  ell

SELECT SUBSTR('hello', 2, 3) FROM employees;

SELECT SUBSTR('Hello my name is', 10) FROM dual;

SELECT SUBSTR('Hello my name is', 10, 5) FROM dual;

SELECT LENGTH(SUBSTR('Hello my name is', 10, 5)) FROM dual;

select instr(LOWER(city), 'a') from locations;

-- 5.  Write the query to get all last names that starting from index number 2 and add 4 more character from employees.

SELECT SUBSTR(last_name, 2, 4) FROM employees;

-- 6.  Write the query to get all last names that starting from index number 4 from employees .

SELECT SUBSTR(last_name, 4) FROM employees;

-- 7.  Write the query to find the city includes 'a' character in locations.

SELECT city FROM locations
WHERE INSTR(city, 'a') > 0;

-- 8.  Write the query to return first name and last name combined as lower case with the space and 
--     find the index number of 'k' from combined firstname and lastname from employees.

SELECT LOWER(first_name || ' ' || last_name) as "full_name", INSTR(LOWER(first_name || ' ' || last_name), 'k') as "index number" FROM employees;



-- First argument string, second how much length we want, last what we want to add to it.
SELECT LPAD('hello', 10, '$') FROM dual;

SELECT LPAD('hello', 100, '$') FROM dual;

SELECT RPAD('hello', 100, '&') FROM dual;



SELECT LTRIM('hello', 'h') FROM dual;

SELECT RTRIM('hellohhhhhhhhhhh', 'h') FROM dual;

-- TRUND and ROUND

-- ROUND

SELECT ROUND(107.088, 2) FROM dual;

SELECT ROUND(107.088, 3) FROM dual;

SELECT ROUND(107.0887, 3) FROM dual;

SELECT ROUND(107.9) FROM dual;

SELECT ROUND(107.0884, 3) FROM dual;

SELECT ROUND(107.0885, 3) FROM dual;



-- TRUNC

SELECT TRUNC(107.987979789) FROM dual;

SELECT TRUNC(107.987979789, 3) FROM dual;

SELECT TRUNC(107.987979789, 5) FROM dual;

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '01-JAN-00' AND '31-DEC-00'
AND last_name LIKE 'S%';






-- GROUP BY CLAUSE

-- Find the avg salary of title 'SA_REP'

SELECT AVG(salary) FROM employees
WHERE job_id = 'SA_REP';

-- Find the avg salary of title 'ST_CLERK'

SELECT AVG(salary) FROM employees
WHERE job_id = 'ST_CLERK';

-- Find the avg salary of title 'AD_VP'

SELECT AVG(salary) FROM employees
WHERE job_id = 'AD_VP';




SELECT AVG(salary), job_id FROM employees
GROUP BY job_id;

select count(*) from employees
where job_id = 'FI_ACCOUNT';

SELECT count(*), job_id FROM employees
GROUP BY job_id;

SELECT DISTINCT job_id FROM employees;

SELECT MAX(salary), job_id FROM employees
GROUP BY job_id;

SELECT MIN(salary), job_id FROM employees
GROUP BY job_id;

SELECT department_id, COUNT(*) AS number_of_employees FROM employees
WHERE salary > 2000
GROUP BY department_id
ORDER BY number_of_employees DESC;

-- Get those job_id's where they have only 2 employees

SELECT COUNT(*), job_id FROM employees
GROUP BY job_id
HAVING COUNT(*) = 2;

SELECT COUNT(*), job_id FROM employees
GROUP BY job_id
HAVING COUNT(*) > 10;

-- 1) SELECT job_id
-- 2) FROM employees
-- 3) WHERE
-- 4) GROUP BY job_id
-- 5) HAVING count(*) = 2
-- 6) ORDER BY

-- Write a query to find those department_id they have count more than 3

SELECT department_id, COUNT(*) FROM employees
GROUP BY department_id
HAVING count(*) > 3;

SELECT COUNT(*) as count, department_id, job_id FROM employees
GROUP BY department_id, job_id
HAVING COUNT(*) < 6;


SELECT department_id, COUNT(*) as number_of_employees
FROM employees
GROUP BY department_id
HAVING COUNT(*) > 10
ORDER BY number_of_employees DESC;

--This SQL query does the following:
--Groups the employees by their department.
--Counts the number of employees in each department.
--Only includes departments that have more than 10 employees.
--Orders the results by the number of employees in descending order.


-- 1. Find the total number of employees in each department and list only those departments with more than 5 employees.

SELECT department_id, COUNT(*) FROM employees
GROUP BY department_id
HAVING COUNT(*) > 5;

-- 2. Calculate the average salary for each job title, but only include job titles where the average salary is greater than 6000.

SELECT job_id, AVG(salary) FROM employees
GROUP BY job_id
HAVING AVG(salary) > 6000;

-- 3. Find the highest salary in each department and list only those departments where the highest salary is less than 10000.

SELECT department_id, MAX(salary) from employees
GROUP BY department_id
HAVING MAX(salary) < 10000;

-- 4. For each department, calculate the total salary paid. Only include deparrtments where the total salary is more than 50000, 
--    and order the result by total salary in descending order.

SELECT department_id, SUM(salary) FROM employees
GROUP BY department_id
HAVING SUM(salary)  > 50000
ORDER BY SUM(salary) DESC;

-- 5. Find the total number of employees for each job title and list only those job titles that have more than 3 employees.

SELECT job_id, COUNT(*) FROM employees
GROUP BY job_id
HAVING COUNT(*) > 3;

-- 6. Calculate the sum of the salaries for each department and only display those where the sum is between 20000 and 50000.

SELECT department_id, SUM(salary) FROM employees
GROUP BY department_id
HAVING SUM(salary) BETWEEN 20000 AND 50000;

-- 1. Write a querty to find the departments where the maximum salary is more than 12000.

Select department_id,max(salary) from employees
group by department_id
having Max(salary)>12000;
-- 2. Write a querty to find out which job titles have an average salary greater than 5000.
Select job_id, avg(salary) from employees
group by job_id
having avg(salary)>5000;

-- 3. Count the number of employees in each department, but only list those departments with more than 5 employees.
select department_id, count(employee_id) from employees
group by department_id
having count(employee_id)>5;


-- 4. Find out which job titles have more than one employee.
select job_id, count(employee_id) from employees
group by job_id
having count(employee_id)>1;

-- 5. Calculate the average salary for each department and display those departments where the average salary is above 7000.
select department_id, AVG(salary)from employees
group by department_id
having count(salary)>7000;
-- 6. List departments where the lowest salary is more than 2500.
Select department_id, MIN(salary) from employees
group by department_id
having MIN(salary)>2500;

-- 7. Find the total salary paid for each job title, but only list those where the total salary is less than 30000.
Select job_id, SUM(salary) from employees
group by job_id
having SUM(salary)<30000;

-- 8. Calculate the total salary budget per year by department, and list departments with a yearly budget over 500000 dollars.
Select department_id, SUM(salary*12) from employees
group by department_id
having SUM(salary*12)>500000;

-- 9. Find the average salary of each department and list those departments whose average salary is not equal to the minimum salary of that department.
Select department_id, AVG(salary),MIN(salary) from employees
group by department_id
having AVG(salary)<>MIN(salary);

-- 10. Find the job titles where the difference between the maximum and minimum salary is greater than 6000.
Select job_id, max(salary), min(salary) from employees
group by job_id
having max(salary)-min(salary)>6000;

-- 11. Query to get manager_id and lowest paid employees for each manager and make sure that manager is not null and lowest salary is higher than 6000 and then order by lowest salaries descending
select manager_id, MIN(salary) from employees
where manager_id is not null 
group by manager_id
having Min(salary)>6000
Order BY Min(salary) desc;

--========================================--
--============== SUBQUERIES ==============--
--========================================--

SELECT * FROM departments;

SELECT * FROM departments
WHERE department_id = 30;

SELECT * FROM departments
WHERE department_id = (SELECT department_id FROM departments WHERE department_id = 30);

SELECT * FROM departments
WHERE department_id < (SELECT department_id FROM departments WHERE department_id = 30);

SELECT * FROM departments
WHERE department_id < (SELECT department_id FROM departments WHERE department_id = 30)
AND department_name = 'Marketing';



SELECT * from DEPARTMENTS
WHERE department_id < 30
and department_name = 'Marketing';



SELECT * FROM ( SELECT * FROM departments);

SELECT * FROM ( SELECT * FROM employees);




SELECT * FROM departments;

-- Write a query and print those employees where their department_id are equal to 'Administration'

SELECT * FROM employees
WHERE department_id = 10;

SELECT * FROM employees
WHERE department_id = ( SELECT department_id FROM departments WHERE department_name = 'Administration');

-- NOTE: So, Administration information is not in the employees table,
-- we are kinda joining these 2 tables using this department_id because we know that
-- department_id is also in departments_table

SELECT * FROM employees
WHERE department_id = (SELECT department_id FROM departments);

SELECT * FROM employees
WHERE department_id IN (SELECT department_id FROM departments WHERE department_id in(10,20));

SELECT * FROM employees
WHERE department_id IN (SELECT department_id, location_id, department_name FROM departments WHERE department_id in(10,20));




SELECT job_id, first_name, ( SELECT job_id FROM employees) FROM employees;

SELECT job_id, first_name, ( SELECT job_id FROM employees WHERE first_name = 'Ellen') FROM employees;




-- 1. Write a query to get employees first_name and salary who makes more than employee who has employee_id 121 and then order by salary ascending.

SELECT first_name, salary FROM employees
WHERE salary > ( SELECT salary FROM employees WHERE employee_id = 121)
order by salary asc;
-- 2. Write a query to get employees first_name, department_id who works in same department with employee who has employee_id 150.

SELECT first_name, department_id FROM employees
WHERE department_id = ( SELECT department_id FROM employees WHERE employee_id = 150);

-- 3. Write a query to find second largest salary.

SELECT MAX(salary) FROM employees
WHERE salary < (SELECT MAX(salary) FROM employees);

SELECT MAX(salary) FROM employees
WHERE salary < (SELECT MAX(salary) FROM employees
WHERE salary < (SELECT MAX(salary) FROM employees));

-- 4. Write a query to get name of employees who is making second largest salary.

SELECT salary, first_name FROM employees
WHERE salary = (SELECT MAX(salary) FROM employees
WHERE salary < (SELECT MAX(salary) FROM employees));

-- 5. Write a query to get number of postal code under same countries from locations table.

SELECT * FROM locations;

SELECT country_id, count(postal_code) FROM locations
GROUP BY country_id;

-- 6. Write a query to get number of postal code under same countries from locations table if their count is more than 1.

SELECT country_id, COUNT(postal_code) FROM locations
GROUP BY country_id
HAVING COUNT(postal_code) > 2;

-- 7. Write a query to get all employees who is making more than average salary and order by salary.

SELECT first_name, salary FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees)
ORDER BY salary;

-- 8. Write a query to get all cities which have same state with Toronto from locations table.

SELECT * FROM locations;

SELECT city FROM locations
WHERE state_province = ( SELECT state_province FROM locations WHERE state_province = 'Ontario');

SELECT city FROM locations
WHERE state_province = ( SELECT state_province FROM locations WHERE city = 'Toronto');

-- 9. Write a query to find the employee who is making second lowest salary.

SELECT salary, first_name FROM employees
WHERE salary = (SELECT MIN(salary) FROM employees
WHERE salary > (SELECT MIN(salary) FROM employees));

-- 1. Find all employees who earn more than the average salary.

SELECT first_name, salary FROM employees
WHERE salary > ( SELECT AVG(salary) FROM employees);

-- 2. Find the employee names who have the highest salary.

SELECT first_name, salary FROM employees
WHERE salary = ( SELECT MAX(salary) FROM employees);

-- 3. Find the names of departments that have more than 5 employees.

SELECT * FROM departments;

SELECT department_name from departments
WHERE department_id IN ( SELECT department_id FROM employees
GROUP BY department_id
HAVING COUNT(*) > 5);


-- 4. Find the first name and last name of employees whose manager has a manager.

SELECT * FROM employees;

SELECT first_name, last_name FROM employees
WHERE manager_id IN ( SELECT employee_id FROM employees
WHERE manager_id IS NOT NULL);


-- 5. Find all departments where the total salary is above the company's average total salary by department.

SELECT department_id FROM employees
GROUP BY department_id
HAVING SUM(salary) > ( SELECT AVG(salary) FROM employees);


-- 6. List employees who have the same job title as any employee in department 90, but are not themselves in department 90.

SELECT first_name, last_name, job_id FROM employees
WHERE job_id IN ( SELECT job_id FROM employees WHERE department_id = 90);


-- 7. Find the department ID which has the most number of employees.

SELECT department_id FROM employees
GROUP BY department_id
HAVING COUNT(*) = (SELECT MAX(COUNT(*))  FROM employees
GROUP BY department_id);


-- 8. List all employees who have the same manager as the employee with the lowest salary.

SELECT first_name FROM employees
WHERE manager_id = ( SELECT manager_id FROM employees
WHERE salary = ( SELECT MIN(salary) FROM employees));


-- 9. Find all employees whose salary is greater than the salary of all employees in department 10.

SELECT * FROM employees
WHERE salary > ( SELECT salary from employees WHERE department_id = 10);


--========================================--
--================= JOINS ================--
--========================================--


SELECT * FROM employees;

SELECT * FROM departments;

SELECT * FROM employees, departments
WHERE employees.department_id = departments.department_id
AND department_name = 'Marketing';

SELECT * FROM employees JOIN departments
ON employees.department_id = departments.department_id;

SELECT * FROM employees e JOIN departments d
ON e.department_id = d.department_id;


-- 1. Write the query to the print country name, country id, and region name for each country.

SELECT * FROM countries;

SELECT * FROM regions;

SELECT c.country_name, c.country_id, r.region_name FROM countries c JOIN regions r
ON c.region_id = r.region_id;

--2. Write the query to print the last name, email, and  job title for each employee.

SELECT * FROM EMPLOYEES;

SELECT * FROM JOBS;

SELECT e.last_name, e.email, j.job_title FROM employees e JOIN jobs j
ON e.job_id = j.job_id;



SELECT * FROM employees;

SELECT * FROM departments;

SELECT * FROM employees e INNER JOIN departments d
ON e.department_id = d.department_id;

SELECT * FROM employees e RIGHT JOIN departments d
ON e.department_id = d.department_id;

SELECT * FROM employees e LEFT JOIN departments d
ON e.department_id = d.department_id;

SELECT * FROM employees e INNER JOIN departments d
ON e.department_id = d.department_id;

SELECT * FROM employees e FULL OUTER JOIN departments d
ON e.department_id = d.department_id;


SELECT * FROM employees;

SELECT * FROM job_history;

SELECT * FROM employees e RIGHT JOIN job_history j
ON e.employee_id = j.employee_id;

SELECT * FROM employees e FULL OUTER JOIN job_history j
ON e.employee_id = j.employee_id;

SELECT * FROM employees e INNER JOIN job_history j
ON e.employee_id = j.employee_id;

SELECT e.first_name, j.start_date, j.end_date, e.hire_date
FROM employees e JOIN job_history j
ON e.employee_id = j.employee_id;


SELECT * FROM employees;

select e.first_name as employee, m.first_name as manager
from employees e join employees m
on e.manager_id = m.employee_id;


-- Write a query to print country name, country id and region name for each country


-- Write a query to print last name email and jon title for each employee




--1. Write a query to get count of employees for each manager and order by count of employees.

SELECT m.manager_id, COUNT(*) FROM employees e JOIN employees m
ON e.manager_id = m.employee_id
WHERE e.manager_id IS NOT NULL
GROUP BY m.manager_id
ORDER BY COUNT(*);

--2. Find the employees with the salary more than their managers salary (Interview question)

SELECT e.first_name, e.salary, m.salary AS manager_salary
FROM employees e
JOIN employees m ON e.manager_id = m.employee_id
WHERE e.salary > m.salary;