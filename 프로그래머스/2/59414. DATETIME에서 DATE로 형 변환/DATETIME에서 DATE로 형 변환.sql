-- 코드를 입력하세요
-- 0616
-- 조건 1 테이블에 등록된 모든 레코드에 대해, 각 동물의 아이디와 이름, 들어온 날짜1를 조회
-- 조건 2 결과는 아이디 순으로 조회
-- 조건 3 
SELECT ANIMAL_ID,NAME, DATE_FORMAT(DATETIME, '%Y-%m-%d')  AS 날짜
FROM ANIMAL_INS
ORDER BY ANIMAL_ID 