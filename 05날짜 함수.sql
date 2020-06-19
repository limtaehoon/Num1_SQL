--��¥�� �Լ�
SELECT first_name, hire_date --��¥�� ������
FROM employees;
--sysdata ���糯¥�� �ð� 
SELECT SYSDATE
FROM DUAl;
--��¥+����=> ���� ��¥
SELECT SYSDATE, SYSDATE + 3,SYSDATE -3
FROM   DUAL;
--��¥-��¥=���ϼ�
SELECT employee_id,SYSDATE, hire_date,
        sysdate - hire_date,ROUND(sysdate-hire_date)
FROM EMPLOYEES;
--�ð����
SELECT sysdate + 5/24 --�ð� 1�� /24�ϸ� 1�ð� 5: ����ð��� +5
FROM DUAL;
--months_between :���� ���
SELECT employee_id,first_name,
        ROUND (MONTHS_BETWEEN(SYSDATE,hire_date)),
        (SYSDATE - hire_date)/30 --/30�ϸ� �Ϸ� 
FROM employees;
--add_months:���� ����
SELECT employee_id, first_name, hire_date,
        ADD_MONTHS(hire_date ,4)--4�� ���ϱ�  ��¥�� �Ŵ� 4�޴��ϱ�
FROM employees;
--NEXT_DAT(��¥,������ ���ÿ���)
SELECT SYSDATE , NEXT_DAY(SYSDATE, '������')
FROM dual;
--LAST_DAY(��¥): �� ���� ������ �� 
SELECT LAST_DAY(SYSDATE)
FROM DUAL;

--��¥�� �ݿø�
SELECT employee_id, hire_date,
    ROUND(hire_date, 'MONTH') ��,--������ �ݿø�1��
    ROUND(hire_date, 'YEAR') ��--������ �ݿø� 1�� 1��
FROM employees
WHERE MONTHS_BETWEEN(sysdate,  hire_date)<150;
--EMPLOYEES ���̺��� department_id�� 100�������� ���� ���ó�¥,
-- hire_date,���� ��¥�� hire_date ������ �������� ����ϼ���
SELECT  sysdate, hire_date,MONTHS_BETWEEN(sysdate,  hire_date)
FROM employees
WHERE department_id =100;
--���� employees ���̺��� employees_id�� 100�� 106������ ������ 
--hire_date �� 3���� ���Ѱ�, hire_date�� 3������ �� ���� ����ϼ��� 
SELECT hire_date, add_MONTHS(hire_date,3),
        add_MONTHS(hire_date,-3)
FROM employees
WHERE employee_id BETWEEN 100 AND 106;


