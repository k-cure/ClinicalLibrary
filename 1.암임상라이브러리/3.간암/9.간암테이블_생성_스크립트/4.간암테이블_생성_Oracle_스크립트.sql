
-- 1.간암_환자_건강정보
-- 간암_환자_건강정보 테이블 생성 스크립트 

-- DROP TABLE lvcn_pt_hlinf;
CREATE TABLE lvcn_pt_hlinf (
	hosp_cd varchar(20) NOT NULL, -- 병원코드
	pt_sbst_no varchar(10) NOT NULL, -- 환자대체번호
	adm_ymd varchar(8) NOT NULL, -- 입원일자
	hlinf_seq numeric(3) NOT NULL, -- 건강정보순번
	dsch_ymd varchar(8) , -- 퇴원일자
	cur_drnk_yn_noans_spcd varchar(20) , -- 현재음주여부무응답구분코드
	cur_drnk_yn_noans_spnm varchar(50) , -- 현재음주여부무응답구분명
	dhis_yn_noans_spcd varchar(20) , -- 음주력여부무응답구분코드
	dhis_yn_noans_spnm varchar(50) , -- 음주력여부무응답구분명
	drnk_strt_age_vl varchar(100) , -- 음주시작연령값
	drnk_kncd varchar(20) , -- 음주종류코드
	drnk_knnm varchar(200) , -- 음주종류명
	drnk_kind_etc_cont varchar(4000) , -- 음주종류기타내용
	drnk_qty varchar(100) , -- 음주량
	drnk_nt varchar(100) , -- 음주횟수
	drnk_dtrn_ycnt varchar(100) , -- 음주기간년수
	ndrk_strt_yr varchar(4) , -- 금주시작년도
	cur_smok_yn_noans_spcd varchar(20) , -- 현재흡연여부무응답구분코드
	cur_smok_yn_noans_spnm varchar(50) , -- 현재흡연여부무응답구분명
	shis_yn_noans_spcd varchar(20) , -- 흡연력여부무응답구분코드
	shis_yn_noans_spnm varchar(50) , -- 흡연력여부무응답구분명
	smok_strt_age_vl varchar(100) , -- 흡연시작연령값
	smok_qty varchar(200) , -- 흡연량
	smok_dtrn_ycnt varchar(100) , -- 흡연기간년수
	nsmk_strt_yr varchar(4) , -- 금연시작년도
	mhis_yn_noans_spcd varchar(20) , -- 병력여부무응답구분코드
	mhis_yn_noans_spnm varchar(50) , -- 병력여부무응답구분명
	mhis_htn_yn_noans_spcd varchar(20) NOT NULL, -- 병력고혈압여부무응답구분코드
	mhis_htn_yn_noans_spnm varchar(50) NOT NULL, -- 병력고혈압여부무응답구분명
	mhis_dbt_yn_noans_spcd varchar(20) NOT NULL, -- 병력당뇨여부무응답구분코드
	mhis_dbt_yn_noans_spnm varchar(50) NOT NULL, -- 병력당뇨여부무응답구분명
	mhis_tb_yn_noans_spcd varchar(20) , -- 병력결핵여부무응답구분코드
	mhis_tb_yn_noans_spnm varchar(50) , -- 병력결핵여부무응답구분명
	mhis_lvds_yn_noans_spcd varchar(20) NOT NULL, -- 병력간질환여부무응답구분코드
	mhis_lvds_yn_noans_spnm varchar(50) NOT NULL, -- 병력간질환여부무응답구분명
	mhis_lvds_kncd varchar(20) , -- 병력간질환종류코드
	mhis_lvds_knnm varchar(200) , -- 병력간질환종류명
	mhis_lvds_etc_cont varchar(4000) , -- 병력간질환기타내용
	mhis_hl_yn_noans_spcd varchar(20) , -- 병력고지혈증여부무응답구분코드
	mhis_hl_yn_noans_spnm varchar(50) , -- 병력고지혈증여부무응답구분명
	mhis_cncr_yn_noans_spcd varchar(20) , -- 병력암여부무응답구분코드
	mhis_cncr_yn_noans_spnm varchar(50) , -- 병력암여부무응답구분명
	mhis_cncr_kncd varchar(20) , -- 병력암종류코드
	mhis_cncr_knnm varchar(200) , -- 병력암종류명
	mhis_cncr_kind_etc_cont varchar(4000) , -- 병력암종류기타내용
	mhis_depr_yn_noans_spcd varchar(20) , -- 병력우울증여부무응답구분코드
	mhis_depr_yn_noans_spnm varchar(50) , -- 병력우울증여부무응답구분명
	mhis_insm_yn_noans_spcd varchar(20) , -- 병력불면증여부무응답구분코드
	mhis_insm_yn_noans_spnm varchar(50) , -- 병력불면증여부무응답구분명
	mhis_cads_yn_noans_spcd varchar(20) , -- 병력심장질환여부무응답구분코드
	mhis_cads_yn_noans_spnm varchar(50) , -- 병력심장질환여부무응답구분명
	etc_mhis_yn_noans_spcd varchar(20) , -- 기타병력여부무응답구분코드
	etc_mhis_yn_noans_spnm varchar(50) , -- 기타병력여부무응답구분명
	etc_mhis_diss_cont varchar(4000) , -- 기타병력질환내용
	main_sym_yn_noans_spcd varchar(20) , -- 주증상여부무응답구분코드
	main_sym_yn_noans_spnm varchar(50) , -- 주증상여부무응답구분명
	main_sym_cont varchar(4000) , -- 주증상내용
	ohad_hstr_yn_noans_spcd varchar(20) , -- 타병원진단후전원여부무응답구분코드
	ohad_hstr_yn_noans_spnm varchar(50) , -- 타병원진단후전원여부무응답구분명
	dsch_stcd varchar(20) , -- 퇴원상태코드
	dsch_stnm varchar(200) , -- 퇴원상태명
	crtn_dt timestamp NOT NULL DEFAULT SYSDATE NOT NULL, -- 생성일시
    CONSTRAINT lvcn_pt_hlinf_pk PRIMARY KEY (hosp_cd, pt_sbst_no, adm_ymd, hlinf_seq)
);

-- 간암_환자_건강정보 테이블 및 컬럼 코멘트 스크립트 
COMMENT ON TABLE lvcn_pt_hlinf IS '간암_환자_건강정보';

COMMENT ON COLUMN lvcn_pt_hlinf.hosp_cd IS '병원코드' ;
COMMENT ON COLUMN lvcn_pt_hlinf.pt_sbst_no IS '환자대체번호' ;
COMMENT ON COLUMN lvcn_pt_hlinf.adm_ymd IS '입원일자' ;
COMMENT ON COLUMN lvcn_pt_hlinf.hlinf_seq IS '건강정보순번' ;
COMMENT ON COLUMN lvcn_pt_hlinf.dsch_ymd IS '퇴원일자' ;
COMMENT ON COLUMN lvcn_pt_hlinf.cur_drnk_yn_noans_spcd IS '현재음주여부무응답구분코드' ;
COMMENT ON COLUMN lvcn_pt_hlinf.cur_drnk_yn_noans_spnm IS '현재음주여부무응답구분명' ;
COMMENT ON COLUMN lvcn_pt_hlinf.dhis_yn_noans_spcd IS '음주력여부무응답구분코드' ;
COMMENT ON COLUMN lvcn_pt_hlinf.dhis_yn_noans_spnm IS '음주력여부무응답구분명' ;
COMMENT ON COLUMN lvcn_pt_hlinf.drnk_strt_age_vl IS '음주시작연령값' ;
COMMENT ON COLUMN lvcn_pt_hlinf.drnk_kncd IS '음주종류코드' ;
COMMENT ON COLUMN lvcn_pt_hlinf.drnk_knnm IS '음주종류명' ;
COMMENT ON COLUMN lvcn_pt_hlinf.drnk_kind_etc_cont IS '음주종류기타내용' ;
COMMENT ON COLUMN lvcn_pt_hlinf.drnk_qty IS '음주량' ;
COMMENT ON COLUMN lvcn_pt_hlinf.drnk_nt IS '음주횟수' ;
COMMENT ON COLUMN lvcn_pt_hlinf.drnk_dtrn_ycnt IS '음주기간년수' ;
COMMENT ON COLUMN lvcn_pt_hlinf.ndrk_strt_yr IS '금주시작년도' ;
COMMENT ON COLUMN lvcn_pt_hlinf.cur_smok_yn_noans_spcd IS '현재흡연여부무응답구분코드' ;
COMMENT ON COLUMN lvcn_pt_hlinf.cur_smok_yn_noans_spnm IS '현재흡연여부무응답구분명' ;
COMMENT ON COLUMN lvcn_pt_hlinf.shis_yn_noans_spcd IS '흡연력여부무응답구분코드' ;
COMMENT ON COLUMN lvcn_pt_hlinf.shis_yn_noans_spnm IS '흡연력여부무응답구분명' ;
COMMENT ON COLUMN lvcn_pt_hlinf.smok_strt_age_vl IS '흡연시작연령값' ;
COMMENT ON COLUMN lvcn_pt_hlinf.smok_qty IS '흡연량' ;
COMMENT ON COLUMN lvcn_pt_hlinf.smok_dtrn_ycnt IS '흡연기간년수' ;
COMMENT ON COLUMN lvcn_pt_hlinf.nsmk_strt_yr IS '금연시작년도' ;
COMMENT ON COLUMN lvcn_pt_hlinf.mhis_yn_noans_spcd IS '병력여부무응답구분코드' ;
COMMENT ON COLUMN lvcn_pt_hlinf.mhis_yn_noans_spnm IS '병력여부무응답구분명' ;
COMMENT ON COLUMN lvcn_pt_hlinf.mhis_htn_yn_noans_spcd IS '병력고혈압여부무응답구분코드' ;
COMMENT ON COLUMN lvcn_pt_hlinf.mhis_htn_yn_noans_spnm IS '병력고혈압여부무응답구분명' ;
COMMENT ON COLUMN lvcn_pt_hlinf.mhis_dbt_yn_noans_spcd IS '병력당뇨여부무응답구분코드' ;
COMMENT ON COLUMN lvcn_pt_hlinf.mhis_dbt_yn_noans_spnm IS '병력당뇨여부무응답구분명' ;
COMMENT ON COLUMN lvcn_pt_hlinf.mhis_tb_yn_noans_spcd IS '병력결핵여부무응답구분코드' ;
COMMENT ON COLUMN lvcn_pt_hlinf.mhis_tb_yn_noans_spnm IS '병력결핵여부무응답구분명' ;
COMMENT ON COLUMN lvcn_pt_hlinf.mhis_lvds_yn_noans_spcd IS '병력간질환여부무응답구분코드' ;
COMMENT ON COLUMN lvcn_pt_hlinf.mhis_lvds_yn_noans_spnm IS '병력간질환여부무응답구분명' ;
COMMENT ON COLUMN lvcn_pt_hlinf.mhis_lvds_kncd IS '병력간질환종류코드' ;
COMMENT ON COLUMN lvcn_pt_hlinf.mhis_lvds_knnm IS '병력간질환종류명' ;
COMMENT ON COLUMN lvcn_pt_hlinf.mhis_lvds_etc_cont IS '병력간질환기타내용' ;
COMMENT ON COLUMN lvcn_pt_hlinf.mhis_hl_yn_noans_spcd IS '병력고지혈증여부무응답구분코드' ;
COMMENT ON COLUMN lvcn_pt_hlinf.mhis_hl_yn_noans_spnm IS '병력고지혈증여부무응답구분명' ;
COMMENT ON COLUMN lvcn_pt_hlinf.mhis_cncr_yn_noans_spcd IS '병력암여부무응답구분코드' ;
COMMENT ON COLUMN lvcn_pt_hlinf.mhis_cncr_yn_noans_spnm IS '병력암여부무응답구분명' ;
COMMENT ON COLUMN lvcn_pt_hlinf.mhis_cncr_kncd IS '병력암종류코드' ;
COMMENT ON COLUMN lvcn_pt_hlinf.mhis_cncr_knnm IS '병력암종류명' ;
COMMENT ON COLUMN lvcn_pt_hlinf.mhis_cncr_kind_etc_cont IS '병력암종류기타내용' ;
COMMENT ON COLUMN lvcn_pt_hlinf.mhis_depr_yn_noans_spcd IS '병력우울증여부무응답구분코드' ;
COMMENT ON COLUMN lvcn_pt_hlinf.mhis_depr_yn_noans_spnm IS '병력우울증여부무응답구분명' ;
COMMENT ON COLUMN lvcn_pt_hlinf.mhis_insm_yn_noans_spcd IS '병력불면증여부무응답구분코드' ;
COMMENT ON COLUMN lvcn_pt_hlinf.mhis_insm_yn_noans_spnm IS '병력불면증여부무응답구분명' ;
COMMENT ON COLUMN lvcn_pt_hlinf.mhis_cads_yn_noans_spcd IS '병력심장질환여부무응답구분코드' ;
COMMENT ON COLUMN lvcn_pt_hlinf.mhis_cads_yn_noans_spnm IS '병력심장질환여부무응답구분명' ;
COMMENT ON COLUMN lvcn_pt_hlinf.etc_mhis_yn_noans_spcd IS '기타병력여부무응답구분코드' ;
COMMENT ON COLUMN lvcn_pt_hlinf.etc_mhis_yn_noans_spnm IS '기타병력여부무응답구분명' ;
COMMENT ON COLUMN lvcn_pt_hlinf.etc_mhis_diss_cont IS '기타병력질환내용' ;
COMMENT ON COLUMN lvcn_pt_hlinf.main_sym_yn_noans_spcd IS '주증상여부무응답구분코드' ;
COMMENT ON COLUMN lvcn_pt_hlinf.main_sym_yn_noans_spnm IS '주증상여부무응답구분명' ;
COMMENT ON COLUMN lvcn_pt_hlinf.main_sym_cont IS '주증상내용' ;
COMMENT ON COLUMN lvcn_pt_hlinf.ohad_hstr_yn_noans_spcd IS '타병원진단후전원여부무응답구분코드' ;
COMMENT ON COLUMN lvcn_pt_hlinf.ohad_hstr_yn_noans_spnm IS '타병원진단후전원여부무응답구분명' ;
COMMENT ON COLUMN lvcn_pt_hlinf.dsch_stcd IS '퇴원상태코드' ;
COMMENT ON COLUMN lvcn_pt_hlinf.dsch_stnm IS '퇴원상태명' ;
COMMENT ON COLUMN lvcn_pt_hlinf.crtn_dt IS '생성일시' ;


-- 2.간암_환자_가족력
-- 간암_환자_가족력 테이블 생성 스크립트 

