-- HR연습 계정 
--문자형 함수는 대소문자 함수와 문자 조작함수로 나뉜다.

-- 1.대소문자 조작 함수 (upper, lower, initcap)
SELECT 1+1
FROM DUAL;  --듀얼테이블은 연습용 테이블 따로 있는건 아니다.

SELECT LOWER('SQL COURSE'), UPPER('SQL COURSE'),INITCAP('SQL COURSE')--lower :전부다 소문자로 UPPER;전부 대문자로 INITCAP:첫글자 대문자로
FROM DUAL;

-- 문자함수를 WHERE절에 사용
SELECT employee_id, first_name
FROM employees
WHERE UPPER(first_name) = 'PATRICK';

-- 2. 문자 조작 함수들
-- CONCAT은 문자열을 합침
SELECT first_name, last_name, 
    CONCAT(first_name, last_name) 풀네임
FROM employees;

-- SUBSTR(열이름, m, n); m은 시작문자, n은 잘라낼 길이
SELECT employee_id, first_name,
SUBSTR(first_name, 1, 3),  -- 첫번째 부터 시작해서 3개 문자 잘라낸다.
SUBSTR(first_name, 2, 4),  -- 두번째 문자 부터 4개 짜른다.
SUBSTR(first_name, 2), -- 시작부터 끝까지
SUBSTR(first_name, -3) -- (-는)음수일때 끝에서부터 카운트
FROM employees;

-- length: 문자열의 길이
SELECT first_name, LENGTH(first_name)
FROM employees;

-- INSTR (문자열, 찾을 문자, m, n )
-- m은 검사 시작 위치
-- n은 찾을 횟수
-- 디폴트값은 m, n 각각 1
SELECT first_name,
INSTR(first_name, 'e', 2),
INSTR(first_name, 'e', 5),
INSTR(first_name, 'e', 1, 2) -- 첫번째 부터 찾는데 2번째껄 찾아라
FROM employees
WHERE first_name =  'Nanette';

-- lpad / rpad (문자열, 자릿수, 채울문자)
-- l은 왼쪽   / r은 오른쪽
SELECT employee_id, first_name, salary,
    LPAD(salary,10,'#'), RPAD(salary,10,'*')
FROM employees;

-- 공백을 이용해 문자열을 분리
SELECT '홍 길동' 성명,
SUBSTR('홍 길동',1,INSTR('홍 길동',' ')-1) 성
FROM DUAL;

SELECT '홍 길동' 성명,
SUBSTR('홍홍 길동',1,INSTR('홍홍 길동',' ')-1) 성,
SUBSTR('홍홍 길동',INSTR('홍홍 길동',' ')+1) 이름
FROM DUAL;
-- 함수 안에 함수를 넣어서 공백을 이용해서 분리 가능  결과값 성에 홍홍 나온다.

--문자함 함수 예저ㅔ
SELECT last_name, CONCAT('직업명이 ',job_id) AS 직업명
FROM employees
WHERE SUBSTR(job_id,4,3)='rer';
--jobㅁ_id 의 4번째 문자부터 REP인 경우
SELECT employee_id,
        CONCAT(first_name,last_name) 전제이름,
        last_name,
        LENGTH(last_name) 길이,
      INSTR(last_name, 'a')"'a'가 몇번째?"
    FROM employees;
    
--문자 치환:REPLACE
/*문자열 단위 치환된 값을 리턴한다
  REPLACE(문자열,시작위치,출력문자개수)
  ex REPLACE('hello','el','**')>h**lo
  */
SELECT job_id, REPLACE(job_id,'ACCOUNT','ACCNET')
FROM employees
WHERE job_id LIKE '%ACCOUNT%';

--예제 employees테이블에서 last_name을 소문자와 대문자로 각각 출력하고,
--email의 첫번째 문자는 대문자로 출력하세요.
SELECT last_name 이름, LOWER(last_name),
UPPER(LIST_NAME),email,INTCAP(email)
FROM employees;
 

--예제 employees 테이블에서 job_id데이터값의 첫째자리부터 시작해서 두개의 문자를
--출력하세요 
SELECT job_id, SUBSTR(job_id, 1,2)
FROM employees;



