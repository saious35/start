-- 코드를 입력하세요
-- 0611
-- 조건 1 '통풍시트', '열선시트', '가죽시트' 중 하나 이상의 옵션이 포함된 자동차가
--        자동차 종류 별로 몇 대
-- 조건 2 자동차 수에 대한 컬럼명은 CARS로 지정
-- 조건 3 자동차 종류를 기준으로 오름차순 정렬
-- WHERE OPTIONS IN ('통풍시트', '열선시트', '가죽시트')

SELECT CAR_TYPE	, COUNT(*) AS CARS
FROM CAR_RENTAL_COMPANY_CAR
WHERE OPTIONS like "%통풍시트%"
or OPTIONS like "%열선시트%"
or OPTIONS like "%가죽시트%"
GROUP BY CAR_TYPE
ORDER BY CAR_TYPE ASC


