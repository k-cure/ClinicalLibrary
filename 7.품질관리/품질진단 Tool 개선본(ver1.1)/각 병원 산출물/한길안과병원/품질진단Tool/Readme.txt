★★버전별 업데이트 내용★★
□ v1.0 -> v1.1 변경사항
 1. err_cnt, err_val 집계 수식 부분 AM 행 지정 오류 수정
 2. err_cnt, err_val 집계 수식 부분 정규표현식 숫자형태 일원화(\d -> [0-9])
 3. 사망일자 관련 선후관계유효성 로직 수정(CASE WHEN NOT EXISTS -> JOIN 방식으로 변경)
 4. 방문일자 관련 선후관계유효성 로직 수정(CASE WHEN NOT EXISTS -> JOIN 방식으로 변경)