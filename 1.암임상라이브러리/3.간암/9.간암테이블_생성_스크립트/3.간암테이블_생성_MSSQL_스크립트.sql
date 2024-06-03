
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
	crtn_dt datetime NOT NULL DEFAULT GETDATE(), -- 생성일시
    CONSTRAINT lvcn_pt_hlinf_pk PRIMARY KEY (hosp_cd, pt_sbst_no, adm_ymd, hlinf_seq)
);

-- 간암_환자_건강정보 테이블 및 컬럼 코멘트 스크립트 
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '간암_환자_건강정보', 'SCHEMA' , 'dbo', 'table', lvcn_pt_hlinf;

EXECUTE sys.sp_addextendedproperty 'MS_Description' , '병원코드', 'user' , 'dbo', 'table', lvcn_pt_hlinf, 'column' , hosp_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '환자대체번호', 'user' , 'dbo', 'table', lvcn_pt_hlinf, 'column' , pt_sbst_no;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '입원일자', 'user' , 'dbo', 'table', lvcn_pt_hlinf, 'column' , adm_ymd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '건강정보순번', 'user' , 'dbo', 'table', lvcn_pt_hlinf, 'column' , hlinf_seq;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '퇴원일자', 'user' , 'dbo', 'table', lvcn_pt_hlinf, 'column' , dsch_ymd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '현재음주여부무응답구분코드', 'user' , 'dbo', 'table', lvcn_pt_hlinf, 'column' , cur_drnk_yn_noans_spcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '현재음주여부무응답구분명', 'user' , 'dbo', 'table', lvcn_pt_hlinf, 'column' , cur_drnk_yn_noans_spnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '음주력여부무응답구분코드', 'user' , 'dbo', 'table', lvcn_pt_hlinf, 'column' , dhis_yn_noans_spcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '음주력여부무응답구분명', 'user' , 'dbo', 'table', lvcn_pt_hlinf, 'column' , dhis_yn_noans_spnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '음주시작연령값', 'user' , 'dbo', 'table', lvcn_pt_hlinf, 'column' , drnk_strt_age_vl;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '음주종류코드', 'user' , 'dbo', 'table', lvcn_pt_hlinf, 'column' , drnk_kncd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '음주종류명', 'user' , 'dbo', 'table', lvcn_pt_hlinf, 'column' , drnk_knnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '음주종류기타내용', 'user' , 'dbo', 'table', lvcn_pt_hlinf, 'column' , drnk_kind_etc_cont;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '음주량', 'user' , 'dbo', 'table', lvcn_pt_hlinf, 'column' , drnk_qty;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '음주횟수', 'user' , 'dbo', 'table', lvcn_pt_hlinf, 'column' , drnk_nt;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '음주기간년수', 'user' , 'dbo', 'table', lvcn_pt_hlinf, 'column' , drnk_dtrn_ycnt;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '금주시작년도', 'user' , 'dbo', 'table', lvcn_pt_hlinf, 'column' , ndrk_strt_yr;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '현재흡연여부무응답구분코드', 'user' , 'dbo', 'table', lvcn_pt_hlinf, 'column' , cur_smok_yn_noans_spcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '현재흡연여부무응답구분명', 'user' , 'dbo', 'table', lvcn_pt_hlinf, 'column' , cur_smok_yn_noans_spnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '흡연력여부무응답구분코드', 'user' , 'dbo', 'table', lvcn_pt_hlinf, 'column' , shis_yn_noans_spcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '흡연력여부무응답구분명', 'user' , 'dbo', 'table', lvcn_pt_hlinf, 'column' , shis_yn_noans_spnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '흡연시작연령값', 'user' , 'dbo', 'table', lvcn_pt_hlinf, 'column' , smok_strt_age_vl;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '흡연량', 'user' , 'dbo', 'table', lvcn_pt_hlinf, 'column' , smok_qty;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '흡연기간년수', 'user' , 'dbo', 'table', lvcn_pt_hlinf, 'column' , smok_dtrn_ycnt;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '금연시작년도', 'user' , 'dbo', 'table', lvcn_pt_hlinf, 'column' , nsmk_strt_yr;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '병력여부무응답구분코드', 'user' , 'dbo', 'table', lvcn_pt_hlinf, 'column' , mhis_yn_noans_spcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '병력여부무응답구분명', 'user' , 'dbo', 'table', lvcn_pt_hlinf, 'column' , mhis_yn_noans_spnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '병력고혈압여부무응답구분코드', 'user' , 'dbo', 'table', lvcn_pt_hlinf, 'column' , mhis_htn_yn_noans_spcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '병력고혈압여부무응답구분명', 'user' , 'dbo', 'table', lvcn_pt_hlinf, 'column' , mhis_htn_yn_noans_spnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '병력당뇨여부무응답구분코드', 'user' , 'dbo', 'table', lvcn_pt_hlinf, 'column' , mhis_dbt_yn_noans_spcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '병력당뇨여부무응답구분명', 'user' , 'dbo', 'table', lvcn_pt_hlinf, 'column' , mhis_dbt_yn_noans_spnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '병력결핵여부무응답구분코드', 'user' , 'dbo', 'table', lvcn_pt_hlinf, 'column' , mhis_tb_yn_noans_spcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '병력결핵여부무응답구분명', 'user' , 'dbo', 'table', lvcn_pt_hlinf, 'column' , mhis_tb_yn_noans_spnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '병력간질환여부무응답구분코드', 'user' , 'dbo', 'table', lvcn_pt_hlinf, 'column' , mhis_lvds_yn_noans_spcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '병력간질환여부무응답구분명', 'user' , 'dbo', 'table', lvcn_pt_hlinf, 'column' , mhis_lvds_yn_noans_spnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '병력간질환종류코드', 'user' , 'dbo', 'table', lvcn_pt_hlinf, 'column' , mhis_lvds_kncd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '병력간질환종류명', 'user' , 'dbo', 'table', lvcn_pt_hlinf, 'column' , mhis_lvds_knnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '병력간질환기타내용', 'user' , 'dbo', 'table', lvcn_pt_hlinf, 'column' , mhis_lvds_etc_cont;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '병력고지혈증여부무응답구분코드', 'user' , 'dbo', 'table', lvcn_pt_hlinf, 'column' , mhis_hl_yn_noans_spcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '병력고지혈증여부무응답구분명', 'user' , 'dbo', 'table', lvcn_pt_hlinf, 'column' , mhis_hl_yn_noans_spnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '병력암여부무응답구분코드', 'user' , 'dbo', 'table', lvcn_pt_hlinf, 'column' , mhis_cncr_yn_noans_spcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '병력암여부무응답구분명', 'user' , 'dbo', 'table', lvcn_pt_hlinf, 'column' , mhis_cncr_yn_noans_spnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '병력암종류코드', 'user' , 'dbo', 'table', lvcn_pt_hlinf, 'column' , mhis_cncr_kncd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '병력암종류명', 'user' , 'dbo', 'table', lvcn_pt_hlinf, 'column' , mhis_cncr_knnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '병력암종류기타내용', 'user' , 'dbo', 'table', lvcn_pt_hlinf, 'column' , mhis_cncr_kind_etc_cont;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '병력우울증여부무응답구분코드', 'user' , 'dbo', 'table', lvcn_pt_hlinf, 'column' , mhis_depr_yn_noans_spcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '병력우울증여부무응답구분명', 'user' , 'dbo', 'table', lvcn_pt_hlinf, 'column' , mhis_depr_yn_noans_spnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '병력불면증여부무응답구분코드', 'user' , 'dbo', 'table', lvcn_pt_hlinf, 'column' , mhis_insm_yn_noans_spcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '병력불면증여부무응답구분명', 'user' , 'dbo', 'table', lvcn_pt_hlinf, 'column' , mhis_insm_yn_noans_spnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '병력심장질환여부무응답구분코드', 'user' , 'dbo', 'table', lvcn_pt_hlinf, 'column' , mhis_cads_yn_noans_spcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '병력심장질환여부무응답구분명', 'user' , 'dbo', 'table', lvcn_pt_hlinf, 'column' , mhis_cads_yn_noans_spnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '기타병력여부무응답구분코드', 'user' , 'dbo', 'table', lvcn_pt_hlinf, 'column' , etc_mhis_yn_noans_spcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '기타병력여부무응답구분명', 'user' , 'dbo', 'table', lvcn_pt_hlinf, 'column' , etc_mhis_yn_noans_spnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '기타병력질환내용', 'user' , 'dbo', 'table', lvcn_pt_hlinf, 'column' , etc_mhis_diss_cont;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '주증상여부무응답구분코드', 'user' , 'dbo', 'table', lvcn_pt_hlinf, 'column' , main_sym_yn_noans_spcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '주증상여부무응답구분명', 'user' , 'dbo', 'table', lvcn_pt_hlinf, 'column' , main_sym_yn_noans_spnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '주증상내용', 'user' , 'dbo', 'table', lvcn_pt_hlinf, 'column' , main_sym_cont;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '타병원진단후전원여부무응답구분코드', 'user' , 'dbo', 'table', lvcn_pt_hlinf, 'column' , ohad_hstr_yn_noans_spcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '타병원진단후전원여부무응답구분명', 'user' , 'dbo', 'table', lvcn_pt_hlinf, 'column' , ohad_hstr_yn_noans_spnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '퇴원상태코드', 'user' , 'dbo', 'table', lvcn_pt_hlinf, 'column' , dsch_stcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '퇴원상태명', 'user' , 'dbo', 'table', lvcn_pt_hlinf, 'column' , dsch_stnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '생성일시', 'user' , 'dbo', 'table', lvcn_pt_hlinf, 'column' , crtn_dt;


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
	crtn_dt datetime NOT NULL DEFAULT GETDATE(), -- 생성일시
    CONSTRAINT lvcn_pt_fmht_pk PRIMARY KEY (hosp_cd, pt_sbst_no, fmht_rcrd_ymd, fmht_rcrd_seq)
);

