-- 코드를 입력하세요
-- 0612
-- 조건 1 대여 시작일을 기준으로. 2022년 8월부터 2022년 10월까지. 총 대여 횟수가 5회 이상인 자동차들에 대해서
--       해당 기간 동안의 월별 자동차 ID 별 총 대여 횟수(컬럼명: RECORDS) 리스트를 출력
-- 조건 2  월을 기준으로 오름차순 정렬하고, 월이 같다면 자동차 ID를 기준으로 내림차순 정렬해주세요. 
--        특정 월의 총 대여 횟수가 0인 경우에는 결과에서 제외해주세요.
-- 조건 3

select month(start_date)as MONTH,car_id as CAR_ID,count(*) as RECORDS
from CAR_RENTAL_COMPANY_RENTAL_HISTORY
where month(start_date) between 8 and 10  and
car_id in 
(
select car_id
from CAR_RENTAL_COMPANY_RENTAL_HISTORY
where month(start_date) between 8 and 10  
group by car_id
having count(*) >4
)
group by car_id,month
order by month asc ,car_id desc