-- DROP TABLE lvcn_pt_fmht;
CREATE TABLE lvcn_pt_fmht (
	hosp_cd varchar(20) NOT NULL, -- 병원코드
	pt_sbst_no varchar(10) NOT NULL, -- 환자대체번호
	fmht_rcrd_ymd varchar(8) NOT NULL, -- 가족력기록일자
	fmht_rcrd_seq numeric(3) NOT NULL, -- 가족력기록순번
	fmht_yn_noans_spcd varchar(20) , -- 가족력여부무응답구분코드
	fmht_yn_noans_spnm varchar(50) , -- 가족력여부무응답구분명
	pt_fm_rlcd varchar(20) , -- 환자가족관계코드
	pt_fm_rlnm varchar(200) , -- 환자가족관계명
	pt_fmrl_etc_cont varchar(4000) , -- 환자가족관계기타내용
	fmhs_htn_yn_noans_spcd varchar(20) , -- 가족병력고혈압여부무응답구분코드
	fmhs_htn_yn_noans_spnm varchar(50) , -- 가족병력고혈압여부무응답구분명
	fmhs_dbt_yn_noans_spcd varchar(20) , -- 가족병력당뇨여부무응답구분코드
	fmhs_dbt_yn_noans_spnm varchar(50) , -- 가족병력당뇨여부무응답구분명
	fmht_tb_yn_noans_spcd varchar(20) , -- 가족력결핵여부무응답구분코드
	fmht_tb_yn_noans_spnm varchar(50) , -- 가족력결핵여부무응답구분명
	fmhs_lvds_yn_noans_spcd varchar(20) , -- 가족병력간질환여부무응답구분코드
	fmhs_lvds_yn_noans_spnm varchar(50) , -- 가족병력간질환여부무응답구분명
	fmhs_lvds_kncd varchar(20) , -- 가족병력간질환종류코드
	fmhs_lvds_knnm varchar(200) , -- 가족병력간질환종류명
	fmhs_lvds_kind_etc_cont varchar(4000) , -- 가족병력간질환종류기타내용
	fmhs_cncr_yn_noans_spcd varchar(20) , -- 가족병력암여부무응답구분코드
	fmhs_cncr_yn_noans_spnm varchar(50) , -- 가족병력암여부무응답구분명
	fmht_cncr_kncd varchar(20) , -- 가족력암종류코드
	fmht_cncr_knnm varchar(200) , -- 가족력암종류명
	fmht_cncr_kind_etc_cont varchar(4000) , -- 가족력암종류기타내용
	fmhs_etc_yn_noans_spcd varchar(20) , -- 가족병력기타여부무응답구분코드
	fmhs_etc_yn_noans_spnm varchar(50) , -- 가족병력기타여부무응답구분명
	fmhs_etc_cont varchar(4000) , -- 가족병력기타내용
	crtn_dt timestamp NOT NULL DEFAULT SYSDATE NOT NULL, -- 생성일시
    CONSTRAINT lvcn_pt_fmht_pk PRIMARY KEY (hosp_cd, pt_sbst_no, fmht_rcrd_ymd, fmht_rcrd_seq)
);

-- 간암_환자_가족력 테이블 및 컬럼 코멘트 스크립트 
COMMENT ON TABLE lvcn_pt_fmht IS '간암_환자_가족력';
COMMENT ON COLUMN lvcn_pt_fmht.hosp_cd IS '병원코드' ;
COMMENT ON COLUMN lvcn_pt_fmht.pt_sbst_no IS '환자대체번호' ;
COMMENT ON COLUMN lvcn_pt_fmht.fmht_rcrd_ymd IS '가족력기록일자' ;
COMMENT ON COLUMN lvcn_pt_fmht.fmht_rcrd_seq IS '가족력기록순번' ;
COMMENT ON COLUMN lvcn_pt_fmht.fmht_yn_noans_spcd IS '가족력여부무응답구분코드' ;
COMMENT ON COLUMN lvcn_pt_fmht.fmht_yn_noans_spnm IS '가족력여부무응답구분명' ;
COMMENT ON COLUMN lvcn_pt_fmht.pt_fm_rlcd IS '환자가족관계코드' ;
COMMENT ON COLUMN lvcn_pt_fmht.pt_fm_rlnm IS '환자가족관계명' ;
COMMENT ON COLUMN lvcn_pt_fmht.pt_fmrl_etc_cont IS '환자가족관계기타내용' ;
COMMENT ON COLUMN lvcn_pt_fmht.fmhs_htn_yn_noans_spcd IS '가족병력고혈압여부무응답구분코드' ;
COMMENT ON COLUMN lvcn_pt_fmht.fmhs_htn_yn_noans_spnm IS '가족병력고혈압여부무응답구분명' ;
COMMENT ON COLUMN lvcn_pt_fmht.fmhs_dbt_yn_noans_spcd IS '가족병력당뇨여부무응답구분코드' ;
COMMENT ON COLUMN lvcn_pt_fmht.fmhs_dbt_yn_noans_spnm IS '가족병력당뇨여부무응답구분명' ;
COMMENT ON COLUMN lvcn_pt_fmht.fmht_tb_yn_noans_spcd IS '가족력결핵여부무응답구분코드' ;
COMMENT ON COLUMN lvcn_pt_fmht.fmht_tb_yn_noans_spnm IS '가족력결핵여부무응답구분명' ;
COMMENT ON COLUMN lvcn_pt_fmht.fmhs_lvds_yn_noans_spcd IS '가족병력간질환여부무응답구분코드' ;
COMMENT ON COLUMN lvcn_pt_fmht.fmhs_lvds_yn_noans_spnm IS '가족병력간질환여부무응답구분명' ;
COMMENT ON COLUMN lvcn_pt_fmht.fmhs_lvds_kncd IS '가족병력간질환종류코드' ;
COMMENT ON COLUMN lvcn_pt_fmht.fmhs_lvds_knnm IS '가족병력간질환종류명' ;
COMMENT ON COLUMN lvcn_pt_fmht.fmhs_lvds_kind_etc_cont IS '가족병력간질환종류기타내용' ;
COMMENT ON COLUMN lvcn_pt_fmht.fmhs_cncr_yn_noans_spcd IS '가족병력암여부무응답구분코드' ;
COMMENT ON COLUMN lvcn_pt_fmht.fmhs_cncr_yn_noans_spnm IS '가족병력암여부무응답구분명' ;
COMMENT ON COLUMN lvcn_pt_fmht.fmht_cncr_kncd IS '가족력암종류코드' ;
COMMENT ON COLUMN lvcn_pt_fmht.fmht_cncr_knnm IS '가족력암종류명' ;
COMMENT ON COLUMN lvcn_pt_fmht.fmht_cncr_kind_etc_cont IS '가족력암종류기타내용' ;
COMMENT ON COLUMN lvcn_pt_fmht.fmhs_etc_yn_noans_spcd IS '가족병력기타여부무응답구분코드' ;
COMMENT ON COLUMN lvcn_pt_fmht.fmhs_etc_yn_noans_spnm IS '가족병력기타여부무응답구분명' ;
COMMENT ON COLUMN lvcn_pt_fmht.fmhs_etc_cont IS '가족병력기타내용' ;
COMMENT ON COLUMN lvcn_pt_fmht.crtn_dt IS '생성일시' ;

-- 3.간암_진단_신체계측정보
-- 간암_진단_신체계측정보 테이블 생성 스크립트 

-- DROP TABLE lvcn_diag_aninf;
CREATE TABLE lvcn_diag_aninf (
	hosp_cd varchar(20) NOT NULL, -- 병원코드
	pt_sbst_no varchar(10) NOT NULL, -- 환자대체번호
	anth_rcrd_ymd varchar(8) NOT NULL, -- 신체계측기록일자
	anth_rcrd_seq numeric(3) NOT NULL, -- 신체계측기록순번
	ht_msrm_vl numeric(10,3) , -- 신장측정값
	wt_msrm_vl numeric(10,3) , -- 체중측정값
	bmi_vl numeric(10,3) , -- BMI값
	rlxt_blpr_vl varchar(200) , -- 이완혈압값
	ctrt_blpr_vl varchar(200) , -- 수축혈압값
	ecog_cd varchar(20) NOT NULL, -- ECOG코드
	ecog_nm varchar(200) NOT NULL, -- ECOG명
	crtn_dt timestamp NOT NULL DEFAULT SYSDATE NOT NULL, -- 생성일시
    CONSTRAINT lvcn_diag_aninf_pk PRIMARY KEY (hosp_cd, pt_sbst_no, anth_rcrd_ymd, anth_rcrd_seq)
);


-- 간암_진단_신체계측정보 테이블 및 컬럼 코멘트 스크립트 
COMMENT ON TABLE lvcn_diag_aninf IS '간암_진단_신체계측정보';

COMMENT ON COLUMN lvcn_diag_aninf.hosp_cd IS '병원코드' ;
COMMENT ON COLUMN lvcn_diag_aninf.pt_sbst_no IS '환자대체번호' ;
COMMENT ON COLUMN lvcn_diag_aninf.anth_rcrd_ymd IS '신체계측기록일자' ;
COMMENT ON COLUMN lvcn_diag_aninf.anth_rcrd_seq IS '신체계측기록순번' ;
COMMENT ON COLUMN lvcn_diag_aninf.ht_msrm_vl IS '신장측정값' ;
COMMENT ON COLUMN lvcn_diag_aninf.wt_msrm_vl IS '체중측정값' ;
COMMENT ON COLUMN lvcn_diag_aninf.bmi_vl IS 'BMI값' ;
COMMENT ON COLUMN lvcn_diag_aninf.rlxt_blpr_vl IS '이완혈압값' ;
COMMENT ON COLUMN lvcn_diag_aninf.ctrt_blpr_vl IS '수축혈압값' ;
COMMENT ON COLUMN lvcn_diag_aninf.ecog_cd IS 'ECOG코드' ;
COMMENT ON COLUMN lvcn_diag_aninf.ecog_nm IS 'ECOG명' ;
COMMENT ON COLUMN lvcn_diag_aninf.crtn_dt IS '생성일시' ;


-- 4. 간암_진단_간기능평가
-- 간암_진단_간기능평가 테이블 생성 스크립트 

-- DROP TABLE lvcn_diag_lvfa;
CREATE TABLE lvcn_diag_lvfa (
    hosp_cd varchar(20) NOT NULL, -- 병원코드
    pt_sbst_no varchar(10) NOT NULL, -- 환자대체번호
    lvfa_crit_ymd varchar(8) NOT NULL, -- 간기능평가기준일자
    lvfa_crit_seq numeric(3) NOT NULL, -- 간기능평가기준순번
    lvfa_kncd varchar(20) , -- 간기능평가종류코드
    lvfa_knnm varchar(200) , -- 간기능평가종류명
    lvfa_rslt_cont varchar(200) , -- 간기능평가결과내용
    crtn_dt timestamp NOT NULL DEFAULT SYSDATE NOT NULL, -- 생성일시
    CONSTRAINT lvcn_diag_lvfa_pk PRIMARY KEY (hosp_cd, pt_sbst_no, lvfa_crit_ymd, lvfa_crit_seq)
);

-- 간암_진단_간기능평가 테이블 및 컬럼 코멘트 스크립트 
COMMENT ON TABLE lvcn_diag_lvfa IS '간암_진단_간기능평가';

COMMENT ON COLUMN lvcn_diag_lvfa.hosp_cd IS '병원코드' ;
COMMENT ON COLUMN lvcn_diag_lvfa.pt_sbst_no IS '환자대체번호' ;
COMMENT ON COLUMN lvcn_diag_lvfa.lvfa_crit_ymd IS '간기능평가기준일자' ;
COMMENT ON COLUMN lvcn_diag_lvfa.lvfa_crit_seq IS '간기능평가기준순번' ;
COMMENT ON COLUMN lvcn_diag_lvfa.lvfa_kncd IS '간기능평가종류코드' ;
COMMENT ON COLUMN lvcn_diag_lvfa.lvfa_knnm IS '간기능평가종류명' ;
COMMENT ON COLUMN lvcn_diag_lvfa.lvfa_rslt_cont IS '간기능평가결과내용' ;
COMMENT ON COLUMN lvcn_diag_lvfa.crtn_dt IS '생성일시' ;


-- 5.간암_진단_정보
-- 간암_진단_정보 테이블 생성 스크립트 

-- DROP TABLE lvcn_diag_inf;
CREATE TABLE lvcn_diag_inf (
    hosp_cd varchar(20) NOT NULL, -- 병원코드
    pt_sbst_no varchar(10) NOT NULL, -- 환자대체번호
    diag_rgst_ymd varchar(8) NOT NULL, -- 진단등록일자
    diag_rgst_seq numeric(3) NOT NULL, -- 진단등록순번
    lvcn_diag_kncd varchar(20) NOT NULL, -- 간암진단종류코드
    lvcn_diag_knnm varchar(200) NOT NULL, -- 간암진단종류명
    diag_cd varchar(20) NOT NULL, -- 진단코드
    diag_nm varchar(300) NOT NULL, -- 진단명
    diag_kcd_cd varchar(20) NOT NULL, -- 진단KCD코드
    diag_kcd_nm varchar(200) NOT NULL, -- 진단KCD명
    diag_smct_cd varchar(200) , -- 진단SNOMEDCT코드
    diag_smct_nm varchar(1000) , -- 진단SNOMEDCT명
    crtn_dt timestamp NOT NULL DEFAULT SYSDATE NOT NULL, -- 생성일시
    CONSTRAINT lvcn_diag_inf_pk PRIMARY KEY (hosp_cd, pt_sbst_no, diag_rgst_ymd, diag_rgst_seq)
);

-- 간암_진단_정보 테이블 및 컬럼 코멘트 스크립트 

COMMENT ON TABLE lvcn_diag_inf IS '간암_진단_정보';

COMMENT ON COLUMN lvcn_diag_inf.hosp_cd IS '병원코드' ;
COMMENT ON COLUMN lvcn_diag_inf.pt_sbst_no IS '환자대체번호' ;
COMMENT ON COLUMN lvcn_diag_inf.diag_rgst_ymd IS '진단등록일자' ;
COMMENT ON COLUMN lvcn_diag_inf.diag_rgst_seq IS '진단등록순번' ;
COMMENT ON COLUMN lvcn_diag_inf.lvcn_diag_kncd IS '간암진단종류코드' ;
COMMENT ON COLUMN lvcn_diag_inf.lvcn_diag_knnm IS '간암진단종류명' ;
COMMENT ON COLUMN lvcn_diag_inf.diag_cd IS '진단코드' ;
COMMENT ON COLUMN lvcn_diag_inf.diag_nm IS '진단명' ;
COMMENT ON COLUMN lvcn_diag_inf.diag_kcd_cd IS '진단KCD코드' ;
COMMENT ON COLUMN lvcn_diag_inf.diag_kcd_nm IS '진단KCD명' ;
COMMENT ON COLUMN lvcn_diag_inf.diag_smct_cd IS '진단SNOMEDCT코드' ;
COMMENT ON COLUMN lvcn_diag_inf.diag_smct_nm IS '진단SNOMEDCT명' ;
COMMENT ON COLUMN lvcn_diag_inf.crtn_dt IS '생성일시' ;


-- 6.간암_진단_전이
-- 간암_진단_전이 테이블 생성 스크립트 