-- 간암_환자_가족력 테이블 및 컬럼 코멘트 스크립트 
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '간암_환자_가족력', 'SCHEMA' , 'dbo', 'table', lvcn_pt_fmht;

EXECUTE sys.sp_addextendedproperty 'MS_Description' , '병원코드', 'user' , 'dbo', 'table', lvcn_pt_fmht, 'column' , hosp_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '환자대체번호', 'user' , 'dbo', 'table', lvcn_pt_fmht, 'column' , pt_sbst_no;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '가족력기록일자', 'user' , 'dbo', 'table', lvcn_pt_fmht, 'column' , fmht_rcrd_ymd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '가족력기록순번', 'user' , 'dbo', 'table', lvcn_pt_fmht, 'column' , fmht_rcrd_seq;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '가족력여부무응답구분코드', 'user' , 'dbo', 'table', lvcn_pt_fmht, 'column' , fmht_yn_noans_spcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '가족력여부무응답구분명', 'user' , 'dbo', 'table', lvcn_pt_fmht, 'column' , fmht_yn_noans_spnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '환자가족관계코드', 'user' , 'dbo', 'table', lvcn_pt_fmht, 'column' , pt_fm_rlcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '환자가족관계명', 'user' , 'dbo', 'table', lvcn_pt_fmht, 'column' , pt_fm_rlnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '환자가족관계기타내용', 'user' , 'dbo', 'table', lvcn_pt_fmht, 'column' , pt_fmrl_etc_cont;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '가족병력고혈압여부무응답구분코드', 'user' , 'dbo', 'table', lvcn_pt_fmht, 'column' , fmhs_htn_yn_noans_spcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '가족병력고혈압여부무응답구분명', 'user' , 'dbo', 'table', lvcn_pt_fmht, 'column' , fmhs_htn_yn_noans_spnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '가족병력당뇨여부무응답구분코드', 'user' , 'dbo', 'table', lvcn_pt_fmht, 'column' , fmhs_dbt_yn_noans_spcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '가족병력당뇨여부무응답구분명', 'user' , 'dbo', 'table', lvcn_pt_fmht, 'column' , fmhs_dbt_yn_noans_spnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '가족력결핵여부무응답구분코드', 'user' , 'dbo', 'table', lvcn_pt_fmht, 'column' , fmht_tb_yn_noans_spcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '가족력결핵여부무응답구분명', 'user' , 'dbo', 'table', lvcn_pt_fmht, 'column' , fmht_tb_yn_noans_spnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '가족병력간질환여부무응답구분코드', 'user' , 'dbo', 'table', lvcn_pt_fmht, 'column' , fmhs_lvds_yn_noans_spcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '가족병력간질환여부무응답구분명', 'user' , 'dbo', 'table', lvcn_pt_fmht, 'column' , fmhs_lvds_yn_noans_spnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '가족병력간질환종류코드', 'user' , 'dbo', 'table', lvcn_pt_fmht, 'column' , fmhs_lvds_kncd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '가족병력간질환종류명', 'user' , 'dbo', 'table', lvcn_pt_fmht, 'column' , fmhs_lvds_knnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '가족병력간질환종류기타내용', 'user' , 'dbo', 'table', lvcn_pt_fmht, 'column' , fmhs_lvds_kind_etc_cont;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '가족병력암여부무응답구분코드', 'user' , 'dbo', 'table', lvcn_pt_fmht, 'column' , fmhs_cncr_yn_noans_spcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '가족병력암여부무응답구분명', 'user' , 'dbo', 'table', lvcn_pt_fmht, 'column' , fmhs_cncr_yn_noans_spnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '가족력암종류코드', 'user' , 'dbo', 'table', lvcn_pt_fmht, 'column' , fmht_cncr_kncd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '가족력암종류명', 'user' , 'dbo', 'table', lvcn_pt_fmht, 'column' , fmht_cncr_knnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '가족력암종류기타내용', 'user' , 'dbo', 'table', lvcn_pt_fmht, 'column' , fmht_cncr_kind_etc_cont;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '가족병력기타여부무응답구분코드', 'user' , 'dbo', 'table', lvcn_pt_fmht, 'column' , fmhs_etc_yn_noans_spcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '가족병력기타여부무응답구분명', 'user' , 'dbo', 'table', lvcn_pt_fmht, 'column' , fmhs_etc_yn_noans_spnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '가족병력기타내용', 'user' , 'dbo', 'table', lvcn_pt_fmht, 'column' , fmhs_etc_cont;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '생성일시', 'user' , 'dbo', 'table', lvcn_pt_fmht, 'column' , crtn_dt;


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
	crtn_dt datetime NOT NULL DEFAULT GETDATE(), -- 생성일시
    CONSTRAINT lvcn_diag_aninf_pk PRIMARY KEY (hosp_cd, pt_sbst_no, anth_rcrd_ymd, anth_rcrd_seq)
);

-- 간암_진단_신체계측정보 테이블 및 컬럼 코멘트 스크립트 
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '간암_진단_신체계측정보', 'SCHEMA' , 'dbo', 'table', lvcn_diag_aninf;

EXECUTE sys.sp_addextendedproperty 'MS_Description' , '병원코드', 'user' , 'dbo', 'table', lvcn_diag_aninf, 'column' , hosp_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '환자대체번호', 'user' , 'dbo', 'table', lvcn_diag_aninf, 'column' , pt_sbst_no;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '신체계측기록일자', 'user' , 'dbo', 'table', lvcn_diag_aninf, 'column' , anth_rcrd_ymd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '신체계측기록순번', 'user' , 'dbo', 'table', lvcn_diag_aninf, 'column' , anth_rcrd_seq;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '신장측정값', 'user' , 'dbo', 'table', lvcn_diag_aninf, 'column' , ht_msrm_vl;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '체중측정값', 'user' , 'dbo', 'table', lvcn_diag_aninf, 'column' , wt_msrm_vl;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , 'BMI값', 'user' , 'dbo', 'table', lvcn_diag_aninf, 'column' , bmi_vl;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '이완혈압값', 'user' , 'dbo', 'table', lvcn_diag_aninf, 'column' , rlxt_blpr_vl;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '수축혈압값', 'user' , 'dbo', 'table', lvcn_diag_aninf, 'column' , ctrt_blpr_vl;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , 'ECOG코드', 'user' , 'dbo', 'table', lvcn_diag_aninf, 'column' , ecog_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , 'ECOG명', 'user' , 'dbo', 'table', lvcn_diag_aninf, 'column' , ecog_nm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '생성일시', 'user' , 'dbo', 'table', lvcn_diag_aninf, 'column' , crtn_dt;


-- 4. 간암_진단_간기능평가
-- DROP TABLE lvcn_diag_lvfa;
CREATE TABLE lvcn_diag_lvfa (
    hosp_cd varchar(20) NOT NULL, -- 병원코드
    pt_sbst_no varchar(10) NOT NULL, -- 환자대체번호
    lvfa_crit_ymd varchar(8) NOT NULL, -- 간기능평가기준일자
    lvfa_crit_seq numeric(3) NOT NULL, -- 간기능평가기준순번
    lvfa_kncd varchar(20) , -- 간기능평가종류코드
    lvfa_knnm varchar(200) , -- 간기능평가종류명
    lvfa_rslt_cont varchar(200) , -- 간기능평가결과내용
    crtn_dt datetime NOT NULL DEFAULT GETDATE(), -- 생성일시
    CONSTRAINT lvcn_diag_lvfa_pk PRIMARY KEY (hosp_cd, pt_sbst_no, lvfa_crit_ymd, lvfa_crit_seq)
);

EXECUTE sys.sp_addextendedproperty 'MS_Description' , '간암_진단_간기능평가', 'SCHEMA' , 'dbo', 'table', lvcn_diag_lvfa;

EXECUTE sys.sp_addextendedproperty 'MS_Description' , '병원코드', 'user' , 'dbo', 'table', lvcn_diag_lvfa, 'column' , hosp_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '환자대체번호', 'user' , 'dbo', 'table', lvcn_diag_lvfa, 'column' , pt_sbst_no;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '간기능평가기준일자', 'user' , 'dbo', 'table', lvcn_diag_lvfa, 'column' , lvfa_crit_ymd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '간기능평가기준순번', 'user' , 'dbo', 'table', lvcn_diag_lvfa, 'column' , lvfa_crit_seq;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '간기능평가종류코드', 'user' , 'dbo', 'table', lvcn_diag_lvfa, 'column' , lvfa_kncd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '간기능평가종류명', 'user' , 'dbo', 'table', lvcn_diag_lvfa, 'column' , lvfa_knnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '간기능평가결과내용', 'user' , 'dbo', 'table', lvcn_diag_lvfa, 'column' , lvfa_rslt_cont;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '생성일시', 'user' , 'dbo', 'table', lvcn_diag_lvfa, 'column' , crtn_dt;


-- 5.간암_진단_정보
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
    crtn_dt datetime NOT NULL DEFAULT GETDATE(), -- 생성일시
    CONSTRAINT lvcn_diag_inf_pk PRIMARY KEY (hosp_cd, pt_sbst_no, diag_rgst_ymd, diag_rgst_seq)
);

EXECUTE sys.sp_addextendedproperty 'MS_Description' , '간암_진단_정보', 'SCHEMA' , 'dbo', 'table', lvcn_diag_inf;

