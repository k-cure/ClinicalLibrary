-- gscn_diag_afoc definition

-- Drop table

-- DROP TABLE gscn_diag_afoc;

CREATE TABLE gscn_diag_afoc (
	hosp_cd varchar(20) NOT NULL, -- 병원코드
	pt_sbst_no varchar(10) NOT NULL, -- 환자대체번호
	comp_ocrn_oprt_ymd varchar(8) NOT NULL, -- 합병증발생수술일자
	comp_ocrn_oprt_seq numeric(3) NOT NULL, -- 합병증발생수술순번
	afoc_clcd varchar(20) NULL, -- 수술후합병증분류코드
	afoc_clnm varchar(200) NULL, -- 수술후합병증분류명
	afoc_cd varchar(20) NULL, -- 수술후합병증코드
	afoc_nm varchar(200) NULL, -- 수술후합병증명
	afop_etc_comp_cont varchar(4000) NULL, -- 수술후기타합병증내용
	crtn_dt timestamp NOT NULL, -- 생성일시
	CONSTRAINT gscn_diag_afoc_pk PRIMARY KEY (hosp_cd, pt_sbst_no, comp_ocrn_oprt_ymd, comp_ocrn_oprt_seq)
);
COMMENT ON TABLE gscn_diag_afoc IS '위암_진단_수술후합병증';

-- Column comments

COMMENT ON COLUMN gscn_diag_afoc.hosp_cd IS '병원코드';
COMMENT ON COLUMN gscn_diag_afoc.pt_sbst_no IS '환자대체번호';
COMMENT ON COLUMN gscn_diag_afoc.comp_ocrn_oprt_ymd IS '합병증발생수술일자';
COMMENT ON COLUMN gscn_diag_afoc.comp_ocrn_oprt_seq IS '합병증발생수술순번';
COMMENT ON COLUMN gscn_diag_afoc.afoc_clcd IS '수술후합병증분류코드';
COMMENT ON COLUMN gscn_diag_afoc.afoc_clnm IS '수술후합병증분류명';
COMMENT ON COLUMN gscn_diag_afoc.afoc_cd IS '수술후합병증코드';
COMMENT ON COLUMN gscn_diag_afoc.afoc_nm IS '수술후합병증명';
COMMENT ON COLUMN gscn_diag_afoc.afop_etc_comp_cont IS '수술후기타합병증내용';
COMMENT ON COLUMN gscn_diag_afoc.crtn_dt IS '생성일시';


-- gscn_diag_aninf definition

-- Drop table

-- DROP TABLE gscn_diag_aninf;

CREATE TABLE gscn_diag_aninf (
	hosp_cd varchar(20) NOT NULL, -- 병원코드
	pt_sbst_no varchar(10) NOT NULL, -- 환자대체번호
	anth_rcrd_ymd varchar(8) NOT NULL, -- 신체계측기록일자
	anth_rcrd_seq numeric(3) NOT NULL, -- 신체계측기록순번
	ht_msrm_vl numeric(10, 3) NULL, -- 신장측정값
	wt_msrm_vl numeric(10, 3) NULL, -- 체중측정값
	bmi_vl numeric(10, 3) NULL, -- BMI값
	rlxt_blpr_vl varchar(200) NULL, -- 이완혈압값
	ctrt_blpr_vl varchar(200) NULL, -- 수축혈압값
	ecog_cd varchar(20) NULL, -- ECOG코드
	ecog_nm varchar(200) NULL, -- ECOG명
	crtn_dt timestamp NOT NULL, -- 생성일시
	CONSTRAINT gscn_diag_aninf_pk PRIMARY KEY (hosp_cd, pt_sbst_no, anth_rcrd_ymd, anth_rcrd_seq)
);
COMMENT ON TABLE gscn_diag_aninf IS '위암_진단_신체계측정보';

-- Column comments

COMMENT ON COLUMN gscn_diag_aninf.hosp_cd IS '병원코드';
COMMENT ON COLUMN gscn_diag_aninf.pt_sbst_no IS '환자대체번호';
COMMENT ON COLUMN gscn_diag_aninf.anth_rcrd_ymd IS '신체계측기록일자';
COMMENT ON COLUMN gscn_diag_aninf.anth_rcrd_seq IS '신체계측기록순번';
COMMENT ON COLUMN gscn_diag_aninf.ht_msrm_vl IS '신장측정값';
COMMENT ON COLUMN gscn_diag_aninf.wt_msrm_vl IS '체중측정값';
COMMENT ON COLUMN gscn_diag_aninf.bmi_vl IS 'BMI값';
COMMENT ON COLUMN gscn_diag_aninf.rlxt_blpr_vl IS '이완혈압값';
COMMENT ON COLUMN gscn_diag_aninf.ctrt_blpr_vl IS '수축혈압값';
COMMENT ON COLUMN gscn_diag_aninf.ecog_cd IS 'ECOG코드';
COMMENT ON COLUMN gscn_diag_aninf.ecog_nm IS 'ECOG명';
COMMENT ON COLUMN gscn_diag_aninf.crtn_dt IS '생성일시';


-- gscn_diag_inf definition

-- Drop table

-- DROP TABLE gscn_diag_inf;

CREATE TABLE gscn_diag_inf (
	hosp_cd varchar(20) NOT NULL, -- 병원코드
	pt_sbst_no varchar(10) NOT NULL, -- 환자대체번호
	diag_rgst_ymd varchar(8) NOT NULL, -- 진단등록일자
	diag_rgst_seq numeric(3) NOT NULL, -- 진단등록순번
	gscn_diag_kncd varchar(20) NULL, -- 위암진단종류코드
	gscn_diag_knnm varchar(200) NULL, -- 위암진단종류명
	diag_cd varchar(20) NULL, -- 진단코드
	diag_nm varchar(300) NULL, -- 진단명
	diag_kcd_cd varchar(20) NULL, -- 진단KCD코드
	diag_kcd_nm varchar(200) NULL, -- 진단KCD명
	diag_smct_cd varchar(200) NULL, -- 진단SNOMEDCT코드
	diag_smct_nm varchar(1000) NULL, -- 진단SNOMEDCT명
	crtn_dt timestamp NOT NULL, -- 생성일시
	CONSTRAINT gscn_diag_inf_pk PRIMARY KEY (hosp_cd, pt_sbst_no, diag_rgst_ymd, diag_rgst_seq)
);
COMMENT ON TABLE gscn_diag_inf IS '위암_진단_정보';

-- Column comments

COMMENT ON COLUMN gscn_diag_inf.hosp_cd IS '병원코드';
COMMENT ON COLUMN gscn_diag_inf.pt_sbst_no IS '환자대체번호';
COMMENT ON COLUMN gscn_diag_inf.diag_rgst_ymd IS '진단등록일자';
COMMENT ON COLUMN gscn_diag_inf.diag_rgst_seq IS '진단등록순번';
COMMENT ON COLUMN gscn_diag_inf.gscn_diag_kncd IS '위암진단종류코드';
COMMENT ON COLUMN gscn_diag_inf.gscn_diag_knnm IS '위암진단종류명';
COMMENT ON COLUMN gscn_diag_inf.diag_cd IS '진단코드';
COMMENT ON COLUMN gscn_diag_inf.diag_nm IS '진단명';
COMMENT ON COLUMN gscn_diag_inf.diag_kcd_cd IS '진단KCD코드';
COMMENT ON COLUMN gscn_diag_inf.diag_kcd_nm IS '진단KCD명';
COMMENT ON COLUMN gscn_diag_inf.diag_smct_cd IS '진단SNOMEDCT코드';
COMMENT ON COLUMN gscn_diag_inf.diag_smct_nm IS '진단SNOMEDCT명';
COMMENT ON COLUMN gscn_diag_inf.crtn_dt IS '생성일시';


-- gscn_diag_mtst definition

-- Drop table

-- DROP TABLE gscn_diag_mtst;

CREATE TABLE gscn_diag_mtst (
	hosp_cd varchar(20) NOT NULL, -- 병원코드
	pt_sbst_no varchar(10) NOT NULL, -- 환자대체번호
	mtdg_ymd varchar(8) NOT NULL, -- 전이진단일자
	mtdg_seq numeric(3) NOT NULL, -- 전이진단순번
	mtdg_mtcd varchar(20) NULL, -- 전이진단방법코드
	mtdg_mtnm varchar(200) NULL, -- 전이진단방법명
	mtst_site_cd varchar(20) NULL, -- 전이부위코드
	mtst_site_nm varchar(200) NULL, -- 전이부위명
	mtst_aspt_cd varchar(20) NULL, -- 전이양상코드
	mtst_aspt_nm varchar(200) NULL, -- 전이양상명
	mtst_trtm_cont varchar(4000) NULL, -- 전이치료내용
	crtn_dt timestamp NOT NULL, -- 생성일시
	CONSTRAINT gscn_diag_mtst_pk PRIMARY KEY (hosp_cd, pt_sbst_no, mtdg_ymd, mtdg_seq)
);
COMMENT ON TABLE gscn_diag_mtst IS '위암_진단_전이';

-- Column comments

COMMENT ON COLUMN gscn_diag_mtst.hosp_cd IS '병원코드';
COMMENT ON COLUMN gscn_diag_mtst.pt_sbst_no IS '환자대체번호';
COMMENT ON COLUMN gscn_diag_mtst.mtdg_ymd IS '전이진단일자';
COMMENT ON COLUMN gscn_diag_mtst.mtdg_seq IS '전이진단순번';
COMMENT ON COLUMN gscn_diag_mtst.mtdg_mtcd IS '전이진단방법코드';
COMMENT ON COLUMN gscn_diag_mtst.mtdg_mtnm IS '전이진단방법명';
COMMENT ON COLUMN gscn_diag_mtst.mtst_site_cd IS '전이부위코드';
COMMENT ON COLUMN gscn_diag_mtst.mtst_site_nm IS '전이부위명';
COMMENT ON COLUMN gscn_diag_mtst.mtst_aspt_cd IS '전이양상코드';
COMMENT ON COLUMN gscn_diag_mtst.mtst_aspt_nm IS '전이양상명';
COMMENT ON COLUMN gscn_diag_mtst.mtst_trtm_cont IS '전이치료내용';
COMMENT ON COLUMN gscn_diag_mtst.crtn_dt IS '생성일시';


-- gscn_diag_stag definition

-- Drop table

-- DROP TABLE gscn_diag_stag;

CREATE TABLE gscn_diag_stag (
	hosp_cd varchar(20) NOT NULL, -- 병원코드
	pt_sbst_no varchar(10) NOT NULL, -- 환자대체번호
	diag_stag_rcrd_ymd varchar(8) NOT NULL, -- 진단병기기록일자
	diag_stag_rcrd_seq numeric(3) NOT NULL, -- 진단병기기록순번
	clnc_tumr_prty_cd varchar(20) NULL, -- 임상종양특성코드
	clnc_tumr_prty_nm varchar(200) NULL, -- 임상종양특성명
	ajcc_yr varchar(4) NULL, -- AJCC년도
	clnc_tnm_stag_vl varchar(200) NULL, -- 임상TNM병기값
	clnc_t_stag_vl varchar(200) NULL, -- 임상T병기값
	clnc_n_stag_vl varchar(200) NULL, -- 임상N병기값
	clnc_m_stag_vl varchar(200) NULL, -- 임상M병기값
	crtn_dt timestamp NOT NULL, -- 생성일시
	CONSTRAINT gscn_diag_stag_pk PRIMARY KEY (hosp_cd, pt_sbst_no, diag_stag_rcrd_ymd, diag_stag_rcrd_seq)
);
COMMENT ON TABLE gscn_diag_stag IS '위암_진단_병기';

-- Column comments

COMMENT ON COLUMN gscn_diag_stag.hosp_cd IS '병원코드';
COMMENT ON COLUMN gscn_diag_stag.pt_sbst_no IS '환자대체번호';
COMMENT ON COLUMN gscn_diag_stag.diag_stag_rcrd_ymd IS '진단병기기록일자';
COMMENT ON COLUMN gscn_diag_stag.diag_stag_rcrd_seq IS '진단병기기록순번';
COMMENT ON COLUMN gscn_diag_stag.clnc_tumr_prty_cd IS '임상종양특성코드';
COMMENT ON COLUMN gscn_diag_stag.clnc_tumr_prty_nm IS '임상종양특성명';
COMMENT ON COLUMN gscn_diag_stag.ajcc_yr IS 'AJCC년도';
COMMENT ON COLUMN gscn_diag_stag.clnc_tnm_stag_vl IS '임상TNM병기값';
COMMENT ON COLUMN gscn_diag_stag.clnc_t_stag_vl IS '임상T병기값';
COMMENT ON COLUMN gscn_diag_stag.clnc_n_stag_vl IS '임상N병기값';
COMMENT ON COLUMN gscn_diag_stag.clnc_m_stag_vl IS '임상M병기값';
COMMENT ON COLUMN gscn_diag_stag.crtn_dt IS '생성일시';


-- gscn_exam_byps definition

-- Drop table

-- DROP TABLE gscn_exam_byps;

CREATE TABLE gscn_exam_byps (
	hosp_cd varchar(20) NOT NULL, -- 병원코드
	pt_sbst_no varchar(10) NOT NULL, -- 환자대체번호
	bpsy_ymd varchar(8) NOT NULL, -- 생체검사일자
	bpsy_seq numeric(3) NOT NULL, -- 생체검사순번
	bpsy_read_ymd varchar(8) NULL, -- 생체검사판독일자
	bpsy_site_cd varchar(20) NULL, -- 생체검사부위코드
	bpsy_site_nm varchar(200) NULL, -- 생체검사부위명
	bpsy_mtcd varchar(20) NULL, -- 생체검사방법코드
	bpsy_mtnm varchar(200) NULL, -- 생체검사방법명
	bpsy_mthd_kncd varchar(20) NULL, -- 생체검사방법종류코드
	bpsy_mthd_knnm varchar(200) NULL, -- 생체검사방법종류명
	bpsy_rslt_cont varchar(4000) NULL, -- 생체검사결과내용
	htlg_diag_cd varchar(20) NULL, -- 조직학적진단코드
	htlg_diag_nm varchar(200) NULL, -- 조직학적진단명
	htlg_dfgd_cd varchar(20) NULL, -- 조직학적분화도코드
	htlg_dfgd_nm varchar(200) NULL, -- 조직학적분화도명
	crtn_dt timestamp NOT NULL, -- 생성일시
	CONSTRAINT gscn_exam_byps_pk PRIMARY KEY (hosp_cd, pt_sbst_no, bpsy_ymd, bpsy_seq)
);
COMMENT ON TABLE gscn_exam_byps IS '위암_검사_생체';