-- DROP TABLE lvcn_diag_mtst;
CREATE TABLE lvcn_diag_mtst (
    hosp_cd varchar(20) NOT NULL, -- 병원코드
    pt_sbst_no varchar(10) NOT NULL, -- 환자대체번호
    mtdg_ymd varchar(8) NOT NULL, -- 전이진단일자
    mtdg_seq numeric(3) NOT NULL, -- 전이진단순번
    mtst_site_cd varchar(20) , -- 전이부위코드
    mtst_site_nm varchar(200) , -- 전이부위명
    mtst_site_etc_cont varchar(4000) , -- 전이부위기타내용
    mtst_aspt_cd varchar(20) , -- 전이양상코드
    mtst_aspt_nm varchar(200) , -- 전이양상명
    mtdg_mtcd varchar(20) , -- 전이진단방법코드
    mtdg_mtnm varchar(200) , -- 전이진단방법명
    mtst_trtm_cont varchar(4000) , -- 전이치료내용
    crtn_dt timestamp NOT NULL DEFAULT SYSDATE NOT NULL, -- 생성일시
    CONSTRAINT lvcn_diag_mtst_pk PRIMARY KEY (hosp_cd, pt_sbst_no, mtdg_ymd, mtdg_seq)
);

-- 간암_진단_전이 테이블 및 컬럼 코멘트 스크립트 

COMMENT ON TABLE lvcn_diag_mtst IS '간암_진단_전이';

COMMENT ON COLUMN lvcn_diag_mtst.hosp_cd IS '병원코드' ;
COMMENT ON COLUMN lvcn_diag_mtst.pt_sbst_no IS '환자대체번호' ;
COMMENT ON COLUMN lvcn_diag_mtst.mtdg_ymd IS '전이진단일자' ;
COMMENT ON COLUMN lvcn_diag_mtst.mtdg_seq IS '전이진단순번' ;
COMMENT ON COLUMN lvcn_diag_mtst.mtst_site_cd IS '전이부위코드' ;
COMMENT ON COLUMN lvcn_diag_mtst.mtst_site_nm IS '전이부위명' ;
COMMENT ON COLUMN lvcn_diag_mtst.mtst_site_etc_cont IS '전이부위기타내용' ;
COMMENT ON COLUMN lvcn_diag_mtst.mtst_aspt_cd IS '전이양상코드' ;
COMMENT ON COLUMN lvcn_diag_mtst.mtst_aspt_nm IS '전이양상명' ;
COMMENT ON COLUMN lvcn_diag_mtst.mtdg_mtcd IS '전이진단방법코드' ;
COMMENT ON COLUMN lvcn_diag_mtst.mtdg_mtnm IS '전이진단방법명' ;
COMMENT ON COLUMN lvcn_diag_mtst.mtst_trtm_cont IS '전이치료내용' ;
COMMENT ON COLUMN lvcn_diag_mtst.crtn_dt IS '생성일시' ;


-- 7.간암_진단_병기
-- 간암_진단_병기 테이블 생성 스크립트
 
-- DROP TABLE lvcn_diag_stag;
CREATE TABLE lvcn_diag_stag (
    hosp_cd varchar(20) NOT NULL, -- 병원코드
    pt_sbst_no varchar(10) NOT NULL, -- 환자대체번호
    diag_stag_rcrd_ymd varchar(8) NOT NULL, -- 진단병기기록일자
    diag_stag_rcrd_seq numeric(3) NOT NULL, -- 진단병기기록순번
    clnc_tumr_prty_cd varchar(20) , -- 임상종양특성코드
    clnc_tumr_prty_nm varchar(200) , -- 임상종양특성명
    stg_yr varchar(4) , -- STAGE년도
    stg_kncd varchar(20) , -- STAGE종류코드
    stg_knnm varchar(200) , -- STAGE종류명
    clnc_tnm_stag_vl varchar(200) , -- 임상TNM병기값
    clnc_t_stag_vl varchar(200) , -- 임상T병기값
    clnc_n_stag_vl varchar(200) , -- 임상N병기값
    clnc_m_stag_vl varchar(200) , -- 임상M병기값
    crtn_dt timestamp NOT NULL DEFAULT SYSDATE NOT NULL, -- 생성일시
    CONSTRAINT lvcn_diag_stag_pk PRIMARY KEY (hosp_cd, pt_sbst_no, diag_stag_rcrd_ymd, diag_stag_rcrd_seq)
);

-- 간암_진단_병기 테이블 및 컬럼 코멘트 스크립트 

COMMENT ON TABLE lvcn_diag_stag IS '간암_진단_병기';

COMMENT ON COLUMN lvcn_diag_stag.hosp_cd IS '병원코드' ;
COMMENT ON COLUMN lvcn_diag_stag.pt_sbst_no IS '환자대체번호' ;
COMMENT ON COLUMN lvcn_diag_stag.diag_stag_rcrd_ymd IS '진단병기기록일자' ;
COMMENT ON COLUMN lvcn_diag_stag.diag_stag_rcrd_seq IS '진단병기기록순번' ;
COMMENT ON COLUMN lvcn_diag_stag.clnc_tumr_prty_cd IS '임상종양특성코드' ;
COMMENT ON COLUMN lvcn_diag_stag.clnc_tumr_prty_nm IS '임상종양특성명' ;
COMMENT ON COLUMN lvcn_diag_stag.stg_yr IS 'STAGE년도' ;
COMMENT ON COLUMN lvcn_diag_stag.stg_kncd IS 'STAGE종류코드' ;
COMMENT ON COLUMN lvcn_diag_stag.stg_knnm IS 'STAGE종류명' ;
COMMENT ON COLUMN lvcn_diag_stag.clnc_tnm_stag_vl IS '임상TNM병기값' ;
COMMENT ON COLUMN lvcn_diag_stag.clnc_t_stag_vl IS '임상T병기값' ;
COMMENT ON COLUMN lvcn_diag_stag.clnc_n_stag_vl IS '임상N병기값' ;
COMMENT ON COLUMN lvcn_diag_stag.clnc_m_stag_vl IS '임상M병기값' ;
COMMENT ON COLUMN lvcn_diag_stag.crtn_dt IS '생성일시' ;


-- 8.간암_검사_진단
-- 간암_검사_진단 테이블 생성 스크립트
 
-- DROP TABLE lvcn_exam_diag;

CREATE TABLE lvcn_exam_diag (
    hosp_cd varchar(20) NOT NULL, -- 병원코드
    pt_sbst_no varchar(10) NOT NULL, -- 환자대체번호
    cexm_ymd varchar(8) NOT NULL, -- 진단검사일자
    cexm_seq numeric(3) NOT NULL, -- 진단검사순번
    cexm_kncd varchar(20) NOT NULL, -- 진단검사종류코드
    cexm_knnm varchar(200) NOT NULL, -- 진단검사종류명
    cexm_cd varchar(20) NOT NULL, -- 진단검사코드
    cexm_nm varchar(200) NOT NULL, -- 진단검사명
    cexm_edi_cd varchar(20) , -- 진단검사EDI코드
    cexm_edi_nm varchar(200) , -- 진단검사EDI명
    cexm_smct_cd varchar(200) , -- 진단검사SNOMEDCT코드
    cexm_smct_nm varchar(1000) , -- 진단검사SNOMEDCT명
    cexm_loinc_cd varchar(20) , -- 진단검사LOINC코드
    cexm_loinc_nm varchar(1000) , -- 진단검사LOINC명
    cexm_rslt_cont varchar(4000) NOT NULL, -- 진단검사결과내용
    cexm_rslt_unit_cont varchar(4000) , -- 진단검사결과단위내용
    cexm_nlrg_ref_vl varchar(200) , -- 진단검사정상범위참고값
    crtn_dt timestamp NOT NULL DEFAULT SYSDATE NOT NULL, -- 생성일시
    CONSTRAINT lvcn_exam_diag_pk PRIMARY KEY (hosp_cd, pt_sbst_no, cexm_ymd, cexm_seq)
);

-- 간암_검사_진단 테이블 및 컬럼 코멘트 스크립트 
COMMENT ON TABLE lvcn_exam_diag IS '간암_검사_진단';

COMMENT ON COLUMN lvcn_exam_diag.hosp_cd IS '병원코드' ;
COMMENT ON COLUMN lvcn_exam_diag.pt_sbst_no IS '환자대체번호' ;
COMMENT ON COLUMN lvcn_exam_diag.cexm_ymd IS '진단검사일자' ;
COMMENT ON COLUMN lvcn_exam_diag.cexm_seq IS '진단검사순번' ;
COMMENT ON COLUMN lvcn_exam_diag.cexm_kncd IS '진단검사종류코드' ;
COMMENT ON COLUMN lvcn_exam_diag.cexm_knnm IS '진단검사종류명' ;
COMMENT ON COLUMN lvcn_exam_diag.cexm_cd IS '진단검사코드' ;
COMMENT ON COLUMN lvcn_exam_diag.cexm_nm IS '진단검사명' ;
COMMENT ON COLUMN lvcn_exam_diag.cexm_edi_cd IS '진단검사EDI코드' ;
COMMENT ON COLUMN lvcn_exam_diag.cexm_edi_nm IS '진단검사EDI명' ;
COMMENT ON COLUMN lvcn_exam_diag.cexm_smct_cd IS '진단검사SNOMEDCT코드' ;
COMMENT ON COLUMN lvcn_exam_diag.cexm_smct_nm IS '진단검사SNOMEDCT명' ;
COMMENT ON COLUMN lvcn_exam_diag.cexm_loinc_cd IS '진단검사LOINC코드' ;
COMMENT ON COLUMN lvcn_exam_diag.cexm_loinc_nm IS '진단검사LOINC명' ;
COMMENT ON COLUMN lvcn_exam_diag.cexm_rslt_cont IS '진단검사결과내용' ;
COMMENT ON COLUMN lvcn_exam_diag.cexm_rslt_unit_cont IS '진단검사결과단위내용' ;
COMMENT ON COLUMN lvcn_exam_diag.cexm_nlrg_ref_vl IS '진단검사정상범위참고값' ;
COMMENT ON COLUMN lvcn_exam_diag.crtn_dt IS '생성일시' ;


-- 9.간암_검사_영상
-- 간암_검사_영상 테이블 생성 스크립트
 
-- DROP TABLE lvcn_exam_imag;
CREATE TABLE lvcn_exam_imag (
    hosp_cd varchar(20) NOT NULL, -- 병원코드
    pt_sbst_no varchar(10) NOT NULL, -- 환자대체번호
    imex_ymd varchar(8) NOT NULL, -- 영상검사일자
    imex_seq numeric(3) NOT NULL, -- 영상검사순번
    imex_kncd varchar(20) NOT NULL, -- 영상검사종류코드
    imex_knnm varchar(200) NOT NULL, -- 영상검사종류명
    imex_cd varchar(20) NOT NULL, -- 영상검사코드
    imex_nm varchar(200) NOT NULL, -- 영상검사명
    imex_edi_cd varchar(20) , -- 영상검사EDI코드
    imex_edi_nm varchar(300) , -- 영상검사EDI명
    imex_smct_cd varchar(200) , -- 영상검사SNOMEDCT코드
    imex_smct_nm varchar(1000) , -- 영상검사SNOMEDCT명
    imex_rslt_cont varchar(4000) , -- 영상검사결과내용
    lver_tumr_cnt_spcd varchar(20) , -- 간종양수구분코드
    lver_tumr_cnt_spnm varchar(200) , -- 간종양수구분명
    lver_tumr_size_vl numeric(5,2) , -- 간종양크기값
    lver_tumr_frm_spcd varchar(20) , -- 간종양형태구분코드
    lver_tumr_frm_spnm varchar(200) , -- 간종양형태구분명
    lver_vnin_ex_yn_spcd varchar(20) , -- 간정맥침윤존재여부구분코드
    lver_vnin_ex_yn_spnm varchar(200) , -- 간정맥침윤존재여부구분명
    hpa_inva_ex_yn_spcd varchar(20) , -- 간동맥침윤존재여부구분코드
    hpa_inva_ex_yn_spnm varchar(200) , -- 간동맥침윤존재여부구분명
    ptv_inva_ex_yn_spcd varchar(20) , -- 간문맥침윤존재여부구분코드
    ptv_inva_ex_yn_spnm varchar(200) , -- 간문맥침윤존재여부구분명
    ptv_inva_levl_spcd varchar(20) , -- 간문맥침윤수준구분코드
    ptv_inva_levl_spnm varchar(200) , -- 간문맥침윤수준구분명
    bld_inva_ex_yn_spcd varchar(20) , -- 담관침윤존재여부구분코드
    bld_inva_ex_yn_spnm varchar(200) , -- 담관침윤존재여부구분명
    exhp_mtst_ex_yn_spcd varchar(20) , -- 간외전이존재여부구분코드
    exhp_mtst_ex_yn_spnm varchar(200) , -- 간외전이존재여부구분명
    exhp_mtst_site_cd varchar(20) , -- 간외전이부위코드
    exhp_mtst_site_nm varchar(200) , -- 간외전이부위명
    exhp_mtst_site_etc_cont varchar(4000) , -- 간외전이부위기타내용
    asct_sym_spcd varchar(20) , -- 복수증상구분코드
    asct_sym_spnm varchar(200) , -- 복수증상구분명
    inhp_fam_exam_rslt_vl varchar(200) , -- 간내지방량검사결과값
    lver_elst_exam_rslt_vl numeric(5,2) , -- 간탄력도검사결과값
    crtn_dt timestamp NOT NULL DEFAULT SYSDATE NOT NULL, -- 생성일시
    CONSTRAINT lvcn_exam_imag_pk PRIMARY KEY (hosp_cd, pt_sbst_no, imex_ymd, imex_seq)
);

-- 간암_검사_영상 테이블 및 컬럼 코멘트 스크립트
COMMENT ON TABLE lvcn_exam_imag IS '간암_검사_영상';

