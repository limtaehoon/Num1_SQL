--날짜형 함수
SELECT first_name, hire_date --날짜형 데이터
FROM employees;
--sysdata 현재날짜와 시간 
SELECT SYSDATE
FROM DUAl;
--날짜+숫자=> 합한 날짜
SELECT SYSDATE, SYSDATE + 3,SYSDATE -3
FROM   DUAL;
--날짜-날짜=총일수
SELECT employee_id,SYSDATE, hire_date,
        sysdate - hire_date,ROUND(sysdate-hire_date)
FROM EMPLOYEES;
--시간계산
SELECT sysdate + 5/24 --시간 1을 /24하면 1시간 5: 현재시간에 +5
FROM DUAL;
--months_between :월을 계산
SELECT employee_id,first_name,
        ROUND (MONTHS_BETWEEN(SYSDATE,hire_date)),
        (SYSDATE - hire_date)/30 --/30하면 하루 
FROM employees;
--add_months:달을 더함
SELECT employee_id, first_name, hire_date,
        ADD_MONTHS(hire_date ,4)--4달 더하기  날짜에 매달 4달더하기
FROM employees;
--NEXT_DAT(날짜,다음번 나올요일)
SELECT SYSDATE , NEXT_DAY(SYSDATE, '월요일')
FROM dual;
--LAST_DAY(날짜): 그 월의 마지막 날 
SELECT LAST_DAY(SYSDATE)
FROM DUAL;

--날짜의 반올림
SELECT employee_id, hire_date,
    ROUND(hire_date, 'MONTH') 월,--날에서 반올림1일
    ROUND(hire_date, 'YEAR') 년--월에서 반올림 1월 1일
FROM employees
WHERE MONTHS_BETWEEN(sysdate,  hire_date)<150;
--EMPLOYEES 테이블에서 department_id가 100인직원에 대해 오늘날짜,
-- hire_date,오늘 날짜와 hire_date 사이의 개월수을 출력하세요
SELECT  sysdate, hire_date,MONTHS_BETWEEN(sysdate,  hire_date)
FROM employees
WHERE department_id =100;
--예제 employees 테이블에서 employees_id가 100과 106사이인 직원의 
--hire_date 에 3개월 더한값, hire_date에 3개월을 뺀 값을 출력하세요 
SELECT hire_date, add_MONTHS(hire_date,3),
        add_MONTHS(hire_date,-3)
FROM employees
WHERE employee_id BETWEEN 100 AND 106;