-- Column comments

COMMENT ON COLUMN gscn_exam_byps.hosp_cd IS '병원코드';
COMMENT ON COLUMN gscn_exam_byps.pt_sbst_no IS '환자대체번호';
COMMENT ON COLUMN gscn_exam_byps.bpsy_ymd IS '생체검사일자';
COMMENT ON COLUMN gscn_exam_byps.bpsy_seq IS '생체검사순번';
COMMENT ON COLUMN gscn_exam_byps.bpsy_read_ymd IS '생체검사판독일자';
COMMENT ON COLUMN gscn_exam_byps.bpsy_site_cd IS '생체검사부위코드';
COMMENT ON COLUMN gscn_exam_byps.bpsy_site_nm IS '생체검사부위명';
COMMENT ON COLUMN gscn_exam_byps.bpsy_mtcd IS '생체검사방법코드';
COMMENT ON COLUMN gscn_exam_byps.bpsy_mtnm IS '생체검사방법명';
COMMENT ON COLUMN gscn_exam_byps.bpsy_mthd_kncd IS '생체검사방법종류코드';
COMMENT ON COLUMN gscn_exam_byps.bpsy_mthd_knnm IS '생체검사방법종류명';
COMMENT ON COLUMN gscn_exam_byps.bpsy_rslt_cont IS '생체검사결과내용';
COMMENT ON COLUMN gscn_exam_byps.htlg_diag_cd IS '조직학적진단코드';
COMMENT ON COLUMN gscn_exam_byps.htlg_diag_nm IS '조직학적진단명';
COMMENT ON COLUMN gscn_exam_byps.htlg_dfgd_cd IS '조직학적분화도코드';
COMMENT ON COLUMN gscn_exam_byps.htlg_dfgd_nm IS '조직학적분화도명';
COMMENT ON COLUMN gscn_exam_byps.crtn_dt IS '생성일시';


-- gscn_exam_diag definition

-- Drop table

-- DROP TABLE gscn_exam_diag;

CREATE TABLE gscn_exam_diag (
	hosp_cd varchar(20) NOT NULL, -- 병원코드
	pt_sbst_no varchar(10) NOT NULL, -- 환자대체번호
	cexm_ymd varchar(8) NOT NULL, -- 진단검사일자
	cexm_seq numeric(3) NOT NULL, -- 진단검사순번
	cexm_kncd varchar(20) NULL, -- 진단검사종류코드
	cexm_knnm varchar(200) NULL, -- 진단검사종류명
	cexm_cd varchar(20) NULL, -- 진단검사코드
	cexm_nm varchar(200) NULL, -- 진단검사명
	cexm_edi_cd varchar(20) NULL, -- 진단검사EDI코드
	cexm_edi_nm varchar(200) NULL, -- 진단검사EDI명
	cexm_smct_cd varchar(200) NULL, -- 진단검사SNOMEDCT코드
	cexm_smct_nm varchar(1000) NULL, -- 진단검사SNOMEDCT명
	cexm_loinc_cd varchar(20) NULL, -- 진단검사LOINC코드
	cexm_loinc_nm varchar(1000) NULL, -- 진단검사LOINC명
	cexm_rslt_cont varchar(4000) NULL, -- 진단검사결과내용
	cexm_rslt_unit_cont varchar(4000) NULL, -- 진단검사결과단위내용
	cexm_nlrg_ref_vl varchar(200) NULL, -- 진단검사정상범위참고값
	crtn_dt timestamp NOT NULL, -- 생성일시
	CONSTRAINT gscn_exam_diag_pk PRIMARY KEY (hosp_cd, pt_sbst_no, cexm_ymd, cexm_seq)
);
COMMENT ON TABLE gscn_exam_diag IS '위암_검사_진단';

-- Column comments

COMMENT ON COLUMN gscn_exam_diag.hosp_cd IS '병원코드';
COMMENT ON COLUMN gscn_exam_diag.pt_sbst_no IS '환자대체번호';
COMMENT ON COLUMN gscn_exam_diag.cexm_ymd IS '진단검사일자';
COMMENT ON COLUMN gscn_exam_diag.cexm_seq IS '진단검사순번';
COMMENT ON COLUMN gscn_exam_diag.cexm_kncd IS '진단검사종류코드';
COMMENT ON COLUMN gscn_exam_diag.cexm_knnm IS '진단검사종류명';
COMMENT ON COLUMN gscn_exam_diag.cexm_cd IS '진단검사코드';
COMMENT ON COLUMN gscn_exam_diag.cexm_nm IS '진단검사명';
COMMENT ON COLUMN gscn_exam_diag.cexm_edi_cd IS '진단검사EDI코드';
COMMENT ON COLUMN gscn_exam_diag.cexm_edi_nm IS '진단검사EDI명';
COMMENT ON COLUMN gscn_exam_diag.cexm_smct_cd IS '진단검사SNOMEDCT코드';
COMMENT ON COLUMN gscn_exam_diag.cexm_smct_nm IS '진단검사SNOMEDCT명';
COMMENT ON COLUMN gscn_exam_diag.cexm_loinc_cd IS '진단검사LOINC코드';
COMMENT ON COLUMN gscn_exam_diag.cexm_loinc_nm IS '진단검사LOINC명';
COMMENT ON COLUMN gscn_exam_diag.cexm_rslt_cont IS '진단검사결과내용';
COMMENT ON COLUMN gscn_exam_diag.cexm_rslt_unit_cont IS '진단검사결과단위내용';
COMMENT ON COLUMN gscn_exam_diag.cexm_nlrg_ref_vl IS '진단검사정상범위참고값';
COMMENT ON COLUMN gscn_exam_diag.crtn_dt IS '생성일시';


-- gscn_exam_eus definition

-- Drop table

-- DROP TABLE gscn_exam_eus;

CREATE TABLE gscn_exam_eus (
	hosp_cd varchar(20) NOT NULL, -- 병원코드
	pt_sbst_no varchar(10) NOT NULL, -- 환자대체번호
	eus_exam_ymd varchar(8) NOT NULL, -- EUS검사일자
	eus_exam_seq numeric(3) NOT NULL, -- EUS검사순번
	eus_t_stag_cd varchar(20) NULL, -- EUS_T병기코드
	eus_t_stag_nm varchar(200) NULL, -- EUS_T병기명
	eus_n_stag_cd varchar(20) NULL, -- EUS_N병기코드
	eus_n_stag_nm varchar(200) NULL, -- EUS_N병기명
	eus_m_stag_cd varchar(20) NULL, -- EUS_M병기코드
	eus_m_stag_nm varchar(200) NULL, -- EUS_M병기명
	eus_exam_opn_cont varchar(4000) NULL, -- EUS검사소견내용
	eus_exam_rslt_cont varchar(4000) NULL, -- EUS검사결과내용
	eus_comp_cd varchar(20) NULL, -- EUS합병증코드
	eus_comp_nm varchar(200) NULL, -- EUS합병증명
	crtn_dt timestamp NOT NULL, -- 생성일시
	CONSTRAINT gscn_exam_eus_pk PRIMARY KEY (hosp_cd, pt_sbst_no, eus_exam_ymd, eus_exam_seq)
);
COMMENT ON TABLE gscn_exam_eus IS '위암_검사_EUS';

-- Column comments

COMMENT ON COLUMN gscn_exam_eus.hosp_cd IS '병원코드';
COMMENT ON COLUMN gscn_exam_eus.pt_sbst_no IS '환자대체번호';
COMMENT ON COLUMN gscn_exam_eus.eus_exam_ymd IS 'EUS검사일자';
COMMENT ON COLUMN gscn_exam_eus.eus_exam_seq IS 'EUS검사순번';
COMMENT ON COLUMN gscn_exam_eus.eus_t_stag_cd IS 'EUS_T병기코드';
COMMENT ON COLUMN gscn_exam_eus.eus_t_stag_nm IS 'EUS_T병기명';
COMMENT ON COLUMN gscn_exam_eus.eus_n_stag_cd IS 'EUS_N병기코드';
COMMENT ON COLUMN gscn_exam_eus.eus_n_stag_nm IS 'EUS_N병기명';
COMMENT ON COLUMN gscn_exam_eus.eus_m_stag_cd IS 'EUS_M병기코드';
COMMENT ON COLUMN gscn_exam_eus.eus_m_stag_nm IS 'EUS_M병기명';
COMMENT ON COLUMN gscn_exam_eus.eus_exam_opn_cont IS 'EUS검사소견내용';
COMMENT ON COLUMN gscn_exam_eus.eus_exam_rslt_cont IS 'EUS검사결과내용';
COMMENT ON COLUMN gscn_exam_eus.eus_comp_cd IS 'EUS합병증코드';
COMMENT ON COLUMN gscn_exam_eus.eus_comp_nm IS 'EUS합병증명';
COMMENT ON COLUMN gscn_exam_eus.crtn_dt IS '생성일시';


-- gscn_exam_gtsp definition

-- Drop table

-- DROP TABLE gscn_exam_gtsp;

CREATE TABLE gscn_exam_gtsp (
	hosp_cd varchar(20) NOT NULL, -- 병원코드
	pt_sbst_no varchar(10) NOT NULL, -- 환자대체번호
	stmc_edex_ymd varchar(8) NOT NULL, -- 위내시경검사일자
	stmc_edex_seq numeric(3) NOT NULL, -- 위내시경검사순번
	stmc_edex_prps_cd varchar(20) NULL, -- 위내시경검사목적코드
	stmc_edex_prps_nm varchar(200) NULL, -- 위내시경검사목적명
	gtsp_tspc_cnt VARCHAR(100) NULL, -- 위내시경조직표본수
	stmc_edex_opn_cont varchar(4000) NULL, -- 위내시경검사소견내용
	stmc_edex_rslt_cont varchar(4000) NULL, -- 위내시경검사결과내용
	stmc_edex_rslt_tpcd varchar(20) NULL, -- 위내시경검사결과유형코드
	stmc_edex_rslt_tpnm varchar(200) NULL, -- 위내시경검사결과유형명
	gtsp_comp_grcd varchar(20) NULL, -- 위내시경합병증등급코드
	gtsp_comp_grnm varchar(200) NULL, -- 위내시경합병증등급명
	gtsp_comp_cd varchar(20) NULL, -- 위내시경합병증코드
	gtsp_comp_nm varchar(200) NULL, -- 위내시경합병증명
	crtn_dt timestamp NOT NULL, -- 생성일시
	CONSTRAINT gscn_exam_gtsp_pk PRIMARY KEY (hosp_cd, pt_sbst_no, stmc_edex_ymd, stmc_edex_seq)
);
COMMENT ON TABLE gscn_exam_gtsp IS '위암_검사_위내시경';

-- Column comments

COMMENT ON COLUMN gscn_exam_gtsp.hosp_cd IS '병원코드';
COMMENT ON COLUMN gscn_exam_gtsp.pt_sbst_no IS '환자대체번호';
COMMENT ON COLUMN gscn_exam_gtsp.stmc_edex_ymd IS '위내시경검사일자';
COMMENT ON COLUMN gscn_exam_gtsp.stmc_edex_seq IS '위내시경검사순번';
COMMENT ON COLUMN gscn_exam_gtsp.stmc_edex_prps_cd IS '위내시경검사목적코드';
COMMENT ON COLUMN gscn_exam_gtsp.stmc_edex_prps_nm IS '위내시경검사목적명';
COMMENT ON COLUMN gscn_exam_gtsp.gtsp_tspc_cnt IS '위내시경조직표본수';
COMMENT ON COLUMN gscn_exam_gtsp.stmc_edex_opn_cont IS '위내시경검사소견내용';
COMMENT ON COLUMN gscn_exam_gtsp.stmc_edex_rslt_cont IS '위내시경검사결과내용';
COMMENT ON COLUMN gscn_exam_gtsp.stmc_edex_rslt_tpcd IS '위내시경검사결과유형코드';
COMMENT ON COLUMN gscn_exam_gtsp.stmc_edex_rslt_tpnm IS '위내시경검사결과유형명';
COMMENT ON COLUMN gscn_exam_gtsp.gtsp_comp_grcd IS '위내시경합병증등급코드';
COMMENT ON COLUMN gscn_exam_gtsp.gtsp_comp_grnm IS '위내시경합병증등급명';
COMMENT ON COLUMN gscn_exam_gtsp.gtsp_comp_cd IS '위내시경합병증코드';
COMMENT ON COLUMN gscn_exam_gtsp.gtsp_comp_nm IS '위내시경합병증명';
COMMENT ON COLUMN gscn_exam_gtsp.crtn_dt IS '생성일시';


-- gscn_exam_hpli definition

-- Drop table

-- DROP TABLE gscn_exam_hpli;

CREATE TABLE gscn_exam_hpli (
	hosp_cd varchar(20) NOT NULL, -- 병원코드
	pt_sbst_no varchar(10) NOT NULL, -- 환자대체번호
	hpli_exam_ymd varchar(8) NOT NULL, -- HPYLORI검사일자
	hpli_exam_seq numeric(3) NOT NULL, -- HPYLORI검사순번
	hpli_exam_mtcd varchar(20) NULL, -- HPYLORI검사방법코드
	hpli_exam_mtnm varchar(200) NULL, -- HPYLORI검사방법명
	hpli_exam_rslt_cd varchar(20) NULL, -- HPYLORI검사결과코드
	hpli_exam_rslt_nm varchar(200) NULL, -- HPYLORI검사결과명
	crtn_dt timestamp NOT NULL, -- 생성일시
	CONSTRAINT gscn_exam_hpli_pk PRIMARY KEY (hosp_cd, pt_sbst_no, hpli_exam_ymd, hpli_exam_seq)
);
COMMENT ON TABLE gscn_exam_hpli IS '위암_검사_HPYLORI';

