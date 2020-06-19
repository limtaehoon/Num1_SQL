--숫자형 함수
--ROUND
SELECT  ROUND(15.193,1) 소수첫째자리,
        ROUND(15.193,2) 소수둘째자리,
        ROUND(15.193,0) 정수,
        ROUND(15.193) 디폴트,
        ROUND(15.193,-1)"10의 자리",
        ROUND(15.193,-2)"100의 자리"
        
FROM DUAL;
--TRUNC 버림
SELECT  TRUNC(15.79,1) 소수첫째자리,
        TRUNC(15.79,0) 정수,
        TRUNC(15.79) 디폴트,
        TRUNC(15.79,-1) "10의 자리"
FROM DUAL;
--MOD 나누기후 나머지
SELECT employee_id 짝수번, last_name
FROM employees
WHERE MOD(employee_id,2) =0 --짝수
ORDER BY 1;--첫번째열로 정열

SELECT employee_id 홀수번, last_name
FROM employees
WHERE MOD(employee_id,2) =1 --홀수
ORDER BY 1;--첫번째열로 정열
--예제 employees 테이블에서 salary를 30으로 나눈후 나눈값의 결과를 반올
--하여 정수,소수점 첫째자리,10의 자리로 나타내시오
SELECT salary,
ROUND(salary/30),--정수
ROUND(salary/30,1),--소수첫째
ROUND(salary/30,-1)--10의 자리
FROM employees;
 