EXECUTE sys.sp_addextendedproperty 'MS_Description' , '병원코드', 'user' , 'dbo', 'table', lvcn_diag_inf, 'column' , hosp_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '환자대체번호', 'user' , 'dbo', 'table', lvcn_diag_inf, 'column' , pt_sbst_no;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '진단등록일자', 'user' , 'dbo', 'table', lvcn_diag_inf, 'column' , diag_rgst_ymd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '진단등록순번', 'user' , 'dbo', 'table', lvcn_diag_inf, 'column' , diag_rgst_seq;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '간암진단종류코드', 'user' , 'dbo', 'table', lvcn_diag_inf, 'column' , lvcn_diag_kncd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '간암진단종류명', 'user' , 'dbo', 'table', lvcn_diag_inf, 'column' , lvcn_diag_knnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '진단코드', 'user' , 'dbo', 'table', lvcn_diag_inf, 'column' , diag_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '진단명', 'user' , 'dbo', 'table', lvcn_diag_inf, 'column' , diag_nm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '진단KCD코드', 'user' , 'dbo', 'table', lvcn_diag_inf, 'column' , diag_kcd_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '진단KCD명', 'user' , 'dbo', 'table', lvcn_diag_inf, 'column' , diag_kcd_nm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '진단SNOMEDCT코드', 'user' , 'dbo', 'table', lvcn_diag_inf, 'column' , diag_smct_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '진단SNOMEDCT명', 'user' , 'dbo', 'table', lvcn_diag_inf, 'column' , diag_smct_nm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '생성일시', 'user' , 'dbo', 'table', lvcn_diag_inf, 'column' , crtn_dt;



-- 6.간암_진단_전이
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
    crtn_dt datetime NOT NULL DEFAULT GETDATE(), -- 생성일시
    CONSTRAINT lvcn_diag_mtst_pk PRIMARY KEY (hosp_cd, pt_sbst_no, mtdg_ymd, mtdg_seq)
);

EXECUTE sys.sp_addextendedproperty 'MS_Description' , '간암_진단_전이', 'SCHEMA' , 'dbo', 'table', lvcn_diag_mtst;

EXECUTE sys.sp_addextendedproperty 'MS_Description' , '병원코드', 'user' , 'dbo', 'table', lvcn_diag_mtst, 'column' , hosp_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '환자대체번호', 'user' , 'dbo', 'table', lvcn_diag_mtst, 'column' , pt_sbst_no;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '전이진단일자', 'user' , 'dbo', 'table', lvcn_diag_mtst, 'column' , mtdg_ymd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '전이진단순번', 'user' , 'dbo', 'table', lvcn_diag_mtst, 'column' , mtdg_seq;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '전이부위코드', 'user' , 'dbo', 'table', lvcn_diag_mtst, 'column' , mtst_site_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '전이부위명', 'user' , 'dbo', 'table', lvcn_diag_mtst, 'column' , mtst_site_nm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '전이부위기타내용', 'user' , 'dbo', 'table', lvcn_diag_mtst, 'column' , mtst_site_etc_cont;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '전이양상코드', 'user' , 'dbo', 'table', lvcn_diag_mtst, 'column' , mtst_aspt_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '전이양상명', 'user' , 'dbo', 'table', lvcn_diag_mtst, 'column' , mtst_aspt_nm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '전이진단방법코드', 'user' , 'dbo', 'table', lvcn_diag_mtst, 'column' , mtdg_mtcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '전이진단방법명', 'user' , 'dbo', 'table', lvcn_diag_mtst, 'column' , mtdg_mtnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '전이치료내용', 'user' , 'dbo', 'table', lvcn_diag_mtst, 'column' , mtst_trtm_cont;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '생성일시', 'user' , 'dbo', 'table', lvcn_diag_mtst, 'column' , crtn_dt;


-- 7.간암_진단_병기
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
    crtn_dt datetime NOT NULL DEFAULT GETDATE(), -- 생성일시
    CONSTRAINT lvcn_diag_stag_pk PRIMARY KEY (hosp_cd, pt_sbst_no, diag_stag_rcrd_ymd, diag_stag_rcrd_seq)
);

EXECUTE sys.sp_addextendedproperty 'MS_Description' , '간암_진단_병기', 'SCHEMA' , 'dbo', 'table', lvcn_diag_stag;

EXECUTE sys.sp_addextendedproperty 'MS_Description' , '병원코드', 'user' , 'dbo', 'table', lvcn_diag_stag, 'column' , hosp_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '환자대체번호', 'user' , 'dbo', 'table', lvcn_diag_stag, 'column' , pt_sbst_no;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '진단병기기록일자', 'user' , 'dbo', 'table', lvcn_diag_stag, 'column' , diag_stag_rcrd_ymd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '진단병기기록순번', 'user' , 'dbo', 'table', lvcn_diag_stag, 'column' , diag_stag_rcrd_seq;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '임상종양특성코드', 'user' , 'dbo', 'table', lvcn_diag_stag, 'column' , clnc_tumr_prty_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '임상종양특성명', 'user' , 'dbo', 'table', lvcn_diag_stag, 'column' , clnc_tumr_prty_nm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , 'STAGE년도', 'user' , 'dbo', 'table', lvcn_diag_stag, 'column' , stg_yr;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , 'STAGE종류코드', 'user' , 'dbo', 'table', lvcn_diag_stag, 'column' , stg_kncd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , 'STAGE종류명', 'user' , 'dbo', 'table', lvcn_diag_stag, 'column' , stg_knnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '임상TNM병기값', 'user' , 'dbo', 'table', lvcn_diag_stag, 'column' , clnc_tnm_stag_vl;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '임상T병기값', 'user' , 'dbo', 'table', lvcn_diag_stag, 'column' , clnc_t_stag_vl;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '임상N병기값', 'user' , 'dbo', 'table', lvcn_diag_stag, 'column' , clnc_n_stag_vl;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '임상M병기값', 'user' , 'dbo', 'table', lvcn_diag_stag, 'column' , clnc_m_stag_vl;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '생성일시', 'user' , 'dbo', 'table', lvcn_diag_stag, 'column' , crtn_dt;


-- 8.간암_검사_진단
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
    crtn_dt datetime NOT NULL DEFAULT GETDATE(), -- 생성일시
    CONSTRAINT lvcn_exam_diag_pk PRIMARY KEY (hosp_cd, pt_sbst_no, cexm_ymd, cexm_seq)
);

EXECUTE sys.sp_addextendedproperty 'MS_Description' , '간암_검사_진단', 'SCHEMA' , 'dbo', 'table', lvcn_exam_diag;

EXECUTE sys.sp_addextendedproperty 'MS_Description' , '병원코드', 'user' , 'dbo', 'table', lvcn_exam_diag, 'column' , hosp_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '환자대체번호', 'user' , 'dbo', 'table', lvcn_exam_diag, 'column' , pt_sbst_no;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '진단검사일자', 'user' , 'dbo', 'table', lvcn_exam_diag, 'column' , cexm_ymd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '진단검사순번', 'user' , 'dbo', 'table', lvcn_exam_diag, 'column' , cexm_seq;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '진단검사종류코드', 'user' , 'dbo', 'table', lvcn_exam_diag, 'column' , cexm_kncd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '진단검사종류명', 'user' , 'dbo', 'table', lvcn_exam_diag, 'column' , cexm_knnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '진단검사코드', 'user' , 'dbo', 'table', lvcn_exam_diag, 'column' , cexm_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '진단검사명', 'user' , 'dbo', 'table', lvcn_exam_diag, 'column' , cexm_nm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '진단검사EDI코드', 'user' , 'dbo', 'table', lvcn_exam_diag, 'column' , cexm_edi_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '진단검사EDI명', 'user' , 'dbo', 'table', lvcn_exam_diag, 'column' , cexm_edi_nm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '진단검사SNOMEDCT코드', 'user' , 'dbo', 'table', lvcn_exam_diag, 'column' , cexm_smct_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '진단검사SNOMEDCT명', 'user' , 'dbo', 'table', lvcn_exam_diag, 'column' , cexm_smct_nm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '진단검사LOINC코드', 'user' , 'dbo', 'table', lvcn_exam_diag, 'column' , cexm_loinc_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '진단검사LOINC명', 'user' , 'dbo', 'table', lvcn_exam_diag, 'column' , cexm_loinc_nm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '진단검사결과내용', 'user' , 'dbo', 'table', lvcn_exam_diag, 'column' , cexm_rslt_cont;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '진단검사결과단위내용', 'user' , 'dbo', 'table', lvcn_exam_diag, 'column' , cexm_rslt_unit_cont;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '진단검사정상범위참고값', 'user' , 'dbo', 'table', lvcn_exam_diag, 'column' , cexm_nlrg_ref_vl;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '생성일시', 'user' , 'dbo', 'table', lvcn_exam_diag, 'column' , crtn_dt;


-- 9.간암_검사_영상
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
    crtn_dt datetime NOT NULL DEFAULT GETDATE(), -- 생성일시
    CONSTRAINT lvcn_exam_imag_pk PRIMARY KEY (hosp_cd, pt_sbst_no, imex_ymd, imex_seq)
);


EXECUTE sys.sp_addextendedproperty 'MS_Description' , '간암_검사_영상', 'SCHEMA' , 'dbo', 'table', lvcn_exam_imag;