-- Column comments

COMMENT ON COLUMN gscn_exam_hpli.hosp_cd IS '병원코드';
COMMENT ON COLUMN gscn_exam_hpli.pt_sbst_no IS '환자대체번호';
COMMENT ON COLUMN gscn_exam_hpli.hpli_exam_ymd IS 'HPYLORI검사일자';
COMMENT ON COLUMN gscn_exam_hpli.hpli_exam_seq IS 'HPYLORI검사순번';
COMMENT ON COLUMN gscn_exam_hpli.hpli_exam_mtcd IS 'HPYLORI검사방법코드';
COMMENT ON COLUMN gscn_exam_hpli.hpli_exam_mtnm IS 'HPYLORI검사방법명';
COMMENT ON COLUMN gscn_exam_hpli.hpli_exam_rslt_cd IS 'HPYLORI검사결과코드';
COMMENT ON COLUMN gscn_exam_hpli.hpli_exam_rslt_nm IS 'HPYLORI검사결과명';
COMMENT ON COLUMN gscn_exam_hpli.crtn_dt IS '생성일시';


-- gscn_exam_imag definition

-- Drop table

-- DROP TABLE gscn_exam_imag;

CREATE TABLE gscn_exam_imag (
	hosp_cd varchar(20) NOT NULL, -- 병원코드
	pt_sbst_no varchar(10) NOT NULL, -- 환자대체번호
	imex_ymd varchar(8) NOT NULL, -- 영상검사일자
	imex_seq numeric(3) NOT NULL, -- 영상검사순번
	imex_kncd varchar(20) NULL, -- 영상검사종류코드
	imex_knnm varchar(200) NULL, -- 영상검사종류명
	imex_cd varchar(20) NULL, -- 영상검사코드
	imex_nm varchar(200) NULL, -- 영상검사명
	imex_edi_cd varchar(20) NULL, -- 영상검사EDI코드
	imex_edi_nm varchar(300) NULL, -- 영상검사EDI명
	imex_smct_cd varchar(200) NULL, -- 영상검사SNOMEDCT코드
	imex_smct_nm varchar(1000) NULL, -- 영상검사SNOMEDCT명
	imex_rslt_cont varchar(4000) NULL, -- 영상검사결과내용
	crtn_dt timestamp NOT NULL, -- 생성일시
	CONSTRAINT gscn_exam_imag_pk PRIMARY KEY (hosp_cd, pt_sbst_no, imex_ymd, imex_seq)
);
COMMENT ON TABLE gscn_exam_imag IS '위암_검사_영상';

-- Column comments

COMMENT ON COLUMN gscn_exam_imag.hosp_cd IS '병원코드';
COMMENT ON COLUMN gscn_exam_imag.pt_sbst_no IS '환자대체번호';
COMMENT ON COLUMN gscn_exam_imag.imex_ymd IS '영상검사일자';
COMMENT ON COLUMN gscn_exam_imag.imex_seq IS '영상검사순번';
COMMENT ON COLUMN gscn_exam_imag.imex_kncd IS '영상검사종류코드';
COMMENT ON COLUMN gscn_exam_imag.imex_knnm IS '영상검사종류명';
COMMENT ON COLUMN gscn_exam_imag.imex_cd IS '영상검사코드';
COMMENT ON COLUMN gscn_exam_imag.imex_nm IS '영상검사명';
COMMENT ON COLUMN gscn_exam_imag.imex_edi_cd IS '영상검사EDI코드';
COMMENT ON COLUMN gscn_exam_imag.imex_edi_nm IS '영상검사EDI명';
COMMENT ON COLUMN gscn_exam_imag.imex_smct_cd IS '영상검사SNOMEDCT코드';
COMMENT ON COLUMN gscn_exam_imag.imex_smct_nm IS '영상검사SNOMEDCT명';
COMMENT ON COLUMN gscn_exam_imag.imex_rslt_cont IS '영상검사결과내용';
COMMENT ON COLUMN gscn_exam_imag.crtn_dt IS '생성일시';


-- gscn_exam_impt definition

-- Drop table

-- DROP TABLE gscn_exam_impt;

CREATE TABLE gscn_exam_impt (
	hosp_cd varchar(20) NOT NULL, -- 병원코드
	pt_sbst_no varchar(10) NOT NULL, -- 환자대체번호
	imem_ymd varchar(8) NOT NULL, -- 면역병리검사일자
	imem_seq numeric(3) NOT NULL, -- 면역병리검사순번
	impt_read_ymd varchar(8) NULL, -- 면역병리판독일자
	imem_cd varchar(20) NULL, -- 면역병리검사코드
	imem_nm varchar(200) NULL, -- 면역병리검사명
	imem_kncd varchar(20) NULL, -- 면역병리검사종류코드
	imem_knnm varchar(200) NULL, -- 면역병리검사종류명
	imem_mthd_cont varchar(4000) NULL, -- 면역병리검사방법내용
	imem_opn_cd varchar(20) NULL, -- 면역병리검사소견코드
	imem_opn_nm varchar(200) NULL, -- 면역병리검사소견명
	imem_rslt_vl varchar(200) NULL, -- 면역병리검사결과값
	imem_rslt_unit_cd varchar(20) NULL, -- 면역병리검사결과단위코드
	imem_rslt_unit_nm varchar(200) NULL, -- 면역병리검사결과단위명
	crtn_dt timestamp NOT NULL, -- 생성일시
	CONSTRAINT gscn_exam_impt_pk PRIMARY KEY (hosp_cd, pt_sbst_no, imem_ymd, imem_seq)
);
COMMENT ON TABLE gscn_exam_impt IS '위암_검사_면역병리';

-- Column comments

COMMENT ON COLUMN gscn_exam_impt.hosp_cd IS '병원코드';
COMMENT ON COLUMN gscn_exam_impt.pt_sbst_no IS '환자대체번호';
COMMENT ON COLUMN gscn_exam_impt.imem_ymd IS '면역병리검사일자';
COMMENT ON COLUMN gscn_exam_impt.imem_seq IS '면역병리검사순번';
COMMENT ON COLUMN gscn_exam_impt.impt_read_ymd IS '면역병리판독일자';
COMMENT ON COLUMN gscn_exam_impt.imem_cd IS '면역병리검사코드';
COMMENT ON COLUMN gscn_exam_impt.imem_nm IS '면역병리검사명';
COMMENT ON COLUMN gscn_exam_impt.imem_kncd IS '면역병리검사종류코드';
COMMENT ON COLUMN gscn_exam_impt.imem_knnm IS '면역병리검사종류명';
COMMENT ON COLUMN gscn_exam_impt.imem_mthd_cont IS '면역병리검사방법내용';
COMMENT ON COLUMN gscn_exam_impt.imem_opn_cd IS '면역병리검사소견코드';
COMMENT ON COLUMN gscn_exam_impt.imem_opn_nm IS '면역병리검사소견명';
COMMENT ON COLUMN gscn_exam_impt.imem_rslt_vl IS '면역병리검사결과값';
COMMENT ON COLUMN gscn_exam_impt.imem_rslt_unit_cd IS '면역병리검사결과단위코드';
COMMENT ON COLUMN gscn_exam_impt.imem_rslt_unit_nm IS '면역병리검사결과단위명';
COMMENT ON COLUMN gscn_exam_impt.crtn_dt IS '생성일시';


-- gscn_exam_mlpt definition

-- Drop table

-- DROP TABLE gscn_exam_mlpt;

CREATE TABLE gscn_exam_mlpt (
	hosp_cd varchar(20) NOT NULL, -- 병원코드
	pt_sbst_no varchar(10) NOT NULL, -- 환자대체번호
	mlem_ymd varchar(8) NOT NULL, -- 분자병리검사일자
	mlem_seq numeric(3) NOT NULL, -- 분자병리검사순번
	mlpt_read_ymd varchar(8) NULL, -- 분자병리판독일자
	mlem_cd varchar(20) NULL, -- 분자병리검사코드
	mlem_nm varchar(200) NULL, -- 분자병리검사명
	mlem_kncd varchar(20) NULL, -- 분자병리검사종류코드
	mlem_knnm varchar(200) NULL, -- 분자병리검사종류명
	mlem_mthd_cont varchar(4000) NULL, -- 분자병리검사방법내용
	mlem_rslt_bas_cont varchar(4000) NULL, -- 분자병리결과근거내용
	mlem_opn_cd varchar(20) NULL, -- 분자병리검사소견코드
	mlem_opn_nm varchar(200) NULL, -- 분자병리검사소견명
	mlem_rslt_cont varchar(4000) NULL, -- 분자병리검사결과내용
	mlem_rslt_unit_cont varchar(200) NULL, -- 분자병리검사결과단위내용
	crtn_dt timestamp NOT NULL, -- 생성일시
	CONSTRAINT gscn_exam_mlpt_pk PRIMARY KEY (hosp_cd, pt_sbst_no, mlem_ymd, mlem_seq)
);
COMMENT ON TABLE gscn_exam_mlpt IS '위암_검사_분자병리';

-- Column comments

COMMENT ON COLUMN gscn_exam_mlpt.hosp_cd IS '병원코드';
COMMENT ON COLUMN gscn_exam_mlpt.pt_sbst_no IS '환자대체번호';
COMMENT ON COLUMN gscn_exam_mlpt.mlem_ymd IS '분자병리검사일자';
COMMENT ON COLUMN gscn_exam_mlpt.mlem_seq IS '분자병리검사순번';
COMMENT ON COLUMN gscn_exam_mlpt.mlpt_read_ymd IS '분자병리판독일자';
COMMENT ON COLUMN gscn_exam_mlpt.mlem_cd IS '분자병리검사코드';
COMMENT ON COLUMN gscn_exam_mlpt.mlem_nm IS '분자병리검사명';
COMMENT ON COLUMN gscn_exam_mlpt.mlem_kncd IS '분자병리검사종류코드';
COMMENT ON COLUMN gscn_exam_mlpt.mlem_knnm IS '분자병리검사종류명';
COMMENT ON COLUMN gscn_exam_mlpt.mlem_mthd_cont IS '분자병리검사방법내용';
COMMENT ON COLUMN gscn_exam_mlpt.mlem_rslt_bas_cont IS '분자병리결과근거내용';
COMMENT ON COLUMN gscn_exam_mlpt.mlem_opn_cd IS '분자병리검사소견코드';
COMMENT ON COLUMN gscn_exam_mlpt.mlem_opn_nm IS '분자병리검사소견명';
COMMENT ON COLUMN gscn_exam_mlpt.mlem_rslt_cont IS '분자병리검사결과내용';
COMMENT ON COLUMN gscn_exam_mlpt.mlem_rslt_unit_cont IS '분자병리검사결과단위내용';
COMMENT ON COLUMN gscn_exam_mlpt.crtn_dt IS '생성일시';


-- gscn_exam_sgpt definition

-- Drop table

-- DROP TABLE gscn_exam_sgpt;

CREATE TABLE gscn_exam_sgpt (
	hosp_cd varchar(20) NOT NULL, -- 병원코드
	pt_sbst_no varchar(10) NOT NULL, -- 환자대체번호
	srgc_ptem_ymd varchar(8) NOT NULL, -- 외과병리검사일자
	srgc_ptem_seq numeric(3) NOT NULL, -- 외과병리검사순번
	sgpt_read_ymd varchar(8) NULL, -- 외과병리판독일자
	sgpt_hvst_site_cd varchar(20) NULL, -- 외과병리채취부위코드
	sgpt_hvst_site_nm varchar(200) NULL, -- 외과병리채취부위명
	srgc_ptem_rslt_tumr_cnt numeric(3) NULL, -- 외과병리검사결과종양수
	htlg_diag_cd varchar(20) NULL, -- 조직학적진단코드
	htlg_diag_nm varchar(200) NULL, -- 조직학적진단명
	htlg_dfgd_cd varchar(20) NULL, -- 조직학적분화도코드
	htlg_dfgd_nm varchar(200) NULL, -- 조직학적분화도명
	afop_crmr_tumr_loca_cd varchar(20) NULL, -- 수술후둘레방향종양위치코드
	afop_crmr_tumr_loca_nm varchar(200) NULL, -- 수술후둘레방향종양위치명
	afop_lngt_1_tumr_loca_cd varchar(20) NULL, -- 수술후종방향1종양위치코드
	afop_lngt_1_tumr_loca_nm varchar(200) NULL, -- 수술후종방향1종양위치명
	afop_lngt_2_tumr_loca_cd varchar(20) NULL, -- 수술후종방향2종양위치코드
	afop_lngt_2_tumr_loca_nm varchar(200) NULL, -- 수술후종방향2종양위치명
	gros_tpcd varchar(20) NULL, -- GROSS유형코드
	gros_tpnm varchar(200) NULL, -- GROSS유형명
	gros_type_cont varchar(4000) NULL, -- GROSS유형내용
	tumr_wdth_lnth_vl numeric(10, 3) NULL, -- 종양가로길이값
	tumr_lgtd_lnth_vl numeric(10, 3) NULL, -- 종양세로길이값
	tumr_hght_vl numeric(10, 3) NULL, -- 종양높이값
	tumr_max_diam_vl numeric(10, 3) NULL, -- 종양최대직경값
	iflt_orgn_cd varchar(20) NULL, -- 침습장기코드
	iflt_orgn_nm varchar(200) NULL, -- 침습장기명
	inva_dgre_cd varchar(20) NULL, -- 침윤정도코드
	inva_dgre_nm varchar(200) NULL, -- 침윤정도명
	inva_dpth_vl numeric(10, 3) NULL, -- 침윤깊이값
	lymp_inva_ex_yn_spcd varchar(20) NULL, -- 림프성침윤존재여부구분코드
	lymp_inva_ex_yn_spnm varchar(50) NULL, -- 림프성침윤존재여부구분명
	vasc_inva_ex_yn_spcd varchar(20) NULL, -- 혈관성침윤존재여부구분코드
	vasc_inva_ex_yn_spnm varchar(50) NULL, -- 혈관성침윤존재여부구분명
	nerv_prex_ex_yn_spcd varchar(20) NULL, -- 신경주위침윤존재여부구분코드
	nerv_prex_ex_yn_spnm varchar(50) NULL, -- 신경주위침윤존재여부구분명
	oprt_pmrg_rlcr_invl_yn_spcd varchar(20) NULL, -- 수술근위절제면잔존암포함여부구분코드
	oprt_pmrg_rlcr_invl_yn_spnm varchar(50) NULL, -- 수술근위절제면잔존암포함여부구분명
	oprt_pmrg_size_vl numeric(10, 3) NULL, -- 수술근위절제면크기값
	oprt_dmrg_rlcr_invl_yn_spcd varchar(20) NULL, -- 수술원위절제면잔존암포함여부구분코드
	oprt_dmrg_rlcr_invl_yn_spnm varchar(50) NULL, -- 수술원위절제면잔존암포함여부구분명
	oprt_dmrg_size_vl numeric(10, 3) NULL, -- 수술원위절제면크기값
	stes_bnst_cncr_clcd varchar(20) NULL, -- 위식도경계부위암분류코드
	stes_bnst_cncr_clnm varchar(200) NULL, -- 위식도경계부위암분류명
	totl_ln_cnt numeric(3) NULL, -- 총림프절수
	pstv_ln_cnt varchar(100) NULL, -- 양성림프절수
	ln_bylc_mtst_cont varchar(4000) NULL, -- 림프절위치별전이내용
	ajcc_yr varchar(4) NULL, -- AJCC년도
	afop_path_tnm_stag_vl varchar(200) NULL, -- 수술후병리TNM병기값
	afop_path_t_stag_vl varchar(200) NULL, -- 수술후병리T병기값
	afop_path_n_stag_vl varchar(200) NULL, -- 수술후병리N병기값
	afop_path_m_stag_vl varchar(200) NULL, -- 수술후병리M병기값
	esd_vmrg_rlcr_pstv_yn_spcd varchar(20) NULL, -- ESD수직절제면잔존암양성여부구분코드
	esd_vmrg_rlcr_pstv_yn_spnm varchar(50) NULL, -- ESD수직절제면잔존암양성여부구분명
	esd_vmrg_vl numeric(10, 3) NULL, -- ESD수직절제면값
	esd_hmrg_rlcr_pstv_yn_spcd varchar(20) NULL, -- ESD수평절제면잔존암양성여부구분코드
	esd_hmrg_rlcr_pstv_yn_spnm varchar(50) NULL, -- ESD수평절제면잔존암양성여부구분명
	esd_hmrg_vl numeric(10, 3) NULL, -- ESD수평절제면값
	esd_hmrg_rlcr_lnth_vl numeric(10, 3) NULL, -- ESD수평절제면잔존암길이값
	crtn_dt timestamp NOT NULL, -- 생성일시
	CONSTRAINT gscn_exam_sgpt_pk PRIMARY KEY (hosp_cd, pt_sbst_no, srgc_ptem_ymd, srgc_ptem_seq)
);
COMMENT ON TABLE gscn_exam_sgpt IS '위암_검사_외과병리';

