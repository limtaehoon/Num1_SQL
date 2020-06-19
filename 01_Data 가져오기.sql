--한줄의 주석 단축기 CTAL+/
/*
여러줄 주석을 
다는 방법
*/
--1.테이블의 모든행과 열을 읽어오기*
SELECT *
FROM departments;
--2.특정열만 읽어오기
SELECT department_id, first_name, salary
FROM departments;
--3.산술 연산자(+-*/)
SELECT  employee_id, first_name, salary, salary+100,
        salary + (salary*0.1) 
FROM employees;

--4.널(null)이란?
--널은 입력되지 않은,사용가능하지 않는 알수 없은값
--널값은 제로(0)또는 공백""과는 다름
SELECT last_name, job_id,salary,
commission_pct,commission_pct+10
FROM employees; 
--5.중복된값제거:distinct
SELECT DISTINCT job_id
FROM employees;

SELECT employee_id,first_name,last_name,last_name
FROM employees;

SELECT first_name,salary,salary*1.1  뉴셀러리
FROM employees;

SELECT employee_id As 사원번호,first_name AS 이름 
FROM employees; 

--연결 연산자(||)
SELECT  last_name||'is a'||job_id as"직업 이름"
FRom employees;

SELECT  employee_id, first_name||'  '||job_id
FRom employees;

SELECT employee_id,first_name||'  '||last_name
FROM employees;

SELECT employee_id, first_name || ' ' || last_name,
        email||'@campany.com'
FROM employees;
