--1.���̵��� ��絥���� ��������
SELECT
    *
FROM employees;
--2.where ���� ������ ���ǿ� ���� ���� �����Ѵ�
--��ġ�� FROM���� ������ ���ǿ� �´¸��� �����Ѵ�
SELECT
    *
FROM employees;

SELECT
    *
FROM employees
WHERE salary =2400;--������ 24000�� ����
/*where���� ����Ҷ� ������
���ڿ� ��¥���� �׻� ����ǥ(')�� ǥ��
���ڰ��� ��ҹ��ڸ� �����Ѵ� (Case.sensitive)
��¥���� ��¥���˿� ����� �ʵ���(Format.Sensitive)
����Ŭ�� ��¥������ RR/MM/DD(RR�� 2�ڸ� �⵵)
*/
--WHERE+���ڿ�
SELECT employee_id,first_name,last_name,job_id
FROM employees
WHERE first_name='Steven';
--WHERE+��¥
SELECT SYSDATE FROM DUAL;


SELECT *
FROM employees
WHERE salary>=10000;--���� ��

SELECT
    *
FROM employees
WHERE hire_date>='03/06/13';--��¥��
--1��
SELECT
    *
FROM employees
WHERE location_id >=100;

--2��
SELECT
    *
FROM employees
WHERE first_name =David;

--3��
SELECT
    *
FROM employees
WHERE employee_id>=105;
--4�� 
SELECT
    *
FROM job_history
WHERE start_date >'06/03/03';

--���� 5 
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
--1��
SELECT
    *
FROM employees
WHERE salary >4000 AND job_id ='IT.PROG';
--2��
SELECT
    *
FROM employees
WHERE salary>4000 AND (job_id='IT.PROG' OR job_id = 'FI_ACCOUNT');

--IN ������
SELECT
    *
FROM employees
WHERE salary = 4000 OR salary =3000 OR salary =2700;
--IN 
SELECT
    *
FROM employees
--OR�̶� ���� ���� IN
WHERE salary IN(4000,3000,2700);
--1��
SELECT
    *
FROM employees
WHERE salary IN(10000,17000,24000);
--2��
SELECT
    *
FROM employees
WHERE department_id NOT IN(30,50,80,10,110);
--BETWEEN
SELECT
    *
FROM employees
WHERE salary >=9000 AND salary<=10000;
-- ���̶� ������
SELECT
    *
FROM employees
WHERE salary BETWEEN 9000 AND 10000;
--1��
SELECT
    *
FROM employees
WHERE salary BETWEEN 10000 AND 20000;
--2��
SELECT
    *
FROM employees
WHERE hire_date BETWEEN '04/01/01' AND '04/12/30';
--3��
SELECT
    *
FROM employees
WHERE salary NOT BETWEEN 7000 AND 17000;--NOT �� �ݴ�ΰ�
--LIKE