-- Column comments

COMMENT ON COLUMN gscn_exam_sgpt.hosp_cd IS '병원코드';
COMMENT ON COLUMN gscn_exam_sgpt.pt_sbst_no IS '환자대체번호';
COMMENT ON COLUMN gscn_exam_sgpt.srgc_ptem_ymd IS '외과병리검사일자';
COMMENT ON COLUMN gscn_exam_sgpt.srgc_ptem_seq IS '외과병리검사순번';
COMMENT ON COLUMN gscn_exam_sgpt.sgpt_read_ymd IS '외과병리판독일자';
COMMENT ON COLUMN gscn_exam_sgpt.sgpt_hvst_site_cd IS '외과병리채취부위코드';
COMMENT ON COLUMN gscn_exam_sgpt.sgpt_hvst_site_nm IS '외과병리채취부위명';
COMMENT ON COLUMN gscn_exam_sgpt.srgc_ptem_rslt_tumr_cnt IS '외과병리검사결과종양수';
COMMENT ON COLUMN gscn_exam_sgpt.htlg_diag_cd IS '조직학적진단코드';
COMMENT ON COLUMN gscn_exam_sgpt.htlg_diag_nm IS '조직학적진단명';
COMMENT ON COLUMN gscn_exam_sgpt.htlg_dfgd_cd IS '조직학적분화도코드';
COMMENT ON COLUMN gscn_exam_sgpt.htlg_dfgd_nm IS '조직학적분화도명';
COMMENT ON COLUMN gscn_exam_sgpt.afop_crmr_tumr_loca_cd IS '수술후둘레방향종양위치코드';
COMMENT ON COLUMN gscn_exam_sgpt.afop_crmr_tumr_loca_nm IS '수술후둘레방향종양위치명';
COMMENT ON COLUMN gscn_exam_sgpt.afop_lngt_1_tumr_loca_cd IS '수술후종방향1종양위치코드';
COMMENT ON COLUMN gscn_exam_sgpt.afop_lngt_1_tumr_loca_nm IS '수술후종방향1종양위치명';
COMMENT ON COLUMN gscn_exam_sgpt.afop_lngt_2_tumr_loca_cd IS '수술후종방향2종양위치코드';
COMMENT ON COLUMN gscn_exam_sgpt.afop_lngt_2_tumr_loca_nm IS '수술후종방향2종양위치명';
COMMENT ON COLUMN gscn_exam_sgpt.gros_tpcd IS 'GROSS유형코드';
COMMENT ON COLUMN gscn_exam_sgpt.gros_tpnm IS 'GROSS유형명';
COMMENT ON COLUMN gscn_exam_sgpt.gros_type_cont IS 'GROSS유형내용';
COMMENT ON COLUMN gscn_exam_sgpt.tumr_wdth_lnth_vl IS '종양가로길이값';
COMMENT ON COLUMN gscn_exam_sgpt.tumr_lgtd_lnth_vl IS '종양세로길이값';
COMMENT ON COLUMN gscn_exam_sgpt.tumr_hght_vl IS '종양높이값';
COMMENT ON COLUMN gscn_exam_sgpt.tumr_max_diam_vl IS '종양최대직경값';
COMMENT ON COLUMN gscn_exam_sgpt.iflt_orgn_cd IS '침습장기코드';
COMMENT ON COLUMN gscn_exam_sgpt.iflt_orgn_nm IS '침습장기명';
COMMENT ON COLUMN gscn_exam_sgpt.inva_dgre_cd IS '침윤정도코드';
COMMENT ON COLUMN gscn_exam_sgpt.inva_dgre_nm IS '침윤정도명';
COMMENT ON COLUMN gscn_exam_sgpt.inva_dpth_vl IS '침윤깊이값';
COMMENT ON COLUMN gscn_exam_sgpt.lymp_inva_ex_yn_spcd IS '림프성침윤존재여부구분코드';
COMMENT ON COLUMN gscn_exam_sgpt.lymp_inva_ex_yn_spnm IS '림프성침윤존재여부구분명';
COMMENT ON COLUMN gscn_exam_sgpt.vasc_inva_ex_yn_spcd IS '혈관성침윤존재여부구분코드';
COMMENT ON COLUMN gscn_exam_sgpt.vasc_inva_ex_yn_spnm IS '혈관성침윤존재여부구분명';
COMMENT ON COLUMN gscn_exam_sgpt.nerv_prex_ex_yn_spcd IS '신경주위침윤존재여부구분코드';
COMMENT ON COLUMN gscn_exam_sgpt.nerv_prex_ex_yn_spnm IS '신경주위침윤존재여부구분명';
COMMENT ON COLUMN gscn_exam_sgpt.oprt_pmrg_rlcr_invl_yn_spcd IS '수술근위절제면잔존암포함여부구분코드';
COMMENT ON COLUMN gscn_exam_sgpt.oprt_pmrg_rlcr_invl_yn_spnm IS '수술근위절제면잔존암포함여부구분명';
COMMENT ON COLUMN gscn_exam_sgpt.oprt_pmrg_size_vl IS '수술근위절제면크기값';
COMMENT ON COLUMN gscn_exam_sgpt.oprt_dmrg_rlcr_invl_yn_spcd IS '수술원위절제면잔존암포함여부구분코드';
COMMENT ON COLUMN gscn_exam_sgpt.oprt_dmrg_rlcr_invl_yn_spnm IS '수술원위절제면잔존암포함여부구분명';
COMMENT ON COLUMN gscn_exam_sgpt.oprt_dmrg_size_vl IS '수술원위절제면크기값';
COMMENT ON COLUMN gscn_exam_sgpt.stes_bnst_cncr_clcd IS '위식도경계부위암분류코드';
COMMENT ON COLUMN gscn_exam_sgpt.stes_bnst_cncr_clnm IS '위식도경계부위암분류명';
COMMENT ON COLUMN gscn_exam_sgpt.totl_ln_cnt IS '총림프절수';
COMMENT ON COLUMN gscn_exam_sgpt.pstv_ln_cnt IS '양성림프절수';
COMMENT ON COLUMN gscn_exam_sgpt.ln_bylc_mtst_cont IS '림프절위치별전이내용';
COMMENT ON COLUMN gscn_exam_sgpt.ajcc_yr IS 'AJCC년도';
COMMENT ON COLUMN gscn_exam_sgpt.afop_path_tnm_stag_vl IS '수술후병리TNM병기값';
COMMENT ON COLUMN gscn_exam_sgpt.afop_path_t_stag_vl IS '수술후병리T병기값';
COMMENT ON COLUMN gscn_exam_sgpt.afop_path_n_stag_vl IS '수술후병리N병기값';
COMMENT ON COLUMN gscn_exam_sgpt.afop_path_m_stag_vl IS '수술후병리M병기값';
COMMENT ON COLUMN gscn_exam_sgpt.esd_vmrg_rlcr_pstv_yn_spcd IS 'ESD수직절제면잔존암양성여부구분코드';
COMMENT ON COLUMN gscn_exam_sgpt.esd_vmrg_rlcr_pstv_yn_spnm IS 'ESD수직절제면잔존암양성여부구분명';
COMMENT ON COLUMN gscn_exam_sgpt.esd_vmrg_vl IS 'ESD수직절제면값';
COMMENT ON COLUMN gscn_exam_sgpt.esd_hmrg_rlcr_pstv_yn_spcd IS 'ESD수평절제면잔존암양성여부구분코드';
COMMENT ON COLUMN gscn_exam_sgpt.esd_hmrg_rlcr_pstv_yn_spnm IS 'ESD수평절제면잔존암양성여부구분명';
COMMENT ON COLUMN gscn_exam_sgpt.esd_hmrg_vl IS 'ESD수평절제면값';
COMMENT ON COLUMN gscn_exam_sgpt.esd_hmrg_rlcr_lnth_vl IS 'ESD수평절제면잔존암길이값';
COMMENT ON COLUMN gscn_exam_sgpt.crtn_dt IS '생성일시';


-- gscn_fuor_rlps definition

-- Drop table

-- DROP TABLE gscn_fuor_rlps;

CREATE TABLE gscn_fuor_rlps (
	hosp_cd varchar(20) NOT NULL, -- 병원코드
	pt_sbst_no varchar(10) NOT NULL, -- 환자대체번호
	rldg_ymd varchar(8) NOT NULL, -- 재발진단일자
	rldg_seq numeric(3) NOT NULL, -- 재발진단순번
	rldg_mtcd varchar(20) NULL, -- 재발진단방법코드
	rldg_mtnm varchar(200) NULL, -- 재발진단방법명
	rlps_site_cd varchar(20) NULL, -- 재발부위코드
	rlps_site_nm varchar(200) NULL, -- 재발부위명
	rlps_kncd varchar(20) NULL, -- 재발종류코드
	rlps_knnm varchar(200) NULL, -- 재발종류명
	rlps_trtm_cont varchar(4000) NULL, -- 재발치료내용
	crtn_dt timestamp NOT NULL, -- 생성일시
	CONSTRAINT gscn_fuor_rlps_pk PRIMARY KEY (hosp_cd, pt_sbst_no, rldg_ymd, rldg_seq)
);
COMMENT ON TABLE gscn_fuor_rlps IS '위암_추적관찰_재발';

-- Column comments

COMMENT ON COLUMN gscn_fuor_rlps.hosp_cd IS '병원코드';
COMMENT ON COLUMN gscn_fuor_rlps.pt_sbst_no IS '환자대체번호';
COMMENT ON COLUMN gscn_fuor_rlps.rldg_ymd IS '재발진단일자';
COMMENT ON COLUMN gscn_fuor_rlps.rldg_seq IS '재발진단순번';
COMMENT ON COLUMN gscn_fuor_rlps.rldg_mtcd IS '재발진단방법코드';
COMMENT ON COLUMN gscn_fuor_rlps.rldg_mtnm IS '재발진단방법명';
COMMENT ON COLUMN gscn_fuor_rlps.rlps_site_cd IS '재발부위코드';
COMMENT ON COLUMN gscn_fuor_rlps.rlps_site_nm IS '재발부위명';
COMMENT ON COLUMN gscn_fuor_rlps.rlps_kncd IS '재발종류코드';
COMMENT ON COLUMN gscn_fuor_rlps.rlps_knnm IS '재발종류명';
COMMENT ON COLUMN gscn_fuor_rlps.rlps_trtm_cont IS '재발치료내용';
COMMENT ON COLUMN gscn_fuor_rlps.crtn_dt IS '생성일시';


-- gscn_pt_fmht definition

-- Drop table

-- DROP TABLE gscn_pt_fmht;

