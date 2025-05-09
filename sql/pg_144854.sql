-- # BOOK 테이블에서 샘플 확인 (최대 10개)
-- SELECT *
-- FROM BOOK
-- LIMIT 10;

-- # AUTHOR 테이블에서 샘플 확인 (최대 10개)
-- SELECT *
-- FROM AUTHOR
-- LIMIT 10;

-- # 별칭(alias) 사용 예시
-- # AS 키워드 없이도 별칭 지정 가능
-- # FROM BOOK AS B  →  FROM BOOK B

SELECT B.BOOK_ID, 
       A.AUTHOR_NAME, 
       DATE_FORMAT(B.PUBLISHED_DATE, '%Y-%m-%d') AS PUBLISHED_DATE
FROM BOOK AS B
INNER JOIN AUTHOR AS A
  ON B.AUTHOR_ID = A.AUTHOR_ID
WHERE B.CATEGORY = '경제'    # 카테고리가 '경제'인 책만 조회
ORDER BY B.PUBLISHED_DATE ASC;  # 출간일 기준 오름차순 정렬
