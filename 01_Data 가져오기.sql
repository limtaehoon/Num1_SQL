--������ �ּ� ����� CTAL+/
/*
������ �ּ��� 
�ٴ� ���
*/
--1.���̺��� ������ ���� �о����*
SELECT *
FROM departments;
--2.Ư������ �о����
SELECT department_id, first_name, salary
FROM departments;
--3.��� ������(+-*/)
SELECT  employee_id, first_name, salary, salary+100,
        salary + (salary*0.1) 
FROM employees;

--4.��(null)�̶�?
--���� �Էµ��� ����,��밡������ �ʴ� �˼� ������
--�ΰ��� ����(0)�Ǵ� ����""���� �ٸ�
SELECT last_name, job_id,salary,
commission_pct,commission_pct+10
FROM employees; 
--5.�ߺ��Ȱ�����:distinct
SELECT DISTINCT job_id
FROM employees;

SELECT employee_id,first_name,last_name,last_name
FROM employees;

SELECT first_name,salary,salary*1.1  ��������
FROM employees;

SELECT employee_id As �����ȣ,first_name AS �̸� 
FROM employees; 

--���� ������(||)
SELECT  last_name||'is a'||job_id as"���� �̸�"
FRom employees;

SELECT  employee_id, first_name||'  '||job_id
FRom employees;

SELECT employee_id,first_name||'  '||last_name
FROM employees;

SELECT employee_id, first_name || ' ' || last_name,
        email||'@campany.com'
FROM employees;