CREATE TABLE gscn_pt_fmht (
	hosp_cd varchar(20) NOT NULL, -- 병원코드
	pt_sbst_no varchar(10) NOT NULL, -- 환자대체번호
	fmht_rcrd_ymd varchar(8) NOT NULL, -- 가족력기록일자
	fmht_rcrd_seq numeric(3) NOT NULL, -- 가족력기록순번
	fmht_yn_noans_spcd varchar(20) NULL, -- 가족력여부무응답구분코드
	fmht_yn_noans_spnm varchar(50) NULL, -- 가족력여부무응답구분명
	pt_fm_rlcd varchar(20) NULL, -- 환자가족관계코드
	pt_fm_rlnm varchar(200) NULL, -- 환자가족관계명
	pt_fmrl_etc_cont varchar(4000) NULL, -- 환자가족관계기타내용
	fmhs_htn_yn_noans_spcd varchar(20) NULL, -- 가족병력고혈압여부무응답구분코드
	fmhs_htn_yn_noans_spnm varchar(50) NULL, -- 가족병력고혈압여부무응답구분명
	fmhs_dbt_yn_noans_spcd varchar(20) NULL, -- 가족병력당뇨여부무응답구분코드
	fmhs_dbt_yn_noans_spnm varchar(50) NULL, -- 가족병력당뇨여부무응답구분명
	fmht_tb_yn_noans_spcd varchar(20) NULL, -- 가족력결핵여부무응답구분코드
	fmht_tb_yn_noans_spnm varchar(50) NULL, -- 가족력결핵여부무응답구분명
	fmhs_lvds_yn_noans_spcd varchar(20) NULL, -- 가족병력간질환여부무응답구분코드
	fmhs_lvds_yn_noans_spnm varchar(50) NULL, -- 가족병력간질환여부무응답구분명
	fmhs_cncr_yn_noans_spcd varchar(20) NULL, -- 가족병력암여부무응답구분코드
	fmhs_cncr_yn_noans_spnm varchar(50) NULL, -- 가족병력암여부무응답구분명
	fmht_cncr_kncd varchar(20) NULL, -- 가족력암종류코드
	fmht_cncr_knnm varchar(200) NULL, -- 가족력암종류명
	fmht_cncr_kind_etc_cont varchar(4000) NULL, -- 가족력암종류기타내용
	fmhs_etc_yn_noans_spcd varchar(20) NULL, -- 가족병력기타여부무응답구분코드
	fmhs_etc_yn_noans_spnm varchar(50) NULL, -- 가족병력기타여부무응답구분명
	fmhs_etc_cont varchar(4000) NULL, -- 가족병력기타내용
	crtn_dt timestamp NOT NULL, -- 생성일시
	CONSTRAINT gscn_pt_fmht_pk PRIMARY KEY (hosp_cd, pt_sbst_no, fmht_rcrd_ymd, fmht_rcrd_seq)
);
COMMENT ON TABLE gscn_pt_fmht IS '위암_환자_가족력';

-- Column comments

COMMENT ON COLUMN gscn_pt_fmht.hosp_cd IS '병원코드';
COMMENT ON COLUMN gscn_pt_fmht.pt_sbst_no IS '환자대체번호';
COMMENT ON COLUMN gscn_pt_fmht.fmht_rcrd_ymd IS '가족력기록일자';
COMMENT ON COLUMN gscn_pt_fmht.fmht_rcrd_seq IS '가족력기록순번';
COMMENT ON COLUMN gscn_pt_fmht.fmht_yn_noans_spcd IS '가족력여부무응답구분코드';
COMMENT ON COLUMN gscn_pt_fmht.fmht_yn_noans_spnm IS '가족력여부무응답구분명';
COMMENT ON COLUMN gscn_pt_fmht.pt_fm_rlcd IS '환자가족관계코드';
COMMENT ON COLUMN gscn_pt_fmht.pt_fm_rlnm IS '환자가족관계명';
COMMENT ON COLUMN gscn_pt_fmht.pt_fmrl_etc_cont IS '환자가족관계기타내용';
COMMENT ON COLUMN gscn_pt_fmht.fmhs_htn_yn_noans_spcd IS '가족병력고혈압여부무응답구분코드';
COMMENT ON COLUMN gscn_pt_fmht.fmhs_htn_yn_noans_spnm IS '가족병력고혈압여부무응답구분명';
COMMENT ON COLUMN gscn_pt_fmht.fmhs_dbt_yn_noans_spcd IS '가족병력당뇨여부무응답구분코드';
COMMENT ON COLUMN gscn_pt_fmht.fmhs_dbt_yn_noans_spnm IS '가족병력당뇨여부무응답구분명';
COMMENT ON COLUMN gscn_pt_fmht.fmht_tb_yn_noans_spcd IS '가족력결핵여부무응답구분코드';
COMMENT ON COLUMN gscn_pt_fmht.fmht_tb_yn_noans_spnm IS '가족력결핵여부무응답구분명';
COMMENT ON COLUMN gscn_pt_fmht.fmhs_lvds_yn_noans_spcd IS '가족병력간질환여부무응답구분코드';
COMMENT ON COLUMN gscn_pt_fmht.fmhs_lvds_yn_noans_spnm IS '가족병력간질환여부무응답구분명';
COMMENT ON COLUMN gscn_pt_fmht.fmhs_cncr_yn_noans_spcd IS '가족병력암여부무응답구분코드';
COMMENT ON COLUMN gscn_pt_fmht.fmhs_cncr_yn_noans_spnm IS '가족병력암여부무응답구분명';
COMMENT ON COLUMN gscn_pt_fmht.fmht_cncr_kncd IS '가족력암종류코드';
COMMENT ON COLUMN gscn_pt_fmht.fmht_cncr_knnm IS '가족력암종류명';
COMMENT ON COLUMN gscn_pt_fmht.fmht_cncr_kind_etc_cont IS '가족력암종류기타내용';
COMMENT ON COLUMN gscn_pt_fmht.fmhs_etc_yn_noans_spcd IS '가족병력기타여부무응답구분코드';
COMMENT ON COLUMN gscn_pt_fmht.fmhs_etc_yn_noans_spnm IS '가족병력기타여부무응답구분명';
COMMENT ON COLUMN gscn_pt_fmht.fmhs_etc_cont IS '가족병력기타내용';
COMMENT ON COLUMN gscn_pt_fmht.crtn_dt IS '생성일시';


-- gscn_pt_hlinf definition

-- Drop table

-- DROP TABLE gscn_pt_hlinf;

CREATE TABLE gscn_pt_hlinf (
	hosp_cd varchar(20) NOT NULL, -- 병원코드
	pt_sbst_no varchar(10) NOT NULL, -- 환자대체번호
	adm_ymd varchar(8) NOT NULL, -- 입원일자
	hlinf_seq numeric(3) NOT NULL, -- 건강정보순번
	dsch_ymd varchar(8) NULL, -- 퇴원일자
	cur_drnk_yn_noans_spcd varchar(20) NULL, -- 현재음주여부무응답구분코드
	cur_drnk_yn_noans_spnm varchar(50) NULL, -- 현재음주여부무응답구분명
	dhis_yn_noans_spcd varchar(20) NULL, -- 음주력여부무응답구분코드
	dhis_yn_noans_spnm varchar(50) NULL, -- 음주력여부무응답구분명
	drnk_strt_age_vl varchar(100) NULL, -- 음주시작연령값
	drnk_kncd varchar(20) NULL, -- 음주종류코드
	drnk_knnm varchar(200) NULL, -- 음주종류명
	drnk_qty varchar(100) NULL, -- 음주량
	drnk_nt varchar(100) NULL, -- 음주횟수
	drnk_dtrn_ycnt varchar(100) NULL, -- 음주기간년수
	ndrk_strt_yr varchar(4) NULL, -- 금주시작년도
	cur_smok_yn_noans_spcd varchar(100) NULL, -- 현재흡연여부무응답구분코드
	cur_smok_yn_noans_spnm varchar(50) NULL, -- 현재흡연여부무응답구분명
	shis_yn_noans_spcd varchar(20) NULL, -- 흡연력여부무응답구분코드
	shis_yn_noans_spnm varchar(50) NULL, -- 흡연력여부무응답구분명
	smok_strt_age_vl varchar(100) NULL, -- 흡연시작연령값
	smok_dtrn_ycnt varchar(100) NULL, -- 흡연기간년수
	smok_qty varchar(200) NULL, -- 흡연량
	nsmk_strt_yr varchar(4) NULL, -- 금연시작년도
	mhis_yn_noans_spcd varchar(20) NULL, -- 병력여부무응답구분코드
	mhis_yn_noans_spnm varchar(50) NULL, -- 병력여부무응답구분명
	mhis_hl_yn_noans_spcd varchar(20) NULL, -- 병력고지혈증여부무응답구분코드
	mhis_hl_yn_noans_spnm varchar(50) NULL, -- 병력고지혈증여부무응답구분명
	mhis_htn_yn_noans_spcd varchar(20) NULL, -- 병력고혈압여부무응답구분코드
	mhis_htn_yn_noans_spnm varchar(50) NULL, -- 병력고혈압여부무응답구분명
	mhis_dbt_yn_noans_spcd varchar(20) NULL, -- 병력당뇨여부무응답구분코드
	mhis_dbt_yn_noans_spnm varchar(50) NULL, -- 병력당뇨여부무응답구분명
	mhis_tb_yn_noans_spcd varchar(20) NULL, -- 병력결핵여부무응답구분코드
	mhis_tb_yn_noans_spnm varchar(50) NULL, -- 병력결핵여부무응답구분명
	mhis_lvds_yn_noans_spcd varchar(20) NULL, -- 병력간질환여부무응답구분코드
	mhis_lvds_yn_noans_spnm varchar(50) NULL, -- 병력간질환여부무응답구분명
	mhis_cncr_yn_noans_spcd varchar(20) NULL, -- 병력암여부무응답구분코드
	mhis_cncr_yn_noans_spnm varchar(50) NULL, -- 병력암여부무응답구분명
	mhis_cncr_kncd varchar(20) NULL, -- 병력암종류코드
	mhis_cncr_knnm varchar(200) NULL, -- 병력암종류명
	mhis_depr_yn_noans_spcd varchar(20) NULL, -- 병력우울증여부무응답구분코드
	mhis_depr_yn_noans_spnm varchar(50) NULL, -- 병력우울증여부무응답구분명
	mhis_insm_yn_noans_spcd varchar(20) NULL, -- 병력불면증여부무응답구분코드
	mhis_insm_yn_noans_spnm varchar(50) NULL, -- 병력불면증여부무응답구분명
	mhis_cads_yn_noans_spcd varchar(20) NULL, -- 병력심장질환여부무응답구분코드
	mhis_cads_yn_noans_spnm varchar(50) NULL, -- 병력심장질환여부무응답구분명
	etc_mhis_yn_noans_spcd varchar(20) NULL, -- 기타병력여부무응답구분코드
	etc_mhis_yn_noans_spnm varchar(50) NULL, -- 기타병력여부무응답구분명
	etc_mhis_diss_cont varchar(4000) NULL, -- 기타병력질환내용
	main_sym_cont varchar(4000) NULL, -- 주증상내용
	main_sym_yn_noans_spcd varchar(20) NULL, -- 주증상여부무응답구분코드
	main_sym_yn_noans_spnm varchar(50) NULL, -- 주증상여부무응답구분명
	ohad_hstr_yn_noans_spcd varchar(20) NULL, -- 타병원진단후전원여부무응답구분코드
	ohad_hstr_yn_noans_spnm varchar(50) NULL, -- 타병원진단후전원여부무응답구분명
	dsch_stcd varchar(20) NULL, -- 퇴원상태코드
	dsch_stnm varchar(200) NULL, -- 퇴원상태명
	crtn_dt timestamp NOT NULL, -- 생성일시
	CONSTRAINT gscn_pt_hlinf_pk PRIMARY KEY (hosp_cd, pt_sbst_no, adm_ymd, hlinf_seq)
);
COMMENT ON TABLE gscn_pt_hlinf IS '위암_환자_건강정보';

-- Column comments