COMMENT ON COLUMN lvcn_exam_imag.hosp_cd IS '병원코드' ;
COMMENT ON COLUMN lvcn_exam_imag.pt_sbst_no IS '환자대체번호' ;
COMMENT ON COLUMN lvcn_exam_imag.imex_ymd IS '영상검사일자' ;
COMMENT ON COLUMN lvcn_exam_imag.imex_seq IS '영상검사순번' ;
COMMENT ON COLUMN lvcn_exam_imag.imex_kncd IS '영상검사종류코드' ;
COMMENT ON COLUMN lvcn_exam_imag.imex_knnm IS '영상검사종류명' ;
COMMENT ON COLUMN lvcn_exam_imag.imex_cd IS '영상검사코드' ;
COMMENT ON COLUMN lvcn_exam_imag.imex_nm IS '영상검사명' ;
COMMENT ON COLUMN lvcn_exam_imag.imex_edi_cd IS '영상검사EDI코드' ;
COMMENT ON COLUMN lvcn_exam_imag.imex_edi_nm IS '영상검사EDI명' ;
COMMENT ON COLUMN lvcn_exam_imag.imex_smct_cd IS '영상검사SNOMEDCT코드' ;
COMMENT ON COLUMN lvcn_exam_imag.imex_smct_nm IS '영상검사SNOMEDCT명' ;
COMMENT ON COLUMN lvcn_exam_imag.imex_rslt_cont IS '영상검사결과내용' ;
COMMENT ON COLUMN lvcn_exam_imag.lver_tumr_cnt_spcd IS '간종양수구분코드' ;
COMMENT ON COLUMN lvcn_exam_imag.lver_tumr_cnt_spnm IS '간종양수구분명' ;
COMMENT ON COLUMN lvcn_exam_imag.lver_tumr_size_vl IS '간종양크기값' ;
COMMENT ON COLUMN lvcn_exam_imag.lver_tumr_frm_spcd IS '간종양형태구분코드' ;
COMMENT ON COLUMN lvcn_exam_imag.lver_tumr_frm_spnm IS '간종양형태구분명' ;
COMMENT ON COLUMN lvcn_exam_imag.lver_vnin_ex_yn_spcd IS '간정맥침윤존재여부구분코드' ;
COMMENT ON COLUMN lvcn_exam_imag.lver_vnin_ex_yn_spnm IS '간정맥침윤존재여부구분명' ;
COMMENT ON COLUMN lvcn_exam_imag.hpa_inva_ex_yn_spcd IS '간동맥침윤존재여부구분코드' ;
COMMENT ON COLUMN lvcn_exam_imag.hpa_inva_ex_yn_spnm IS '간동맥침윤존재여부구분명' ;
COMMENT ON COLUMN lvcn_exam_imag.ptv_inva_ex_yn_spcd IS '간문맥침윤존재여부구분코드' ;
COMMENT ON COLUMN lvcn_exam_imag.ptv_inva_ex_yn_spnm IS '간문맥침윤존재여부구분명' ;
COMMENT ON COLUMN lvcn_exam_imag.ptv_inva_levl_spcd IS '간문맥침윤수준구분코드' ;
COMMENT ON COLUMN lvcn_exam_imag.ptv_inva_levl_spnm IS '간문맥침윤수준구분명' ;
COMMENT ON COLUMN lvcn_exam_imag.bld_inva_ex_yn_spcd IS '담관침윤존재여부구분코드' ;
COMMENT ON COLUMN lvcn_exam_imag.bld_inva_ex_yn_spnm IS '담관침윤존재여부구분명' ;
COMMENT ON COLUMN lvcn_exam_imag.exhp_mtst_ex_yn_spcd IS '간외전이존재여부구분코드' ;
COMMENT ON COLUMN lvcn_exam_imag.exhp_mtst_ex_yn_spnm IS '간외전이존재여부구분명' ;
COMMENT ON COLUMN lvcn_exam_imag.exhp_mtst_site_cd IS '간외전이부위코드' ;
COMMENT ON COLUMN lvcn_exam_imag.exhp_mtst_site_nm IS '간외전이부위명' ;
COMMENT ON COLUMN lvcn_exam_imag.exhp_mtst_site_etc_cont IS '간외전이부위기타내용' ;
COMMENT ON COLUMN lvcn_exam_imag.asct_sym_spcd IS '복수증상구분코드' ;
COMMENT ON COLUMN lvcn_exam_imag.asct_sym_spnm IS '복수증상구분명' ;
COMMENT ON COLUMN lvcn_exam_imag.inhp_fam_exam_rslt_vl IS '간내지방량검사결과값' ;
COMMENT ON COLUMN lvcn_exam_imag.lver_elst_exam_rslt_vl IS '간탄력도검사결과값' ;
COMMENT ON COLUMN lvcn_exam_imag.crtn_dt IS '생성일시' ;


-- 10.간암_검사_생체
-- 간암_검사_생체 테이블 생성 스크립트
 
-- DROP TABLE lvcn_exam_imag;
CREATE TABLE lvcn_exam_byps (
    hosp_cd varchar(20) NOT NULL, -- 병원코드
    pt_sbst_no varchar(10) NOT NULL, -- 환자대체번호
    bpsy_ymd varchar(8) NOT NULL, -- 생체검사일자
    bpsy_seq numeric(3) NOT NULL, -- 생체검사순번
    bpsy_read_ymd varchar(8) , -- 생체검사판독일자
    bpsy_site_cd varchar(20) , -- 생체검사부위코드
    bpsy_site_nm varchar(200) , -- 생체검사부위명
    bpsy_mtcd varchar(20) , -- 생체검사방법코드
    bpsy_mtnm varchar(200) , -- 생체검사방법명
    bpsy_mthd_kncd varchar(20) , -- 생체검사방법종류코드
    bpsy_mthd_knnm varchar(200) , -- 생체검사방법종류명
    bpsy_rslt_cont varchar(4000) , -- 생체검사결과내용
    htlg_diag_cd varchar(20) , -- 조직학적진단코드
    htlg_diag_nm varchar(200) , -- 조직학적진단명
    htlg_grcd varchar(20) , -- 조직학적등급코드
    htlg_grnm varchar(200) , -- 조직학적등급명
    crtn_dt timestamp NOT NULL DEFAULT SYSDATE NOT NULL, -- 생성일시
    CONSTRAINT lvcn_exam_byps_pk PRIMARY KEY (hosp_cd, pt_sbst_no, bpsy_ymd, bpsy_seq)
);
COMMENT ON TABLE lvcn_exam_byps IS '간암_검사_생체';

-- Column comments
COMMENT ON COLUMN lvcn_exam_byps.hosp_cd IS '병원코드' ;
COMMENT ON COLUMN lvcn_exam_byps.pt_sbst_no IS '환자대체번호' ;
COMMENT ON COLUMN lvcn_exam_byps.bpsy_ymd IS '생체검사일자' ;
COMMENT ON COLUMN lvcn_exam_byps.bpsy_seq IS '생체검사순번' ;
COMMENT ON COLUMN lvcn_exam_byps.bpsy_read_ymd IS '생체검사판독일자' ;
COMMENT ON COLUMN lvcn_exam_byps.bpsy_site_cd IS '생체검사부위코드' ;
COMMENT ON COLUMN lvcn_exam_byps.bpsy_site_nm IS '생체검사부위명' ;
COMMENT ON COLUMN lvcn_exam_byps.bpsy_mtcd IS '생체검사방법코드' ;
COMMENT ON COLUMN lvcn_exam_byps.bpsy_mtnm IS '생체검사방법명' ;
COMMENT ON COLUMN lvcn_exam_byps.bpsy_mthd_kncd IS '생체검사방법종류코드' ;
COMMENT ON COLUMN lvcn_exam_byps.bpsy_mthd_knnm IS '생체검사방법종류명' ;
COMMENT ON COLUMN lvcn_exam_byps.bpsy_rslt_cont IS '생체검사결과내용' ;
COMMENT ON COLUMN lvcn_exam_byps.htlg_diag_cd IS '조직학적진단코드' ;
COMMENT ON COLUMN lvcn_exam_byps.htlg_diag_nm IS '조직학적진단명' ;
COMMENT ON COLUMN lvcn_exam_byps.htlg_grcd IS '조직학적등급코드' ;
COMMENT ON COLUMN lvcn_exam_byps.htlg_grnm IS '조직학적등급명' ;
COMMENT ON COLUMN lvcn_exam_byps.crtn_dt IS '생성일시' ;


-- 11.간암_검사_면역병리
-- DROP TABLE lvcn_exam_impt;

CREATE TABLE lvcn_exam_impt (
	hosp_cd varchar(20) NOT NULL, -- 병원코드
	pt_sbst_no varchar(10) NOT NULL, -- 환자대체번호
	imem_ymd varchar(8) NOT NULL, -- 면역병리검사일자
	imem_seq numeric(3) NOT NULL, -- 면역병리검사순번
	impt_read_ymd varchar(8) , -- 면역병리판독일자
	imem_kncd varchar(20) , -- 면역병리검사종류코드
	imem_knnm varchar(200) , -- 면역병리검사종류명
	imem_cd varchar(20) , -- 면역병리검사코드
	imem_nm varchar(200) , -- 면역병리검사명
	imem_opn_cd varchar(20) , -- 면역병리검사소견코드
	imem_opn_nm varchar(200) , -- 면역병리검사소견명
	crtn_dt timestamp NOT NULL DEFAULT SYSDATE NOT NULL, -- 생성일시
	CONSTRAINT lvcn_exam_impt_pk PRIMARY KEY (hosp_cd, pt_sbst_no, imem_ymd, imem_seq)
);
COMMENT ON TABLE lvcn_exam_impt IS '간암_검사_면역병리';

-- Column comments
COMMENT ON COLUMN lvcn_exam_impt.hosp_cd IS '병원코드' ;
COMMENT ON COLUMN lvcn_exam_impt.pt_sbst_no IS '환자대체번호' ;
COMMENT ON COLUMN lvcn_exam_impt.imem_ymd IS '면역병리검사일자' ;
COMMENT ON COLUMN lvcn_exam_impt.imem_seq IS '면역병리검사순번' ;
COMMENT ON COLUMN lvcn_exam_impt.impt_read_ymd IS '면역병리판독일자' ;
COMMENT ON COLUMN lvcn_exam_impt.imem_kncd IS '면역병리검사종류코드' ;
COMMENT ON COLUMN lvcn_exam_impt.imem_knnm IS '면역병리검사종류명' ;
COMMENT ON COLUMN lvcn_exam_impt.imem_cd IS '면역병리검사코드' ;
COMMENT ON COLUMN lvcn_exam_impt.imem_nm IS '면역병리검사명' ;
COMMENT ON COLUMN lvcn_exam_impt.imem_opn_cd IS '면역병리검사소견코드' ;
COMMENT ON COLUMN lvcn_exam_impt.imem_opn_nm IS '면역병리검사소견명' ;
COMMENT ON COLUMN lvcn_exam_impt.crtn_dt IS '생성일시' ;


-- 12. 간암_치료_시술

-- DROP TABLE lvcn_trtm_srpr;

CREATE TABLE lvcn_trtm_srpr (
	hosp_cd varchar(20) NOT NULL, -- 병원코드
	pt_sbst_no varchar(10) NOT NULL, -- 환자대체번호
	srpr_ymd varchar(8) NOT NULL, -- 시술일자
	srpr_seq numeric(3) NOT NULL, -- 시술순번
	srpr_spcd varchar(20) NOT NULL, -- 시술구분코드
	srpr_spnm varchar(200) NOT NULL, -- 시술구분명
	etc_srpr_cont varchar(4000) , -- 기타시술내용
	srpr_opn_cont varchar(4000) , -- 시술소견내용
	srpr_rslt_cont varchar(4000) , -- 시술결과내용
	srpr_sgmt_loca_spcd varchar(20) , -- 시술분절위치구분코드
	srpr_sgmt_loca_spnm varchar(200) , -- 시술분절위치구분명
	srpr_sgmt_loca_clsf_etc_cont varchar(4000) , -- 시술분절위치구분기타내용
	srpr_lesn_cnt numeric(3) , -- 시술병변수
	srpr_trtm_aftr_asmt_ymd varchar(8) , -- 시술치료후평가일자
	srpr_trtm_aftr_asmt_spcd varchar(20) , -- 시술치료후평가구분코드
	srpr_trtm_aftr_asmt_spnm varchar(200) , -- 시술치료후평가구분명
	crtn_dt timestamp NOT NULL DEFAULT SYSDATE NOT NULL, -- 생성일시
	CONSTRAINT lvcn_trtm_srpr_pk PRIMARY KEY (hosp_cd, pt_sbst_no, srpr_ymd, srpr_seq)
);
COMMENT ON TABLE lvcn_trtm_srpr IS '간암_치료_시술';

-- Column comments

COMMENT ON COLUMN lvcn_trtm_srpr.hosp_cd IS '병원코드' ;
COMMENT ON COLUMN lvcn_trtm_srpr.pt_sbst_no IS '환자대체번호' ;
COMMENT ON COLUMN lvcn_trtm_srpr.srpr_ymd IS '시술일자' ;
COMMENT ON COLUMN lvcn_trtm_srpr.srpr_seq IS '시술순번' ;
COMMENT ON COLUMN lvcn_trtm_srpr.srpr_spcd IS '시술구분코드' ;
COMMENT ON COLUMN lvcn_trtm_srpr.srpr_spnm IS '시술구분명' ;
COMMENT ON COLUMN lvcn_trtm_srpr.etc_srpr_cont IS '기타시술내용' ;
COMMENT ON COLUMN lvcn_trtm_srpr.srpr_opn_cont IS '시술소견내용' ;
COMMENT ON COLUMN lvcn_trtm_srpr.srpr_rslt_cont IS '시술결과내용' ;
COMMENT ON COLUMN lvcn_trtm_srpr.srpr_sgmt_loca_spcd IS '시술분절위치구분코드' ;
COMMENT ON COLUMN lvcn_trtm_srpr.srpr_sgmt_loca_spnm IS '시술분절위치구분명' ;
COMMENT ON COLUMN lvcn_trtm_srpr.srpr_sgmt_loca_clsf_etc_cont IS '시술분절위치구분기타내용' ;
COMMENT ON COLUMN lvcn_trtm_srpr.srpr_lesn_cnt IS '시술병변수' ;
COMMENT ON COLUMN lvcn_trtm_srpr.srpr_trtm_aftr_asmt_ymd IS '시술치료후평가일자' ;
COMMENT ON COLUMN lvcn_trtm_srpr.srpr_trtm_aftr_asmt_spcd IS '시술치료후평가구분코드' ;
COMMENT ON COLUMN lvcn_trtm_srpr.srpr_trtm_aftr_asmt_spnm IS '시술치료후평가구분명' ;
COMMENT ON COLUMN lvcn_trtm_srpr.crtn_dt IS '생성일시' ;


-- 13. 간암_치료_수술

-- DROP TABLE lvcn_trtm_oprt;