EXECUTE sys.sp_addextendedproperty 'MS_Description' , '병원코드', 'user' , 'dbo', 'table', lvcn_exam_imag, 'column' , hosp_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '환자대체번호', 'user' , 'dbo', 'table', lvcn_exam_imag, 'column' , pt_sbst_no;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '영상검사일자', 'user' , 'dbo', 'table', lvcn_exam_imag, 'column' , imex_ymd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '영상검사순번', 'user' , 'dbo', 'table', lvcn_exam_imag, 'column' , imex_seq;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '영상검사종류코드', 'user' , 'dbo', 'table', lvcn_exam_imag, 'column' , imex_kncd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '영상검사종류명', 'user' , 'dbo', 'table', lvcn_exam_imag, 'column' , imex_knnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '영상검사코드', 'user' , 'dbo', 'table', lvcn_exam_imag, 'column' , imex_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '영상검사명', 'user' , 'dbo', 'table', lvcn_exam_imag, 'column' , imex_nm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '영상검사EDI코드', 'user' , 'dbo', 'table', lvcn_exam_imag, 'column' , imex_edi_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '영상검사EDI명', 'user' , 'dbo', 'table', lvcn_exam_imag, 'column' , imex_edi_nm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '영상검사SNOMEDCT코드', 'user' , 'dbo', 'table', lvcn_exam_imag, 'column' , imex_smct_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '영상검사SNOMEDCT명', 'user' , 'dbo', 'table', lvcn_exam_imag, 'column' , imex_smct_nm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '영상검사결과내용', 'user' , 'dbo', 'table', lvcn_exam_imag, 'column' , imex_rslt_cont;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '간종양수구분코드', 'user' , 'dbo', 'table', lvcn_exam_imag, 'column' , lver_tumr_cnt_spcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '간종양수구분명', 'user' , 'dbo', 'table', lvcn_exam_imag, 'column' , lver_tumr_cnt_spnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '간종양크기값', 'user' , 'dbo', 'table', lvcn_exam_imag, 'column' , lver_tumr_size_vl;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '간종양형태구분코드', 'user' , 'dbo', 'table', lvcn_exam_imag, 'column' , lver_tumr_frm_spcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '간종양형태구분명', 'user' , 'dbo', 'table', lvcn_exam_imag, 'column' , lver_tumr_frm_spnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '간정맥침윤존재여부구분코드', 'user' , 'dbo', 'table', lvcn_exam_imag, 'column' , lver_vnin_ex_yn_spcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '간정맥침윤존재여부구분명', 'user' , 'dbo', 'table', lvcn_exam_imag, 'column' , lver_vnin_ex_yn_spnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '간동맥침윤존재여부구분코드', 'user' , 'dbo', 'table', lvcn_exam_imag, 'column' , hpa_inva_ex_yn_spcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '간동맥침윤존재여부구분명', 'user' , 'dbo', 'table', lvcn_exam_imag, 'column' , hpa_inva_ex_yn_spnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '간문맥침윤존재여부구분코드', 'user' , 'dbo', 'table', lvcn_exam_imag, 'column' , ptv_inva_ex_yn_spcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '간문맥침윤존재여부구분명', 'user' , 'dbo', 'table', lvcn_exam_imag, 'column' , ptv_inva_ex_yn_spnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '간문맥침윤수준구분코드', 'user' , 'dbo', 'table', lvcn_exam_imag, 'column' , ptv_inva_levl_spcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '간문맥침윤수준구분명', 'user' , 'dbo', 'table', lvcn_exam_imag, 'column' , ptv_inva_levl_spnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '담관침윤존재여부구분코드', 'user' , 'dbo', 'table', lvcn_exam_imag, 'column' , bld_inva_ex_yn_spcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '담관침윤존재여부구분명', 'user' , 'dbo', 'table', lvcn_exam_imag, 'column' , bld_inva_ex_yn_spnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '간외전이존재여부구분코드', 'user' , 'dbo', 'table', lvcn_exam_imag, 'column' , exhp_mtst_ex_yn_spcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '간외전이존재여부구분명', 'user' , 'dbo', 'table', lvcn_exam_imag, 'column' , exhp_mtst_ex_yn_spnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '간외전이부위코드', 'user' , 'dbo', 'table', lvcn_exam_imag, 'column' , exhp_mtst_site_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '간외전이부위명', 'user' , 'dbo', 'table', lvcn_exam_imag, 'column' , exhp_mtst_site_nm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '간외전이부위기타내용', 'user' , 'dbo', 'table', lvcn_exam_imag, 'column' , exhp_mtst_site_etc_cont;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '복수증상구분코드', 'user' , 'dbo', 'table', lvcn_exam_imag, 'column' , asct_sym_spcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '복수증상구분명', 'user' , 'dbo', 'table', lvcn_exam_imag, 'column' , asct_sym_spnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '간내지방량검사결과값', 'user' , 'dbo', 'table', lvcn_exam_imag, 'column' , inhp_fam_exam_rslt_vl;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '간탄력도검사결과값', 'user' , 'dbo', 'table', lvcn_exam_imag, 'column' , lver_elst_exam_rslt_vl;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '생성일시', 'user' , 'dbo', 'table', lvcn_exam_imag, 'column' , crtn_dt;



-- 10.간암_검사_생체
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
    crtn_dt datetime NOT NULL DEFAULT GETDATE(), -- 생성일시
    CONSTRAINT lvcn_exam_byps_pk PRIMARY KEY (hosp_cd, pt_sbst_no, bpsy_ymd, bpsy_seq)
);


EXECUTE sys.sp_addextendedproperty 'MS_Description' , '간암_검사_생체', 'SCHEMA' , 'dbo', 'table', lvcn_exam_byps;

EXECUTE sys.sp_addextendedproperty 'MS_Description' , '병원코드', 'user' , 'dbo', 'table', lvcn_exam_byps, 'column' , hosp_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '환자대체번호', 'user' , 'dbo', 'table', lvcn_exam_byps, 'column' , pt_sbst_no;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '생체검사일자', 'user' , 'dbo', 'table', lvcn_exam_byps, 'column' , bpsy_ymd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '생체검사순번', 'user' , 'dbo', 'table', lvcn_exam_byps, 'column' , bpsy_seq;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '생체검사판독일자', 'user' , 'dbo', 'table', lvcn_exam_byps, 'column' , bpsy_read_ymd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '생체검사부위코드', 'user' , 'dbo', 'table', lvcn_exam_byps, 'column' , bpsy_site_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '생체검사부위명', 'user' , 'dbo', 'table', lvcn_exam_byps, 'column' , bpsy_site_nm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '생체검사방법코드', 'user' , 'dbo', 'table', lvcn_exam_byps, 'column' , bpsy_mtcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '생체검사방법명', 'user' , 'dbo', 'table', lvcn_exam_byps, 'column' , bpsy_mtnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '생체검사방법종류코드', 'user' , 'dbo', 'table', lvcn_exam_byps, 'column' , bpsy_mthd_kncd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '생체검사방법종류명', 'user' , 'dbo', 'table', lvcn_exam_byps, 'column' , bpsy_mthd_knnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '생체검사결과내용', 'user' , 'dbo', 'table', lvcn_exam_byps, 'column' , bpsy_rslt_cont;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '조직학적진단코드', 'user' , 'dbo', 'table', lvcn_exam_byps, 'column' , htlg_diag_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '조직학적진단명', 'user' , 'dbo', 'table', lvcn_exam_byps, 'column' , htlg_diag_nm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '조직학적등급코드', 'user' , 'dbo', 'table', lvcn_exam_byps, 'column' , htlg_grcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '조직학적등급명', 'user' , 'dbo', 'table', lvcn_exam_byps, 'column' , htlg_grnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '생성일시', 'user' , 'dbo', 'table', lvcn_exam_byps, 'column' , crtn_dt;



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
	crtn_dt datetime NOT NULL DEFAULT GETDATE(), -- 생성일시
	CONSTRAINT lvcn_exam_impt_pk PRIMARY KEY (hosp_cd, pt_sbst_no, imem_ymd, imem_seq)
);

EXECUTE sys.sp_addextendedproperty 'MS_Description' , '간암_검사_면역병리', 'SCHEMA' , 'dbo', 'table', lvcn_exam_impt;

EXECUTE sys.sp_addextendedproperty 'MS_Description' , '병원코드', 'user' , 'dbo', 'table', lvcn_exam_impt, 'column' , hosp_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '환자대체번호', 'user' , 'dbo', 'table', lvcn_exam_impt, 'column' , pt_sbst_no;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '면역병리검사일자', 'user' , 'dbo', 'table', lvcn_exam_impt, 'column' , imem_ymd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '면역병리검사순번', 'user' , 'dbo', 'table', lvcn_exam_impt, 'column' , imem_seq;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '면역병리판독일자', 'user' , 'dbo', 'table', lvcn_exam_impt, 'column' , impt_read_ymd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '면역병리검사종류코드', 'user' , 'dbo', 'table', lvcn_exam_impt, 'column' , imem_kncd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '면역병리검사종류명', 'user' , 'dbo', 'table', lvcn_exam_impt, 'column' , imem_knnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '면역병리검사코드', 'user' , 'dbo', 'table', lvcn_exam_impt, 'column' , imem_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '면역병리검사명', 'user' , 'dbo', 'table', lvcn_exam_impt, 'column' , imem_nm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '면역병리검사소견코드', 'user' , 'dbo', 'table', lvcn_exam_impt, 'column' , imem_opn_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '면역병리검사소견명', 'user' , 'dbo', 'table', lvcn_exam_impt, 'column' , imem_opn_nm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '생성일시', 'user' , 'dbo', 'table', lvcn_exam_impt, 'column' , crtn_dt;



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
	crtn_dt datetime NOT NULL DEFAULT GETDATE(), -- 생성일시
	CONSTRAINT lvcn_trtm_srpr_pk PRIMARY KEY (hosp_cd, pt_sbst_no, srpr_ymd, srpr_seq)
);

EXECUTE sys.sp_addextendedproperty 'MS_Description' , '간암_치료_시술', 'SCHEMA' , 'dbo', 'table', lvcn_trtm_srpr;

