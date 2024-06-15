-- 코드를 입력하세요
-- 0615
-- 조건 1  2022년 10월 5일에 등록된 중고거래 게시물
-- 조건 2 거래상태가 SALE 이면 판매중,
--       RESERVED이면 예약중, DONE이면 거래완료 분류
-- 조건 3 게시글 ID를 기준으로 내림차순 정렬
SELECT BOARD_ID,WRITER_ID,TITLE,PRICE,
    CASE 
    WHEN STATUS = 'SALE' THEN '판매중'
    WHEN STATUS = 'RESERVED' THEN '예약중'
    ELSE '거래완료' 
    END AS STATUS
FROM USED_GOODS_BOARD
WHERE DATE_FORMAT(CREATED_DATE	, '%Y-%m-%d')= '2022-10-05'
ORDER BY BOARD_ID DESC