CREATE TABLE lvcn_trtm_oprt (
	hosp_cd varchar(20) NOT NULL, -- 병원코드
	pt_sbst_no varchar(10) NOT NULL, -- 환자대체번호
	oprt_ymd varchar(8) NOT NULL, -- 수술일자
	oprt_seq numeric(3) NOT NULL, -- 수술순번
	oprt_kncd varchar(20) NOT NULL, -- 수술종류코드
	oprt_knnm varchar(200) NOT NULL, -- 수술종류명
	oprt_cd varchar(20) NOT NULL, -- 수술코드
	oprt_nm varchar(500) NOT NULL, -- 수술명
	oprt_edi_cd varchar(20) , -- 수술EDI코드
	oprt_edi_nm varchar(200) , -- 수술EDI명
	oprt_smct_cd varchar(200) , -- 수술SNOMEDCT코드
	oprt_smct_nm varchar(1000) , -- 수술SNOMEDCT명
	oprt_icd9cm_cd varchar(20) , -- 수술ICD9CM코드
	oprt_icd9cm_nm varchar(1000) , -- 수술ICD9CM명
	oprt_anst_site_cd varchar(20) , -- 수술마취부위코드
	oprt_anst_site_nm varchar(200) , -- 수술마취부위명
	lvcn_srmv_rang_spcd varchar(20) , -- 간암절제범위구분코드
	lvcn_srmv_rang_spnm varchar(200) , -- 간암절제범위구분명
	lver_trnsp_kncd varchar(20) , -- 간이식종류코드
	lver_trnsp_knnm varchar(200) , -- 간이식종류명
	ebl_qty numeric(5) , -- 추정실혈량
	oprt_ldtm varchar(20) , -- 수술소요시간
	oprt_prps_cd varchar(20) , -- 수술목적코드
	oprt_prps_nm varchar(200) , -- 수술목적명
	oprt_site_cd varchar(20) , -- 수술부위코드
	oprt_site_nm varchar(200) , -- 수술부위명
	oprt_site_etc_cont varchar(4000) , -- 수술부위기타내용
	lvcn_oprt_mtcd varchar(20) , -- 간암수술방법코드
	lvcn_oprt_mtnm varchar(200) , -- 간암수술방법명
	asa_scor_cd varchar(20) , -- ASA점수코드
	asa_scor_nm varchar(200) , -- ASA점수명
	lver_sgmt_utrs_yn_unid_spcd varchar(20) , -- 간분절단위절제여부확인불가구분코드
	lver_sgmt_utrs_yn_unid_spnm varchar(200) , -- 간분절단위절제여부확인불가구분명
	oprt_icln_tpcd varchar(20) , -- 수술절개선유형코드
	oprt_icln_tpnm varchar(200) , -- 수술절개선유형명
	tumr_lver_sgmt_loca_spcd varchar(20) , -- 종양간분절위치구분코드
	tumr_lver_sgmt_loca_spnm varchar(200) , -- 종양간분절위치구분명
	oprt_sgmt_loca_clsf_etc_cont varchar(4000) , -- 수술분절위치구분기타내용
	inop_asso_ogrs_yn_unid_spcd varchar(20) , -- 수술시동반장기절제여부확인불가구분코드
	inop_asso_ogrs_yn_unid_spnm varchar(200) , -- 수술시동반장기절제여부확인불가구분명
	inop_asso_ogrs_site_spcd varchar(20) , -- 수술시동반장기절제부위구분코드
	inop_asso_ogrs_site_spnm varchar(200) , -- 수술시동반장기절제부위구분명
	inop_asso_ogrs_site_clsf_etc_cont varchar(4000) , -- 수술시동반장기절제부위구분기타내용
	pm_impl_yn_unid_spcd varchar(20) , -- PRINGLEMANEUVER시행여부확인불가구분코드
	pm_impl_yn_unid_spnm varchar(200) , -- PRINGLEMANEUVER시행여부확인불가구분명
	pm_impl_nt numeric(3) , -- PRINGLEMANEUVER시행횟수
	pm_totl_impl_tm varchar(20) , -- PRINGLEMANEUVER총시행시간
	afop_asmt_item_cd varchar(20) , -- 수술후평가항목코드
	afop_asmt_item_nm varchar(200) , -- 수술후평가항목명
	afop_asmt_item_etc_cont varchar(4000) , -- 수술후평가항목기타내용
	crtn_dt timestamp NOT NULL DEFAULT SYSDATE NOT NULL, -- 생성일시
	CONSTRAINT lvcn_trtm_oprt_pk PRIMARY KEY (hosp_cd, pt_sbst_no, oprt_ymd, oprt_seq)
);
COMMENT ON TABLE lvcn_trtm_oprt IS '간암_치료_수술';

-- Column comments
COMMENT ON COLUMN lvcn_trtm_oprt.hosp_cd IS '병원코드' ;
COMMENT ON COLUMN lvcn_trtm_oprt.pt_sbst_no IS '환자대체번호' ;
COMMENT ON COLUMN lvcn_trtm_oprt.oprt_ymd IS '수술일자' ;
COMMENT ON COLUMN lvcn_trtm_oprt.oprt_seq IS '수술순번' ;
COMMENT ON COLUMN lvcn_trtm_oprt.oprt_kncd IS '수술종류코드' ;
COMMENT ON COLUMN lvcn_trtm_oprt.oprt_knnm IS '수술종류명' ;
COMMENT ON COLUMN lvcn_trtm_oprt.oprt_cd IS '수술코드' ;
COMMENT ON COLUMN lvcn_trtm_oprt.oprt_nm IS '수술명' ;
COMMENT ON COLUMN lvcn_trtm_oprt.oprt_edi_cd IS '수술EDI코드' ;
COMMENT ON COLUMN lvcn_trtm_oprt.oprt_edi_nm IS '수술EDI명' ;
COMMENT ON COLUMN lvcn_trtm_oprt.oprt_smct_cd IS '수술SNOMEDCT코드' ;
COMMENT ON COLUMN lvcn_trtm_oprt.oprt_smct_nm IS '수술SNOMEDCT명' ;
COMMENT ON COLUMN lvcn_trtm_oprt.oprt_icd9cm_cd IS '수술ICD9CM코드' ;
COMMENT ON COLUMN lvcn_trtm_oprt.oprt_icd9cm_nm IS '수술ICD9CM명' ;
COMMENT ON COLUMN lvcn_trtm_oprt.oprt_anst_site_cd IS '수술마취부위코드' ;
COMMENT ON COLUMN lvcn_trtm_oprt.oprt_anst_site_nm IS '수술마취부위명' ;
COMMENT ON COLUMN lvcn_trtm_oprt.lvcn_srmv_rang_spcd IS '간암절제범위구분코드' ;
COMMENT ON COLUMN lvcn_trtm_oprt.lvcn_srmv_rang_spnm IS '간암절제범위구분명' ;
COMMENT ON COLUMN lvcn_trtm_oprt.lver_trnsp_kncd IS '간이식종류코드' ;
COMMENT ON COLUMN lvcn_trtm_oprt.lver_trnsp_knnm IS '간이식종류명' ;
COMMENT ON COLUMN lvcn_trtm_oprt.ebl_qty IS '추정실혈량' ;
COMMENT ON COLUMN lvcn_trtm_oprt.oprt_ldtm IS '수술소요시간' ;
COMMENT ON COLUMN lvcn_trtm_oprt.oprt_prps_cd IS '수술목적코드' ;
COMMENT ON COLUMN lvcn_trtm_oprt.oprt_prps_nm IS '수술목적명' ;
COMMENT ON COLUMN lvcn_trtm_oprt.oprt_site_cd IS '수술부위코드' ;
COMMENT ON COLUMN lvcn_trtm_oprt.oprt_site_nm IS '수술부위명' ;
COMMENT ON COLUMN lvcn_trtm_oprt.oprt_site_etc_cont IS '수술부위기타내용' ;
COMMENT ON COLUMN lvcn_trtm_oprt.lvcn_oprt_mtcd IS '간암수술방법코드' ;
COMMENT ON COLUMN lvcn_trtm_oprt.lvcn_oprt_mtnm IS '간암수술방법명' ;
COMMENT ON COLUMN lvcn_trtm_oprt.asa_scor_cd IS 'ASA점수코드' ;
COMMENT ON COLUMN lvcn_trtm_oprt.asa_scor_nm IS 'ASA점수명' ;
COMMENT ON COLUMN lvcn_trtm_oprt.lver_sgmt_utrs_yn_unid_spcd IS '간분절단위절제여부확인불가구분코드' ;
COMMENT ON COLUMN lvcn_trtm_oprt.lver_sgmt_utrs_yn_unid_spnm IS '간분절단위절제여부확인불가구분명' ;
COMMENT ON COLUMN lvcn_trtm_oprt.oprt_icln_tpcd IS '수술절개선유형코드' ;
COMMENT ON COLUMN lvcn_trtm_oprt.oprt_icln_tpnm IS '수술절개선유형명' ;
COMMENT ON COLUMN lvcn_trtm_oprt.tumr_lver_sgmt_loca_spcd IS '종양간분절위치구분코드' ;
COMMENT ON COLUMN lvcn_trtm_oprt.tumr_lver_sgmt_loca_spnm IS '종양간분절위치구분명' ;
COMMENT ON COLUMN lvcn_trtm_oprt.oprt_sgmt_loca_clsf_etc_cont IS '수술분절위치구분기타내용' ;
COMMENT ON COLUMN lvcn_trtm_oprt.inop_asso_ogrs_yn_unid_spcd IS '수술시동반장기절제여부확인불가구분코드' ;
COMMENT ON COLUMN lvcn_trtm_oprt.inop_asso_ogrs_yn_unid_spnm IS '수술시동반장기절제여부확인불가구분명' ;
COMMENT ON COLUMN lvcn_trtm_oprt.inop_asso_ogrs_site_spcd IS '수술시동반장기절제부위구분코드' ;
COMMENT ON COLUMN lvcn_trtm_oprt.inop_asso_ogrs_site_spnm IS '수술시동반장기절제부위구분명' ;
COMMENT ON COLUMN lvcn_trtm_oprt.inop_asso_ogrs_site_clsf_etc_cont IS '수술시동반장기절제부위구분기타내용' ;
COMMENT ON COLUMN lvcn_trtm_oprt.pm_impl_yn_unid_spcd IS 'PRINGLEMANEUVER시행여부확인불가구분코드' ;
COMMENT ON COLUMN lvcn_trtm_oprt.pm_impl_yn_unid_spnm IS 'PRINGLEMANEUVER시행여부확인불가구분명' ;
COMMENT ON COLUMN lvcn_trtm_oprt.pm_impl_nt IS 'PRINGLEMANEUVER시행횟수' ;
COMMENT ON COLUMN lvcn_trtm_oprt.pm_totl_impl_tm IS 'PRINGLEMANEUVER총시행시간' ;
COMMENT ON COLUMN lvcn_trtm_oprt.afop_asmt_item_cd IS '수술후평가항목코드' ;
COMMENT ON COLUMN lvcn_trtm_oprt.afop_asmt_item_nm IS '수술후평가항목명' ;
COMMENT ON COLUMN lvcn_trtm_oprt.afop_asmt_item_etc_cont IS '수술후평가항목기타내용' ;
COMMENT ON COLUMN lvcn_trtm_oprt.crtn_dt IS '생성일시' ;


-- 14. 간암_치료_수혈

-- DROP TABLE lvcn_trtm_bltr;

CREATE TABLE lvcn_trtm_bltr (
	hosp_cd varchar(20) NOT NULL, -- 병원코드
	pt_sbst_no varchar(10) NOT NULL, -- 환자대체번호
	bltr_prsc_ymd varchar(8) NOT NULL, -- 수혈처방일자
	bltr_prsc_seq numeric(3) NOT NULL, -- 수혈처방순번
	blpt_kncd varchar(20) , -- 혈액제제종류코드
	blpt_knnm varchar(200) , -- 혈액제제종류명
	blpt_cd varchar(20) , -- 혈액제제코드
	blpt_nm varchar(200) , -- 혈액제제명
	blpt_capa numeric(5) , -- 혈액제제용량
	bltr_pack_cnt numeric(3) , -- 수혈팩수
	bltr_totl_qty numeric(8) , -- 수혈총량
	crtn_dt timestamp NOT NULL DEFAULT SYSDATE NOT NULL, -- 생성일시
	CONSTRAINT lvcn_trtm_bltr_pk PRIMARY KEY (hosp_cd, pt_sbst_no, bltr_prsc_ymd, bltr_prsc_seq)
);
COMMENT ON TABLE lvcn_trtm_bltr IS '간암_치료_수혈';

-- Column comments

COMMENT ON COLUMN lvcn_trtm_bltr.hosp_cd IS '병원코드' ;
COMMENT ON COLUMN lvcn_trtm_bltr.pt_sbst_no IS '환자대체번호' ;
COMMENT ON COLUMN lvcn_trtm_bltr.bltr_prsc_ymd IS '수혈처방일자' ;
COMMENT ON COLUMN lvcn_trtm_bltr.bltr_prsc_seq IS '수혈처방순번' ;
COMMENT ON COLUMN lvcn_trtm_bltr.blpt_kncd IS '혈액제제종류코드' ;
COMMENT ON COLUMN lvcn_trtm_bltr.blpt_knnm IS '혈액제제종류명' ;
COMMENT ON COLUMN lvcn_trtm_bltr.blpt_cd IS '혈액제제코드' ;
COMMENT ON COLUMN lvcn_trtm_bltr.blpt_nm IS '혈액제제명' ;
COMMENT ON COLUMN lvcn_trtm_bltr.blpt_capa IS '혈액제제용량' ;
COMMENT ON COLUMN lvcn_trtm_bltr.bltr_pack_cnt IS '수혈팩수' ;
COMMENT ON COLUMN lvcn_trtm_bltr.bltr_totl_qty IS '수혈총량' ;
COMMENT ON COLUMN lvcn_trtm_bltr.crtn_dt IS '생성일시' ;

-- 15. 간암_검사_외과병리

-- DROP TABLE lvcn_exam_sgpt;