COMMENT ON COLUMN gscn_pt_hlinf.hosp_cd IS '병원코드';
COMMENT ON COLUMN gscn_pt_hlinf.pt_sbst_no IS '환자대체번호';
COMMENT ON COLUMN gscn_pt_hlinf.adm_ymd IS '입원일자';
COMMENT ON COLUMN gscn_pt_hlinf.hlinf_seq IS '건강정보순번';
COMMENT ON COLUMN gscn_pt_hlinf.dsch_ymd IS '퇴원일자';
COMMENT ON COLUMN gscn_pt_hlinf.cur_drnk_yn_noans_spcd IS '현재음주여부무응답구분코드';
COMMENT ON COLUMN gscn_pt_hlinf.cur_drnk_yn_noans_spnm IS '현재음주여부무응답구분명';
COMMENT ON COLUMN gscn_pt_hlinf.dhis_yn_noans_spcd IS '음주력여부무응답구분코드';
COMMENT ON COLUMN gscn_pt_hlinf.dhis_yn_noans_spnm IS '음주력여부무응답구분명';
COMMENT ON COLUMN gscn_pt_hlinf.drnk_strt_age_vl IS '음주시작연령값';
COMMENT ON COLUMN gscn_pt_hlinf.drnk_kncd IS '음주종류코드';
COMMENT ON COLUMN gscn_pt_hlinf.drnk_knnm IS '음주종류명';
COMMENT ON COLUMN gscn_pt_hlinf.drnk_qty IS '음주량';
COMMENT ON COLUMN gscn_pt_hlinf.drnk_nt IS '음주횟수';
COMMENT ON COLUMN gscn_pt_hlinf.drnk_dtrn_ycnt IS '음주기간년수';
COMMENT ON COLUMN gscn_pt_hlinf.ndrk_strt_yr IS '금주시작년도';
COMMENT ON COLUMN gscn_pt_hlinf.cur_smok_yn_noans_spcd IS '현재흡연여부무응답구분코드';
COMMENT ON COLUMN gscn_pt_hlinf.cur_smok_yn_noans_spnm IS '현재흡연여부무응답구분명';
COMMENT ON COLUMN gscn_pt_hlinf.shis_yn_noans_spcd IS '흡연력여부무응답구분코드';
COMMENT ON COLUMN gscn_pt_hlinf.shis_yn_noans_spnm IS '흡연력여부무응답구분명';
COMMENT ON COLUMN gscn_pt_hlinf.smok_strt_age_vl IS '흡연시작연령값';
COMMENT ON COLUMN gscn_pt_hlinf.smok_dtrn_ycnt IS '흡연기간년수';
COMMENT ON COLUMN gscn_pt_hlinf.smok_qty IS '흡연량';
COMMENT ON COLUMN gscn_pt_hlinf.nsmk_strt_yr IS '금연시작년도';
COMMENT ON COLUMN gscn_pt_hlinf.mhis_yn_noans_spcd IS '병력여부무응답구분코드';
COMMENT ON COLUMN gscn_pt_hlinf.mhis_yn_noans_spnm IS '병력여부무응답구분명';
COMMENT ON COLUMN gscn_pt_hlinf.mhis_hl_yn_noans_spcd IS '병력고지혈증여부무응답구분코드';
COMMENT ON COLUMN gscn_pt_hlinf.mhis_hl_yn_noans_spnm IS '병력고지혈증여부무응답구분명';
COMMENT ON COLUMN gscn_pt_hlinf.mhis_htn_yn_noans_spcd IS '병력고혈압여부무응답구분코드';
COMMENT ON COLUMN gscn_pt_hlinf.mhis_htn_yn_noans_spnm IS '병력고혈압여부무응답구분명';
COMMENT ON COLUMN gscn_pt_hlinf.mhis_dbt_yn_noans_spcd IS '병력당뇨여부무응답구분코드';
COMMENT ON COLUMN gscn_pt_hlinf.mhis_dbt_yn_noans_spnm IS '병력당뇨여부무응답구분명';
COMMENT ON COLUMN gscn_pt_hlinf.mhis_tb_yn_noans_spcd IS '병력결핵여부무응답구분코드';
COMMENT ON COLUMN gscn_pt_hlinf.mhis_tb_yn_noans_spnm IS '병력결핵여부무응답구분명';
COMMENT ON COLUMN gscn_pt_hlinf.mhis_lvds_yn_noans_spcd IS '병력간질환여부무응답구분코드';
COMMENT ON COLUMN gscn_pt_hlinf.mhis_lvds_yn_noans_spnm IS '병력간질환여부무응답구분명';
COMMENT ON COLUMN gscn_pt_hlinf.mhis_cncr_yn_noans_spcd IS '병력암여부무응답구분코드';
COMMENT ON COLUMN gscn_pt_hlinf.mhis_cncr_yn_noans_spnm IS '병력암여부무응답구분명';
COMMENT ON COLUMN gscn_pt_hlinf.mhis_cncr_kncd IS '병력암종류코드';
COMMENT ON COLUMN gscn_pt_hlinf.mhis_cncr_knnm IS '병력암종류명';
COMMENT ON COLUMN gscn_pt_hlinf.mhis_depr_yn_noans_spcd IS '병력우울증여부무응답구분코드';
COMMENT ON COLUMN gscn_pt_hlinf.mhis_depr_yn_noans_spnm IS '병력우울증여부무응답구분명';
COMMENT ON COLUMN gscn_pt_hlinf.mhis_insm_yn_noans_spcd IS '병력불면증여부무응답구분코드';
COMMENT ON COLUMN gscn_pt_hlinf.mhis_insm_yn_noans_spnm IS '병력불면증여부무응답구분명';
COMMENT ON COLUMN gscn_pt_hlinf.mhis_cads_yn_noans_spcd IS '병력심장질환여부무응답구분코드';
COMMENT ON COLUMN gscn_pt_hlinf.mhis_cads_yn_noans_spnm IS '병력심장질환여부무응답구분명';
COMMENT ON COLUMN gscn_pt_hlinf.etc_mhis_yn_noans_spcd IS '기타병력여부무응답구분코드';
COMMENT ON COLUMN gscn_pt_hlinf.etc_mhis_yn_noans_spnm IS '기타병력여부무응답구분명';
COMMENT ON COLUMN gscn_pt_hlinf.etc_mhis_diss_cont IS '기타병력질환내용';
COMMENT ON COLUMN gscn_pt_hlinf.main_sym_cont IS '주증상내용';
COMMENT ON COLUMN gscn_pt_hlinf.main_sym_yn_noans_spcd IS '주증상여부무응답구분코드';
COMMENT ON COLUMN gscn_pt_hlinf.main_sym_yn_noans_spnm IS '주증상여부무응답구분명';
COMMENT ON COLUMN gscn_pt_hlinf.ohad_hstr_yn_noans_spcd IS '타병원진단후전원여부무응답구분코드';
COMMENT ON COLUMN gscn_pt_hlinf.ohad_hstr_yn_noans_spnm IS '타병원진단후전원여부무응답구분명';
COMMENT ON COLUMN gscn_pt_hlinf.dsch_stcd IS '퇴원상태코드';
COMMENT ON COLUMN gscn_pt_hlinf.dsch_stnm IS '퇴원상태명';
COMMENT ON COLUMN gscn_pt_hlinf.crtn_dt IS '생성일시';


-- gscn_trtm_antp definition

-- Drop table

-- DROP TABLE gscn_trtm_antp;

CREATE TABLE gscn_trtm_antp (
	hosp_cd varchar(20) NOT NULL, -- 병원코드
	pt_sbst_no varchar(10) NOT NULL, -- 환자대체번호
	antp_strt_ymd varchar(8) NOT NULL, -- 항암요법시작일자
	antp_seq numeric(3) NOT NULL, -- 항암요법순번
	antp_end_ymd varchar(8) NULL, -- 항암요법종료일자
	antp_line_cnt numeric(3) NULL, -- 항암요법라인수
	antp_totl_cycl_cnt numeric(3) NULL, -- 항암요법총주기수
	antp_trtm_prps_cd varchar(20) NULL, -- 항암요법치료목적코드
	antp_trtm_prps_nm varchar(200) NULL, -- 항암요법치료목적명
	antp_nm varchar(200) NULL, -- 항암요법명
	antp_temp_stop_yn_unid_spcd varchar(20) NULL, -- 항암요법임시중단여부확인불가구분코드
	antp_temp_stop_yn_unid_spnm varchar(50) NULL, -- 항암요법임시중단여부확인불가구분명
	antp_end_resn_cd varchar(20) NULL, -- 항암요법종료이유코드
	antp_end_resn_nm varchar(200) NULL, -- 항암요법종료이유명
	antp_asmt_ymd varchar(8) NULL, -- 항암요법평가일자
	antp_asmt_item_cd varchar(20) NULL, -- 항암요법평가항목코드
	antp_asmt_item_nm varchar(200) NULL, -- 항암요법평가항목명
	antp_seff_cd varchar(20) NULL, -- 항암요법부작용코드
	antp_seff_nm varchar(200) NULL, -- 항암요법부작용명
	antp_seff_grcd varchar(20) NULL, -- 항암요법부작용등급코드
	antp_seff_grnm varchar(200) NULL, -- 항암요법부작용등급명
	crtn_dt timestamp NOT NULL, -- 생성일시
	CONSTRAINT gscn_trtm_antp_pk PRIMARY KEY (hosp_cd, pt_sbst_no, antp_strt_ymd, antp_seq)
);
COMMENT ON TABLE gscn_trtm_antp IS '위암_치료_항암요법';

-- Column comments

COMMENT ON COLUMN gscn_trtm_antp.hosp_cd IS '병원코드';
COMMENT ON COLUMN gscn_trtm_antp.pt_sbst_no IS '환자대체번호';
COMMENT ON COLUMN gscn_trtm_antp.antp_strt_ymd IS '항암요법시작일자';
COMMENT ON COLUMN gscn_trtm_antp.antp_seq IS '항암요법순번';
COMMENT ON COLUMN gscn_trtm_antp.antp_end_ymd IS '항암요법종료일자';
COMMENT ON COLUMN gscn_trtm_antp.antp_line_cnt IS '항암요법라인수';
COMMENT ON COLUMN gscn_trtm_antp.antp_totl_cycl_cnt IS '항암요법총주기수';
COMMENT ON COLUMN gscn_trtm_antp.antp_trtm_prps_cd IS '항암요법치료목적코드';
COMMENT ON COLUMN gscn_trtm_antp.antp_trtm_prps_nm IS '항암요법치료목적명';
COMMENT ON COLUMN gscn_trtm_antp.antp_nm IS '항암요법명';
COMMENT ON COLUMN gscn_trtm_antp.antp_temp_stop_yn_unid_spcd IS '항암요법임시중단여부확인불가구분코드';
COMMENT ON COLUMN gscn_trtm_antp.antp_temp_stop_yn_unid_spnm IS '항암요법임시중단여부확인불가구분명';
COMMENT ON COLUMN gscn_trtm_antp.antp_end_resn_cd IS '항암요법종료이유코드';
COMMENT ON COLUMN gscn_trtm_antp.antp_end_resn_nm IS '항암요법종료이유명';
COMMENT ON COLUMN gscn_trtm_antp.antp_asmt_ymd IS '항암요법평가일자';
COMMENT ON COLUMN gscn_trtm_antp.antp_asmt_item_cd IS '항암요법평가항목코드';
COMMENT ON COLUMN gscn_trtm_antp.antp_asmt_item_nm IS '항암요법평가항목명';
COMMENT ON COLUMN gscn_trtm_antp.antp_seff_cd IS '항암요법부작용코드';
COMMENT ON COLUMN gscn_trtm_antp.antp_seff_nm IS '항암요법부작용명';
COMMENT ON COLUMN gscn_trtm_antp.antp_seff_grcd IS '항암요법부작용등급코드';
COMMENT ON COLUMN gscn_trtm_antp.antp_seff_grnm IS '항암요법부작용등급명';
COMMENT ON COLUMN gscn_trtm_antp.crtn_dt IS '생성일시';


-- gscn_trtm_bltr definition

-- Drop table

-- DROP TABLE gscn_trtm_bltr;

CREATE TABLE gscn_trtm_bltr (
	hosp_cd varchar(20) NOT NULL, -- 병원코드
	pt_sbst_no varchar(10) NOT NULL, -- 환자대체번호
	bltr_prsc_ymd varchar(8) NOT NULL, -- 수혈처방일자
	bltr_prsc_seq numeric(3) NOT NULL, -- 수혈처방순번
	blpt_kncd varchar(20) NULL, -- 혈액제제종류코드
	blpt_knnm varchar(200) NULL, -- 혈액제제종류명
	blpt_cd varchar(20) NULL, -- 혈액제제코드
	blpt_nm varchar(200) NULL, -- 혈액제제명
	bltr_pack_cnt numeric(3) NULL, -- 수혈팩수
	bltr_totl_qty numeric(8) NULL, -- 수혈총량
	crtn_dt timestamp NOT NULL, -- 생성일시
	CONSTRAINT gscn_trtm_bltr_pk PRIMARY KEY (hosp_cd, pt_sbst_no, bltr_prsc_ymd, bltr_prsc_seq)
);
COMMENT ON TABLE gscn_trtm_bltr IS '위암_치료_수혈';

-- Column comments

COMMENT ON COLUMN gscn_trtm_bltr.hosp_cd IS '병원코드';
COMMENT ON COLUMN gscn_trtm_bltr.pt_sbst_no IS '환자대체번호';
COMMENT ON COLUMN gscn_trtm_bltr.bltr_prsc_ymd IS '수혈처방일자';
COMMENT ON COLUMN gscn_trtm_bltr.bltr_prsc_seq IS '수혈처방순번';
COMMENT ON COLUMN gscn_trtm_bltr.blpt_kncd IS '혈액제제종류코드';
COMMENT ON COLUMN gscn_trtm_bltr.blpt_knnm IS '혈액제제종류명';
COMMENT ON COLUMN gscn_trtm_bltr.blpt_cd IS '혈액제제코드';
COMMENT ON COLUMN gscn_trtm_bltr.blpt_nm IS '혈액제제명';
COMMENT ON COLUMN gscn_trtm_bltr.bltr_pack_cnt IS '수혈팩수';
COMMENT ON COLUMN gscn_trtm_bltr.bltr_totl_qty IS '수혈총량';
COMMENT ON COLUMN gscn_trtm_bltr.crtn_dt IS '생성일시';


-- gscn_trtm_drin definition

-- Drop table

-- DROP TABLE gscn_trtm_drin;

CREATE TABLE gscn_trtm_drin (
	hosp_cd varchar(20) NOT NULL, -- 병원코드
	pt_sbst_no varchar(10) NOT NULL, -- 환자대체번호
	drug_prsc_ymd varchar(8) NOT NULL, -- 약제처방일자
	drug_prsc_seq numeric(3) NOT NULL, -- 약제처방순번
	drug_clcd varchar(20) NULL, -- 약제분류코드
	drug_clnm varchar(200) NULL, -- 약제분류명
	drug_spcd varchar(20) NULL, -- 약제구분코드
	drug_spnm varchar(200) NULL, -- 약제구분명
	drin_kncd varchar(20) NULL, -- 약제성분종류코드
	drin_knnm varchar(200) NULL, -- 약제성분종류명
	drin_cd varchar(20) NULL, -- 약제성분코드
	drin_nm varchar(200) NULL, -- 약제성분명
	drin_smct_cd varchar(200) NULL, -- 약제성분SNOMEDCT코드
	drin_smct_nm varchar(1000) NULL, -- 약제성분SNOMEDCT명
	drug_cd varchar(20) NULL, -- 약제코드
	drug_nm varchar(200) NULL, -- 약제명
	drug_edi_cd varchar(20) NULL, -- 약제EDI코드
	drug_edi_nm varchar(200) NULL, -- 약제EDI명
	drug_atc_cd varchar(20) NULL, -- 약제ATC코드
	drug_atc_nm varchar(200) NULL, -- 약제ATC명
	drug_rxnm_cd varchar(20) NULL, -- 약제RXNORM코드
	drug_rxnm_nm varchar(200) NULL, -- 약제RXNORM명
	drug_prsc_capa varchar(50) NULL, -- 약제처방용량
	drug_prsc_dcnt numeric(6) NULL, -- 약제처방일수
	drug_injc_pth_cd varchar(20) NULL, -- 약제투여경로코드
	drug_injc_pth_nm varchar(200) NULL, -- 약제투여경로명
	drug_prsc_capa_unit_cd varchar(20) NULL, -- 약제처방용량단위코드
	drug_prsc_capa_unit_nm varchar(200) NULL, -- 약제처방용량단위명
	drug_mdct_dtrn_mcnt numeric(10, 3) NULL, -- 약제투약기간월수
	crtn_dt timestamp NOT NULL, -- 생성일시
	CONSTRAINT gscn_trtm_drin_pk PRIMARY KEY (hosp_cd, pt_sbst_no, drug_prsc_ymd, drug_prsc_seq)
);
COMMENT ON TABLE gscn_trtm_drin IS '위암_치료_약제성분';