EXECUTE sys.sp_addextendedproperty 'MS_Description' , '병원코드', 'user' , 'dbo', 'table', lvcn_trtm_srpr, 'column' , hosp_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '환자대체번호', 'user' , 'dbo', 'table', lvcn_trtm_srpr, 'column' , pt_sbst_no;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '시술일자', 'user' , 'dbo', 'table', lvcn_trtm_srpr, 'column' , srpr_ymd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '시술순번', 'user' , 'dbo', 'table', lvcn_trtm_srpr, 'column' , srpr_seq;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '시술구분코드', 'user' , 'dbo', 'table', lvcn_trtm_srpr, 'column' , srpr_spcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '시술구분명', 'user' , 'dbo', 'table', lvcn_trtm_srpr, 'column' , srpr_spnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '기타시술내용', 'user' , 'dbo', 'table', lvcn_trtm_srpr, 'column' , etc_srpr_cont;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '시술소견내용', 'user' , 'dbo', 'table', lvcn_trtm_srpr, 'column' , srpr_opn_cont;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '시술결과내용', 'user' , 'dbo', 'table', lvcn_trtm_srpr, 'column' , srpr_rslt_cont;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '시술분절위치구분코드', 'user' , 'dbo', 'table', lvcn_trtm_srpr, 'column' , srpr_sgmt_loca_spcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '시술분절위치구분명', 'user' , 'dbo', 'table', lvcn_trtm_srpr, 'column' , srpr_sgmt_loca_spnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '시술분절위치구분기타내용', 'user' , 'dbo', 'table', lvcn_trtm_srpr, 'column' , srpr_sgmt_loca_clsf_etc_cont;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '시술병변수', 'user' , 'dbo', 'table', lvcn_trtm_srpr, 'column' , srpr_lesn_cnt;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '시술치료후평가일자', 'user' , 'dbo', 'table', lvcn_trtm_srpr, 'column' , srpr_trtm_aftr_asmt_ymd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '시술치료후평가구분코드', 'user' , 'dbo', 'table', lvcn_trtm_srpr, 'column' , srpr_trtm_aftr_asmt_spcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '시술치료후평가구분명', 'user' , 'dbo', 'table', lvcn_trtm_srpr, 'column' , srpr_trtm_aftr_asmt_spnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '생성일시', 'user' , 'dbo', 'table', lvcn_trtm_srpr, 'column' , crtn_dt;



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
	crtn_dt datetime NOT NULL DEFAULT GETDATE(), -- 생성일시
	CONSTRAINT lvcn_trtm_oprt_pk PRIMARY KEY (hosp_cd, pt_sbst_no, oprt_ymd, oprt_seq)
);

EXECUTE sys.sp_addextendedproperty 'MS_Description' , '간암_치료_수술', 'SCHEMA' , 'dbo', 'table', lvcn_trtm_oprt;

EXECUTE sys.sp_addextendedproperty 'MS_Description' , '병원코드', 'user' , 'dbo', 'table', lvcn_trtm_oprt, 'column' , hosp_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '환자대체번호', 'user' , 'dbo', 'table', lvcn_trtm_oprt, 'column' , pt_sbst_no;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '수술일자', 'user' , 'dbo', 'table', lvcn_trtm_oprt, 'column' , oprt_ymd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '수술순번', 'user' , 'dbo', 'table', lvcn_trtm_oprt, 'column' , oprt_seq;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '수술종류코드', 'user' , 'dbo', 'table', lvcn_trtm_oprt, 'column' , oprt_kncd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '수술종류명', 'user' , 'dbo', 'table', lvcn_trtm_oprt, 'column' , oprt_knnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '수술코드', 'user' , 'dbo', 'table', lvcn_trtm_oprt, 'column' , oprt_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '수술명', 'user' , 'dbo', 'table', lvcn_trtm_oprt, 'column' , oprt_nm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '수술EDI코드', 'user' , 'dbo', 'table', lvcn_trtm_oprt, 'column' , oprt_edi_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '수술EDI명', 'user' , 'dbo', 'table', lvcn_trtm_oprt, 'column' , oprt_edi_nm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '수술SNOMEDCT코드', 'user' , 'dbo', 'table', lvcn_trtm_oprt, 'column' , oprt_smct_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '수술SNOMEDCT명', 'user' , 'dbo', 'table', lvcn_trtm_oprt, 'column' , oprt_smct_nm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '수술ICD9CM코드', 'user' , 'dbo', 'table', lvcn_trtm_oprt, 'column' , oprt_icd9cm_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '수술ICD9CM명', 'user' , 'dbo', 'table', lvcn_trtm_oprt, 'column' , oprt_icd9cm_nm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '수술마취부위코드', 'user' , 'dbo', 'table', lvcn_trtm_oprt, 'column' , oprt_anst_site_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '수술마취부위명', 'user' , 'dbo', 'table', lvcn_trtm_oprt, 'column' , oprt_anst_site_nm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '간암절제범위구분코드', 'user' , 'dbo', 'table', lvcn_trtm_oprt, 'column' , lvcn_srmv_rang_spcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '간암절제범위구분명', 'user' , 'dbo', 'table', lvcn_trtm_oprt, 'column' , lvcn_srmv_rang_spnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '간이식종류코드', 'user' , 'dbo', 'table', lvcn_trtm_oprt, 'column' , lver_trnsp_kncd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '간이식종류명', 'user' , 'dbo', 'table', lvcn_trtm_oprt, 'column' , lver_trnsp_knnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '추정실혈량', 'user' , 'dbo', 'table', lvcn_trtm_oprt, 'column' , ebl_qty;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '수술소요시간', 'user' , 'dbo', 'table', lvcn_trtm_oprt, 'column' , oprt_ldtm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '수술목적코드', 'user' , 'dbo', 'table', lvcn_trtm_oprt, 'column' , oprt_prps_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '수술목적명', 'user' , 'dbo', 'table', lvcn_trtm_oprt, 'column' , oprt_prps_nm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '수술부위코드', 'user' , 'dbo', 'table', lvcn_trtm_oprt, 'column' , oprt_site_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '수술부위명', 'user' , 'dbo', 'table', lvcn_trtm_oprt, 'column' , oprt_site_nm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '수술부위기타내용', 'user' , 'dbo', 'table', lvcn_trtm_oprt, 'column' , oprt_site_etc_cont;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '간암수술방법코드', 'user' , 'dbo', 'table', lvcn_trtm_oprt, 'column' , lvcn_oprt_mtcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '간암수술방법명', 'user' , 'dbo', 'table', lvcn_trtm_oprt, 'column' , lvcn_oprt_mtnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , 'ASA점수코드', 'user' , 'dbo', 'table', lvcn_trtm_oprt, 'column' , asa_scor_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , 'ASA점수명', 'user' , 'dbo', 'table', lvcn_trtm_oprt, 'column' , asa_scor_nm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '간분절단위절제여부확인불가구분코드', 'user' , 'dbo', 'table', lvcn_trtm_oprt, 'column' , lver_sgmt_utrs_yn_unid_spcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '간분절단위절제여부확인불가구분명', 'user' , 'dbo', 'table', lvcn_trtm_oprt, 'column' , lver_sgmt_utrs_yn_unid_spnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '수술절개선유형코드', 'user' , 'dbo', 'table', lvcn_trtm_oprt, 'column' , oprt_icln_tpcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '수술절개선유형명', 'user' , 'dbo', 'table', lvcn_trtm_oprt, 'column' , oprt_icln_tpnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '종양간분절위치구분코드', 'user' , 'dbo', 'table', lvcn_trtm_oprt, 'column' , tumr_lver_sgmt_loca_spcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '종양간분절위치구분명', 'user' , 'dbo', 'table', lvcn_trtm_oprt, 'column' , tumr_lver_sgmt_loca_spnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '수술분절위치구분기타내용', 'user' , 'dbo', 'table', lvcn_trtm_oprt, 'column' , oprt_sgmt_loca_clsf_etc_cont;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '수술시동반장기절제여부확인불가구분코드', 'user' , 'dbo', 'table', lvcn_trtm_oprt, 'column' , inop_asso_ogrs_yn_unid_spcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '수술시동반장기절제여부확인불가구분명', 'user' , 'dbo', 'table', lvcn_trtm_oprt, 'column' , inop_asso_ogrs_yn_unid_spnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '수술시동반장기절제부위구분코드', 'user' , 'dbo', 'table', lvcn_trtm_oprt, 'column' , inop_asso_ogrs_site_spcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '수술시동반장기절제부위구분명', 'user' , 'dbo', 'table', lvcn_trtm_oprt, 'column' , inop_asso_ogrs_site_spnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '수술시동반장기절제부위구분기타내용', 'user' , 'dbo', 'table', lvcn_trtm_oprt, 'column' , inop_asso_ogrs_site_clsf_etc_cont;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , 'PRINGLEMANEUVER시행여부확인불가구분코드', 'user' , 'dbo', 'table', lvcn_trtm_oprt, 'column' , pm_impl_yn_unid_spcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , 'PRINGLEMANEUVER시행여부확인불가구분명', 'user' , 'dbo', 'table', lvcn_trtm_oprt, 'column' , pm_impl_yn_unid_spnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , 'PRINGLEMANEUVER시행횟수', 'user' , 'dbo', 'table', lvcn_trtm_oprt, 'column' , pm_impl_nt;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , 'PRINGLEMANEUVER총시행시간', 'user' , 'dbo', 'table', lvcn_trtm_oprt, 'column' , pm_totl_impl_tm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '수술후평가항목코드', 'user' , 'dbo', 'table', lvcn_trtm_oprt, 'column' , afop_asmt_item_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '수술후평가항목명', 'user' , 'dbo', 'table', lvcn_trtm_oprt, 'column' , afop_asmt_item_nm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '수술후평가항목기타내용', 'user' , 'dbo', 'table', lvcn_trtm_oprt, 'column' , afop_asmt_item_etc_cont;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '생성일시', 'user' , 'dbo', 'table', lvcn_trtm_oprt, 'column' , crtn_dt;



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
	crtn_dt datetime NOT NULL DEFAULT GETDATE(), -- 생성일시
	CONSTRAINT lvcn_trtm_bltr_pk PRIMARY KEY (hosp_cd, pt_sbst_no, bltr_prsc_ymd, bltr_prsc_seq)
);