CREATE TABLE lvcn_exam_sgpt (
	hosp_cd varchar(20) NOT NULL, -- 병원코드
	pt_sbst_no varchar(10) NOT NULL, -- 환자대체번호
	srgc_ptem_ymd varchar(8) NOT NULL, -- 외과병리검사일자
	srgc_ptem_seq numeric(3) NOT NULL, -- 외과병리검사순번
	sgpt_read_ymd varchar(8) , -- 외과병리판독일자
	sgpt_hvst_site_cd varchar(20) , -- 외과병리채취부위코드
	sgpt_hvst_site_nm varchar(200) , -- 외과병리채취부위명
	sgpt_oprt_nm varchar(500) , -- 외과병리수술명
	srgc_ptem_rslt_tumr_cnt numeric(3) , -- 외과병리검사결과종양수
	tumr_wdth_lnth_vl numeric(10,3) , -- 종양가로길이값
	tumr_lgtd_lnth_vl numeric(10,3) , -- 종양세로길이값
	tumr_hght_vl numeric(10,3) , -- 종양높이값
	tumr_max_diam_vl numeric(10,3) , -- 종양최대직경값
	htlg_diag_cd varchar(20) , -- 조직학적진단코드
	htlg_diag_nm varchar(200) , -- 조직학적진단명
	nkdy_cnfr_lesn_frm_spcd varchar(20) NOT NULL, -- 육안확인병변형태구분코드
	nkdy_cnfr_lesn_frm_spnm varchar(200) NOT NULL, -- 육안확인병변형태구분명
	sgpt_hg_wrst_cd varchar(20) NOT NULL, -- 외과병리조직학적등급WORST코드
	sgpt_hg_wrst_nm varchar(200) NOT NULL, -- 외과병리조직학적등급WORST명
	sgpt_hg_mjr_cd varchar(20) NOT NULL, -- 외과병리조직학적등급MAJOR코드
	sgpt_hg_mjr_nm varchar(200) NOT NULL, -- 외과병리조직학적등급MAJOR명
	lymp_inva_ex_yn_spcd varchar(20) , -- 림프성침윤존재여부구분코드
	lymp_inva_ex_yn_spnm varchar(50) , -- 림프성침윤존재여부구분명
	blvs_inva_ex_yn_spcd varchar(20) NOT NULL, -- 혈관침윤존재여부구분코드
	blvs_inva_ex_yn_spnm varchar(200) NOT NULL, -- 혈관침윤존재여부구분명
	hpa_inva_ex_yn_spcd varchar(20) , -- 간동맥침윤존재여부구분코드
	hpa_inva_ex_yn_spnm varchar(200) , -- 간동맥침윤존재여부구분명
	hpa_inva_cont varchar(4000) , -- 간동맥침윤내용
	ptv_inva_ex_yn_spcd varchar(20) , -- 간문맥침윤존재여부구분코드
	ptv_inva_ex_yn_spnm varchar(200) , -- 간문맥침윤존재여부구분명
	ptv_inva_cont varchar(4000) , -- 간문맥침윤내용
	lver_vnin_ex_yn_spcd varchar(20) , -- 간정맥침윤존재여부구분코드
	lver_vnin_ex_yn_spnm varchar(200) , -- 간정맥침윤존재여부구분명
	lver_vnin_cont varchar(4000) , -- 간정맥침윤내용
	bld_inva_ex_yn_spcd varchar(20) , -- 담관침윤존재여부구분코드
	bld_inva_ex_yn_spnm varchar(200) , -- 담관침윤존재여부구분명
	bld_inva_cont varchar(4000) , -- 담관침윤내용
	tumr_srs_inva_ex_yn_spcd varchar(20) , -- 종양장막침윤존재여부구분코드
	tumr_srs_inva_ex_yn_spnm varchar(200) , -- 종양장막침윤존재여부구분명
	tumr_cpsl_inva_ex_yn_spcd varchar(20) , -- 종양피막침윤존재여부구분코드
	tumr_cpsl_inva_ex_yn_spnm varchar(200) , -- 종양피막침윤존재여부구분명
	tumr_encp_ex_yn_spcd varchar(20) , -- 종양피막형성존재여부구분코드
	tumr_encp_ex_yn_spnm varchar(200) , -- 종양피막형성존재여부구분명
	tumr_necr_ex_yn_spcd varchar(20) , -- 종양괴사존재여부구분코드
	tumr_necr_ex_yn_spnm varchar(200) , -- 종양괴사존재여부구분명
	tumr_necr_lver_sgmt_loca_spcd varchar(20) , -- 종양괴사간분절위치구분코드
	tumr_necr_lver_sgmt_loca_spnm varchar(200) , -- 종양괴사간분절위치구분명
	tumr_necr_lver_sgmt_loca_clsf_etc_cont varchar(4000) , -- 종양괴사간분절위치구분기타내용
	tumr_necr_rt numeric(5,1) , -- 종양괴사비율
	fatt_chng_ex_yn_spcd varchar(20) , -- 지방성변화존재여부구분코드
	fatt_chng_ex_yn_spnm varchar(200) , -- 지방성변화존재여부구분명
	fatt_chng_rt numeric(5,1) , -- 지방성변화비율
	bled_purp_ex_yn_spcd varchar(20) , -- 출혈자반존재여부구분코드
	bled_purp_ex_yn_spnm varchar(200) , -- 출혈자반존재여부구분명
	bled_purp_rt numeric(5,1) , -- 출혈자반비율
	sept_frmt_ex_yn_spcd varchar(20) , -- 중격형성존재여부구분코드
	sept_frmt_ex_yn_spnm varchar(200) , -- 중격형성존재여부구분명
	stnd_ex_yn_spcd varchar(20) , -- 위성결절존재여부구분코드
	stnd_ex_yn_spnm varchar(200) , -- 위성결절존재여부구분명
	stnd_cont varchar(4000) , -- 위성결절내용
	srmg_sfmg_lnth_vl numeric(10,3) , -- 수술절제면안전경계길이값
	srmg_detl_cont varchar(4000) , -- 수술절제면상세내용
	srmg_rlct_cd varchar(20) , -- 수술절제면잔존코드
	srmg_rlct_nm varchar(200) , -- 수술절제면잔존명
	lc_ex_yn_spcd varchar(20) , -- 간경변증존재여부구분코드
	lc_ex_yn_spnm varchar(200) , -- 간경변증존재여부구분명
	lver_fbrs_grcd varchar(20) , -- 간섬유화등급코드
	lver_fbrs_grnm varchar(200) , -- 간섬유화등급명
	inhp_mtst_ex_yn_spcd varchar(20) , -- 간내전이존재여부구분코드
	inhp_mtst_ex_yn_spnm varchar(200) , -- 간내전이존재여부구분명
	tumr_mlct_ocrn_ex_yn_spcd varchar(20) , -- 종양다중심성발생존재여부구분코드
	tumr_mlct_ocrn_ex_yn_spnm varchar(200) , -- 종양다중심성발생존재여부구분명
	totl_ln_cnt numeric(3) , -- 총림프절수
	pstv_ln_cnt varchar(100) , -- 양성림프절수
	stg_yr varchar(4) , -- STAGE년도
	stg_kncd varchar(20) , -- STAGE종류코드
	stg_knnm varchar(200) , -- STAGE종류명
	afop_path_tnm_stag_vl varchar(200) , -- 수술후병리TNM병기값
	afop_path_t_stag_vl varchar(200) , -- 수술후병리T병기값
	afop_path_n_stag_vl varchar(200) , -- 수술후병리N병기값
	afop_path_m_stag_vl varchar(200) , -- 수술후병리M병기값
	crtn_dt timestamp NOT NULL DEFAULT SYSDATE NOT NULL, -- 생성일시
	CONSTRAINT lvcn_exam_sgpt_pk PRIMARY KEY (hosp_cd, pt_sbst_no, srgc_ptem_ymd, srgc_ptem_seq)
);
COMMENT ON TABLE lvcn_exam_sgpt IS '간암_검사_외과병리';

-- Column comments

COMMENT ON COLUMN lvcn_exam_sgpt.hosp_cd IS '병원코드' ;
COMMENT ON COLUMN lvcn_exam_sgpt.pt_sbst_no IS '환자대체번호' ;
COMMENT ON COLUMN lvcn_exam_sgpt.srgc_ptem_ymd IS '외과병리검사일자' ;
COMMENT ON COLUMN lvcn_exam_sgpt.srgc_ptem_seq IS '외과병리검사순번' ;
COMMENT ON COLUMN lvcn_exam_sgpt.sgpt_read_ymd IS '외과병리판독일자' ;
COMMENT ON COLUMN lvcn_exam_sgpt.sgpt_hvst_site_cd IS '외과병리채취부위코드' ;
COMMENT ON COLUMN lvcn_exam_sgpt.sgpt_hvst_site_nm IS '외과병리채취부위명' ;
COMMENT ON COLUMN lvcn_exam_sgpt.sgpt_oprt_nm IS '외과병리수술명' ;
COMMENT ON COLUMN lvcn_exam_sgpt.srgc_ptem_rslt_tumr_cnt IS '외과병리검사결과종양수' ;
COMMENT ON COLUMN lvcn_exam_sgpt.tumr_wdth_lnth_vl IS '종양가로길이값' ;
COMMENT ON COLUMN lvcn_exam_sgpt.tumr_lgtd_lnth_vl IS '종양세로길이값' ;
COMMENT ON COLUMN lvcn_exam_sgpt.tumr_hght_vl IS '종양높이값' ;
COMMENT ON COLUMN lvcn_exam_sgpt.tumr_max_diam_vl IS '종양최대직경값' ;
COMMENT ON COLUMN lvcn_exam_sgpt.htlg_diag_cd IS '조직학적진단코드' ;
COMMENT ON COLUMN lvcn_exam_sgpt.htlg_diag_nm IS '조직학적진단명' ;
COMMENT ON COLUMN lvcn_exam_sgpt.nkdy_cnfr_lesn_frm_spcd IS '육안확인병변형태구분코드' ;
COMMENT ON COLUMN lvcn_exam_sgpt.nkdy_cnfr_lesn_frm_spnm IS '육안확인병변형태구분명' ;
COMMENT ON COLUMN lvcn_exam_sgpt.sgpt_hg_wrst_cd IS '외과병리조직학적등급WORST코드' ;
COMMENT ON COLUMN lvcn_exam_sgpt.sgpt_hg_wrst_nm IS '외과병리조직학적등급WORST명' ;
COMMENT ON COLUMN lvcn_exam_sgpt.sgpt_hg_mjr_cd IS '외과병리조직학적등급MAJOR코드' ;
COMMENT ON COLUMN lvcn_exam_sgpt.sgpt_hg_mjr_nm IS '외과병리조직학적등급MAJOR명' ;
COMMENT ON COLUMN lvcn_exam_sgpt.lymp_inva_ex_yn_spcd IS '림프성침윤존재여부구분코드' ;
COMMENT ON COLUMN lvcn_exam_sgpt.lymp_inva_ex_yn_spnm IS '림프성침윤존재여부구분명' ;
COMMENT ON COLUMN lvcn_exam_sgpt.blvs_inva_ex_yn_spcd IS '혈관침윤존재여부구분코드' ;
COMMENT ON COLUMN lvcn_exam_sgpt.blvs_inva_ex_yn_spnm IS '혈관침윤존재여부구분명' ;
COMMENT ON COLUMN lvcn_exam_sgpt.hpa_inva_ex_yn_spcd IS '간동맥침윤존재여부구분코드' ;
COMMENT ON COLUMN lvcn_exam_sgpt.hpa_inva_ex_yn_spnm IS '간동맥침윤존재여부구분명' ;
COMMENT ON COLUMN lvcn_exam_sgpt.hpa_inva_cont IS '간동맥침윤내용' ;
COMMENT ON COLUMN lvcn_exam_sgpt.ptv_inva_ex_yn_spcd IS '간문맥침윤존재여부구분코드' ;
COMMENT ON COLUMN lvcn_exam_sgpt.ptv_inva_ex_yn_spnm IS '간문맥침윤존재여부구분명' ;
COMMENT ON COLUMN lvcn_exam_sgpt.ptv_inva_cont IS '간문맥침윤내용' ;
COMMENT ON COLUMN lvcn_exam_sgpt.lver_vnin_ex_yn_spcd IS '간정맥침윤존재여부구분코드' ;
COMMENT ON COLUMN lvcn_exam_sgpt.lver_vnin_ex_yn_spnm IS '간정맥침윤존재여부구분명' ;
COMMENT ON COLUMN lvcn_exam_sgpt.lver_vnin_cont IS '간정맥침윤내용' ;
COMMENT ON COLUMN lvcn_exam_sgpt.bld_inva_ex_yn_spcd IS '담관침윤존재여부구분코드' ;
COMMENT ON COLUMN lvcn_exam_sgpt.bld_inva_ex_yn_spnm IS '담관침윤존재여부구분명' ;
COMMENT ON COLUMN lvcn_exam_sgpt.bld_inva_cont IS '담관침윤내용' ;
COMMENT ON COLUMN lvcn_exam_sgpt.tumr_srs_inva_ex_yn_spcd IS '종양장막침윤존재여부구분코드' ;
COMMENT ON COLUMN lvcn_exam_sgpt.tumr_srs_inva_ex_yn_spnm IS '종양장막침윤존재여부구분명' ;
COMMENT ON COLUMN lvcn_exam_sgpt.tumr_cpsl_inva_ex_yn_spcd IS '종양피막침윤존재여부구분코드' ;
COMMENT ON COLUMN lvcn_exam_sgpt.tumr_cpsl_inva_ex_yn_spnm IS '종양피막침윤존재여부구분명' ;
COMMENT ON COLUMN lvcn_exam_sgpt.tumr_encp_ex_yn_spcd IS '종양피막형성존재여부구분코드' ;
COMMENT ON COLUMN lvcn_exam_sgpt.tumr_encp_ex_yn_spnm IS '종양피막형성존재여부구분명' ;
COMMENT ON COLUMN lvcn_exam_sgpt.tumr_necr_ex_yn_spcd IS '종양괴사존재여부구분코드' ;
COMMENT ON COLUMN lvcn_exam_sgpt.tumr_necr_ex_yn_spnm IS '종양괴사존재여부구분명' ;
COMMENT ON COLUMN lvcn_exam_sgpt.tumr_necr_lver_sgmt_loca_spcd IS '종양괴사간분절위치구분코드' ;
COMMENT ON COLUMN lvcn_exam_sgpt.tumr_necr_lver_sgmt_loca_spnm IS '종양괴사간분절위치구분명' ;
COMMENT ON COLUMN lvcn_exam_sgpt.tumr_necr_lver_sgmt_loca_clsf_etc_cont IS '종양괴사간분절위치구분기타내용' ;
COMMENT ON COLUMN lvcn_exam_sgpt.tumr_necr_rt IS '종양괴사비율' ;
COMMENT ON COLUMN lvcn_exam_sgpt.fatt_chng_ex_yn_spcd IS '지방성변화존재여부구분코드' ;
COMMENT ON COLUMN lvcn_exam_sgpt.fatt_chng_ex_yn_spnm IS '지방성변화존재여부구분명' ;
COMMENT ON COLUMN lvcn_exam_sgpt.fatt_chng_rt IS '지방성변화비율' ;
COMMENT ON COLUMN lvcn_exam_sgpt.bled_purp_ex_yn_spcd IS '출혈자반존재여부구분코드' ;
COMMENT ON COLUMN lvcn_exam_sgpt.bled_purp_ex_yn_spnm IS '출혈자반존재여부구분명' ;
COMMENT ON COLUMN lvcn_exam_sgpt.bled_purp_rt IS '출혈자반비율' ;
COMMENT ON COLUMN lvcn_exam_sgpt.sept_frmt_ex_yn_spcd IS '중격형성존재여부구분코드' ;
COMMENT ON COLUMN lvcn_exam_sgpt.sept_frmt_ex_yn_spnm IS '중격형성존재여부구분명' ;
COMMENT ON COLUMN lvcn_exam_sgpt.stnd_ex_yn_spcd IS '위성결절존재여부구분코드' ;
COMMENT ON COLUMN lvcn_exam_sgpt.stnd_ex_yn_spnm IS '위성결절존재여부구분명' ;
COMMENT ON COLUMN lvcn_exam_sgpt.stnd_cont IS '위성결절내용' ;
COMMENT ON COLUMN lvcn_exam_sgpt.srmg_sfmg_lnth_vl IS '수술절제면안전경계길이값' ;
COMMENT ON COLUMN lvcn_exam_sgpt.srmg_detl_cont IS '수술절제면상세내용' ;
COMMENT ON COLUMN lvcn_exam_sgpt.srmg_rlct_cd IS '수술절제면잔존코드' ;
COMMENT ON COLUMN lvcn_exam_sgpt.srmg_rlct_nm IS '수술절제면잔존명' ;
COMMENT ON COLUMN lvcn_exam_sgpt.lc_ex_yn_spcd IS '간경변증존재여부구분코드' ;
COMMENT ON COLUMN lvcn_exam_sgpt.lc_ex_yn_spnm IS '간경변증존재여부구분명' ;
COMMENT ON COLUMN lvcn_exam_sgpt.lver_fbrs_grcd IS '간섬유화등급코드' ;
COMMENT ON COLUMN lvcn_exam_sgpt.lver_fbrs_grnm IS '간섬유화등급명' ;
COMMENT ON COLUMN lvcn_exam_sgpt.inhp_mtst_ex_yn_spcd IS '간내전이존재여부구분코드' ;
COMMENT ON COLUMN lvcn_exam_sgpt.inhp_mtst_ex_yn_spnm IS '간내전이존재여부구분명' ;
COMMENT ON COLUMN lvcn_exam_sgpt.tumr_mlct_ocrn_ex_yn_spcd IS '종양다중심성발생존재여부구분코드' ;
COMMENT ON COLUMN lvcn_exam_sgpt.tumr_mlct_ocrn_ex_yn_spnm IS '종양다중심성발생존재여부구분명' ;
COMMENT ON COLUMN lvcn_exam_sgpt.totl_ln_cnt IS '총림프절수' ;
COMMENT ON COLUMN lvcn_exam_sgpt.pstv_ln_cnt IS '양성림프절수' ;
COMMENT ON COLUMN lvcn_exam_sgpt.stg_yr IS 'STAGE년도' ;
COMMENT ON COLUMN lvcn_exam_sgpt.stg_kncd IS 'STAGE종류코드' ;
COMMENT ON COLUMN lvcn_exam_sgpt.stg_knnm IS 'STAGE종류명' ;
COMMENT ON COLUMN lvcn_exam_sgpt.afop_path_tnm_stag_vl IS '수술후병리TNM병기값' ;
COMMENT ON COLUMN lvcn_exam_sgpt.afop_path_t_stag_vl IS '수술후병리T병기값' ;
COMMENT ON COLUMN lvcn_exam_sgpt.afop_path_n_stag_vl IS '수술후병리N병기값' ;
COMMENT ON COLUMN lvcn_exam_sgpt.afop_path_m_stag_vl IS '수술후병리M병기값' ;
COMMENT ON COLUMN lvcn_exam_sgpt.crtn_dt IS '생성일시' ;


