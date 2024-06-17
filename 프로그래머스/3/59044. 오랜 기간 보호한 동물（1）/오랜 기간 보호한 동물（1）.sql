-- 코드를 입력하세요
-- 0614
-- 아직 입양을 못 간 동물 중, 가장 오래 보호소에 있었던 동물 3마리의 이름과 보호 시작일을 조회
-- 보호 시작일 순으로 조회해야 합니다.
SELECT AI.NAME, AI.DATETIME
FROM ANIMAL_INS AI LEFT JOIN ANIMAL_OUTS AO ON AI.ANIMAL_ID = AO.ANIMAL_ID
WHERE AO.ANIMAL_ID IS NULL
ORDER BY AI.DATETIME 
LIMIT 3;