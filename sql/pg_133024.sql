-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/133024

-- 문제 설명:
-- FIRST_HALF 테이블에서 총주문량(TOTAL_ORDER)이 높은 순서대로 정렬.
-- 총주문량이 같을 경우 출하번호(SHIPMENT_ID)를 기준으로 오름차순 정렬.
-- FLAVOR 컬럼만 조회한다.

-- 테이블 스키마:
-- 테이블명: FIRST_HALF
-- ┌────────────┬────────────┬────────────┬────────────────────┐
-- │ 컬럼명         │ 데이터 타입  │ NULL 여부     │ 설명                         │
-- ├────────────┼────────────┼────────────┼────────────────────┤
-- │ SHIPMENT_ID │ INT           │ NOT NULL     │ 출하번호                     │
-- │ FLAVOR       │ VARCHAR      │ NOT NULL     │ 맛                           │
-- │ TOTAL_ORDER  │ INT           │ NOT NULL     │ 총 주문량                    │
-- └────────────┴────────────┴────────────┴────────────────────┘

-- 해결 전략:
-- 1. SELECT 문을 통해 FLAVOR 컬럼 조회.
-- 2. ORDER BY로 정렬 기준 설정:
--    - 첫 번째: TOTAL_ORDER 내림차순
--    - 두 번째: SHIPMENT_ID 오름차순

-- 사용 문법 요약:
-- - ORDER BY 컬럼1 DESC, 컬럼2 ASC: 다중 정렬 기준 설정
-- - DESC: 내림차순
-- - ASC: 오름차순 (기본값)

-- 복잡도:
-- - 시간복잡도: O(n log n) (정렬 기준)
-- - 공간복잡도: O(1) (별도 메모리 사용 없음)

-- 최종 SQL 쿼리:
SELECT FLAVOR
FROM FIRST_HALF
ORDER BY TOTAL_ORDER DESC, SHIPMENT_ID ASC;