-- 16. 간암_진단_합병증

-- DROP TABLE lvcn_diag_comp;
CREATE TABLE lvcn_diag_comp (
	hosp_cd varchar(20) NOT NULL, -- 병원코드
	pt_sbst_no varchar(10) NOT NULL, -- 환자대체번호
	srpr_oprt_ymd varchar(8) NOT NULL, -- 시술수술일자
	srpr_oprt_seq numeric(3) NOT NULL, -- 시술수술순번
	comp_spcd varchar(20) , -- 합병증구분코드
	comp_spnm varchar(200) , -- 합병증구분명
	srpr_oprt_comp_ocrn_ymd varchar(8) , -- 시술수술합병증발생일자
	srpr_oprt_comp_spcd varchar(20) , -- 시술수술합병증구분코드
	srpr_oprt_comp_spnm varchar(200) , -- 시술수술합병증구분명
	comp_grcd varchar(20) , -- 합병증등급코드
	comp_grnm varchar(200) , -- 합병증등급명
	comp_trtm_mtcd varchar(20) , -- 합병증치료방법코드
	comp_trtm_mtnm varchar(200) , -- 합병증치료방법명
	crtn_dt timestamp NOT NULL DEFAULT SYSDATE NOT NULL, -- 생성일시
	CONSTRAINT lvcn_diag_comp_pk PRIMARY KEY (hosp_cd, pt_sbst_no, srpr_oprt_ymd, srpr_oprt_seq)
);
COMMENT ON TABLE lvcn_diag_comp IS '간암_진단_합병증';

-- Column comments

COMMENT ON COLUMN lvcn_diag_comp.hosp_cd IS '병원코드' ;
COMMENT ON COLUMN lvcn_diag_comp.pt_sbst_no IS '환자대체번호' ;
COMMENT ON COLUMN lvcn_diag_comp.srpr_oprt_ymd IS '시술수술일자' ;
COMMENT ON COLUMN lvcn_diag_comp.srpr_oprt_seq IS '시술수술순번' ;
COMMENT ON COLUMN lvcn_diag_comp.comp_spcd IS '합병증구분코드' ;
COMMENT ON COLUMN lvcn_diag_comp.comp_spnm IS '합병증구분명' ;
COMMENT ON COLUMN lvcn_diag_comp.srpr_oprt_comp_ocrn_ymd IS '시술수술합병증발생일자' ;
COMMENT ON COLUMN lvcn_diag_comp.srpr_oprt_comp_spcd IS '시술수술합병증구분코드' ;
COMMENT ON COLUMN lvcn_diag_comp.srpr_oprt_comp_spnm IS '시술수술합병증구분명' ;
COMMENT ON COLUMN lvcn_diag_comp.comp_grcd IS '합병증등급코드' ;
COMMENT ON COLUMN lvcn_diag_comp.comp_grnm IS '합병증등급명' ;
COMMENT ON COLUMN lvcn_diag_comp.comp_trtm_mtcd IS '합병증치료방법코드' ;
COMMENT ON COLUMN lvcn_diag_comp.comp_trtm_mtnm IS '합병증치료방법명' ;
COMMENT ON COLUMN lvcn_diag_comp.crtn_dt IS '생성일시' ;


-- 17. 간암_치료_간염치료

-- DROP TABLE lvcn_trtm_hptr;
CREATE TABLE lvcn_trtm_hptr (
	hosp_cd varchar(20) NOT NULL, -- 병원코드
	pt_sbst_no varchar(10) NOT NULL, -- 환자대체번호
	drug_prsc_ymd varchar(8) NOT NULL, -- 약제처방일자
	drug_prsc_seq numeric(3) NOT NULL, -- 약제처방순번
	drin_kncd varchar(20) NOT NULL, -- 약제성분종류코드
	drin_knnm varchar(200) NOT NULL, -- 약제성분종류명
	drin_cd varchar(20) , -- 약제성분코드
	drin_nm varchar(200) , -- 약제성분명
	drin_smct_cd varchar(200) , -- 약제성분SNOMEDCT코드
	drin_smct_nm varchar(1000) , -- 약제성분SNOMEDCT명
	drug_cd varchar(20) NOT NULL, -- 약제코드
	drug_nm varchar(200) NOT NULL, -- 약제명
	drug_edi_cd varchar(20) , -- 약제EDI코드
	drug_edi_nm varchar(200) , -- 약제EDI명
	drug_atc_cd varchar(20) , -- 약제ATC코드
	drug_atc_nm varchar(200) , -- 약제ATC명
	drug_rxnm_cd varchar(20) , -- 약제RXNORM코드
	drug_rxnm_nm varchar(200) , -- 약제RXNORM명
	drug_prsc_capa varchar(50) , -- 약제처방용량
	drug_prsc_capa_unit_cd varchar(20) , -- 약제처방용량단위코드
	drug_prsc_capa_unit_nm varchar(200) , -- 약제처방용량단위명
	drug_prsc_dcnt numeric(6) , -- 약제처방일수
	drug_injc_pth_cd varchar(20) , -- 약제투여경로코드
	drug_injc_pth_nm varchar(200) , -- 약제투여경로명
	crtn_dt timestamp NOT NULL DEFAULT SYSDATE NOT NULL, -- 생성일시
	CONSTRAINT lvcn_trtm_hptr_pk PRIMARY KEY (hosp_cd, pt_sbst_no, drug_prsc_ymd, drug_prsc_seq)
);
COMMENT ON TABLE lvcn_trtm_hptr IS '간암_치료_간염치료';

-- Column comments
COMMENT ON COLUMN lvcn_trtm_hptr.hosp_cd IS '병원코드' ;
COMMENT ON COLUMN lvcn_trtm_hptr.pt_sbst_no IS '환자대체번호' ;
COMMENT ON COLUMN lvcn_trtm_hptr.drug_prsc_ymd IS '약제처방일자' ;
COMMENT ON COLUMN lvcn_trtm_hptr.drug_prsc_seq IS '약제처방순번' ;
COMMENT ON COLUMN lvcn_trtm_hptr.drin_kncd IS '약제성분종류코드' ;
COMMENT ON COLUMN lvcn_trtm_hptr.drin_knnm IS '약제성분종류명' ;
COMMENT ON COLUMN lvcn_trtm_hptr.drin_cd IS '약제성분코드' ;
COMMENT ON COLUMN lvcn_trtm_hptr.drin_nm IS '약제성분명' ;
COMMENT ON COLUMN lvcn_trtm_hptr.drin_smct_cd IS '약제성분SNOMEDCT코드' ;
COMMENT ON COLUMN lvcn_trtm_hptr.drin_smct_nm IS '약제성분SNOMEDCT명' ;
COMMENT ON COLUMN lvcn_trtm_hptr.drug_cd IS '약제코드' ;
COMMENT ON COLUMN lvcn_trtm_hptr.drug_nm IS '약제명' ;
COMMENT ON COLUMN lvcn_trtm_hptr.drug_edi_cd IS '약제EDI코드' ;
COMMENT ON COLUMN lvcn_trtm_hptr.drug_edi_nm IS '약제EDI명' ;
COMMENT ON COLUMN lvcn_trtm_hptr.drug_atc_cd IS '약제ATC코드' ;
COMMENT ON COLUMN lvcn_trtm_hptr.drug_atc_nm IS '약제ATC명' ;
COMMENT ON COLUMN lvcn_trtm_hptr.drug_rxnm_cd IS '약제RXNORM코드' ;
COMMENT ON COLUMN lvcn_trtm_hptr.drug_rxnm_nm IS '약제RXNORM명' ;
COMMENT ON COLUMN lvcn_trtm_hptr.drug_prsc_capa IS '약제처방용량' ;
COMMENT ON COLUMN lvcn_trtm_hptr.drug_prsc_capa_unit_cd IS '약제처방용량단위코드' ;
COMMENT ON COLUMN lvcn_trtm_hptr.drug_prsc_capa_unit_nm IS '약제처방용량단위명' ;
COMMENT ON COLUMN lvcn_trtm_hptr.drug_prsc_dcnt IS '약제처방일수' ;
COMMENT ON COLUMN lvcn_trtm_hptr.drug_injc_pth_cd IS '약제투여경로코드' ;
COMMENT ON COLUMN lvcn_trtm_hptr.drug_injc_pth_nm IS '약제투여경로명' ;
COMMENT ON COLUMN lvcn_trtm_hptr.crtn_dt IS '생성일시' ;


-- 18. 간암_치료_항암치료

-- DROP TABLE lvcn_trtm_antr;
CREATE TABLE lvcn_trtm_antr (
	hosp_cd varchar(20) NOT NULL, -- 병원코드
	pt_sbst_no varchar(10) NOT NULL, -- 환자대체번호
	drug_prsc_ymd varchar(8) NOT NULL, -- 약제처방일자
	drug_prsc_seq numeric(3) NOT NULL, -- 약제처방순번
	drug_clcd varchar(20) , -- 약제분류코드
	drug_clnm varchar(200) , -- 약제분류명
	andr_spcd varchar(20) , -- 항암약제구분코드
	andr_spnm varchar(200) , -- 항암약제구분명
	drin_kncd varchar(20) NOT NULL, -- 약제성분종류코드
	drin_knnm varchar(200) NOT NULL, -- 약제성분종류명
	drin_cd varchar(20) , -- 약제성분코드
	drin_nm varchar(200) , -- 약제성분명
	drin_smct_cd varchar(200) , -- 약제성분SNOMEDCT코드
	drin_smct_nm varchar(1000) , -- 약제성분SNOMEDCT명
	drug_cd varchar(20) NOT NULL, -- 약제코드
	drug_nm varchar(200) NOT NULL, -- 약제명
	drug_edi_cd varchar(20) , -- 약제EDI코드
	drug_edi_nm varchar(200) , -- 약제EDI명
	drug_atc_cd varchar(20) , -- 약제ATC코드
	drug_atc_nm varchar(200) , -- 약제ATC명
	drug_rxnm_cd varchar(20) , -- 약제RXNORM코드
	drug_rxnm_nm varchar(200) , -- 약제RXNORM명
	drug_prsc_capa varchar(50) , -- 약제처방용량
	drug_prsc_capa_unit_cd varchar(20) , -- 약제처방용량단위코드
	drug_prsc_capa_unit_nm varchar(200) , -- 약제처방용량단위명
	drug_prsc_dcnt numeric(6) , -- 약제처방일수
	drug_injc_pth_cd varchar(20) , -- 약제투여경로코드
	drug_injc_pth_nm varchar(200) , -- 약제투여경로명
	drug_mdct_dtrn_mcnt numeric(10,3) , -- 약제투약기간월수
	crtn_dt timestamp NOT NULL DEFAULT SYSDATE NOT NULL, -- 생성일시
	CONSTRAINT lvcn_trtm_antr_pk PRIMARY KEY (hosp_cd, pt_sbst_no, drug_prsc_ymd, drug_prsc_seq)
);
COMMENT ON TABLE lvcn_trtm_antr IS '간암_치료_항암치료';

-- Column comments
COMMENT ON COLUMN lvcn_trtm_antr.hosp_cd IS '병원코드' ;
COMMENT ON COLUMN lvcn_trtm_antr.pt_sbst_no IS '환자대체번호' ;
COMMENT ON COLUMN lvcn_trtm_antr.drug_prsc_ymd IS '약제처방일자' ;
COMMENT ON COLUMN lvcn_trtm_antr.drug_prsc_seq IS '약제처방순번' ;
COMMENT ON COLUMN lvcn_trtm_antr.drug_clcd IS '약제분류코드' ;
COMMENT ON COLUMN lvcn_trtm_antr.drug_clnm IS '약제분류명' ;
COMMENT ON COLUMN lvcn_trtm_antr.andr_spcd IS '항암약제구분코드' ;
COMMENT ON COLUMN lvcn_trtm_antr.andr_spnm IS '항암약제구분명' ;
COMMENT ON COLUMN lvcn_trtm_antr.drin_kncd IS '약제성분종류코드' ;
COMMENT ON COLUMN lvcn_trtm_antr.drin_knnm IS '약제성분종류명' ;
COMMENT ON COLUMN lvcn_trtm_antr.drin_cd IS '약제성분코드' ;
COMMENT ON COLUMN lvcn_trtm_antr.drin_nm IS '약제성분명' ;
COMMENT ON COLUMN lvcn_trtm_antr.drin_smct_cd IS '약제성분SNOMEDCT코드' ;
COMMENT ON COLUMN lvcn_trtm_antr.drin_smct_nm IS '약제성분SNOMEDCT명' ;
COMMENT ON COLUMN lvcn_trtm_antr.drug_cd IS '약제코드' ;
COMMENT ON COLUMN lvcn_trtm_antr.drug_nm IS '약제명' ;
COMMENT ON COLUMN lvcn_trtm_antr.drug_edi_cd IS '약제EDI코드' ;
COMMENT ON COLUMN lvcn_trtm_antr.drug_edi_nm IS '약제EDI명' ;
COMMENT ON COLUMN lvcn_trtm_antr.drug_atc_cd IS '약제ATC코드' ;
COMMENT ON COLUMN lvcn_trtm_antr.drug_atc_nm IS '약제ATC명' ;
COMMENT ON COLUMN lvcn_trtm_antr.drug_rxnm_cd IS '약제RXNORM코드' ;
COMMENT ON COLUMN lvcn_trtm_antr.drug_rxnm_nm IS '약제RXNORM명' ;
COMMENT ON COLUMN lvcn_trtm_antr.drug_prsc_capa IS '약제처방용량' ;
COMMENT ON COLUMN lvcn_trtm_antr.drug_prsc_capa_unit_cd IS '약제처방용량단위코드' ;
COMMENT ON COLUMN lvcn_trtm_antr.drug_prsc_capa_unit_nm IS '약제처방용량단위명' ;
COMMENT ON COLUMN lvcn_trtm_antr.drug_prsc_dcnt IS '약제처방일수' ;
COMMENT ON COLUMN lvcn_trtm_antr.drug_injc_pth_cd IS '약제투여경로코드' ;
COMMENT ON COLUMN lvcn_trtm_antr.drug_injc_pth_nm IS '약제투여경로명' ;
COMMENT ON COLUMN lvcn_trtm_antr.drug_mdct_dtrn_mcnt IS '약제투약기간월수' ;
COMMENT ON COLUMN lvcn_trtm_antr.crtn_dt IS '생성일시' ;