EXECUTE sys.sp_addextendedproperty 'MS_Description' , '간암_치료_수혈', 'SCHEMA' , 'dbo', 'table', lvcn_trtm_bltr;

EXECUTE sys.sp_addextendedproperty 'MS_Description' , '병원코드', 'user' , 'dbo', 'table', lvcn_trtm_bltr, 'column' , hosp_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '환자대체번호', 'user' , 'dbo', 'table', lvcn_trtm_bltr, 'column' , pt_sbst_no;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '수혈처방일자', 'user' , 'dbo', 'table', lvcn_trtm_bltr, 'column' , bltr_prsc_ymd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '수혈처방순번', 'user' , 'dbo', 'table', lvcn_trtm_bltr, 'column' , bltr_prsc_seq;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '혈액제제종류코드', 'user' , 'dbo', 'table', lvcn_trtm_bltr, 'column' , blpt_kncd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '혈액제제종류명', 'user' , 'dbo', 'table', lvcn_trtm_bltr, 'column' , blpt_knnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '혈액제제코드', 'user' , 'dbo', 'table', lvcn_trtm_bltr, 'column' , blpt_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '혈액제제명', 'user' , 'dbo', 'table', lvcn_trtm_bltr, 'column' , blpt_nm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '혈액제제용량', 'user' , 'dbo', 'table', lvcn_trtm_bltr, 'column' , blpt_capa;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '수혈팩수', 'user' , 'dbo', 'table', lvcn_trtm_bltr, 'column' , bltr_pack_cnt;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '수혈총량', 'user' , 'dbo', 'table', lvcn_trtm_bltr, 'column' , bltr_totl_qty;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '생성일시', 'user' , 'dbo', 'table', lvcn_trtm_bltr, 'column' , crtn_dt;


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
	crtn_dt datetime NOT NULL DEFAULT GETDATE(), -- 생성일시
	CONSTRAINT lvcn_exam_sgpt_pk PRIMARY KEY (hosp_cd, pt_sbst_no, srgc_ptem_ymd, srgc_ptem_seq)
);

EXECUTE sys.sp_addextendedproperty 'MS_Description' , '간암_검사_외과병리', 'SCHEMA' , 'dbo', 'table', lvcn_exam_sgpt;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '병원코드', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , hosp_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '환자대체번호', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , pt_sbst_no;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '외과병리검사일자', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , srgc_ptem_ymd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '외과병리검사순번', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , srgc_ptem_seq;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '외과병리판독일자', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , sgpt_read_ymd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '외과병리채취부위코드', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , sgpt_hvst_site_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '외과병리채취부위명', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , sgpt_hvst_site_nm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '외과병리수술명', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , sgpt_oprt_nm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '외과병리검사결과종양수', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , srgc_ptem_rslt_tumr_cnt;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '종양가로길이값', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , tumr_wdth_lnth_vl;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '종양세로길이값', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , tumr_lgtd_lnth_vl;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '종양높이값', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , tumr_hght_vl;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '종양최대직경값', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , tumr_max_diam_vl;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '조직학적진단코드', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , htlg_diag_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '조직학적진단명', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , htlg_diag_nm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '육안확인병변형태구분코드', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , nkdy_cnfr_lesn_frm_spcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '육안확인병변형태구분명', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , nkdy_cnfr_lesn_frm_spnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '외과병리조직학적등급WORST코드', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , sgpt_hg_wrst_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '외과병리조직학적등급WORST명', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , sgpt_hg_wrst_nm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '외과병리조직학적등급MAJOR코드', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , sgpt_hg_mjr_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '외과병리조직학적등급MAJOR명', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , sgpt_hg_mjr_nm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '림프성침윤존재여부구분코드', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , lymp_inva_ex_yn_spcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '림프성침윤존재여부구분명', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , lymp_inva_ex_yn_spnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '혈관침윤존재여부구분코드', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , blvs_inva_ex_yn_spcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '혈관침윤존재여부구분명', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , blvs_inva_ex_yn_spnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '간동맥침윤존재여부구분코드', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , hpa_inva_ex_yn_spcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '간동맥침윤존재여부구분명', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , hpa_inva_ex_yn_spnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '간동맥침윤내용', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , hpa_inva_cont;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '간문맥침윤존재여부구분코드', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , ptv_inva_ex_yn_spcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '간문맥침윤존재여부구분명', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , ptv_inva_ex_yn_spnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '간문맥침윤내용', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , ptv_inva_cont;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '간정맥침윤존재여부구분코드', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , lver_vnin_ex_yn_spcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '간정맥침윤존재여부구분명', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , lver_vnin_ex_yn_spnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '간정맥침윤내용', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , lver_vnin_cont;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '담관침윤존재여부구분코드', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , bld_inva_ex_yn_spcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '담관침윤존재여부구분명', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , bld_inva_ex_yn_spnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '담관침윤내용', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , bld_inva_cont;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '종양장막침윤존재여부구분코드', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , tumr_srs_inva_ex_yn_spcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '종양장막침윤존재여부구분명', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , tumr_srs_inva_ex_yn_spnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '종양피막침윤존재여부구분코드', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , tumr_cpsl_inva_ex_yn_spcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '종양피막침윤존재여부구분명', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , tumr_cpsl_inva_ex_yn_spnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '종양피막형성존재여부구분코드', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , tumr_encp_ex_yn_spcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '종양피막형성존재여부구분명', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , tumr_encp_ex_yn_spnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '종양괴사존재여부구분코드', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , tumr_necr_ex_yn_spcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '종양괴사존재여부구분명', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , tumr_necr_ex_yn_spnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '종양괴사간분절위치구분코드', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , tumr_necr_lver_sgmt_loca_spcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '종양괴사간분절위치구분명', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , tumr_necr_lver_sgmt_loca_spnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '종양괴사간분절위치구분기타내용', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , tumr_necr_lver_sgmt_loca_clsf_etc_cont;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '종양괴사비율', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , tumr_necr_rt;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '지방성변화존재여부구분코드', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , fatt_chng_ex_yn_spcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '지방성변화존재여부구분명', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , fatt_chng_ex_yn_spnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '지방성변화비율', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , fatt_chng_rt;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '출혈자반존재여부구분코드', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , bled_purp_ex_yn_spcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '출혈자반존재여부구분명', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , bled_purp_ex_yn_spnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '출혈자반비율', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , bled_purp_rt;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '중격형성존재여부구분코드', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , sept_frmt_ex_yn_spcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '중격형성존재여부구분명', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , sept_frmt_ex_yn_spnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '위성결절존재여부구분코드', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , stnd_ex_yn_spcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '위성결절존재여부구분명', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , stnd_ex_yn_spnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '위성결절내용', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , stnd_cont;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '수술절제면안전경계길이값', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , srmg_sfmg_lnth_vl;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '수술절제면상세내용', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , srmg_detl_cont;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '수술절제면잔존코드', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , srmg_rlct_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '수술절제면잔존명', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , srmg_rlct_nm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '간경변증존재여부구분코드', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , lc_ex_yn_spcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '간경변증존재여부구분명', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , lc_ex_yn_spnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '간섬유화등급코드', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , lver_fbrs_grcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '간섬유화등급명', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , lver_fbrs_grnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '간내전이존재여부구분코드', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , inhp_mtst_ex_yn_spcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '간내전이존재여부구분명', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , inhp_mtst_ex_yn_spnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '종양다중심성발생존재여부구분코드', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , tumr_mlct_ocrn_ex_yn_spcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '종양다중심성발생존재여부구분명', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , tumr_mlct_ocrn_ex_yn_spnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '총림프절수', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , totl_ln_cnt;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '양성림프절수', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , pstv_ln_cnt;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , 'STAGE년도', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , stg_yr;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , 'STAGE종류코드', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , stg_kncd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , 'STAGE종류명', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , stg_knnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '수술후병리TNM병기값', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , afop_path_tnm_stag_vl;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '수술후병리T병기값', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , afop_path_t_stag_vl;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '수술후병리N병기값', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , afop_path_n_stag_vl;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '수술후병리M병기값', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , afop_path_m_stag_vl;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '생성일시', 'user' , 'dbo', 'table', lvcn_exam_sgpt, 'column' , crtn_dt;



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
	crtn_dt datetime NOT NULL DEFAULT GETDATE(), -- 생성일시
	CONSTRAINT lvcn_diag_comp_pk PRIMARY KEY (hosp_cd, pt_sbst_no, srpr_oprt_ymd, srpr_oprt_seq)
);

EXECUTE sys.sp_addextendedproperty 'MS_Description' , '간암_진단_합병증', 'SCHEMA' , 'dbo', 'table', lvcn_diag_comp;

