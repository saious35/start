-- 코드를 입력하세요
-- 0611
-- 조건 1 2022년 5월에 예약한 환자 수 
-- 조건 2 진료과코드 별로 조회
-- 조건 3 컬럼명은 '진료과 코드', '5월예약건수'로 지정
-- 조건 4 진료과별 예약한 환자 수 기준 오름차순 정렬하고,  진료과 코드 기준으로 오름차순 정렬

SELECT MCDP_CD as '진료과코드', count(*) as '5월예약건수'
FROM APPOINTMENT
WHERE DATE_FORMAT(APNT_YMD,'%Y-%m') ='2022-05'
GROUP BY MCDP_CD 
ORDER BY  count(MCDP_CD), MCDP_CD;




-- SELECT MCDP_CD AS 진료과코드, COUNT(MCDP_CD) AS '5월예약건수'
-- FROM APPOINTMENT
-- WHERE APNT_YMD LIKE '2022-05%' 
-- GROUP BY 진료과코드
-- ORDER BY 5월예약건수 ASC ,진료과코드 ASC

#select MCDP_CD as '진료과코드', count(*) as '5월예약건수' from APPOINTMENT  
 #   where month(APNT_YMD) = '05' and year(APNT_YMD) = '2022'
  #  group by MCDP_CD
   # order by count(MCDP_CD), MCDP_CD;