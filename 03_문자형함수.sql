-- HR���� ���� 
--������ �Լ��� ��ҹ��� �Լ��� ���� �����Լ��� ������.

-- 1.��ҹ��� ���� �Լ� (upper, lower, initcap)
SELECT 1+1
FROM DUAL;  --������̺��� ������ ���̺� ���� �ִ°� �ƴϴ�.

SELECT LOWER('SQL COURSE'), UPPER('SQL COURSE'),INITCAP('SQL COURSE')--lower :���δ� �ҹ��ڷ� UPPER;���� �빮�ڷ� INITCAP:ù���� �빮�ڷ�
FROM DUAL;

-- �����Լ��� WHERE���� ���
SELECT employee_id, first_name
FROM employees
WHERE UPPER(first_name) = 'PATRICK';

-- 2. ���� ���� �Լ���
-- CONCAT�� ���ڿ��� ��ħ
SELECT first_name, last_name, 
    CONCAT(first_name, last_name) Ǯ����
FROM employees;

-- SUBSTR(���̸�, m, n); m�� ���۹���, n�� �߶� ����
SELECT employee_id, first_name,
SUBSTR(first_name, 1, 3),  -- ù��° ���� �����ؼ� 3�� ���� �߶󳽴�.
SUBSTR(first_name, 2, 4),  -- �ι�° ���� ���� 4�� ¥����.
SUBSTR(first_name, 2), -- ���ۺ��� ������
SUBSTR(first_name, -3) -- (-��)�����϶� ���������� ī��Ʈ
FROM employees;

-- length: ���ڿ��� ����
SELECT first_name, LENGTH(first_name)
FROM employees;

-- INSTR (���ڿ�, ã�� ����, m, n )
-- m�� �˻� ���� ��ġ
-- n�� ã�� Ƚ��
-- ����Ʈ���� m, n ���� 1
SELECT first_name,
INSTR(first_name, 'e', 2),
INSTR(first_name, 'e', 5),
INSTR(first_name, 'e', 1, 2) -- ù��° ���� ã�µ� 2��°�� ã�ƶ�
FROM employees
WHERE first_name =  'Nanette';

-- lpad / rpad (���ڿ�, �ڸ���, ä�﹮��)
-- l�� ����   / r�� ������
SELECT employee_id, first_name, salary,
    LPAD(salary,10,'#'), RPAD(salary,10,'*')
FROM employees;

-- ������ �̿��� ���ڿ��� �и�
SELECT 'ȫ �浿' ����,
SUBSTR('ȫ �浿',1,INSTR('ȫ �浿',' ')-1) ��
FROM DUAL;

SELECT 'ȫ �浿' ����,
SUBSTR('ȫȫ �浿',1,INSTR('ȫȫ �浿',' ')-1) ��,
SUBSTR('ȫȫ �浿',INSTR('ȫȫ �浿',' ')+1) �̸�
FROM DUAL;
-- �Լ� �ȿ� �Լ��� �־ ������ �̿��ؼ� �и� ����  ����� ���� ȫȫ ���´�.

--������ �Լ� ������
SELECT last_name, CONCAT('�������� ',job_id) AS ������
FROM employees
WHERE SUBSTR(job_id,4,3)='rer';
--job��_id �� 4��° ���ں��� REP�� ���
SELECT employee_id,
        CONCAT(first_name,last_name) �����̸�,
        last_name,
        LENGTH(last_name) ����,
      INSTR(last_name, 'a')"'a'�� ���°?"
    FROM employees;
    
--���� ġȯ:REPLACE
/*���ڿ� ���� ġȯ�� ���� �����Ѵ�
  REPLACE(���ڿ�,������ġ,��¹��ڰ���)
  ex REPLACE('hello','el','**')>h**lo
  */
SELECT job_id, REPLACE(job_id,'ACCOUNT','ACCNET')
FROM employees
WHERE job_id LIKE '%ACCOUNT%';

--���� employees���̺��� last_name�� �ҹ��ڿ� �빮�ڷ� ���� ����ϰ�,
--email�� ù��° ���ڴ� �빮�ڷ� ����ϼ���.
SELECT last_name �̸�, LOWER(last_name),
UPPER(LIST_NAME),email,INTCAP(email)
FROM employees;
 

--���� employees ���̺��� job_id�����Ͱ��� ù°�ڸ����� �����ؼ� �ΰ��� ���ڸ�
--����ϼ��� 
SELECT job_id, SUBSTR(job_id, 1,2)
FROM employees;