-- Column comments

COMMENT ON COLUMN gscn_trtm_drin.hosp_cd IS '병원코드';
COMMENT ON COLUMN gscn_trtm_drin.pt_sbst_no IS '환자대체번호';
COMMENT ON COLUMN gscn_trtm_drin.drug_prsc_ymd IS '약제처방일자';
COMMENT ON COLUMN gscn_trtm_drin.drug_prsc_seq IS '약제처방순번';
COMMENT ON COLUMN gscn_trtm_drin.drug_clcd IS '약제분류코드';
COMMENT ON COLUMN gscn_trtm_drin.drug_clnm IS '약제분류명';
COMMENT ON COLUMN gscn_trtm_drin.drug_spcd IS '약제구분코드';
COMMENT ON COLUMN gscn_trtm_drin.drug_spnm IS '약제구분명';
COMMENT ON COLUMN gscn_trtm_drin.drin_kncd IS '약제성분종류코드';
COMMENT ON COLUMN gscn_trtm_drin.drin_knnm IS '약제성분종류명';
COMMENT ON COLUMN gscn_trtm_drin.drin_cd IS '약제성분코드';
COMMENT ON COLUMN gscn_trtm_drin.drin_nm IS '약제성분명';
COMMENT ON COLUMN gscn_trtm_drin.drin_smct_cd IS '약제성분SNOMEDCT코드';
COMMENT ON COLUMN gscn_trtm_drin.drin_smct_nm IS '약제성분SNOMEDCT명';
COMMENT ON COLUMN gscn_trtm_drin.drug_cd IS '약제코드';
COMMENT ON COLUMN gscn_trtm_drin.drug_nm IS '약제명';
COMMENT ON COLUMN gscn_trtm_drin.drug_edi_cd IS '약제EDI코드';
COMMENT ON COLUMN gscn_trtm_drin.drug_edi_nm IS '약제EDI명';
COMMENT ON COLUMN gscn_trtm_drin.drug_atc_cd IS '약제ATC코드';
COMMENT ON COLUMN gscn_trtm_drin.drug_atc_nm IS '약제ATC명';
COMMENT ON COLUMN gscn_trtm_drin.drug_rxnm_cd IS '약제RXNORM코드';
COMMENT ON COLUMN gscn_trtm_drin.drug_rxnm_nm IS '약제RXNORM명';
COMMENT ON COLUMN gscn_trtm_drin.drug_prsc_capa IS '약제처방용량';
COMMENT ON COLUMN gscn_trtm_drin.drug_prsc_dcnt IS '약제처방일수';
COMMENT ON COLUMN gscn_trtm_drin.drug_injc_pth_cd IS '약제투여경로코드';
COMMENT ON COLUMN gscn_trtm_drin.drug_injc_pth_nm IS '약제투여경로명';
COMMENT ON COLUMN gscn_trtm_drin.drug_prsc_capa_unit_cd IS '약제처방용량단위코드';
COMMENT ON COLUMN gscn_trtm_drin.drug_prsc_capa_unit_nm IS '약제처방용량단위명';
COMMENT ON COLUMN gscn_trtm_drin.drug_mdct_dtrn_mcnt IS '약제투약기간월수';
COMMENT ON COLUMN gscn_trtm_drin.crtn_dt IS '생성일시';


-- gscn_trtm_oprt definition

-- Drop table

-- DROP TABLE gscn_trtm_oprt;

CREATE TABLE gscn_trtm_oprt (
	hosp_cd varchar(20) NOT NULL, -- 병원코드
	pt_sbst_no varchar(10) NOT NULL, -- 환자대체번호
	oprt_ymd varchar(8) NOT NULL, -- 수술일자
	oprt_seq numeric(3) NOT NULL, -- 수술순번
	oprt_kncd varchar(20) NULL, -- 수술종류코드
	oprt_knnm varchar(200) NULL, -- 수술종류명
	oprt_cd varchar(20) NULL, -- 수술코드
	oprt_nm varchar(500) NULL, -- 수술명
	oprt_edi_cd varchar(20) NULL, -- 수술EDI코드
	oprt_edi_nm varchar(200) NULL, -- 수술EDI명
	oprt_smct_cd varchar(200) NULL, -- 수술SNOMEDCT코드
	oprt_smct_nm varchar(1000) NULL, -- 수술SNOMEDCT명
	oprt_icd9cm_cd varchar(20) NULL, -- 수술ICD9CM코드
	oprt_icd9cm_nm varchar(1000) NULL, -- 수술ICD9CM명
	oprt_ldtm varchar(20) NULL, -- 수술소요시간
	oprt_prps_cd varchar(20) NULL, -- 수술목적코드
	oprt_prps_nm varchar(200) NULL, -- 수술목적명
	oprt_mtcd varchar(20) NULL, -- 수술방법코드
	oprt_mtnm varchar(200) NULL, -- 수술방법명
	oprt_anst_site_cd varchar(20) NULL, -- 수술마취부위코드
	oprt_anst_site_nm varchar(200) NULL, -- 수술마취부위명
	asa_scor_cd varchar(20) NULL, -- ASA점수코드
	asa_scor_nm varchar(200) NULL, -- ASA점수명
	oprt_incs_mtcd varchar(20) NULL, -- 수술절개방법코드
	oprt_incs_mtnm varchar(200) NULL, -- 수술절개방법명
	oprt_crmr_tumr_loca_cd varchar(20) NULL, -- 수술둘레방향종양위치코드
	oprt_crmr_tumr_loca_nm varchar(200) NULL, -- 수술둘레방향종양위치명
	oprt_lngt_1_tumr_loca_cd varchar(20) NULL, -- 수술종방향1종양위치코드
	oprt_lngt_1_tumr_loca_nm varchar(200) NULL, -- 수술종방향1종양위치명
	oprt_lngt_2_tumr_loca_cd varchar(20) NULL, -- 수술종방향2종양위치코드
	oprt_lngt_2_tumr_loca_nm varchar(200) NULL, -- 수술종방향2종양위치명
	diag_lpex_yn_unid_spcd varchar(20) NULL, -- 진단복강경검사여부확인불가구분코드
	diag_lpex_yn_unid_spnm varchar(50) NULL, -- 진단복강경검사여부확인불가구분명
	oprm_ensp_use_yn_unid_spcd varchar(20) NULL, -- 수술장내시경사용여부확인불가구분코드
	oprm_ensp_use_yn_unid_spnm varchar(50) NULL, -- 수술장내시경사용여부확인불가구분명
	flrn_imag_use_yn_unid_spcd varchar(20) NULL, -- 형광영상사용여부확인불가구분코드
	flrn_imag_use_yn_unid_spnm varchar(50) NULL, -- 형광영상사용여부확인불가구분명
	inop_antp_cd varchar(20) NULL, -- 수술시항암요법코드
	inop_antp_nm varchar(200) NULL, -- 수술시항암요법명
	adh_ibtr_use_yn_unid_spcd varchar(20) NULL, -- 유착방지제사용여부확인불가구분코드
	adh_ibtr_use_yn_unid_spnm varchar(50) NULL, -- 유착방지제사용여부확인불가구분명
	adh_ibtr_gods_nm varchar(200) NULL, -- 유착방지제제품명
	omnl_srmv_rang_cd varchar(20) NULL, -- 그물막절제범위코드
	omnl_srmv_rang_nm varchar(200) NULL, -- 그물막절제범위명
	curdg_cd varchar(20) NULL, -- 근치도코드
	curdg_nm varchar(200) NULL, -- 근치도명
	ln_srmv_dgre_cd varchar(20) NULL, -- 림프절절제정도코드
	ln_srmv_dgre_nm varchar(200) NULL, -- 림프절절제정도명
	ln_srmv_dgre_detl_cont varchar(4000) NULL, -- 림프절절제정도상세내용
	mrge_srmv_site_cd varchar(20) NULL, -- 합병절제부위코드
	mrge_srmv_site_nm varchar(200) NULL, -- 합병절제부위명
	repr_kncd varchar(20) NULL, -- 재건술종류코드
	repr_knnm varchar(200) NULL, -- 재건술종류명
	repr_use_dvce_nm varchar(200) NULL, -- 재건술사용도구명
	repr_mtcd varchar(20) NULL, -- 재건술방법코드
	repr_mtnm varchar(200) NULL, -- 재건술방법명
	repr_aprmthd_cd varchar(20) NULL, -- 재건술접근법코드
	repr_aprmthd_nm varchar(200) NULL, -- 재건술접근법명
	oprt_ebl_qty numeric(5) NULL, -- 수술추정실혈량
	asct_yn_unid_spcd varchar(20) NULL, -- 복수여부확인불가구분코드
	asct_yn_unid_spnm varchar(50) NULL, -- 복수여부확인불가구분명
	crtn_dt timestamp NOT NULL, -- 생성일시
	CONSTRAINT gscn_trtm_oprt_pk PRIMARY KEY (hosp_cd, pt_sbst_no, oprt_ymd, oprt_seq)
);
COMMENT ON TABLE gscn_trtm_oprt IS '위암_치료_수술';

-- Column comments

COMMENT ON COLUMN gscn_trtm_oprt.hosp_cd IS '병원코드';
COMMENT ON COLUMN gscn_trtm_oprt.pt_sbst_no IS '환자대체번호';
COMMENT ON COLUMN gscn_trtm_oprt.oprt_ymd IS '수술일자';
COMMENT ON COLUMN gscn_trtm_oprt.oprt_seq IS '수술순번';
COMMENT ON COLUMN gscn_trtm_oprt.oprt_kncd IS '수술종류코드';
COMMENT ON COLUMN gscn_trtm_oprt.oprt_knnm IS '수술종류명';
COMMENT ON COLUMN gscn_trtm_oprt.oprt_cd IS '수술코드';
COMMENT ON COLUMN gscn_trtm_oprt.oprt_nm IS '수술명';
COMMENT ON COLUMN gscn_trtm_oprt.oprt_edi_cd IS '수술EDI코드';
COMMENT ON COLUMN gscn_trtm_oprt.oprt_edi_nm IS '수술EDI명';
COMMENT ON COLUMN gscn_trtm_oprt.oprt_smct_cd IS '수술SNOMEDCT코드';
COMMENT ON COLUMN gscn_trtm_oprt.oprt_smct_nm IS '수술SNOMEDCT명';
COMMENT ON COLUMN gscn_trtm_oprt.oprt_icd9cm_cd IS '수술ICD9CM코드';
COMMENT ON COLUMN gscn_trtm_oprt.oprt_icd9cm_nm IS '수술ICD9CM명';
COMMENT ON COLUMN gscn_trtm_oprt.oprt_ldtm IS '수술소요시간';
COMMENT ON COLUMN gscn_trtm_oprt.oprt_prps_cd IS '수술목적코드';
COMMENT ON COLUMN gscn_trtm_oprt.oprt_prps_nm IS '수술목적명';
COMMENT ON COLUMN gscn_trtm_oprt.oprt_mtcd IS '수술방법코드';
COMMENT ON COLUMN gscn_trtm_oprt.oprt_mtnm IS '수술방법명';
COMMENT ON COLUMN gscn_trtm_oprt.oprt_anst_site_cd IS '수술마취부위코드';
COMMENT ON COLUMN gscn_trtm_oprt.oprt_anst_site_nm IS '수술마취부위명';
COMMENT ON COLUMN gscn_trtm_oprt.asa_scor_cd IS 'ASA점수코드';
COMMENT ON COLUMN gscn_trtm_oprt.asa_scor_nm IS 'ASA점수명';
COMMENT ON COLUMN gscn_trtm_oprt.oprt_incs_mtcd IS '수술절개방법코드';
COMMENT ON COLUMN gscn_trtm_oprt.oprt_incs_mtnm IS '수술절개방법명';
COMMENT ON COLUMN gscn_trtm_oprt.oprt_crmr_tumr_loca_cd IS '수술둘레방향종양위치코드';
COMMENT ON COLUMN gscn_trtm_oprt.oprt_crmr_tumr_loca_nm IS '수술둘레방향종양위치명';
COMMENT ON COLUMN gscn_trtm_oprt.oprt_lngt_1_tumr_loca_cd IS '수술종방향1종양위치코드';
COMMENT ON COLUMN gscn_trtm_oprt.oprt_lngt_1_tumr_loca_nm IS '수술종방향1종양위치명';
COMMENT ON COLUMN gscn_trtm_oprt.oprt_lngt_2_tumr_loca_cd IS '수술종방향2종양위치코드';
COMMENT ON COLUMN gscn_trtm_oprt.oprt_lngt_2_tumr_loca_nm IS '수술종방향2종양위치명';
COMMENT ON COLUMN gscn_trtm_oprt.diag_lpex_yn_unid_spcd IS '진단복강경검사여부확인불가구분코드';
COMMENT ON COLUMN gscn_trtm_oprt.diag_lpex_yn_unid_spnm IS '진단복강경검사여부확인불가구분명';
COMMENT ON COLUMN gscn_trtm_oprt.oprm_ensp_use_yn_unid_spcd IS '수술장내시경사용여부확인불가구분코드';
COMMENT ON COLUMN gscn_trtm_oprt.oprm_ensp_use_yn_unid_spnm IS '수술장내시경사용여부확인불가구분명';
COMMENT ON COLUMN gscn_trtm_oprt.flrn_imag_use_yn_unid_spcd IS '형광영상사용여부확인불가구분코드';
COMMENT ON COLUMN gscn_trtm_oprt.flrn_imag_use_yn_unid_spnm IS '형광영상사용여부확인불가구분명';
COMMENT ON COLUMN gscn_trtm_oprt.inop_antp_cd IS '수술시항암요법코드';
COMMENT ON COLUMN gscn_trtm_oprt.inop_antp_nm IS '수술시항암요법명';
COMMENT ON COLUMN gscn_trtm_oprt.adh_ibtr_use_yn_unid_spcd IS '유착방지제사용여부확인불가구분코드';
COMMENT ON COLUMN gscn_trtm_oprt.adh_ibtr_use_yn_unid_spnm IS '유착방지제사용여부확인불가구분명';
COMMENT ON COLUMN gscn_trtm_oprt.adh_ibtr_gods_nm IS '유착방지제제품명';
COMMENT ON COLUMN gscn_trtm_oprt.omnl_srmv_rang_cd IS '그물막절제범위코드';
COMMENT ON COLUMN gscn_trtm_oprt.omnl_srmv_rang_nm IS '그물막절제범위명';
COMMENT ON COLUMN gscn_trtm_oprt.curdg_cd IS '근치도코드';
COMMENT ON COLUMN gscn_trtm_oprt.curdg_nm IS '근치도명';
COMMENT ON COLUMN gscn_trtm_oprt.ln_srmv_dgre_cd IS '림프절절제정도코드';
COMMENT ON COLUMN gscn_trtm_oprt.ln_srmv_dgre_nm IS '림프절절제정도명';
COMMENT ON COLUMN gscn_trtm_oprt.ln_srmv_dgre_detl_cont IS '림프절절제정도상세내용';
COMMENT ON COLUMN gscn_trtm_oprt.mrge_srmv_site_cd IS '합병절제부위코드';
COMMENT ON COLUMN gscn_trtm_oprt.mrge_srmv_site_nm IS '합병절제부위명';
COMMENT ON COLUMN gscn_trtm_oprt.repr_kncd IS '재건술종류코드';
COMMENT ON COLUMN gscn_trtm_oprt.repr_knnm IS '재건술종류명';
COMMENT ON COLUMN gscn_trtm_oprt.repr_use_dvce_nm IS '재건술사용도구명';
COMMENT ON COLUMN gscn_trtm_oprt.repr_mtcd IS '재건술방법코드';
COMMENT ON COLUMN gscn_trtm_oprt.repr_mtnm IS '재건술방법명';
COMMENT ON COLUMN gscn_trtm_oprt.repr_aprmthd_cd IS '재건술접근법코드';
COMMENT ON COLUMN gscn_trtm_oprt.repr_aprmthd_nm IS '재건술접근법명';
COMMENT ON COLUMN gscn_trtm_oprt.oprt_ebl_qty IS '수술추정실혈량';
COMMENT ON COLUMN gscn_trtm_oprt.asct_yn_unid_spcd IS '복수여부확인불가구분코드';
COMMENT ON COLUMN gscn_trtm_oprt.asct_yn_unid_spnm IS '복수여부확인불가구분명';
COMMENT ON COLUMN gscn_trtm_oprt.crtn_dt IS '생성일시';


