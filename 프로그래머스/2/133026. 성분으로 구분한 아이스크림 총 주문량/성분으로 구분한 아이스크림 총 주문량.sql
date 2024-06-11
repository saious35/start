-- 코드를 입력하세요
-- 0611
-- 조건 1 상반기 동안 각 아이스크림 성분 타입과 성분 타입에 대한 아이스크림의 총주문량
-- 조건 2 총주문량이 작은 순서대로 조회
-- 조건 3 총 주문량을 나타내는 컬럼명은 TOTAL_ORDER로 지정
SELECT INGREDIENT_TYPE, SUM(TOTAL_ORDER) AS TOTAL_ORDER
FROM FIRST_HALF AS F JOIN ICECREAM_INFO AS I
ON F.FLAVOR= I.FLAVOR
GROUP BY INGREDIENT_TYPE
ORDER BY TOTAL_ORDER 