EXECUTE sys.sp_addextendedproperty 'MS_Description' , '병원코드', 'user' , 'dbo', 'table', lvcn_diag_comp, 'column' , hosp_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '환자대체번호', 'user' , 'dbo', 'table', lvcn_diag_comp, 'column' , pt_sbst_no;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '시술수술일자', 'user' , 'dbo', 'table', lvcn_diag_comp, 'column' , srpr_oprt_ymd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '시술수술순번', 'user' , 'dbo', 'table', lvcn_diag_comp, 'column' , srpr_oprt_seq;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '합병증구분코드', 'user' , 'dbo', 'table', lvcn_diag_comp, 'column' , comp_spcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '합병증구분명', 'user' , 'dbo', 'table', lvcn_diag_comp, 'column' , comp_spnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '시술수술합병증발생일자', 'user' , 'dbo', 'table', lvcn_diag_comp, 'column' , srpr_oprt_comp_ocrn_ymd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '시술수술합병증구분코드', 'user' , 'dbo', 'table', lvcn_diag_comp, 'column' , srpr_oprt_comp_spcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '시술수술합병증구분명', 'user' , 'dbo', 'table', lvcn_diag_comp, 'column' , srpr_oprt_comp_spnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '합병증등급코드', 'user' , 'dbo', 'table', lvcn_diag_comp, 'column' , comp_grcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '합병증등급명', 'user' , 'dbo', 'table', lvcn_diag_comp, 'column' , comp_grnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '합병증치료방법코드', 'user' , 'dbo', 'table', lvcn_diag_comp, 'column' , comp_trtm_mtcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '합병증치료방법명', 'user' , 'dbo', 'table', lvcn_diag_comp, 'column' , comp_trtm_mtnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '생성일시', 'user' , 'dbo', 'table', lvcn_diag_comp, 'column' , crtn_dt;



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
	crtn_dt datetime NOT NULL DEFAULT GETDATE(), -- 생성일시
	CONSTRAINT lvcn_trtm_hptr_pk PRIMARY KEY (hosp_cd, pt_sbst_no, drug_prsc_ymd, drug_prsc_seq)
);

EXECUTE sys.sp_addextendedproperty 'MS_Description' , '간암_치료_간염치료', 'SCHEMA' , 'dbo', 'table', lvcn_trtm_hptr;

EXECUTE sys.sp_addextendedproperty 'MS_Description' , '병원코드', 'user' , 'dbo', 'table', lvcn_trtm_hptr, 'column' , hosp_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '환자대체번호', 'user' , 'dbo', 'table', lvcn_trtm_hptr, 'column' , pt_sbst_no;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '약제처방일자', 'user' , 'dbo', 'table', lvcn_trtm_hptr, 'column' , drug_prsc_ymd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '약제처방순번', 'user' , 'dbo', 'table', lvcn_trtm_hptr, 'column' , drug_prsc_seq;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '약제성분종류코드', 'user' , 'dbo', 'table', lvcn_trtm_hptr, 'column' , drin_kncd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '약제성분종류명', 'user' , 'dbo', 'table', lvcn_trtm_hptr, 'column' , drin_knnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '약제성분코드', 'user' , 'dbo', 'table', lvcn_trtm_hptr, 'column' , drin_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '약제성분명', 'user' , 'dbo', 'table', lvcn_trtm_hptr, 'column' , drin_nm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '약제성분SNOMEDCT코드', 'user' , 'dbo', 'table', lvcn_trtm_hptr, 'column' , drin_smct_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '약제성분SNOMEDCT명', 'user' , 'dbo', 'table', lvcn_trtm_hptr, 'column' , drin_smct_nm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '약제코드', 'user' , 'dbo', 'table', lvcn_trtm_hptr, 'column' , drug_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '약제명', 'user' , 'dbo', 'table', lvcn_trtm_hptr, 'column' , drug_nm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '약제EDI코드', 'user' , 'dbo', 'table', lvcn_trtm_hptr, 'column' , drug_edi_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '약제EDI명', 'user' , 'dbo', 'table', lvcn_trtm_hptr, 'column' , drug_edi_nm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '약제ATC코드', 'user' , 'dbo', 'table', lvcn_trtm_hptr, 'column' , drug_atc_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '약제ATC명', 'user' , 'dbo', 'table', lvcn_trtm_hptr, 'column' , drug_atc_nm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '약제RXNORM코드', 'user' , 'dbo', 'table', lvcn_trtm_hptr, 'column' , drug_rxnm_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '약제RXNORM명', 'user' , 'dbo', 'table', lvcn_trtm_hptr, 'column' , drug_rxnm_nm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '약제처방용량', 'user' , 'dbo', 'table', lvcn_trtm_hptr, 'column' , drug_prsc_capa;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '약제처방용량단위코드', 'user' , 'dbo', 'table', lvcn_trtm_hptr, 'column' , drug_prsc_capa_unit_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '약제처방용량단위명', 'user' , 'dbo', 'table', lvcn_trtm_hptr, 'column' , drug_prsc_capa_unit_nm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '약제처방일수', 'user' , 'dbo', 'table', lvcn_trtm_hptr, 'column' , drug_prsc_dcnt;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '약제투여경로코드', 'user' , 'dbo', 'table', lvcn_trtm_hptr, 'column' , drug_injc_pth_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '약제투여경로명', 'user' , 'dbo', 'table', lvcn_trtm_hptr, 'column' , drug_injc_pth_nm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '생성일시', 'user' , 'dbo', 'table', lvcn_trtm_hptr, 'column' , crtn_dt;



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
	crtn_dt datetime NOT NULL DEFAULT GETDATE(), -- 생성일시
	CONSTRAINT lvcn_trtm_antr_pk PRIMARY KEY (hosp_cd, pt_sbst_no, drug_prsc_ymd, drug_prsc_seq)
);

EXECUTE sys.sp_addextendedproperty 'MS_Description' , '간암_치료_항암치료', 'SCHEMA' , 'dbo', 'table', lvcn_trtm_antr;

EXECUTE sys.sp_addextendedproperty 'MS_Description' , '병원코드', 'user' , 'dbo', 'table', lvcn_trtm_antr, 'column' , hosp_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '환자대체번호', 'user' , 'dbo', 'table', lvcn_trtm_antr, 'column' , pt_sbst_no;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '약제처방일자', 'user' , 'dbo', 'table', lvcn_trtm_antr, 'column' , drug_prsc_ymd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '약제처방순번', 'user' , 'dbo', 'table', lvcn_trtm_antr, 'column' , drug_prsc_seq;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '약제분류코드', 'user' , 'dbo', 'table', lvcn_trtm_antr, 'column' , drug_clcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '약제분류명', 'user' , 'dbo', 'table', lvcn_trtm_antr, 'column' , drug_clnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '항암약제구분코드', 'user' , 'dbo', 'table', lvcn_trtm_antr, 'column' , andr_spcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '항암약제구분명', 'user' , 'dbo', 'table', lvcn_trtm_antr, 'column' , andr_spnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '약제성분종류코드', 'user' , 'dbo', 'table', lvcn_trtm_antr, 'column' , drin_kncd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '약제성분종류명', 'user' , 'dbo', 'table', lvcn_trtm_antr, 'column' , drin_knnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '약제성분코드', 'user' , 'dbo', 'table', lvcn_trtm_antr, 'column' , drin_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '약제성분명', 'user' , 'dbo', 'table', lvcn_trtm_antr, 'column' , drin_nm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '약제성분SNOMEDCT코드', 'user' , 'dbo', 'table', lvcn_trtm_antr, 'column' , drin_smct_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '약제성분SNOMEDCT명', 'user' , 'dbo', 'table', lvcn_trtm_antr, 'column' , drin_smct_nm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '약제코드', 'user' , 'dbo', 'table', lvcn_trtm_antr, 'column' , drug_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '약제명', 'user' , 'dbo', 'table', lvcn_trtm_antr, 'column' , drug_nm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '약제EDI코드', 'user' , 'dbo', 'table', lvcn_trtm_antr, 'column' , drug_edi_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '약제EDI명', 'user' , 'dbo', 'table', lvcn_trtm_antr, 'column' , drug_edi_nm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '약제ATC코드', 'user' , 'dbo', 'table', lvcn_trtm_antr, 'column' , drug_atc_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '약제ATC명', 'user' , 'dbo', 'table', lvcn_trtm_antr, 'column' , drug_atc_nm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '약제RXNORM코드', 'user' , 'dbo', 'table', lvcn_trtm_antr, 'column' , drug_rxnm_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '약제RXNORM명', 'user' , 'dbo', 'table', lvcn_trtm_antr, 'column' , drug_rxnm_nm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '약제처방용량', 'user' , 'dbo', 'table', lvcn_trtm_antr, 'column' , drug_prsc_capa;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '약제처방용량단위코드', 'user' , 'dbo', 'table', lvcn_trtm_antr, 'column' , drug_prsc_capa_unit_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '약제처방용량단위명', 'user' , 'dbo', 'table', lvcn_trtm_antr, 'column' , drug_prsc_capa_unit_nm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '약제처방일수', 'user' , 'dbo', 'table', lvcn_trtm_antr, 'column' , drug_prsc_dcnt;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '약제투여경로코드', 'user' , 'dbo', 'table', lvcn_trtm_antr, 'column' , drug_injc_pth_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '약제투여경로명', 'user' , 'dbo', 'table', lvcn_trtm_antr, 'column' , drug_injc_pth_nm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '약제투약기간월수', 'user' , 'dbo', 'table', lvcn_trtm_antr, 'column' , drug_mdct_dtrn_mcnt;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '생성일시', 'user' , 'dbo', 'table', lvcn_trtm_antr, 'column' , crtn_dt;


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
	crtn_dt datetime NOT NULL DEFAULT GETDATE(), -- 생성일시
	CONSTRAINT lvcn_trtm_antp_pk PRIMARY KEY (hosp_cd, pt_sbst_no, antp_strt_ymd, antp_seq)
);

EXECUTE sys.sp_addextendedproperty 'MS_Description' , '간암_치료_항암요법', 'SCHEMA' , 'dbo', 'table', lvcn_trtm_antp;

