--������ �Լ�
--ROUND
SELECT  ROUND(15.193,1) �Ҽ�ù°�ڸ�,
        ROUND(15.193,2) �Ҽ���°�ڸ�,
        ROUND(15.193,0) ����,
        ROUND(15.193) ����Ʈ,
        ROUND(15.193,-1)"10�� �ڸ�",
        ROUND(15.193,-2)"100�� �ڸ�"
        
FROM DUAL;
--TRUNC ����
SELECT  TRUNC(15.79,1) �Ҽ�ù°�ڸ�,
        TRUNC(15.79,0) ����,
        TRUNC(15.79) ����Ʈ,
        TRUNC(15.79,-1) "10�� �ڸ�"
FROM DUAL;
--MOD �������� ������
SELECT employee_id ¦����, last_name
FROM employees
WHERE MOD(employee_id,2) =0 --¦��
ORDER BY 1;--ù��°���� ����

SELECT employee_id Ȧ����, last_name
FROM employees
WHERE MOD(employee_id,2) =1 --Ȧ��
ORDER BY 1;--ù��°���� ����
--���� employees ���̺��� salary�� 30���� ������ �������� ����� �ݿ�
--�Ͽ� ����,�Ҽ��� ù°�ڸ�,10�� �ڸ��� ��Ÿ���ÿ�
SELECT salary,
ROUND(salary/30),--����
ROUND(salary/30,1),--�Ҽ�ù°
ROUND(salary/30,-1)--10�� �ڸ�
FROM employees;
 