-- 19.간암_치료_항암요법

-- DROP TABLE lvcn_trtm_antp;
CREATE TABLE lvcn_trtm_antp (
	hosp_cd varchar(20) NOT NULL, -- 병원코드
	pt_sbst_no varchar(10) NOT NULL, -- 환자대체번호
	antp_strt_ymd varchar(8) NOT NULL, -- 항암요법시작일자
	antp_seq numeric(3) NOT NULL, -- 항암요법순번
	antp_end_ymd varchar(8) , -- 항암요법종료일자
	antp_nm varchar(200) , -- 항암요법명
	antp_cycl_cnt numeric(3) , -- 항암요법주기수
	antp_line_cnt numeric(3) , -- 항암요법라인수
	antp_temp_stop_yn_unid_spcd varchar(20) , -- 항암요법임시중단여부확인불가구분코드
	antp_temp_stop_yn_unid_spnm varchar(50) , -- 항암요법임시중단여부확인불가구분명
	antp_end_resn_cd varchar(20) , -- 항암요법종료이유코드
	antp_end_resn_nm varchar(200) , -- 항암요법종료이유명
	antp_asmt_ymd varchar(8) , -- 항암요법평가일자
	antp_asmt_item_cd varchar(20) , -- 항암요법평가항목코드
	antp_asmt_item_nm varchar(200) , -- 항암요법평가항목명
	antp_asmt_item_etc_cont varchar(4000) , -- 항암요법평가항목기타내용
	antp_seff_item_cd varchar(20) , -- 항암요법부작용항목코드
	antp_seff_item_nm varchar(200) , -- 항암요법부작용항목명
	antp_seff_item_etc_cont varchar(4000) , -- 항암요법부작용항목기타내용
	antp_seff_grcd varchar(20) , -- 항암요법부작용등급코드
	antp_seff_grnm varchar(200) , -- 항암요법부작용등급명
	antp_seff_grad_etc_cont varchar(4000) , -- 항암요법부작용등급기타내용
	antp_trtm_prps_cd varchar(20) , -- 항암요법치료목적코드
	antp_trtm_prps_nm varchar(200) , -- 항암요법치료목적명
	crtn_dt timestamp NOT NULL DEFAULT SYSDATE NOT NULL, -- 생성일시
	CONSTRAINT lvcn_trtm_antp_pk PRIMARY KEY (hosp_cd, pt_sbst_no, antp_strt_ymd, antp_seq)
);
COMMENT ON TABLE lvcn_trtm_antp IS '간암_치료_항암요법';

-- Column comments
COMMENT ON COLUMN lvcn_trtm_antp.hosp_cd IS '병원코드' ;
COMMENT ON COLUMN lvcn_trtm_antp.pt_sbst_no IS '환자대체번호' ;
COMMENT ON COLUMN lvcn_trtm_antp.antp_strt_ymd IS '항암요법시작일자' ;
COMMENT ON COLUMN lvcn_trtm_antp.antp_seq IS '항암요법순번' ;
COMMENT ON COLUMN lvcn_trtm_antp.antp_end_ymd IS '항암요법종료일자' ;
COMMENT ON COLUMN lvcn_trtm_antp.antp_nm IS '항암요법명' ;
COMMENT ON COLUMN lvcn_trtm_antp.antp_cycl_cnt IS '항암요법주기수' ;
COMMENT ON COLUMN lvcn_trtm_antp.antp_line_cnt IS '항암요법라인수' ;
COMMENT ON COLUMN lvcn_trtm_antp.antp_temp_stop_yn_unid_spcd IS '항암요법임시중단여부확인불가구분코드' ;
COMMENT ON COLUMN lvcn_trtm_antp.antp_temp_stop_yn_unid_spnm IS '항암요법임시중단여부확인불가구분명' ;
COMMENT ON COLUMN lvcn_trtm_antp.antp_end_resn_cd IS '항암요법종료이유코드' ;
COMMENT ON COLUMN lvcn_trtm_antp.antp_end_resn_nm IS '항암요법종료이유명' ;
COMMENT ON COLUMN lvcn_trtm_antp.antp_asmt_ymd IS '항암요법평가일자' ;
COMMENT ON COLUMN lvcn_trtm_antp.antp_asmt_item_cd IS '항암요법평가항목코드' ;
COMMENT ON COLUMN lvcn_trtm_antp.antp_asmt_item_nm IS '항암요법평가항목명' ;
COMMENT ON COLUMN lvcn_trtm_antp.antp_asmt_item_etc_cont IS '항암요법평가항목기타내용' ;
COMMENT ON COLUMN lvcn_trtm_antp.antp_seff_item_cd IS '항암요법부작용항목코드' ;
COMMENT ON COLUMN lvcn_trtm_antp.antp_seff_item_nm IS '항암요법부작용항목명' ;
COMMENT ON COLUMN lvcn_trtm_antp.antp_seff_item_etc_cont IS '항암요법부작용항목기타내용' ;
COMMENT ON COLUMN lvcn_trtm_antp.antp_seff_grcd IS '항암요법부작용등급코드' ;
COMMENT ON COLUMN lvcn_trtm_antp.antp_seff_grnm IS '항암요법부작용등급명' ;
COMMENT ON COLUMN lvcn_trtm_antp.antp_seff_grad_etc_cont IS '항암요법부작용등급기타내용' ;
COMMENT ON COLUMN lvcn_trtm_antp.antp_trtm_prps_cd IS '항암요법치료목적코드' ;
COMMENT ON COLUMN lvcn_trtm_antp.antp_trtm_prps_nm IS '항암요법치료목적명' ;
COMMENT ON COLUMN lvcn_trtm_antp.crtn_dt IS '생성일시' ;


-- 20.간암_치료_방사선

-- DROP TABLE lvcn_trtm_rd;
CREATE TABLE lvcn_trtm_rd (
	hosp_cd varchar(20) NOT NULL, -- 병원코드
	pt_sbst_no varchar(10) NOT NULL, -- 환자대체번호
	rdt_prsc_ymd varchar(8) NOT NULL, -- 방사선치료처방일자
	rdt_prsc_seq numeric(3) NOT NULL, -- 방사선치료처방순번
	rdt_kncd varchar(20) NOT NULL, -- 방사선치료종류코드
	rdt_knnm varchar(200) NOT NULL, -- 방사선치료종류명
	rdt_cd varchar(20) NOT NULL, -- 방사선치료코드
	rdt_nm varchar(200) NOT NULL, -- 방사선치료명
	rdt_edi_cd varchar(20) , -- 방사선치료EDI코드
	rdt_edi_nm varchar(200) , -- 방사선치료EDI명
	rdt_smct_cd varchar(200) , -- 방사선치료SNOMEDCT코드
	rdt_smct_nm varchar(1000) , -- 방사선치료SNOMEDCT명
	rdt_prps_cd varchar(20) , -- 방사선치료목적코드
	rdt_prps_nm varchar(200) , -- 방사선치료목적명
	rdt_site_cd varchar(20) NOT NULL, -- 방사선치료부위코드
	rdt_site_nm varchar(200) NOT NULL, -- 방사선치료부위명
	rd_gy numeric(10,3) , -- 방사선선량
	rd_impl_nt numeric(5) , -- 방사선시행횟수
	rd_totl_gy numeric(10,3) , -- 방사선총선량
	rdt_asmt_ymd varchar(8) , -- 방사선치료평가일자
	rdt_seff_perd_spcd varchar(20) , -- 방사선치료부작용시기구분코드
	rdt_seff_perd_spnm varchar(200) , -- 방사선치료부작용시기구분명
	rdt_seff_kncd varchar(20) , -- 방사선치료부작용종류코드
	rdt_seff_knnm varchar(200) , -- 방사선치료부작용종류명
	rdt_seff_kind_etc_cont varchar(4000) , -- 방사선치료부작용종류기타내용
	rdt_seff_grcd varchar(20) , -- 방사선치료부작용등급코드
	rdt_seff_grnm varchar(200) , -- 방사선치료부작용등급명
	rdt_seff_grad_etc_cont varchar(4000) , -- 방사선치료부작용등급기타내용
	rdt_asmt_item_cd varchar(20) , -- 방사선치료평가항목코드
	rdt_asmt_item_nm varchar(200) , -- 방사선치료평가항목명
	rdt_asmt_item_etc_cont varchar(4000) , -- 방사선치료평가항목기타내용
	crtn_dt timestamp NOT NULL DEFAULT SYSDATE NOT NULL, -- 생성일시
	CONSTRAINT lvcn_trtm_rd_pk PRIMARY KEY (hosp_cd, pt_sbst_no, rdt_prsc_ymd, rdt_prsc_seq)
);
COMMENT ON TABLE lvcn_trtm_rd IS '간암_치료_방사선';

-- Column comments
COMMENT ON COLUMN lvcn_trtm_rd.hosp_cd IS '병원코드' ;
COMMENT ON COLUMN lvcn_trtm_rd.pt_sbst_no IS '환자대체번호' ;
COMMENT ON COLUMN lvcn_trtm_rd.rdt_prsc_ymd IS '방사선치료처방일자' ;
COMMENT ON COLUMN lvcn_trtm_rd.rdt_prsc_seq IS '방사선치료처방순번' ;
COMMENT ON COLUMN lvcn_trtm_rd.rdt_kncd IS '방사선치료종류코드' ;
COMMENT ON COLUMN lvcn_trtm_rd.rdt_knnm IS '방사선치료종류명' ;
COMMENT ON COLUMN lvcn_trtm_rd.rdt_cd IS '방사선치료코드' ;
COMMENT ON COLUMN lvcn_trtm_rd.rdt_nm IS '방사선치료명' ;
COMMENT ON COLUMN lvcn_trtm_rd.rdt_edi_cd IS '방사선치료EDI코드' ;
COMMENT ON COLUMN lvcn_trtm_rd.rdt_edi_nm IS '방사선치료EDI명' ;
COMMENT ON COLUMN lvcn_trtm_rd.rdt_smct_cd IS '방사선치료SNOMEDCT코드' ;
COMMENT ON COLUMN lvcn_trtm_rd.rdt_smct_nm IS '방사선치료SNOMEDCT명' ;
COMMENT ON COLUMN lvcn_trtm_rd.rdt_prps_cd IS '방사선치료목적코드' ;
COMMENT ON COLUMN lvcn_trtm_rd.rdt_prps_nm IS '방사선치료목적명' ;
COMMENT ON COLUMN lvcn_trtm_rd.rdt_site_cd IS '방사선치료부위코드' ;
COMMENT ON COLUMN lvcn_trtm_rd.rdt_site_nm IS '방사선치료부위명' ;
COMMENT ON COLUMN lvcn_trtm_rd.rd_gy IS '방사선선량' ;
COMMENT ON COLUMN lvcn_trtm_rd.rd_impl_nt IS '방사선시행횟수' ;
COMMENT ON COLUMN lvcn_trtm_rd.rd_totl_gy IS '방사선총선량' ;
COMMENT ON COLUMN lvcn_trtm_rd.rdt_asmt_ymd IS '방사선치료평가일자' ;
COMMENT ON COLUMN lvcn_trtm_rd.rdt_seff_perd_spcd IS '방사선치료부작용시기구분코드' ;
COMMENT ON COLUMN lvcn_trtm_rd.rdt_seff_perd_spnm IS '방사선치료부작용시기구분명' ;
COMMENT ON COLUMN lvcn_trtm_rd.rdt_seff_kncd IS '방사선치료부작용종류코드' ;
COMMENT ON COLUMN lvcn_trtm_rd.rdt_seff_knnm IS '방사선치료부작용종류명' ;
COMMENT ON COLUMN lvcn_trtm_rd.rdt_seff_kind_etc_cont IS '방사선치료부작용종류기타내용' ;
COMMENT ON COLUMN lvcn_trtm_rd.rdt_seff_grcd IS '방사선치료부작용등급코드' ;
COMMENT ON COLUMN lvcn_trtm_rd.rdt_seff_grnm IS '방사선치료부작용등급명' ;
COMMENT ON COLUMN lvcn_trtm_rd.rdt_seff_grad_etc_cont IS '방사선치료부작용등급기타내용' ;
COMMENT ON COLUMN lvcn_trtm_rd.rdt_asmt_item_cd IS '방사선치료평가항목코드' ;
COMMENT ON COLUMN lvcn_trtm_rd.rdt_asmt_item_nm IS '방사선치료평가항목명' ;
COMMENT ON COLUMN lvcn_trtm_rd.rdt_asmt_item_etc_cont IS '방사선치료평가항목기타내용' ;
COMMENT ON COLUMN lvcn_trtm_rd.crtn_dt IS '생성일시' ;


-- 21. 간암_추적관찰_재발

-- DROP TABLE lvcn_fuor_rlps;
CREATE TABLE lvcn_fuor_rlps (
	hosp_cd varchar(20) NOT NULL, -- 병원코드
	pt_sbst_no varchar(10) NOT NULL, -- 환자대체번호
	rldg_ymd varchar(8) NOT NULL, -- 재발진단일자
	rldg_seq numeric(3) NOT NULL, -- 재발진단순번
	rlps_site_cd varchar(20) , -- 재발부위코드
	rlps_site_nm varchar(200) , -- 재발부위명
	rlps_trtm_cont varchar(4000) , -- 재발치료내용
	rldg_mtcd varchar(20) , -- 재발진단방법코드
	rldg_mtnm varchar(200) , -- 재발진단방법명
	rlps_kncd varchar(20) , -- 재발종류코드
	rlps_knnm varchar(200) , -- 재발종류명
	crtn_dt timestamp NOT NULL DEFAULT SYSDATE NOT NULL, -- 생성일시
	CONSTRAINT lvcn_fuor_rlps_pk PRIMARY KEY (hosp_cd, pt_sbst_no, rldg_ymd, rldg_seq)
);
COMMENT ON TABLE lvcn_fuor_rlps IS '간암_추적관찰_재발';

-- Column comments
COMMENT ON COLUMN lvcn_fuor_rlps.hosp_cd IS '병원코드' ;
COMMENT ON COLUMN lvcn_fuor_rlps.pt_sbst_no IS '환자대체번호' ;
COMMENT ON COLUMN lvcn_fuor_rlps.rldg_ymd IS '재발진단일자' ;
COMMENT ON COLUMN lvcn_fuor_rlps.rldg_seq IS '재발진단순번' ;
COMMENT ON COLUMN lvcn_fuor_rlps.rlps_site_cd IS '재발부위코드' ;
COMMENT ON COLUMN lvcn_fuor_rlps.rlps_site_nm IS '재발부위명' ;
COMMENT ON COLUMN lvcn_fuor_rlps.rlps_trtm_cont IS '재발치료내용' ;
COMMENT ON COLUMN lvcn_fuor_rlps.rldg_mtcd IS '재발진단방법코드' ;
COMMENT ON COLUMN lvcn_fuor_rlps.rldg_mtnm IS '재발진단방법명' ;
COMMENT ON COLUMN lvcn_fuor_rlps.rlps_kncd IS '재발종류코드' ;
COMMENT ON COLUMN lvcn_fuor_rlps.rlps_knnm IS '재발종류명' ;
COMMENT ON COLUMN lvcn_fuor_rlps.crtn_dt IS '생성일시' ;