EXECUTE sys.sp_addextendedproperty 'MS_Description' , '병원코드', 'user' , 'dbo', 'table', lvcn_trtm_antp, 'column' , hosp_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '환자대체번호', 'user' , 'dbo', 'table', lvcn_trtm_antp, 'column' , pt_sbst_no;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '항암요법시작일자', 'user' , 'dbo', 'table', lvcn_trtm_antp, 'column' , antp_strt_ymd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '항암요법순번', 'user' , 'dbo', 'table', lvcn_trtm_antp, 'column' , antp_seq;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '항암요법종료일자', 'user' , 'dbo', 'table', lvcn_trtm_antp, 'column' , antp_end_ymd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '항암요법명', 'user' , 'dbo', 'table', lvcn_trtm_antp, 'column' , antp_nm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '항암요법주기수', 'user' , 'dbo', 'table', lvcn_trtm_antp, 'column' , antp_cycl_cnt;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '항암요법라인수', 'user' , 'dbo', 'table', lvcn_trtm_antp, 'column' , antp_line_cnt;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '항암요법임시중단여부확인불가구분코드', 'user' , 'dbo', 'table', lvcn_trtm_antp, 'column' , antp_temp_stop_yn_unid_spcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '항암요법임시중단여부확인불가구분명', 'user' , 'dbo', 'table', lvcn_trtm_antp, 'column' , antp_temp_stop_yn_unid_spnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '항암요법종료이유코드', 'user' , 'dbo', 'table', lvcn_trtm_antp, 'column' , antp_end_resn_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '항암요법종료이유명', 'user' , 'dbo', 'table', lvcn_trtm_antp, 'column' , antp_end_resn_nm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '항암요법평가일자', 'user' , 'dbo', 'table', lvcn_trtm_antp, 'column' , antp_asmt_ymd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '항암요법평가항목코드', 'user' , 'dbo', 'table', lvcn_trtm_antp, 'column' , antp_asmt_item_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '항암요법평가항목명', 'user' , 'dbo', 'table', lvcn_trtm_antp, 'column' , antp_asmt_item_nm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '항암요법평가항목기타내용', 'user' , 'dbo', 'table', lvcn_trtm_antp, 'column' , antp_asmt_item_etc_cont;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '항암요법부작용항목코드', 'user' , 'dbo', 'table', lvcn_trtm_antp, 'column' , antp_seff_item_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '항암요법부작용항목명', 'user' , 'dbo', 'table', lvcn_trtm_antp, 'column' , antp_seff_item_nm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '항암요법부작용항목기타내용', 'user' , 'dbo', 'table', lvcn_trtm_antp, 'column' , antp_seff_item_etc_cont;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '항암요법부작용등급코드', 'user' , 'dbo', 'table', lvcn_trtm_antp, 'column' , antp_seff_grcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '항암요법부작용등급명', 'user' , 'dbo', 'table', lvcn_trtm_antp, 'column' , antp_seff_grnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '항암요법부작용등급기타내용', 'user' , 'dbo', 'table', lvcn_trtm_antp, 'column' , antp_seff_grad_etc_cont;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '항암요법치료목적코드', 'user' , 'dbo', 'table', lvcn_trtm_antp, 'column' , antp_trtm_prps_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '항암요법치료목적명', 'user' , 'dbo', 'table', lvcn_trtm_antp, 'column' , antp_trtm_prps_nm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '생성일시', 'user' , 'dbo', 'table', lvcn_trtm_antp, 'column' , crtn_dt;



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
	crtn_dt datetime NOT NULL DEFAULT GETDATE(), -- 생성일시
	CONSTRAINT lvcn_trtm_rd_pk PRIMARY KEY (hosp_cd, pt_sbst_no, rdt_prsc_ymd, rdt_prsc_seq)
);

EXECUTE sys.sp_addextendedproperty 'MS_Description' , '간암_치료_방사선', 'SCHEMA' , 'dbo', 'table', lvcn_trtm_rd;

EXECUTE sys.sp_addextendedproperty 'MS_Description' , '병원코드', 'user' , 'dbo', 'table', lvcn_trtm_rd, 'column' , hosp_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '환자대체번호', 'user' , 'dbo', 'table', lvcn_trtm_rd, 'column' , pt_sbst_no;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '방사선치료처방일자', 'user' , 'dbo', 'table', lvcn_trtm_rd, 'column' , rdt_prsc_ymd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '방사선치료처방순번', 'user' , 'dbo', 'table', lvcn_trtm_rd, 'column' , rdt_prsc_seq;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '방사선치료종류코드', 'user' , 'dbo', 'table', lvcn_trtm_rd, 'column' , rdt_kncd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '방사선치료종류명', 'user' , 'dbo', 'table', lvcn_trtm_rd, 'column' , rdt_knnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '방사선치료코드', 'user' , 'dbo', 'table', lvcn_trtm_rd, 'column' , rdt_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '방사선치료명', 'user' , 'dbo', 'table', lvcn_trtm_rd, 'column' , rdt_nm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '방사선치료EDI코드', 'user' , 'dbo', 'table', lvcn_trtm_rd, 'column' , rdt_edi_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '방사선치료EDI명', 'user' , 'dbo', 'table', lvcn_trtm_rd, 'column' , rdt_edi_nm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '방사선치료SNOMEDCT코드', 'user' , 'dbo', 'table', lvcn_trtm_rd, 'column' , rdt_smct_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '방사선치료SNOMEDCT명', 'user' , 'dbo', 'table', lvcn_trtm_rd, 'column' , rdt_smct_nm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '방사선치료목적코드', 'user' , 'dbo', 'table', lvcn_trtm_rd, 'column' , rdt_prps_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '방사선치료목적명', 'user' , 'dbo', 'table', lvcn_trtm_rd, 'column' , rdt_prps_nm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '방사선치료부위코드', 'user' , 'dbo', 'table', lvcn_trtm_rd, 'column' , rdt_site_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '방사선치료부위명', 'user' , 'dbo', 'table', lvcn_trtm_rd, 'column' , rdt_site_nm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '방사선선량', 'user' , 'dbo', 'table', lvcn_trtm_rd, 'column' , rd_gy;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '방사선시행횟수', 'user' , 'dbo', 'table', lvcn_trtm_rd, 'column' , rd_impl_nt;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '방사선총선량', 'user' , 'dbo', 'table', lvcn_trtm_rd, 'column' , rd_totl_gy;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '방사선치료평가일자', 'user' , 'dbo', 'table', lvcn_trtm_rd, 'column' , rdt_asmt_ymd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '방사선치료부작용시기구분코드', 'user' , 'dbo', 'table', lvcn_trtm_rd, 'column' , rdt_seff_perd_spcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '방사선치료부작용시기구분명', 'user' , 'dbo', 'table', lvcn_trtm_rd, 'column' , rdt_seff_perd_spnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '방사선치료부작용종류코드', 'user' , 'dbo', 'table', lvcn_trtm_rd, 'column' , rdt_seff_kncd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '방사선치료부작용종류명', 'user' , 'dbo', 'table', lvcn_trtm_rd, 'column' , rdt_seff_knnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '방사선치료부작용종류기타내용', 'user' , 'dbo', 'table', lvcn_trtm_rd, 'column' , rdt_seff_kind_etc_cont;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '방사선치료부작용등급코드', 'user' , 'dbo', 'table', lvcn_trtm_rd, 'column' , rdt_seff_grcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '방사선치료부작용등급명', 'user' , 'dbo', 'table', lvcn_trtm_rd, 'column' , rdt_seff_grnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '방사선치료부작용등급기타내용', 'user' , 'dbo', 'table', lvcn_trtm_rd, 'column' , rdt_seff_grad_etc_cont;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '방사선치료평가항목코드', 'user' , 'dbo', 'table', lvcn_trtm_rd, 'column' , rdt_asmt_item_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '방사선치료평가항목명', 'user' , 'dbo', 'table', lvcn_trtm_rd, 'column' , rdt_asmt_item_nm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '방사선치료평가항목기타내용', 'user' , 'dbo', 'table', lvcn_trtm_rd, 'column' , rdt_asmt_item_etc_cont;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '생성일시', 'user' , 'dbo', 'table', lvcn_trtm_rd, 'column' , crtn_dt;



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
	crtn_dt datetime NOT NULL DEFAULT GETDATE(), -- 생성일시
	CONSTRAINT lvcn_fuor_rlps_pk PRIMARY KEY (hosp_cd, pt_sbst_no, rldg_ymd, rldg_seq)
);

EXECUTE sys.sp_addextendedproperty 'MS_Description' , '간암_추적관찰_재발', 'SCHEMA' , 'dbo', 'table', lvcn_fuor_rlps;

EXECUTE sys.sp_addextendedproperty 'MS_Description' , '병원코드', 'user' , 'dbo', 'table', lvcn_fuor_rlps, 'column' , hosp_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '환자대체번호', 'user' , 'dbo', 'table', lvcn_fuor_rlps, 'column' , pt_sbst_no;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '재발진단일자', 'user' , 'dbo', 'table', lvcn_fuor_rlps, 'column' , rldg_ymd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '재발진단순번', 'user' , 'dbo', 'table', lvcn_fuor_rlps, 'column' , rldg_seq;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '재발부위코드', 'user' , 'dbo', 'table', lvcn_fuor_rlps, 'column' , rlps_site_cd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '재발부위명', 'user' , 'dbo', 'table', lvcn_fuor_rlps, 'column' , rlps_site_nm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '재발치료내용', 'user' , 'dbo', 'table', lvcn_fuor_rlps, 'column' , rlps_trtm_cont;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '재발진단방법코드', 'user' , 'dbo', 'table', lvcn_fuor_rlps, 'column' , rldg_mtcd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '재발진단방법명', 'user' , 'dbo', 'table', lvcn_fuor_rlps, 'column' , rldg_mtnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '재발종류코드', 'user' , 'dbo', 'table', lvcn_fuor_rlps, 'column' , rlps_kncd;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '재발종류명', 'user' , 'dbo', 'table', lvcn_fuor_rlps, 'column' , rlps_knnm;
EXECUTE sys.sp_addextendedproperty 'MS_Description' , '생성일시', 'user' , 'dbo', 'table', lvcn_fuor_rlps, 'column' , crtn_dt;