-- gscn_trtm_rd definition

-- Drop table

-- DROP TABLE gscn_trtm_rd;

CREATE TABLE gscn_trtm_rd (
	hosp_cd varchar(20) NOT NULL, -- 병원코드
	pt_sbst_no varchar(10) NOT NULL, -- 환자대체번호
	rdt_prsc_ymd varchar(8) NOT NULL, -- 방사선치료처방일자
	rdt_prsc_seq numeric(3) NOT NULL, -- 방사선치료처방순번
	rdt_kncd varchar(20) NULL, -- 방사선치료종류코드
	rdt_knnm varchar(200) NULL, -- 방사선치료종류명
	rdt_cd varchar(20) NULL, -- 방사선치료코드
	rdt_nm varchar(200) NULL, -- 방사선치료명
	rdt_edi_cd varchar(20) NULL, -- 방사선치료EDI코드
	rdt_edi_nm varchar(200) NULL, -- 방사선치료EDI명
	rdt_smct_cd varchar(200) NULL, -- 방사선치료SNOMEDCT코드
	rdt_smct_nm varchar(1000) NULL, -- 방사선치료SNOMEDCT명
	rdt_prps_cd varchar(20) NULL, -- 방사선치료목적코드
	rdt_prps_nm varchar(200) NULL, -- 방사선치료목적명
	rdt_site_cd varchar(20) NULL, -- 방사선치료부위코드
	rdt_site_nm varchar(200) NULL, -- 방사선치료부위명
	byst_rd_impl_nt numeric(3) NULL, -- 부위별방사선시행횟수
	rd_gy numeric(10, 3) NULL, -- 방사선선량
	byst_rd_totl_gy numeric(10, 3) NULL, -- 부위별방사선총선량
	rdt_asmt_ymd varchar(8) NULL, -- 방사선치료평가일자
	rdt_asmt_item_cd varchar(20) NULL, -- 방사선치료평가항목코드
	rdt_asmt_item_nm varchar(200) NULL, -- 방사선치료평가항목명
	rdt_seff_perd_spcd varchar(20) NULL, -- 방사선치료부작용시기구분코드
	rdt_seff_perd_spnm varchar(200) NULL, -- 방사선치료부작용시기구분명
	rdt_seff_kncd varchar(20) NULL, -- 방사선치료부작용종류코드
	rdt_seff_knnm varchar(200) NULL, -- 방사선치료부작용종류명
	rdt_seff_grcd varchar(20) NULL, -- 방사선치료부작용등급코드
	rdt_seff_grnm varchar(200) NULL, -- 방사선치료부작용등급명
	crtn_dt timestamp NOT NULL, -- 생성일시
	CONSTRAINT gscn_trtm_rd_pk PRIMARY KEY (hosp_cd, pt_sbst_no, rdt_prsc_ymd, rdt_prsc_seq)
);
COMMENT ON TABLE gscn_trtm_rd IS '위암_치료_방사선';

-- Column comments

COMMENT ON COLUMN gscn_trtm_rd.hosp_cd IS '병원코드';
COMMENT ON COLUMN gscn_trtm_rd.pt_sbst_no IS '환자대체번호';
COMMENT ON COLUMN gscn_trtm_rd.rdt_prsc_ymd IS '방사선치료처방일자';
COMMENT ON COLUMN gscn_trtm_rd.rdt_prsc_seq IS '방사선치료처방순번';
COMMENT ON COLUMN gscn_trtm_rd.rdt_kncd IS '방사선치료종류코드';
COMMENT ON COLUMN gscn_trtm_rd.rdt_knnm IS '방사선치료종류명';
COMMENT ON COLUMN gscn_trtm_rd.rdt_cd IS '방사선치료코드';
COMMENT ON COLUMN gscn_trtm_rd.rdt_nm IS '방사선치료명';
COMMENT ON COLUMN gscn_trtm_rd.rdt_edi_cd IS '방사선치료EDI코드';
COMMENT ON COLUMN gscn_trtm_rd.rdt_edi_nm IS '방사선치료EDI명';
COMMENT ON COLUMN gscn_trtm_rd.rdt_smct_cd IS '방사선치료SNOMEDCT코드';
COMMENT ON COLUMN gscn_trtm_rd.rdt_smct_nm IS '방사선치료SNOMEDCT명';
COMMENT ON COLUMN gscn_trtm_rd.rdt_prps_cd IS '방사선치료목적코드';
COMMENT ON COLUMN gscn_trtm_rd.rdt_prps_nm IS '방사선치료목적명';
COMMENT ON COLUMN gscn_trtm_rd.rdt_site_cd IS '방사선치료부위코드';
COMMENT ON COLUMN gscn_trtm_rd.rdt_site_nm IS '방사선치료부위명';
COMMENT ON COLUMN gscn_trtm_rd.byst_rd_impl_nt IS '부위별방사선시행횟수';
COMMENT ON COLUMN gscn_trtm_rd.rd_gy IS '방사선선량';
COMMENT ON COLUMN gscn_trtm_rd.byst_rd_totl_gy IS '부위별방사선총선량';
COMMENT ON COLUMN gscn_trtm_rd.rdt_asmt_ymd IS '방사선치료평가일자';
COMMENT ON COLUMN gscn_trtm_rd.rdt_asmt_item_cd IS '방사선치료평가항목코드';
COMMENT ON COLUMN gscn_trtm_rd.rdt_asmt_item_nm IS '방사선치료평가항목명';
COMMENT ON COLUMN gscn_trtm_rd.rdt_seff_perd_spcd IS '방사선치료부작용시기구분코드';
COMMENT ON COLUMN gscn_trtm_rd.rdt_seff_perd_spnm IS '방사선치료부작용시기구분명';
COMMENT ON COLUMN gscn_trtm_rd.rdt_seff_kncd IS '방사선치료부작용종류코드';
COMMENT ON COLUMN gscn_trtm_rd.rdt_seff_knnm IS '방사선치료부작용종류명';
COMMENT ON COLUMN gscn_trtm_rd.rdt_seff_grcd IS '방사선치료부작용등급코드';
COMMENT ON COLUMN gscn_trtm_rd.rdt_seff_grnm IS '방사선치료부작용등급명';
COMMENT ON COLUMN gscn_trtm_rd.crtn_dt IS '생성일시';


-- gscn_trtm_srpr definition

-- Drop table

-- DROP TABLE gscn_trtm_srpr;

CREATE TABLE gscn_trtm_srpr (
	hosp_cd varchar(20) NOT NULL, -- 병원코드
	pt_sbst_no varchar(10) NOT NULL, -- 환자대체번호
	esd_srpr_ymd varchar(8) NOT NULL, -- ESD시술일자
	esd_srpr_seq numeric(3) NOT NULL, -- ESD시술순번
	esd_srpr_strt_dt timestamp NOT NULL, -- ESD시술시작일시
	esd_srpr_end_dt timestamp NOT NULL, -- ESD시술종료일시
	esd_lesn_size_vl numeric(10, 3) NULL, -- ESD병변크기값
	esd_lesn_shap_cd varchar(20) NULL, -- ESD병변모양코드
	esd_lesn_shap_nm varchar(200) NULL, -- ESD병변모양명
	esd_lesn_loca_wdth_cd varchar(20) NULL, -- ESD병변위치가로코드
	esd_lesn_loca_wdth_nm varchar(200) NULL, -- ESD병변위치가로명
	esd_lesn_loca_lgtd_cd varchar(20) NULL, -- ESD병변위치세로코드
	esd_lesn_loca_lgtd_nm varchar(200) NULL, -- ESD병변위치세로명
	esd_ulcr_yn_unid_spcd varchar(20) NULL, -- ESD궤양여부확인불가구분코드
	esd_ulcr_yn_unid_spnm varchar(50) NULL, -- ESD궤양여부확인불가구분명
	esd_perf_yn_unid_spcd varchar(20) NULL, -- ESD천공여부확인불가구분코드
	esd_perf_yn_unid_spnm varchar(50) NULL, -- ESD천공여부확인불가구분명
	esd_perf_msre_cd varchar(20) NULL, -- ESD천공조치코드
	esd_perf_msre_nm varchar(200) NULL, -- ESD천공조치명
	esd_rslt_cd varchar(20) NULL, -- ESD결과코드
	esd_rslt_nm varchar(200) NULL, -- ESD결과명
	esd_opn_cont varchar(4000) NULL, -- ESD소견내용
	esd_rslt_cont varchar(4000) NULL, -- ESD결과내용
	crtn_dt timestamp NOT NULL, -- 생성일시
	CONSTRAINT gscn_trtm_srpr_pk PRIMARY KEY (hosp_cd, pt_sbst_no, esd_srpr_ymd, esd_srpr_seq)
);
COMMENT ON TABLE gscn_trtm_srpr IS '위암_치료_시술';

-- Column comments

COMMENT ON COLUMN gscn_trtm_srpr.hosp_cd IS '병원코드';
COMMENT ON COLUMN gscn_trtm_srpr.pt_sbst_no IS '환자대체번호';
COMMENT ON COLUMN gscn_trtm_srpr.esd_srpr_ymd IS 'ESD시술일자';
COMMENT ON COLUMN gscn_trtm_srpr.esd_srpr_seq IS 'ESD시술순번';
COMMENT ON COLUMN gscn_trtm_srpr.esd_srpr_strt_dt IS 'ESD시술시작일시';
COMMENT ON COLUMN gscn_trtm_srpr.esd_srpr_end_dt IS 'ESD시술종료일시';
COMMENT ON COLUMN gscn_trtm_srpr.esd_lesn_size_vl IS 'ESD병변크기값';
COMMENT ON COLUMN gscn_trtm_srpr.esd_lesn_shap_cd IS 'ESD병변모양코드';
COMMENT ON COLUMN gscn_trtm_srpr.esd_lesn_shap_nm IS 'ESD병변모양명';
COMMENT ON COLUMN gscn_trtm_srpr.esd_lesn_loca_wdth_cd IS 'ESD병변위치가로코드';
COMMENT ON COLUMN gscn_trtm_srpr.esd_lesn_loca_wdth_nm IS 'ESD병변위치가로명';
COMMENT ON COLUMN gscn_trtm_srpr.esd_lesn_loca_lgtd_cd IS 'ESD병변위치세로코드';
COMMENT ON COLUMN gscn_trtm_srpr.esd_lesn_loca_lgtd_nm IS 'ESD병변위치세로명';
COMMENT ON COLUMN gscn_trtm_srpr.esd_ulcr_yn_unid_spcd IS 'ESD궤양여부확인불가구분코드';
COMMENT ON COLUMN gscn_trtm_srpr.esd_ulcr_yn_unid_spnm IS 'ESD궤양여부확인불가구분명';
COMMENT ON COLUMN gscn_trtm_srpr.esd_perf_yn_unid_spcd IS 'ESD천공여부확인불가구분코드';
COMMENT ON COLUMN gscn_trtm_srpr.esd_perf_yn_unid_spnm IS 'ESD천공여부확인불가구분명';
COMMENT ON COLUMN gscn_trtm_srpr.esd_perf_msre_cd IS 'ESD천공조치코드';
COMMENT ON COLUMN gscn_trtm_srpr.esd_perf_msre_nm IS 'ESD천공조치명';
COMMENT ON COLUMN gscn_trtm_srpr.esd_rslt_cd IS 'ESD결과코드';
COMMENT ON COLUMN gscn_trtm_srpr.esd_rslt_nm IS 'ESD결과명';
COMMENT ON COLUMN gscn_trtm_srpr.esd_opn_cont IS 'ESD소견내용';
COMMENT ON COLUMN gscn_trtm_srpr.esd_rslt_cont IS 'ESD결과내용';
COMMENT ON COLUMN gscn_trtm_srpr.crtn_dt IS '생성일시';