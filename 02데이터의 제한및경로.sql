--1.테이들이 모든데이터 가져오기
SELECT
    *
FROM employees;
--2.where 절에 자져올 조건에 맞은 행을 선택한다
--위치는 FROM절에 가져올 조건에 맞는맵을 선택한다
SELECT
    *
FROM employees;

SELECT
    *
FROM employees
WHERE salary =2400;--월급이 24000인 직원
/*where절을 사용할때 주의점
문자와 날짜값은 항상 따옴표(')로 표시
문자값은 대소문자를 구분한다 (Case.sensitive)
날짜값은 날짜포맷에 벗어나지 않도록(Format.Sensitive)
오라클의 날짜포맷은 RR/MM/DD(RR은 2자리 년도)
*/
--WHERE+문자열
SELECT employee_id,first_name,last_name,job_id
FROM employees
WHERE first_name='Steven';
--WHERE+날짜
SELECT SYSDATE FROM DUAL;


SELECT *
FROM employees
WHERE salary>=10000;--숫자 비교

SELECT
    *
FROM employees
WHERE hire_date>='03/06/13';--날짜비교
--1번
SELECT
    *
FROM employees
WHERE location_id >=100;

--2번
SELECT
    *
FROM employees
WHERE first_name =David;

--3번
SELECT
    *
FROM employees
WHERE employee_id>=105;
--4번 
SELECT
    *
FROM job_history
WHERE start_date >'06/03/03';

--예제 5 
SELECT
    *
FROM departments
WHERE location_id !=1700;
--and or not
SELECT
    *
FROM employees
WHERE department_id =60 OR
        (department_id=80 AND salary>10000);
SELECT
    *       
FROM employees
WHERE (department_id >60 OR
        (department_id=80) AND salary >10000 );     

SELECT
    *
FROM employees
WHERE hire_date >'08/04/04' OR salary>13000
    AND job_id = 'AD_VP';
    
SELECT
    *
FROM employees
WHERE NOT(hire_date>'04/01/01' OR salary >5000);
--(hire_date><='04/01/01' AND salary <=5000)
--1번
SELECT
    *
FROM employees
WHERE salary >4000 AND job_id ='IT.PROG';
--2번
SELECT
    *
FROM employees
WHERE salary>4000 AND (job_id='IT.PROG' OR job_id = 'FI_ACCOUNT');

--IN 연산자
SELECT
    *
FROM employees
WHERE salary = 4000 OR salary =3000 OR salary =2700;
--IN 
SELECT
    *
FROM employees
--OR이랑 같은 문장 IN
WHERE salary IN(4000,3000,2700);
--1번
SELECT
    *
FROM employees
WHERE salary IN(10000,17000,24000);
--2번
SELECT
    *
FROM employees
WHERE department_id NOT IN(30,50,80,10,110);
--BETWEEN
SELECT
    *
FROM employees
WHERE salary >=9000 AND salary<=10000;
-- 밑이랑 같은말
SELECT
    *
FROM employees
WHERE salary BETWEEN 9000 AND 10000;
--1번
SELECT
    *
FROM employees
WHERE salary BETWEEN 10000 AND 20000;
--2번
SELECT
    *
FROM employees
WHERE hire_date BETWEEN '04/01/01' AND '04/12/30';
--3번
SELECT
    *
FROM employees
WHERE salary NOT BETWEEN 7000 AND 17000;--NOT 은 반대로감
--LIKE


