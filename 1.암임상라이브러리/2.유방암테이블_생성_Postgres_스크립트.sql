-- brcn_diag_afoc definition

-- Drop table

-- DROP TABLE brcn_diag_afoc;

CREATE TABLE brcn_diag_afoc (
	hosp_cd varchar(20) NOT NULL, -- 병원코드
	pt_sbst_no varchar(10) NOT NULL, -- 환자대체번호
	comp_ocrn_oprt_ymd varchar(8) NOT NULL, -- 합병증발생수술일자
	comp_ocrn_oprt_seq numeric(3) NOT NULL, -- 합병증발생수술순번
	comp_ocrn_ymd varchar(8) NULL, -- 합병증발생일자
	afoc_cont varchar(4000) NULL, -- 수술후합병증내용
	comp_grcd varchar(20) NULL, -- 합병증등급코드
	comp_grnm varchar(200) NULL, -- 합병증등급명
	crtn_dt timestamp NOT NULL, -- 생성일시
	CONSTRAINT brcn_diag_afoc_pk PRIMARY KEY (hosp_cd, pt_sbst_no, comp_ocrn_oprt_ymd, comp_ocrn_oprt_seq)
);
COMMENT ON TABLE brcn_diag_afoc IS '유방암_진단_수술후합병증';

-- Column comments

COMMENT ON COLUMN brcn_diag_afoc.hosp_cd IS '병원코드';
COMMENT ON COLUMN brcn_diag_afoc.pt_sbst_no IS '환자대체번호';
COMMENT ON COLUMN brcn_diag_afoc.comp_ocrn_oprt_ymd IS '합병증발생수술일자';
COMMENT ON COLUMN brcn_diag_afoc.comp_ocrn_oprt_seq IS '합병증발생수술순번';
COMMENT ON COLUMN brcn_diag_afoc.comp_ocrn_ymd IS '합병증발생일자';
COMMENT ON COLUMN brcn_diag_afoc.afoc_cont IS '수술후합병증내용';
COMMENT ON COLUMN brcn_diag_afoc.comp_grcd IS '합병증등급코드';
COMMENT ON COLUMN brcn_diag_afoc.comp_grnm IS '합병증등급명';
COMMENT ON COLUMN brcn_diag_afoc.crtn_dt IS '생성일시';


-- brcn_diag_aninf definition

-- Drop table

-- DROP TABLE brcn_diag_aninf;

CREATE TABLE brcn_diag_aninf (
	hosp_cd varchar(20) NOT NULL, -- 병원코드
	pt_sbst_no varchar(10) NOT NULL, -- 환자대체번호
	anth_rcrd_ymd varchar(8) NOT NULL, -- 신체계측기록일자
	anth_rcrd_seq numeric(3) NOT NULL, -- 신체계측기록순번
	ht_msrm_vl numeric(10,3) NULL, -- 신장측정값
	wt_msrm_vl numeric(10,3) NULL, -- 체중측정값
	bmi_vl numeric(10,3) NULL, -- BMI값
	rlxt_blpr_vl varchar(200) NULL, -- 이완혈압값
	ctrt_blpr_vl varchar(200) NULL, -- 수축혈압값
	ecog_cd varchar(20) NULL, -- ECOG코드
	ecog_nm varchar(200) NULL, -- ECOG명
	crtn_dt timestamp NOT NULL, -- 생성일시
	CONSTRAINT brcn_diag_aninf_pk PRIMARY KEY (hosp_cd, pt_sbst_no, anth_rcrd_ymd, anth_rcrd_seq)
);
COMMENT ON TABLE brcn_diag_aninf IS '유방암_진단_신체계측정보';

-- Column comments

COMMENT ON COLUMN brcn_diag_aninf.hosp_cd IS '병원코드';
COMMENT ON COLUMN brcn_diag_aninf.pt_sbst_no IS '환자대체번호';
COMMENT ON COLUMN brcn_diag_aninf.anth_rcrd_ymd IS '신체계측기록일자';
COMMENT ON COLUMN brcn_diag_aninf.anth_rcrd_seq IS '신체계측기록순번';
COMMENT ON COLUMN brcn_diag_aninf.ht_msrm_vl IS '신장측정값';
COMMENT ON COLUMN brcn_diag_aninf.wt_msrm_vl IS '체중측정값';
COMMENT ON COLUMN brcn_diag_aninf.bmi_vl IS 'BMI값';
COMMENT ON COLUMN brcn_diag_aninf.rlxt_blpr_vl IS '이완혈압값';
COMMENT ON COLUMN brcn_diag_aninf.ctrt_blpr_vl IS '수축혈압값';
COMMENT ON COLUMN brcn_diag_aninf.ecog_cd IS 'ECOG코드';
COMMENT ON COLUMN brcn_diag_aninf.ecog_nm IS 'ECOG명';
COMMENT ON COLUMN brcn_diag_aninf.crtn_dt IS '생성일시';


-- brcn_diag_inf definition

-- Drop table

-- DROP TABLE brcn_diag_inf;

CREATE TABLE brcn_diag_inf (
	hosp_cd varchar(20) NOT NULL, -- 병원코드
	pt_sbst_no varchar(10) NOT NULL, -- 환자대체번호
	diag_rgst_ymd varchar(8) NOT NULL, -- 진단등록일자
	diag_rgst_seq numeric(3) NOT NULL, -- 진단등록순번
	brcn_diag_kncd varchar(20) NULL, -- 유방암진단종류코드
	brcn_diag_knnm varchar(200) NULL, -- 유방암진단종류명
	diag_cd varchar(20) NULL, -- 진단코드
	diag_nm varchar(300) NULL, -- 진단명
	diag_kcd_cd varchar(20) NULL, -- 진단KCD코드
	diag_kcd_nm varchar(200) NULL, -- 진단KCD명
	diag_smct_cd varchar(200) NULL, -- 진단SNOMEDCT코드
	diag_smct_nm varchar(1000) NULL, -- 진단SNOMEDCT명
	crtn_dt timestamp NOT NULL, -- 생성일시
	CONSTRAINT brcn_diag_inf_pk PRIMARY KEY (hosp_cd, pt_sbst_no, diag_rgst_ymd, diag_rgst_seq)
);
COMMENT ON TABLE brcn_diag_inf IS '유방암_진단_정보';

-- Column comments

COMMENT ON COLUMN brcn_diag_inf.hosp_cd IS '병원코드';
COMMENT ON COLUMN brcn_diag_inf.pt_sbst_no IS '환자대체번호';
COMMENT ON COLUMN brcn_diag_inf.diag_rgst_ymd IS '진단등록일자';
COMMENT ON COLUMN brcn_diag_inf.diag_rgst_seq IS '진단등록순번';
COMMENT ON COLUMN brcn_diag_inf.brcn_diag_kncd IS '유방암진단종류코드';
COMMENT ON COLUMN brcn_diag_inf.brcn_diag_knnm IS '유방암진단종류명';
COMMENT ON COLUMN brcn_diag_inf.diag_cd IS '진단코드';
COMMENT ON COLUMN brcn_diag_inf.diag_nm IS '진단명';
COMMENT ON COLUMN brcn_diag_inf.diag_kcd_cd IS '진단KCD코드';
COMMENT ON COLUMN brcn_diag_inf.diag_kcd_nm IS '진단KCD명';
COMMENT ON COLUMN brcn_diag_inf.diag_smct_cd IS '진단SNOMEDCT코드';
COMMENT ON COLUMN brcn_diag_inf.diag_smct_nm IS '진단SNOMEDCT명';
COMMENT ON COLUMN brcn_diag_inf.crtn_dt IS '생성일시';


-- brcn_diag_mtst definition

-- Drop table

-- DROP TABLE brcn_diag_mtst;

CREATE TABLE brcn_diag_mtst (
	hosp_cd varchar(20) NOT NULL, -- 병원코드
	pt_sbst_no varchar(10) NOT NULL, -- 환자대체번호
	mtdg_ymd varchar(8) NOT NULL, -- 전이진단일자
	mtdg_seq numeric(3) NOT NULL, -- 전이진단순번
	mtst_site_cd varchar(20) NULL, -- 전이부위코드
	mtst_site_nm varchar(200) NULL, -- 전이부위명
	mtst_aspt_cd varchar(20) NULL, -- 전이양상코드
	mtst_aspt_nm varchar(200) NULL, -- 전이양상명
	mtdg_mtcd varchar(20) NULL, -- 전이진단방법코드
	mtdg_mtnm varchar(200) NULL, -- 전이진단방법명
	mtst_trtm_cont varchar(4000) NULL, -- 전이치료내용
	crtn_dt timestamp NOT NULL, -- 생성일시
	CONSTRAINT brcn_diag_mtst_pk PRIMARY KEY (hosp_cd, pt_sbst_no, mtdg_ymd, mtdg_seq)
);
COMMENT ON TABLE brcn_diag_mtst IS '유방암_진단_전이';

-- Column comments

COMMENT ON COLUMN brcn_diag_mtst.hosp_cd IS '병원코드';
COMMENT ON COLUMN brcn_diag_mtst.pt_sbst_no IS '환자대체번호';
COMMENT ON COLUMN brcn_diag_mtst.mtdg_ymd IS '전이진단일자';
COMMENT ON COLUMN brcn_diag_mtst.mtdg_seq IS '전이진단순번';
COMMENT ON COLUMN brcn_diag_mtst.mtst_site_cd IS '전이부위코드';
COMMENT ON COLUMN brcn_diag_mtst.mtst_site_nm IS '전이부위명';
COMMENT ON COLUMN brcn_diag_mtst.mtst_aspt_cd IS '전이양상코드';
COMMENT ON COLUMN brcn_diag_mtst.mtst_aspt_nm IS '전이양상명';
COMMENT ON COLUMN brcn_diag_mtst.mtdg_mtcd IS '전이진단방법코드';
COMMENT ON COLUMN brcn_diag_mtst.mtdg_mtnm IS '전이진단방법명';
COMMENT ON COLUMN brcn_diag_mtst.mtst_trtm_cont IS '전이치료내용';
COMMENT ON COLUMN brcn_diag_mtst.crtn_dt IS '생성일시';


-- brcn_diag_stag definition

-- Drop table

-- DROP TABLE brcn_diag_stag;

CREATE TABLE brcn_diag_stag (
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
	CONSTRAINT brcn_diag_stag_pk PRIMARY KEY (hosp_cd, pt_sbst_no, diag_stag_rcrd_ymd, diag_stag_rcrd_seq)
);
COMMENT ON TABLE brcn_diag_stag IS '유방암_진단_병기';

-- Column comments

COMMENT ON COLUMN brcn_diag_stag.hosp_cd IS '병원코드';
COMMENT ON COLUMN brcn_diag_stag.pt_sbst_no IS '환자대체번호';
COMMENT ON COLUMN brcn_diag_stag.diag_stag_rcrd_ymd IS '진단병기기록일자';
COMMENT ON COLUMN brcn_diag_stag.diag_stag_rcrd_seq IS '진단병기기록순번';
COMMENT ON COLUMN brcn_diag_stag.clnc_tumr_prty_cd IS '임상종양특성코드';
COMMENT ON COLUMN brcn_diag_stag.clnc_tumr_prty_nm IS '임상종양특성명';
COMMENT ON COLUMN brcn_diag_stag.ajcc_yr IS 'AJCC년도';
COMMENT ON COLUMN brcn_diag_stag.clnc_tnm_stag_vl IS '임상TNM병기값';
COMMENT ON COLUMN brcn_diag_stag.clnc_t_stag_vl IS '임상T병기값';
COMMENT ON COLUMN brcn_diag_stag.clnc_n_stag_vl IS '임상N병기값';
COMMENT ON COLUMN brcn_diag_stag.clnc_m_stag_vl IS '임상M병기값';
COMMENT ON COLUMN brcn_diag_stag.crtn_dt IS '생성일시';


-- brcn_exam_byps definition

-- Drop table

-- DROP TABLE brcn_exam_byps;

CREATE TABLE brcn_exam_byps (
	hosp_cd varchar(20) NOT NULL, -- 병원코드
	pt_sbst_no varchar(10) NOT NULL, -- 환자대체번호
	bpsy_ymd varchar(8) NOT NULL, -- 생체검사일자
	bpsy_seq numeric(3) NOT NULL, -- 생체검사순번
	bpsy_read_ymd varchar(8) NULL, -- 생체검사판독일자
	bpsy_site_cd varchar(20) NULL, -- 생체검사부위코드
	bpsy_site_nm varchar(200) NULL, -- 생체검사부위명
	bpsy_site_latr_cd varchar(20) NULL, -- 생체검사부위편측성코드
	bpsy_site_latr_nm varchar(200) NULL, -- 생체검사부위편측성명
	bpsy_mtcd varchar(20) NULL, -- 생체검사방법코드
	bpsy_mtnm varchar(200) NULL, -- 생체검사방법명
	bpsy_mthd_kncd varchar(20) NULL, -- 생체검사방법종류코드
	bpsy_mthd_knnm varchar(200) NULL, -- 생체검사방법종류명
	bpsy_rslt_cont varchar(4000) NULL, -- 생체검사결과내용
	htlg_diag_cd varchar(20) NULL, -- 조직학적진단코드
	htlg_diag_nm varchar(200) NULL, -- 조직학적진단명
	htlg_grcd varchar(20) NULL, -- 조직학적등급코드
	htlg_grnm varchar(200) NULL, -- 조직학적등급명
	crtn_dt timestamp NOT NULL, -- 생성일시
	CONSTRAINT brcn_exam_byps_pk PRIMARY KEY (hosp_cd, pt_sbst_no, bpsy_ymd, bpsy_seq)
);
COMMENT ON TABLE brcn_exam_byps IS '유방암_검사_생체';

-- Column comments

COMMENT ON COLUMN brcn_exam_byps.hosp_cd IS '병원코드';
COMMENT ON COLUMN brcn_exam_byps.pt_sbst_no IS '환자대체번호';
COMMENT ON COLUMN brcn_exam_byps.bpsy_ymd IS '생체검사일자';
COMMENT ON COLUMN brcn_exam_byps.bpsy_seq IS '생체검사순번';
COMMENT ON COLUMN brcn_exam_byps.bpsy_read_ymd IS '생체검사판독일자';
COMMENT ON COLUMN brcn_exam_byps.bpsy_site_cd IS '생체검사부위코드';
COMMENT ON COLUMN brcn_exam_byps.bpsy_site_nm IS '생체검사부위명';
COMMENT ON COLUMN brcn_exam_byps.bpsy_site_latr_cd IS '생체검사부위편측성코드';
COMMENT ON COLUMN brcn_exam_byps.bpsy_site_latr_nm IS '생체검사부위편측성명';
COMMENT ON COLUMN brcn_exam_byps.bpsy_mtcd IS '생체검사방법코드';
COMMENT ON COLUMN brcn_exam_byps.bpsy_mtnm IS '생체검사방법명';
COMMENT ON COLUMN brcn_exam_byps.bpsy_mthd_kncd IS '생체검사방법종류코드';
COMMENT ON COLUMN brcn_exam_byps.bpsy_mthd_knnm IS '생체검사방법종류명';
COMMENT ON COLUMN brcn_exam_byps.bpsy_rslt_cont IS '생체검사결과내용';
COMMENT ON COLUMN brcn_exam_byps.htlg_diag_cd IS '조직학적진단코드';
COMMENT ON COLUMN brcn_exam_byps.htlg_diag_nm IS '조직학적진단명';
COMMENT ON COLUMN brcn_exam_byps.htlg_grcd IS '조직학적등급코드';
COMMENT ON COLUMN brcn_exam_byps.htlg_grnm IS '조직학적등급명';
COMMENT ON COLUMN brcn_exam_byps.crtn_dt IS '생성일시';


-- brcn_exam_diag definition

-- Drop table

-- DROP TABLE brcn_exam_diag;

CREATE TABLE brcn_exam_diag (
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
	CONSTRAINT brcn_exam_diag_pk PRIMARY KEY (hosp_cd, pt_sbst_no, cexm_ymd, cexm_seq)
);
COMMENT ON TABLE brcn_exam_diag IS '유방암_검사_진단';

-- Column comments

COMMENT ON COLUMN brcn_exam_diag.hosp_cd IS '병원코드';
COMMENT ON COLUMN brcn_exam_diag.pt_sbst_no IS '환자대체번호';
COMMENT ON COLUMN brcn_exam_diag.cexm_ymd IS '진단검사일자';
COMMENT ON COLUMN brcn_exam_diag.cexm_seq IS '진단검사순번';
COMMENT ON COLUMN brcn_exam_diag.cexm_kncd IS '진단검사종류코드';
COMMENT ON COLUMN brcn_exam_diag.cexm_knnm IS '진단검사종류명';
COMMENT ON COLUMN brcn_exam_diag.cexm_cd IS '진단검사코드';
COMMENT ON COLUMN brcn_exam_diag.cexm_nm IS '진단검사명';
COMMENT ON COLUMN brcn_exam_diag.cexm_edi_cd IS '진단검사EDI코드';
COMMENT ON COLUMN brcn_exam_diag.cexm_edi_nm IS '진단검사EDI명';
COMMENT ON COLUMN brcn_exam_diag.cexm_smct_cd IS '진단검사SNOMEDCT코드';
COMMENT ON COLUMN brcn_exam_diag.cexm_smct_nm IS '진단검사SNOMEDCT명';
COMMENT ON COLUMN brcn_exam_diag.cexm_loinc_cd IS '진단검사LOINC코드';
COMMENT ON COLUMN brcn_exam_diag.cexm_loinc_nm IS '진단검사LOINC명';
COMMENT ON COLUMN brcn_exam_diag.cexm_rslt_cont IS '진단검사결과내용';
COMMENT ON COLUMN brcn_exam_diag.cexm_rslt_unit_cont IS '진단검사결과단위내용';
COMMENT ON COLUMN brcn_exam_diag.cexm_nlrg_ref_vl IS '진단검사정상범위참고값';
COMMENT ON COLUMN brcn_exam_diag.crtn_dt IS '생성일시';


-- brcn_exam_gmvx definition

-- Drop table

-- DROP TABLE brcn_exam_gmvx;

CREATE TABLE brcn_exam_gmvx (
	hosp_cd varchar(20) NOT NULL, -- 병원코드
	pt_sbst_no varchar(10) NOT NULL, -- 환자대체번호
	gmvx_ymd varchar(8) NOT NULL, -- 생식세포변이검사일자
	gmvx_seq numeric(3) NOT NULL, -- 생식세포변이검사순번
	gmvx_cd varchar(20) NULL, -- 생식세포변이검사코드
	gmvx_nm varchar(200) NULL, -- 생식세포변이검사명
	gmvx_mtcd varchar(20) NULL, -- 생식세포변이검사방법코드
	gmvx_mtnm varchar(200) NULL, -- 생식세포변이검사방법명
	gmvx_gene_kncd varchar(20) NULL, -- 생식세포변이검사유전자종류코드
	gmvx_gene_knnm varchar(200) NULL, -- 생식세포변이검사유전자종류명
	gmte_mtst_exam_rslt_cont varchar(4000) NULL, -- 생식세포전이검사결과내용
	pavr_detect_yn_spcd varchar(20) NULL, -- 병원변형체감지여부구분코드
	pavr_detect_yn_spnm varchar(50) NULL, -- 병원변형체감지여부구분명
	uncl_varnt_detect_yn_spcd varchar(20) NULL, -- 미확인변형체감지여부구분코드
	uncl_varnt_detect_yn_spnm varchar(50) NULL, -- 미확인변형체감지여부구분명
	dna_vainf_a_vl varchar(200) NULL, -- DNA변이정보A값
	dna_vainf_b_cd varchar(20) NULL, -- DNA변이정보B코드
	dna_vainf_b_nm varchar(200) NULL, -- DNA변이정보B명
	dna_vainf_c_cd varchar(20) NULL, -- DNA변이정보C코드
	dna_vainf_c_nm varchar(200) NULL, -- DNA변이정보C명
	amsn_vainf_a_cd varchar(20) NULL, -- 아미노산변이정보A코드
	amsn_vainf_a_nm varchar(200) NULL, -- 아미노산변이정보A명
	amsn_vainf_b_vl numeric(10,3) NULL, -- 아미노산변이정보B값
	amsn_vainf_c_cd varchar(20) NULL, -- 아미노산변이정보C코드
	amsn_vainf_c_nm varchar(200) NULL, -- 아미노산변이정보C명
	ref_seq varchar(20) NULL, -- 참고순번
	crtn_dt timestamp NOT NULL, -- 생성일시
	CONSTRAINT brcn_exam_gmvx_pk PRIMARY KEY (hosp_cd, pt_sbst_no, gmvx_ymd, gmvx_seq)
);
COMMENT ON TABLE brcn_exam_gmvx IS '유방암_검사_생식세포변이검사';

-- Column comments

COMMENT ON COLUMN brcn_exam_gmvx.hosp_cd IS '병원코드';
COMMENT ON COLUMN brcn_exam_gmvx.pt_sbst_no IS '환자대체번호';
COMMENT ON COLUMN brcn_exam_gmvx.gmvx_ymd IS '생식세포변이검사일자';
COMMENT ON COLUMN brcn_exam_gmvx.gmvx_seq IS '생식세포변이검사순번';
COMMENT ON COLUMN brcn_exam_gmvx.gmvx_cd IS '생식세포변이검사코드';
COMMENT ON COLUMN brcn_exam_gmvx.gmvx_nm IS '생식세포변이검사명';
COMMENT ON COLUMN brcn_exam_gmvx.gmvx_mtcd IS '생식세포변이검사방법코드';
COMMENT ON COLUMN brcn_exam_gmvx.gmvx_mtnm IS '생식세포변이검사방법명';
COMMENT ON COLUMN brcn_exam_gmvx.gmvx_gene_kncd IS '생식세포변이검사유전자종류코드';
COMMENT ON COLUMN brcn_exam_gmvx.gmvx_gene_knnm IS '생식세포변이검사유전자종류명';
COMMENT ON COLUMN brcn_exam_gmvx.gmte_mtst_exam_rslt_cont IS '생식세포전이검사결과내용';
COMMENT ON COLUMN brcn_exam_gmvx.pavr_detect_yn_spcd IS '병원변형체감지여부구분코드';
COMMENT ON COLUMN brcn_exam_gmvx.pavr_detect_yn_spnm IS '병원변형체감지여부구분명';
COMMENT ON COLUMN brcn_exam_gmvx.uncl_varnt_detect_yn_spcd IS '미확인변형체감지여부구분코드';
COMMENT ON COLUMN brcn_exam_gmvx.uncl_varnt_detect_yn_spnm IS '미확인변형체감지여부구분명';
COMMENT ON COLUMN brcn_exam_gmvx.dna_vainf_a_vl IS 'DNA변이정보A값';
COMMENT ON COLUMN brcn_exam_gmvx.dna_vainf_b_cd IS 'DNA변이정보B코드';
COMMENT ON COLUMN brcn_exam_gmvx.dna_vainf_b_nm IS 'DNA변이정보B명';
COMMENT ON COLUMN brcn_exam_gmvx.dna_vainf_c_cd IS 'DNA변이정보C코드';
COMMENT ON COLUMN brcn_exam_gmvx.dna_vainf_c_nm IS 'DNA변이정보C명';
COMMENT ON COLUMN brcn_exam_gmvx.amsn_vainf_a_cd IS '아미노산변이정보A코드';
COMMENT ON COLUMN brcn_exam_gmvx.amsn_vainf_a_nm IS '아미노산변이정보A명';
COMMENT ON COLUMN brcn_exam_gmvx.amsn_vainf_b_vl IS '아미노산변이정보B값';
COMMENT ON COLUMN brcn_exam_gmvx.amsn_vainf_c_cd IS '아미노산변이정보C코드';
COMMENT ON COLUMN brcn_exam_gmvx.amsn_vainf_c_nm IS '아미노산변이정보C명';
COMMENT ON COLUMN brcn_exam_gmvx.ref_seq IS '참고순번';
COMMENT ON COLUMN brcn_exam_gmvx.crtn_dt IS '생성일시';


-- brcn_exam_gnrx definition

-- Drop table

-- DROP TABLE brcn_exam_gnrx;

CREATE TABLE brcn_exam_gnrx (
	hosp_cd varchar(20) NOT NULL, -- 병원코드
	pt_sbst_no varchar(10) NOT NULL, -- 환자대체번호
	gnrx_ymd varchar(8) NOT NULL, -- 유전자발현검사일자
	gnrx_seq numeric(3) NOT NULL, -- 유전자발현검사순번
	gnrx_kncd varchar(20) NULL, -- 유전자발현검사종류코드
	gnrx_knnm varchar(200) NULL, -- 유전자발현검사종류명
	gnrx_rslt_kncd varchar(20) NULL, -- 유전자발현검사결과종류코드
	gnrx_rslt_knnm varchar(200) NULL, -- 유전자발현검사결과종류명
	gnrx_rslt_cont varchar(4000) NULL, -- 유전자발현검사결과내용
	crtn_dt timestamp NOT NULL, -- 생성일시
	CONSTRAINT brcn_exam_gnrx_pk PRIMARY KEY (hosp_cd, pt_sbst_no, gnrx_ymd, gnrx_seq)
);
COMMENT ON TABLE brcn_exam_gnrx IS '유방암_검사_유전자발현검사';

-- Column comments

COMMENT ON COLUMN brcn_exam_gnrx.hosp_cd IS '병원코드';
COMMENT ON COLUMN brcn_exam_gnrx.pt_sbst_no IS '환자대체번호';
COMMENT ON COLUMN brcn_exam_gnrx.gnrx_ymd IS '유전자발현검사일자';
COMMENT ON COLUMN brcn_exam_gnrx.gnrx_seq IS '유전자발현검사순번';
COMMENT ON COLUMN brcn_exam_gnrx.gnrx_kncd IS '유전자발현검사종류코드';
COMMENT ON COLUMN brcn_exam_gnrx.gnrx_knnm IS '유전자발현검사종류명';
COMMENT ON COLUMN brcn_exam_gnrx.gnrx_rslt_kncd IS '유전자발현검사결과종류코드';
COMMENT ON COLUMN brcn_exam_gnrx.gnrx_rslt_knnm IS '유전자발현검사결과종류명';
COMMENT ON COLUMN brcn_exam_gnrx.gnrx_rslt_cont IS '유전자발현검사결과내용';
COMMENT ON COLUMN brcn_exam_gnrx.crtn_dt IS '생성일시';


-- brcn_exam_imag definition

-- Drop table

-- DROP TABLE brcn_exam_imag;

CREATE TABLE brcn_exam_imag (
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
	brst_dens_clcd varchar(20) NULL, -- 유방밀도분류코드
	brst_dens_clnm varchar(200) NULL, -- 유방밀도분류명
	imex_rslt_diag_clcd varchar(20) NULL, -- 영상검사결과진단분류코드
	imex_rslt_diag_clnm varchar(200) NULL, -- 영상검사결과진단분류명
	micf_yn_unid_spcd varchar(20) NULL, -- 미세석회화여부확인불가구분코드
	micf_yn_unid_spnm varchar(50) NULL, -- 미세석회화여부확인불가구분명
	asyt_yn_unid_spcd varchar(20) NULL, -- 비대칭여부확인불가구분코드
	asyt_yn_unid_spnm varchar(50) NULL, -- 비대칭여부확인불가구분명
	boms_yn_unid_spcd varchar(20) NULL, -- 전신전이여부확인불가구분코드
	boms_yn_unid_spnm varchar(50) NULL, -- 전신전이여부확인불가구분명
	crtn_dt timestamp NOT NULL, -- 생성일시
	CONSTRAINT brcn_exam_imag_pk PRIMARY KEY (hosp_cd, pt_sbst_no, imex_ymd, imex_seq)
);
COMMENT ON TABLE brcn_exam_imag IS '유방암_검사_영상';

-- Column comments

COMMENT ON COLUMN brcn_exam_imag.hosp_cd IS '병원코드';
COMMENT ON COLUMN brcn_exam_imag.pt_sbst_no IS '환자대체번호';
COMMENT ON COLUMN brcn_exam_imag.imex_ymd IS '영상검사일자';
COMMENT ON COLUMN brcn_exam_imag.imex_seq IS '영상검사순번';
COMMENT ON COLUMN brcn_exam_imag.imex_kncd IS '영상검사종류코드';
COMMENT ON COLUMN brcn_exam_imag.imex_knnm IS '영상검사종류명';
COMMENT ON COLUMN brcn_exam_imag.imex_cd IS '영상검사코드';
COMMENT ON COLUMN brcn_exam_imag.imex_nm IS '영상검사명';
COMMENT ON COLUMN brcn_exam_imag.imex_edi_cd IS '영상검사EDI코드';
COMMENT ON COLUMN brcn_exam_imag.imex_edi_nm IS '영상검사EDI명';
COMMENT ON COLUMN brcn_exam_imag.imex_smct_cd IS '영상검사SNOMEDCT코드';
COMMENT ON COLUMN brcn_exam_imag.imex_smct_nm IS '영상검사SNOMEDCT명';
COMMENT ON COLUMN brcn_exam_imag.imex_rslt_cont IS '영상검사결과내용';
COMMENT ON COLUMN brcn_exam_imag.brst_dens_clcd IS '유방밀도분류코드';
COMMENT ON COLUMN brcn_exam_imag.brst_dens_clnm IS '유방밀도분류명';
COMMENT ON COLUMN brcn_exam_imag.imex_rslt_diag_clcd IS '영상검사결과진단분류코드';
COMMENT ON COLUMN brcn_exam_imag.imex_rslt_diag_clnm IS '영상검사결과진단분류명';
COMMENT ON COLUMN brcn_exam_imag.micf_yn_unid_spcd IS '미세석회화여부확인불가구분코드';
COMMENT ON COLUMN brcn_exam_imag.micf_yn_unid_spnm IS '미세석회화여부확인불가구분명';
COMMENT ON COLUMN brcn_exam_imag.asyt_yn_unid_spcd IS '비대칭여부확인불가구분코드';
COMMENT ON COLUMN brcn_exam_imag.asyt_yn_unid_spnm IS '비대칭여부확인불가구분명';
COMMENT ON COLUMN brcn_exam_imag.boms_yn_unid_spcd IS '전신전이여부확인불가구분코드';
COMMENT ON COLUMN brcn_exam_imag.boms_yn_unid_spnm IS '전신전이여부확인불가구분명';
COMMENT ON COLUMN brcn_exam_imag.crtn_dt IS '생성일시';


-- brcn_exam_impt definition

-- Drop table

-- DROP TABLE brcn_exam_impt;

CREATE TABLE brcn_exam_impt (
	hosp_cd varchar(20) NOT NULL, -- 병원코드
	pt_sbst_no varchar(10) NOT NULL, -- 환자대체번호
	imem_ymd varchar(8) NOT NULL, -- 면역병리검사일자
	imem_seq numeric(3) NOT NULL, -- 면역병리검사순번
	impt_read_ymd varchar(8) NULL, -- 면역병리판독일자
	imem_kncd varchar(20) NULL, -- 면역병리검사종류코드
	imem_knnm varchar(200) NULL, -- 면역병리검사종류명
	imem_nm varchar(200) NULL, -- 면역병리검사명
	imem_cd varchar(20) NULL, -- 면역병리검사코드
	imem_opn_clcd varchar(20) NULL, -- 면역병리검사소견분류코드
	imem_opn_clnm varchar(200) NULL, -- 면역병리검사소견분류명
	imem_rslt_vl varchar(200) NULL, -- 면역병리검사결과값
	imem_rslt_unit_cd varchar(20) NULL, -- 면역병리검사결과단위코드
	imem_rslt_unit_nm varchar(200) NULL, -- 면역병리검사결과단위명
	crtn_dt timestamp NOT NULL, -- 생성일시
	CONSTRAINT brcn_exam_impt_pk PRIMARY KEY (hosp_cd, pt_sbst_no, imem_ymd, imem_seq)
);
COMMENT ON TABLE brcn_exam_impt IS '유방암_검사_면역병리';

-- Column comments

COMMENT ON COLUMN brcn_exam_impt.hosp_cd IS '병원코드';
COMMENT ON COLUMN brcn_exam_impt.pt_sbst_no IS '환자대체번호';
COMMENT ON COLUMN brcn_exam_impt.imem_ymd IS '면역병리검사일자';
COMMENT ON COLUMN brcn_exam_impt.imem_seq IS '면역병리검사순번';
COMMENT ON COLUMN brcn_exam_impt.impt_read_ymd IS '면역병리판독일자';
COMMENT ON COLUMN brcn_exam_impt.imem_kncd IS '면역병리검사종류코드';
COMMENT ON COLUMN brcn_exam_impt.imem_knnm IS '면역병리검사종류명';
COMMENT ON COLUMN brcn_exam_impt.imem_nm IS '면역병리검사명';
COMMENT ON COLUMN brcn_exam_impt.imem_cd IS '면역병리검사코드';
COMMENT ON COLUMN brcn_exam_impt.imem_opn_clcd IS '면역병리검사소견분류코드';
COMMENT ON COLUMN brcn_exam_impt.imem_opn_clnm IS '면역병리검사소견분류명';
COMMENT ON COLUMN brcn_exam_impt.imem_rslt_vl IS '면역병리검사결과값';
COMMENT ON COLUMN brcn_exam_impt.imem_rslt_unit_cd IS '면역병리검사결과단위코드';
COMMENT ON COLUMN brcn_exam_impt.imem_rslt_unit_nm IS '면역병리검사결과단위명';
COMMENT ON COLUMN brcn_exam_impt.crtn_dt IS '생성일시';


-- brcn_exam_mlpt definition

-- Drop table

-- DROP TABLE brcn_exam_mlpt;

CREATE TABLE brcn_exam_mlpt (
	hosp_cd varchar(20) NOT NULL, -- 병원코드
	pt_sbst_no varchar(10) NOT NULL, -- 환자대체번호
	mlem_ymd varchar(8) NOT NULL, -- 분자병리검사일자
	mlem_seq numeric(3) NOT NULL, -- 분자병리검사순번
	mlpt_read_ymd varchar(8) NULL, -- 분자병리판독일자
	mlem_cd varchar(20) NULL, -- 분자병리검사코드
	mlem_nm varchar(200) NULL, -- 분자병리검사명
	mlem_kncd varchar(20) NULL, -- 분자병리검사종류코드
	mlem_knnm varchar(200) NULL, -- 분자병리검사종류명
	mlem_mtcd varchar(20) NULL, -- 분자병리검사방법코드
	mlem_mtnm varchar(200) NULL, -- 분자병리검사방법명
	mlem_rslt_cd varchar(20) NULL, -- 분자병리검사결과코드
	mlem_rslt_nm varchar(200) NULL, -- 분자병리검사결과명
	mlem_rslt_kncd varchar(20) NULL, -- 분자병리검사결과종류코드
	mlem_rslt_knnm varchar(200) NULL, -- 분자병리검사결과종류명
	mlem_rslt_vl varchar(200) NULL, -- 분자병리검사결과값
	crtn_dt timestamp NOT NULL, -- 생성일시
	CONSTRAINT brcn_exam_mlpt_pk PRIMARY KEY (hosp_cd, pt_sbst_no, mlem_ymd, mlem_seq)
);
COMMENT ON TABLE brcn_exam_mlpt IS '유방암_검사_분자병리';

-- Column comments

COMMENT ON COLUMN brcn_exam_mlpt.hosp_cd IS '병원코드';
COMMENT ON COLUMN brcn_exam_mlpt.pt_sbst_no IS '환자대체번호';
COMMENT ON COLUMN brcn_exam_mlpt.mlem_ymd IS '분자병리검사일자';
COMMENT ON COLUMN brcn_exam_mlpt.mlem_seq IS '분자병리검사순번';
COMMENT ON COLUMN brcn_exam_mlpt.mlpt_read_ymd IS '분자병리판독일자';
COMMENT ON COLUMN brcn_exam_mlpt.mlem_cd IS '분자병리검사코드';
COMMENT ON COLUMN brcn_exam_mlpt.mlem_nm IS '분자병리검사명';
COMMENT ON COLUMN brcn_exam_mlpt.mlem_kncd IS '분자병리검사종류코드';
COMMENT ON COLUMN brcn_exam_mlpt.mlem_knnm IS '분자병리검사종류명';
COMMENT ON COLUMN brcn_exam_mlpt.mlem_mtcd IS '분자병리검사방법코드';
COMMENT ON COLUMN brcn_exam_mlpt.mlem_mtnm IS '분자병리검사방법명';
COMMENT ON COLUMN brcn_exam_mlpt.mlem_rslt_cd IS '분자병리검사결과코드';
COMMENT ON COLUMN brcn_exam_mlpt.mlem_rslt_nm IS '분자병리검사결과명';
COMMENT ON COLUMN brcn_exam_mlpt.mlem_rslt_kncd IS '분자병리검사결과종류코드';
COMMENT ON COLUMN brcn_exam_mlpt.mlem_rslt_knnm IS '분자병리검사결과종류명';
COMMENT ON COLUMN brcn_exam_mlpt.mlem_rslt_vl IS '분자병리검사결과값';
COMMENT ON COLUMN brcn_exam_mlpt.crtn_dt IS '생성일시';


-- brcn_exam_sgpt definition

-- Drop table

-- DROP TABLE brcn_exam_sgpt;

CREATE TABLE brcn_exam_sgpt (
	hosp_cd varchar(20) NOT NULL, -- 병원코드
	pt_sbst_no varchar(10) NOT NULL, -- 환자대체번호
	srgc_ptem_ymd varchar(8) NOT NULL, -- 외과병리검사일자
	srgc_ptem_seq numeric(3) NOT NULL, -- 외과병리검사순번
	sgpt_read_ymd varchar(8) NULL, -- 외과병리판독일자
	sgpt_hvst_site_cd varchar(20) NULL, -- 외과병리채취부위코드
	sgpt_hvst_site_nm varchar(200) NULL, -- 외과병리채취부위명
	sgpt_exam_site_latr_cd varchar(20) NULL, -- 외과병리검사부위편측성코드
	sgpt_exam_site_latr_nm varchar(200) NULL, -- 외과병리검사부위편측성명
	srgc_ptem_rslt_tumr_cnt numeric(3) NULL, -- 외과병리검사결과종양수
	tumr_wdth_lnth_vl numeric(10,3) NULL, -- 종양가로길이값
	tumr_lgtd_lnth_vl numeric(10,3) NULL, -- 종양세로길이값
	tumr_hght_vl numeric(10,3) NULL, -- 종양높이값
	tumr_max_diam_vl numeric(10,3) NULL, -- 종양최대직경값
	htlg_diag_cd varchar(20) NULL, -- 조직학적진단코드
	htlg_diag_nm varchar(200) NULL, -- 조직학적진단명
	htlg_grcd varchar(20) NULL, -- 조직학적등급코드
	htlg_grnm varchar(200) NULL, -- 조직학적등급명
	lvin_ex_yn_spcd varchar(20) NULL, -- 림프혈관침윤존재여부구분코드
	lvin_ex_yn_spnm varchar(50) NULL, -- 림프혈관침윤존재여부구분명
	lpin_ex_yn_spcd varchar(20) NULL, -- 림프절주위침윤존재여부구분코드
	lpin_ex_yn_spnm varchar(50) NULL, -- 림프절주위침윤존재여부구분명
	niin_ex_yn_spcd varchar(20) NULL, -- 유두침윤존재여부구분코드
	niin_ex_yn_spnm varchar(50) NULL, -- 유두침윤존재여부구분명
	sgpt_micf_ex_yn_spcd varchar(20) NULL, -- 외과병리미세석회화존재여부구분코드
	sgpt_micf_ex_yn_spnm varchar(50) NULL, -- 외과병리미세석회화존재여부구분명
	incn_necr_ex_yn_spcd varchar(20) NULL, -- 상피내암괴사존재여부구분코드
	incn_necr_ex_yn_spnm varchar(50) NULL, -- 상피내암괴사존재여부구분명
	incn_asso_ex_yn_spcd varchar(20) NULL, -- 상피내암동반존재여부구분코드
	incn_asso_ex_yn_spnm varchar(50) NULL, -- 상피내암동반존재여부구분명
	incn_core_grcd varchar(20) NULL, -- 상피내암핵등급코드
	incn_core_grnm varchar(200) NULL, -- 상피내암핵등급명
	srmg_sfmg_lnth_vl numeric(10,3) NULL, -- 수술절제면안전경계길이값
	srmg_detl_cont varchar(4000) NULL, -- 수술절제면상세내용
	srmg_rlct_cd varchar(20) NULL, -- 수술절제면잔존코드
	srmg_rlct_nm varchar(200) NULL, -- 수술절제면잔존명
	mtcr_size_vl numeric(10,3) NULL, -- 전이암크기값
	asso_lesn_cd varchar(20) NULL, -- 동반병변코드
	asso_lesn_nm varchar(200) NULL, -- 동반병변명
	resi_tumr_cd varchar(20) NULL, -- 잔여종양코드
	resi_tumr_nm varchar(200) NULL, -- 잔여종양명
	ln_totl_cnt numeric(3) NULL, -- 림프절총수
	pstv_ln_cnt varchar(100) NULL, -- 양성림프절수
	slnd_totl_cnt numeric(3) NULL, -- 감시림프절총수
	pstv_slnd_cnt numeric(3) NULL, -- 양성감시림프절수
	nsnd_totl_cnt numeric(3) NULL, -- 비감시림프절총수
	pstv_nsnd_cnt numeric(3) NULL, -- 양성비감시림프절수
	ajcc_yr varchar(4) NULL, -- AJCC년도
	afop_path_tnm_stag_vl varchar(200) NULL, -- 수술후병리TNM병기값
	afop_path_t_stag_vl varchar(200) NULL, -- 수술후병리T병기값
	afop_path_n_stag_vl varchar(200) NULL, -- 수술후병리N병기값
	afop_path_m_stag_vl varchar(200) NULL, -- 수술후병리M병기값
	crtn_dt timestamp NOT NULL, -- 생성일시
	CONSTRAINT brcn_exam_sgpt_pk PRIMARY KEY (hosp_cd, pt_sbst_no, srgc_ptem_ymd, srgc_ptem_seq)
);
COMMENT ON TABLE brcn_exam_sgpt IS '유방암_검사_외과병리';

-- Column comments

COMMENT ON COLUMN brcn_exam_sgpt.hosp_cd IS '병원코드';
COMMENT ON COLUMN brcn_exam_sgpt.pt_sbst_no IS '환자대체번호';
COMMENT ON COLUMN brcn_exam_sgpt.srgc_ptem_ymd IS '외과병리검사일자';
COMMENT ON COLUMN brcn_exam_sgpt.srgc_ptem_seq IS '외과병리검사순번';
COMMENT ON COLUMN brcn_exam_sgpt.sgpt_read_ymd IS '외과병리판독일자';
COMMENT ON COLUMN brcn_exam_sgpt.sgpt_hvst_site_cd IS '외과병리채취부위코드';
COMMENT ON COLUMN brcn_exam_sgpt.sgpt_hvst_site_nm IS '외과병리채취부위명';
COMMENT ON COLUMN brcn_exam_sgpt.sgpt_exam_site_latr_cd IS '외과병리검사부위편측성코드';
COMMENT ON COLUMN brcn_exam_sgpt.sgpt_exam_site_latr_nm IS '외과병리검사부위편측성명';
COMMENT ON COLUMN brcn_exam_sgpt.srgc_ptem_rslt_tumr_cnt IS '외과병리검사결과종양수';
COMMENT ON COLUMN brcn_exam_sgpt.tumr_wdth_lnth_vl IS '종양가로길이값';
COMMENT ON COLUMN brcn_exam_sgpt.tumr_lgtd_lnth_vl IS '종양세로길이값';
COMMENT ON COLUMN brcn_exam_sgpt.tumr_hght_vl IS '종양높이값';
COMMENT ON COLUMN brcn_exam_sgpt.tumr_max_diam_vl IS '종양최대직경값';
COMMENT ON COLUMN brcn_exam_sgpt.htlg_diag_cd IS '조직학적진단코드';
COMMENT ON COLUMN brcn_exam_sgpt.htlg_diag_nm IS '조직학적진단명';
COMMENT ON COLUMN brcn_exam_sgpt.htlg_grcd IS '조직학적등급코드';
COMMENT ON COLUMN brcn_exam_sgpt.htlg_grnm IS '조직학적등급명';
COMMENT ON COLUMN brcn_exam_sgpt.lvin_ex_yn_spcd IS '림프혈관침윤존재여부구분코드';
COMMENT ON COLUMN brcn_exam_sgpt.lvin_ex_yn_spnm IS '림프혈관침윤존재여부구분명';
COMMENT ON COLUMN brcn_exam_sgpt.lpin_ex_yn_spcd IS '림프절주위침윤존재여부구분코드';
COMMENT ON COLUMN brcn_exam_sgpt.lpin_ex_yn_spnm IS '림프절주위침윤존재여부구분명';
COMMENT ON COLUMN brcn_exam_sgpt.niin_ex_yn_spcd IS '유두침윤존재여부구분코드';
COMMENT ON COLUMN brcn_exam_sgpt.niin_ex_yn_spnm IS '유두침윤존재여부구분명';
COMMENT ON COLUMN brcn_exam_sgpt.sgpt_micf_ex_yn_spcd IS '외과병리미세석회화존재여부구분코드';
COMMENT ON COLUMN brcn_exam_sgpt.sgpt_micf_ex_yn_spnm IS '외과병리미세석회화존재여부구분명';
COMMENT ON COLUMN brcn_exam_sgpt.incn_necr_ex_yn_spcd IS '상피내암괴사존재여부구분코드';
COMMENT ON COLUMN brcn_exam_sgpt.incn_necr_ex_yn_spnm IS '상피내암괴사존재여부구분명';
COMMENT ON COLUMN brcn_exam_sgpt.incn_asso_ex_yn_spcd IS '상피내암동반존재여부구분코드';
COMMENT ON COLUMN brcn_exam_sgpt.incn_asso_ex_yn_spnm IS '상피내암동반존재여부구분명';
COMMENT ON COLUMN brcn_exam_sgpt.incn_core_grcd IS '상피내암핵등급코드';
COMMENT ON COLUMN brcn_exam_sgpt.incn_core_grnm IS '상피내암핵등급명';
COMMENT ON COLUMN brcn_exam_sgpt.srmg_sfmg_lnth_vl IS '수술절제면안전경계길이값';
COMMENT ON COLUMN brcn_exam_sgpt.srmg_detl_cont IS '수술절제면상세내용';
COMMENT ON COLUMN brcn_exam_sgpt.srmg_rlct_cd IS '수술절제면잔존코드';
COMMENT ON COLUMN brcn_exam_sgpt.srmg_rlct_nm IS '수술절제면잔존명';
COMMENT ON COLUMN brcn_exam_sgpt.mtcr_size_vl IS '전이암크기값';
COMMENT ON COLUMN brcn_exam_sgpt.asso_lesn_cd IS '동반병변코드';
COMMENT ON COLUMN brcn_exam_sgpt.asso_lesn_nm IS '동반병변명';
COMMENT ON COLUMN brcn_exam_sgpt.resi_tumr_cd IS '잔여종양코드';
COMMENT ON COLUMN brcn_exam_sgpt.resi_tumr_nm IS '잔여종양명';
COMMENT ON COLUMN brcn_exam_sgpt.ln_totl_cnt IS '림프절총수';
COMMENT ON COLUMN brcn_exam_sgpt.pstv_ln_cnt IS '양성림프절수';
COMMENT ON COLUMN brcn_exam_sgpt.slnd_totl_cnt IS '감시림프절총수';
COMMENT ON COLUMN brcn_exam_sgpt.pstv_slnd_cnt IS '양성감시림프절수';
COMMENT ON COLUMN brcn_exam_sgpt.nsnd_totl_cnt IS '비감시림프절총수';
COMMENT ON COLUMN brcn_exam_sgpt.pstv_nsnd_cnt IS '양성비감시림프절수';
COMMENT ON COLUMN brcn_exam_sgpt.ajcc_yr IS 'AJCC년도';
COMMENT ON COLUMN brcn_exam_sgpt.afop_path_tnm_stag_vl IS '수술후병리TNM병기값';
COMMENT ON COLUMN brcn_exam_sgpt.afop_path_t_stag_vl IS '수술후병리T병기값';
COMMENT ON COLUMN brcn_exam_sgpt.afop_path_n_stag_vl IS '수술후병리N병기값';
COMMENT ON COLUMN brcn_exam_sgpt.afop_path_m_stag_vl IS '수술후병리M병기값';
COMMENT ON COLUMN brcn_exam_sgpt.crtn_dt IS '생성일시';


-- brcn_fuor_rlps definition

-- Drop table

-- DROP TABLE brcn_fuor_rlps;

CREATE TABLE brcn_fuor_rlps (
	hosp_cd varchar(20) NOT NULL, -- 병원코드
	pt_sbst_no varchar(10) NOT NULL, -- 환자대체번호
	rldg_ymd varchar(8) NOT NULL, -- 재발진단일자
	rldg_seq numeric(3) NOT NULL, -- 재발진단순번
	rlps_site_cd varchar(20) NULL, -- 재발부위코드
	rlps_site_nm varchar(200) NULL, -- 재발부위명
	rlps_trtm_cont varchar(4000) NULL, -- 재발치료내용
	rldg_mtcd varchar(20) NULL, -- 재발진단방법코드
	rldg_mtnm varchar(200) NULL, -- 재발진단방법명
	rlps_kncd varchar(20) NULL, -- 재발종류코드
	rlps_knnm varchar(200) NULL, -- 재발종류명
	rlps_sym_cd varchar(20) NULL, -- 재발증상코드
	rlps_sym_nm varchar(200) NULL, -- 재발증상명
	crtn_dt timestamp NOT NULL, -- 생성일시
	CONSTRAINT brcn_fuor_rlps_pk PRIMARY KEY (hosp_cd, pt_sbst_no, rldg_ymd, rldg_seq)
);
COMMENT ON TABLE brcn_fuor_rlps IS '유방암_추적관찰_재발';

-- Column comments

COMMENT ON COLUMN brcn_fuor_rlps.hosp_cd IS '병원코드';
COMMENT ON COLUMN brcn_fuor_rlps.pt_sbst_no IS '환자대체번호';
COMMENT ON COLUMN brcn_fuor_rlps.rldg_ymd IS '재발진단일자';
COMMENT ON COLUMN brcn_fuor_rlps.rldg_seq IS '재발진단순번';
COMMENT ON COLUMN brcn_fuor_rlps.rlps_site_cd IS '재발부위코드';
COMMENT ON COLUMN brcn_fuor_rlps.rlps_site_nm IS '재발부위명';
COMMENT ON COLUMN brcn_fuor_rlps.rlps_trtm_cont IS '재발치료내용';
COMMENT ON COLUMN brcn_fuor_rlps.rldg_mtcd IS '재발진단방법코드';
COMMENT ON COLUMN brcn_fuor_rlps.rldg_mtnm IS '재발진단방법명';
COMMENT ON COLUMN brcn_fuor_rlps.rlps_kncd IS '재발종류코드';
COMMENT ON COLUMN brcn_fuor_rlps.rlps_knnm IS '재발종류명';
COMMENT ON COLUMN brcn_fuor_rlps.rlps_sym_cd IS '재발증상코드';
COMMENT ON COLUMN brcn_fuor_rlps.rlps_sym_nm IS '재발증상명';
COMMENT ON COLUMN brcn_fuor_rlps.crtn_dt IS '생성일시';


-- brcn_pt_fmht definition

-- Drop table

-- DROP TABLE brcn_pt_fmht;

CREATE TABLE brcn_pt_fmht (
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
	CONSTRAINT brcn_pt_fmht_pk PRIMARY KEY (hosp_cd, pt_sbst_no, fmht_rcrd_ymd, fmht_rcrd_seq)
);
COMMENT ON TABLE brcn_pt_fmht IS '유방암_환자_가족력';

-- Column comments

COMMENT ON COLUMN brcn_pt_fmht.hosp_cd IS '병원코드';
COMMENT ON COLUMN brcn_pt_fmht.pt_sbst_no IS '환자대체번호';
COMMENT ON COLUMN brcn_pt_fmht.fmht_rcrd_ymd IS '가족력기록일자';
COMMENT ON COLUMN brcn_pt_fmht.fmht_rcrd_seq IS '가족력기록순번';
COMMENT ON COLUMN brcn_pt_fmht.fmht_yn_noans_spcd IS '가족력여부무응답구분코드';
COMMENT ON COLUMN brcn_pt_fmht.fmht_yn_noans_spnm IS '가족력여부무응답구분명';
COMMENT ON COLUMN brcn_pt_fmht.pt_fm_rlcd IS '환자가족관계코드';
COMMENT ON COLUMN brcn_pt_fmht.pt_fm_rlnm IS '환자가족관계명';
COMMENT ON COLUMN brcn_pt_fmht.pt_fmrl_etc_cont IS '환자가족관계기타내용';
COMMENT ON COLUMN brcn_pt_fmht.fmhs_htn_yn_noans_spcd IS '가족병력고혈압여부무응답구분코드';
COMMENT ON COLUMN brcn_pt_fmht.fmhs_htn_yn_noans_spnm IS '가족병력고혈압여부무응답구분명';
COMMENT ON COLUMN brcn_pt_fmht.fmhs_dbt_yn_noans_spcd IS '가족병력당뇨여부무응답구분코드';
COMMENT ON COLUMN brcn_pt_fmht.fmhs_dbt_yn_noans_spnm IS '가족병력당뇨여부무응답구분명';
COMMENT ON COLUMN brcn_pt_fmht.fmht_tb_yn_noans_spcd IS '가족력결핵여부무응답구분코드';
COMMENT ON COLUMN brcn_pt_fmht.fmht_tb_yn_noans_spnm IS '가족력결핵여부무응답구분명';
COMMENT ON COLUMN brcn_pt_fmht.fmhs_lvds_yn_noans_spcd IS '가족병력간질환여부무응답구분코드';
COMMENT ON COLUMN brcn_pt_fmht.fmhs_lvds_yn_noans_spnm IS '가족병력간질환여부무응답구분명';
COMMENT ON COLUMN brcn_pt_fmht.fmhs_cncr_yn_noans_spcd IS '가족병력암여부무응답구분코드';
COMMENT ON COLUMN brcn_pt_fmht.fmhs_cncr_yn_noans_spnm IS '가족병력암여부무응답구분명';
COMMENT ON COLUMN brcn_pt_fmht.fmht_cncr_kncd IS '가족력암종류코드';
COMMENT ON COLUMN brcn_pt_fmht.fmht_cncr_knnm IS '가족력암종류명';
COMMENT ON COLUMN brcn_pt_fmht.fmht_cncr_kind_etc_cont IS '가족력암종류기타내용';
COMMENT ON COLUMN brcn_pt_fmht.fmhs_etc_yn_noans_spcd IS '가족병력기타여부무응답구분코드';
COMMENT ON COLUMN brcn_pt_fmht.fmhs_etc_yn_noans_spnm IS '가족병력기타여부무응답구분명';
COMMENT ON COLUMN brcn_pt_fmht.fmhs_etc_cont IS '가족병력기타내용';
COMMENT ON COLUMN brcn_pt_fmht.crtn_dt IS '생성일시';


-- brcn_pt_hlinf definition

-- Drop table

-- DROP TABLE brcn_pt_hlinf;

CREATE TABLE brcn_pt_hlinf (
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
	cur_smok_yn_noans_spcd varchar(20) NULL, -- 현재흡연여부무응답구분코드
	cur_smok_yn_noans_spnm varchar(50) NULL, -- 현재흡연여부무응답구분명
	shis_yn_noans_spcd varchar(20) NULL, -- 흡연력여부무응답구분코드
	shis_yn_noans_spnm varchar(50) NULL, -- 흡연력여부무응답구분명
	smok_strt_age_vl varchar(100) NULL, -- 흡연시작연령값
	smok_qty varchar(200) NULL, -- 흡연량
	smok_dtrn_ycnt varchar(100) NULL, -- 흡연기간년수
	nsmk_strt_yr varchar(4) NULL, -- 금연시작년도
	mhis_yn_noans_spcd varchar(20) NULL, -- 병력여부무응답구분코드
	mhis_yn_noans_spnm varchar(50) NULL, -- 병력여부무응답구분명
	mhis_htn_yn_noans_spcd varchar(20) NULL, -- 병력고혈압여부무응답구분코드
	mhis_htn_yn_noans_spnm varchar(50) NULL, -- 병력고혈압여부무응답구분명
	mhis_dbt_yn_noans_spcd varchar(20) NULL, -- 병력당뇨여부무응답구분코드
	mhis_dbt_yn_noans_spnm varchar(50) NULL, -- 병력당뇨여부무응답구분명
	mhis_tb_yn_noans_spcd varchar(20) NULL, -- 병력결핵여부무응답구분코드
	mhis_tb_yn_noans_spnm varchar(50) NULL, -- 병력결핵여부무응답구분명
	mhis_lvds_yn_noans_spcd varchar(20) NULL, -- 병력간질환여부무응답구분코드
	mhis_lvds_yn_noans_spnm varchar(50) NULL, -- 병력간질환여부무응답구분명
	mhis_hl_yn_noans_spcd varchar(20) NULL, -- 병력고지혈증여부무응답구분코드
	mhis_hl_yn_noans_spnm varchar(50) NULL, -- 병력고지혈증여부무응답구분명
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
	main_sym_yn_noans_spcd varchar(20) NULL, -- 주증상여부무응답구분코드
	main_sym_yn_noans_spnm varchar(50) NULL, -- 주증상여부무응답구분명
	main_sym_cont varchar(4000) NULL, -- 주증상내용
	ohad_hstr_yn_noans_spcd varchar(20) NULL, -- 타병원진단후전원여부무응답구분코드
	ohad_hstr_yn_noans_spnm varchar(50) NULL, -- 타병원진단후전원여부무응답구분명
	dsch_stcd varchar(20) NULL, -- 퇴원상태코드
	dsch_stnm varchar(200) NULL, -- 퇴원상태명
	crtn_dt timestamp NOT NULL, -- 생성일시
	CONSTRAINT brcn_pt_hlinf_pk PRIMARY KEY (hosp_cd, pt_sbst_no, adm_ymd, hlinf_seq)
);
COMMENT ON TABLE brcn_pt_hlinf IS '유방암_환자_건강정보';

-- Column comments

COMMENT ON COLUMN brcn_pt_hlinf.hosp_cd IS '병원코드';
COMMENT ON COLUMN brcn_pt_hlinf.pt_sbst_no IS '환자대체번호';
COMMENT ON COLUMN brcn_pt_hlinf.adm_ymd IS '입원일자';
COMMENT ON COLUMN brcn_pt_hlinf.hlinf_seq IS '건강정보순번';
COMMENT ON COLUMN brcn_pt_hlinf.dsch_ymd IS '퇴원일자';
COMMENT ON COLUMN brcn_pt_hlinf.cur_drnk_yn_noans_spcd IS '현재음주여부무응답구분코드';
COMMENT ON COLUMN brcn_pt_hlinf.cur_drnk_yn_noans_spnm IS '현재음주여부무응답구분명';
COMMENT ON COLUMN brcn_pt_hlinf.dhis_yn_noans_spcd IS '음주력여부무응답구분코드';
COMMENT ON COLUMN brcn_pt_hlinf.dhis_yn_noans_spnm IS '음주력여부무응답구분명';
COMMENT ON COLUMN brcn_pt_hlinf.drnk_strt_age_vl IS '음주시작연령값';
COMMENT ON COLUMN brcn_pt_hlinf.drnk_kncd IS '음주종류코드';
COMMENT ON COLUMN brcn_pt_hlinf.drnk_knnm IS '음주종류명';
COMMENT ON COLUMN brcn_pt_hlinf.drnk_qty IS '음주량';
COMMENT ON COLUMN brcn_pt_hlinf.drnk_nt IS '음주횟수';
COMMENT ON COLUMN brcn_pt_hlinf.drnk_dtrn_ycnt IS '음주기간년수';
COMMENT ON COLUMN brcn_pt_hlinf.ndrk_strt_yr IS '금주시작년도';
COMMENT ON COLUMN brcn_pt_hlinf.cur_smok_yn_noans_spcd IS '현재흡연여부무응답구분코드';
COMMENT ON COLUMN brcn_pt_hlinf.cur_smok_yn_noans_spnm IS '현재흡연여부무응답구분명';
COMMENT ON COLUMN brcn_pt_hlinf.shis_yn_noans_spcd IS '흡연력여부무응답구분코드';
COMMENT ON COLUMN brcn_pt_hlinf.shis_yn_noans_spnm IS '흡연력여부무응답구분명';
COMMENT ON COLUMN brcn_pt_hlinf.smok_strt_age_vl IS '흡연시작연령값';
COMMENT ON COLUMN brcn_pt_hlinf.smok_qty IS '흡연량';
COMMENT ON COLUMN brcn_pt_hlinf.smok_dtrn_ycnt IS '흡연기간년수';
COMMENT ON COLUMN brcn_pt_hlinf.nsmk_strt_yr IS '금연시작년도';
COMMENT ON COLUMN brcn_pt_hlinf.mhis_yn_noans_spcd IS '병력여부무응답구분코드';
COMMENT ON COLUMN brcn_pt_hlinf.mhis_yn_noans_spnm IS '병력여부무응답구분명';
COMMENT ON COLUMN brcn_pt_hlinf.mhis_htn_yn_noans_spcd IS '병력고혈압여부무응답구분코드';
COMMENT ON COLUMN brcn_pt_hlinf.mhis_htn_yn_noans_spnm IS '병력고혈압여부무응답구분명';
COMMENT ON COLUMN brcn_pt_hlinf.mhis_dbt_yn_noans_spcd IS '병력당뇨여부무응답구분코드';
COMMENT ON COLUMN brcn_pt_hlinf.mhis_dbt_yn_noans_spnm IS '병력당뇨여부무응답구분명';
COMMENT ON COLUMN brcn_pt_hlinf.mhis_tb_yn_noans_spcd IS '병력결핵여부무응답구분코드';
COMMENT ON COLUMN brcn_pt_hlinf.mhis_tb_yn_noans_spnm IS '병력결핵여부무응답구분명';
COMMENT ON COLUMN brcn_pt_hlinf.mhis_lvds_yn_noans_spcd IS '병력간질환여부무응답구분코드';
COMMENT ON COLUMN brcn_pt_hlinf.mhis_lvds_yn_noans_spnm IS '병력간질환여부무응답구분명';
COMMENT ON COLUMN brcn_pt_hlinf.mhis_hl_yn_noans_spcd IS '병력고지혈증여부무응답구분코드';
COMMENT ON COLUMN brcn_pt_hlinf.mhis_hl_yn_noans_spnm IS '병력고지혈증여부무응답구분명';
COMMENT ON COLUMN brcn_pt_hlinf.mhis_cncr_yn_noans_spcd IS '병력암여부무응답구분코드';
COMMENT ON COLUMN brcn_pt_hlinf.mhis_cncr_yn_noans_spnm IS '병력암여부무응답구분명';
COMMENT ON COLUMN brcn_pt_hlinf.mhis_cncr_kncd IS '병력암종류코드';
COMMENT ON COLUMN brcn_pt_hlinf.mhis_cncr_knnm IS '병력암종류명';
COMMENT ON COLUMN brcn_pt_hlinf.mhis_depr_yn_noans_spcd IS '병력우울증여부무응답구분코드';
COMMENT ON COLUMN brcn_pt_hlinf.mhis_depr_yn_noans_spnm IS '병력우울증여부무응답구분명';
COMMENT ON COLUMN brcn_pt_hlinf.mhis_insm_yn_noans_spcd IS '병력불면증여부무응답구분코드';
COMMENT ON COLUMN brcn_pt_hlinf.mhis_insm_yn_noans_spnm IS '병력불면증여부무응답구분명';
COMMENT ON COLUMN brcn_pt_hlinf.mhis_cads_yn_noans_spcd IS '병력심장질환여부무응답구분코드';
COMMENT ON COLUMN brcn_pt_hlinf.mhis_cads_yn_noans_spnm IS '병력심장질환여부무응답구분명';
COMMENT ON COLUMN brcn_pt_hlinf.etc_mhis_yn_noans_spcd IS '기타병력여부무응답구분코드';
COMMENT ON COLUMN brcn_pt_hlinf.etc_mhis_yn_noans_spnm IS '기타병력여부무응답구분명';
COMMENT ON COLUMN brcn_pt_hlinf.etc_mhis_diss_cont IS '기타병력질환내용';
COMMENT ON COLUMN brcn_pt_hlinf.main_sym_yn_noans_spcd IS '주증상여부무응답구분코드';
COMMENT ON COLUMN brcn_pt_hlinf.main_sym_yn_noans_spnm IS '주증상여부무응답구분명';
COMMENT ON COLUMN brcn_pt_hlinf.main_sym_cont IS '주증상내용';
COMMENT ON COLUMN brcn_pt_hlinf.ohad_hstr_yn_noans_spcd IS '타병원진단후전원여부무응답구분코드';
COMMENT ON COLUMN brcn_pt_hlinf.ohad_hstr_yn_noans_spnm IS '타병원진단후전원여부무응답구분명';
COMMENT ON COLUMN brcn_pt_hlinf.dsch_stcd IS '퇴원상태코드';
COMMENT ON COLUMN brcn_pt_hlinf.dsch_stnm IS '퇴원상태명';
COMMENT ON COLUMN brcn_pt_hlinf.crtn_dt IS '생성일시';


-- brcn_pt_obinf definition

-- Drop table

-- DROP TABLE brcn_pt_obinf;

CREATE TABLE brcn_pt_obinf (
	hosp_cd varchar(20) NOT NULL, -- 병원코드
	pt_sbst_no varchar(10) NOT NULL, -- 환자대체번호
	obtr_rcrd_ymd varchar(8) NOT NULL, -- 산과기록일자
	obtr_rcrd_seq numeric(3) NOT NULL, -- 산과기록순번
	marg_yn_noans_spcd varchar(20) NULL, -- 결혼여부무응답구분코드
	marg_yn_noans_spnm varchar(50) NULL, -- 결혼여부무응답구분명
	marg_detl_cd varchar(20) NULL, -- 결혼상세코드
	marg_detl_nm varchar(200) NULL, -- 결혼상세명
	hrpr_yn_noans_spcd varchar(20) NULL, -- HRT경험여부무응답구분코드
	hrpr_yn_noans_spnm varchar(50) NULL, -- HRT경험여부무응답구분명
	hrt_impl_mcnt numeric(3) NULL, -- HRT시행월수
	mena_age_vl numeric(4) NULL, -- 초경연령값
	delv_age_vl numeric(4) NULL, -- 출산연령값
	delv_chld_cnt numeric(3) NULL, -- 출산자녀수
	bfpr_yn_noans_spcd varchar(20) NULL, -- 모유수유경험여부무응답구분코드
	bfpr_yn_noans_spnm varchar(50) NULL, -- 모유수유경험여부무응답구분명
	brfd_mcnt numeric(3) NULL, -- 모유수유월수
	oc_use_yn_noans_spcd varchar(20) NULL, -- 경구피임약사용여부무응답구분코드
	oc_use_yn_noans_spnm varchar(50) NULL, -- 경구피임약사용여부무응답구분명
	oc_use_mcnt numeric(3) NULL, -- 경구피임약사용월수
	meno_yn_noans_spcd varchar(20) NULL, -- 폐경여부무응답구분코드
	meno_yn_noans_spnm varchar(50) NULL, -- 폐경여부무응답구분명
	meno_age_vl numeric(4) NULL, -- 폐경연령값
	utec_yn_noans_spcd varchar(20) NULL, -- 자궁적출술여부무응답구분코드
	utec_yn_noans_spnm varchar(50) NULL, -- 자궁적출술여부무응답구분명
	crtn_dt timestamp NOT NULL, -- 생성일시
	CONSTRAINT brcn_pt_obinf_pk PRIMARY KEY (hosp_cd, pt_sbst_no, obtr_rcrd_ymd, obtr_rcrd_seq)
);
COMMENT ON TABLE brcn_pt_obinf IS '유방암_환자_산과정보';

-- Column comments

COMMENT ON COLUMN brcn_pt_obinf.hosp_cd IS '병원코드';
COMMENT ON COLUMN brcn_pt_obinf.pt_sbst_no IS '환자대체번호';
COMMENT ON COLUMN brcn_pt_obinf.obtr_rcrd_ymd IS '산과기록일자';
COMMENT ON COLUMN brcn_pt_obinf.obtr_rcrd_seq IS '산과기록순번';
COMMENT ON COLUMN brcn_pt_obinf.marg_yn_noans_spcd IS '결혼여부무응답구분코드';
COMMENT ON COLUMN brcn_pt_obinf.marg_yn_noans_spnm IS '결혼여부무응답구분명';
COMMENT ON COLUMN brcn_pt_obinf.marg_detl_cd IS '결혼상세코드';
COMMENT ON COLUMN brcn_pt_obinf.marg_detl_nm IS '결혼상세명';
COMMENT ON COLUMN brcn_pt_obinf.hrpr_yn_noans_spcd IS 'HRT경험여부무응답구분코드';
COMMENT ON COLUMN brcn_pt_obinf.hrpr_yn_noans_spnm IS 'HRT경험여부무응답구분명';
COMMENT ON COLUMN brcn_pt_obinf.hrt_impl_mcnt IS 'HRT시행월수';
COMMENT ON COLUMN brcn_pt_obinf.mena_age_vl IS '초경연령값';
COMMENT ON COLUMN brcn_pt_obinf.delv_age_vl IS '출산연령값';
COMMENT ON COLUMN brcn_pt_obinf.delv_chld_cnt IS '출산자녀수';
COMMENT ON COLUMN brcn_pt_obinf.bfpr_yn_noans_spcd IS '모유수유경험여부무응답구분코드';
COMMENT ON COLUMN brcn_pt_obinf.bfpr_yn_noans_spnm IS '모유수유경험여부무응답구분명';
COMMENT ON COLUMN brcn_pt_obinf.brfd_mcnt IS '모유수유월수';
COMMENT ON COLUMN brcn_pt_obinf.oc_use_yn_noans_spcd IS '경구피임약사용여부무응답구분코드';
COMMENT ON COLUMN brcn_pt_obinf.oc_use_yn_noans_spnm IS '경구피임약사용여부무응답구분명';
COMMENT ON COLUMN brcn_pt_obinf.oc_use_mcnt IS '경구피임약사용월수';
COMMENT ON COLUMN brcn_pt_obinf.meno_yn_noans_spcd IS '폐경여부무응답구분코드';
COMMENT ON COLUMN brcn_pt_obinf.meno_yn_noans_spnm IS '폐경여부무응답구분명';
COMMENT ON COLUMN brcn_pt_obinf.meno_age_vl IS '폐경연령값';
COMMENT ON COLUMN brcn_pt_obinf.utec_yn_noans_spcd IS '자궁적출술여부무응답구분코드';
COMMENT ON COLUMN brcn_pt_obinf.utec_yn_noans_spnm IS '자궁적출술여부무응답구분명';
COMMENT ON COLUMN brcn_pt_obinf.crtn_dt IS '생성일시';


-- brcn_trtm_antp definition

-- Drop table

-- DROP TABLE brcn_trtm_antp;

CREATE TABLE brcn_trtm_antp (
	hosp_cd varchar(20) NOT NULL, -- 병원코드
	pt_sbst_no varchar(10) NOT NULL, -- 환자대체번호
	antp_strt_ymd varchar(8) NOT NULL, -- 항암요법시작일자
	antp_seq numeric(3) NOT NULL, -- 항암요법순번
	antp_end_ymd varchar(8) NULL, -- 항암요법종료일자
	antp_nm varchar(200) NULL, -- 항암요법명
	antp_cycl_cnt numeric(3) NULL, -- 항암요법주기수
	antp_line_cnt numeric(3) NULL, -- 항암요법라인수
	antp_temp_stop_yn_unid_spcd varchar(20) NULL, -- 항암요법임시중단여부확인불가구분코드
	antp_temp_stop_yn_unid_spnm varchar(50) NULL, -- 항암요법임시중단여부확인불가구분명
	antp_end_resn_cd varchar(20) NULL, -- 항암요법종료이유코드
	antp_end_resn_nm varchar(200) NULL, -- 항암요법종료이유명
	antp_asmt_ymd varchar(8) NULL, -- 항암요법평가일자
	antp_asmt_item_cd varchar(20) NULL, -- 항암요법평가항목코드
	antp_asmt_item_nm varchar(200) NULL, -- 항암요법평가항목명
	antp_seff_item_cd varchar(20) NULL, -- 항암요법부작용항목코드
	antp_seff_item_nm varchar(200) NULL, -- 항암요법부작용항목명
	antp_seff_grcd varchar(20) NULL, -- 항암요법부작용등급코드
	antp_seff_grnm varchar(200) NULL, -- 항암요법부작용등급명
	antp_trtm_prps_cd varchar(20) NULL, -- 항암요법치료목적코드
	antp_trtm_prps_nm varchar(200) NULL, -- 항암요법치료목적명
	crtn_dt timestamp NOT NULL, -- 생성일시
	CONSTRAINT brcn_trtm_antp_pk PRIMARY KEY (hosp_cd, pt_sbst_no, antp_strt_ymd, antp_seq)
);
COMMENT ON TABLE brcn_trtm_antp IS '유방암_치료_항암요법';

-- Column comments

COMMENT ON COLUMN brcn_trtm_antp.hosp_cd IS '병원코드';
COMMENT ON COLUMN brcn_trtm_antp.pt_sbst_no IS '환자대체번호';
COMMENT ON COLUMN brcn_trtm_antp.antp_strt_ymd IS '항암요법시작일자';
COMMENT ON COLUMN brcn_trtm_antp.antp_seq IS '항암요법순번';
COMMENT ON COLUMN brcn_trtm_antp.antp_end_ymd IS '항암요법종료일자';
COMMENT ON COLUMN brcn_trtm_antp.antp_nm IS '항암요법명';
COMMENT ON COLUMN brcn_trtm_antp.antp_cycl_cnt IS '항암요법주기수';
COMMENT ON COLUMN brcn_trtm_antp.antp_line_cnt IS '항암요법라인수';
COMMENT ON COLUMN brcn_trtm_antp.antp_temp_stop_yn_unid_spcd IS '항암요법임시중단여부확인불가구분코드';
COMMENT ON COLUMN brcn_trtm_antp.antp_temp_stop_yn_unid_spnm IS '항암요법임시중단여부확인불가구분명';
COMMENT ON COLUMN brcn_trtm_antp.antp_end_resn_cd IS '항암요법종료이유코드';
COMMENT ON COLUMN brcn_trtm_antp.antp_end_resn_nm IS '항암요법종료이유명';
COMMENT ON COLUMN brcn_trtm_antp.antp_asmt_ymd IS '항암요법평가일자';
COMMENT ON COLUMN brcn_trtm_antp.antp_asmt_item_cd IS '항암요법평가항목코드';
COMMENT ON COLUMN brcn_trtm_antp.antp_asmt_item_nm IS '항암요법평가항목명';
COMMENT ON COLUMN brcn_trtm_antp.antp_seff_item_cd IS '항암요법부작용항목코드';
COMMENT ON COLUMN brcn_trtm_antp.antp_seff_item_nm IS '항암요법부작용항목명';
COMMENT ON COLUMN brcn_trtm_antp.antp_seff_grcd IS '항암요법부작용등급코드';
COMMENT ON COLUMN brcn_trtm_antp.antp_seff_grnm IS '항암요법부작용등급명';
COMMENT ON COLUMN brcn_trtm_antp.antp_trtm_prps_cd IS '항암요법치료목적코드';
COMMENT ON COLUMN brcn_trtm_antp.antp_trtm_prps_nm IS '항암요법치료목적명';
COMMENT ON COLUMN brcn_trtm_antp.crtn_dt IS '생성일시';


-- brcn_trtm_bltr definition

-- Drop table

-- DROP TABLE brcn_trtm_bltr;

CREATE TABLE brcn_trtm_bltr (
	hosp_cd varchar(20) NOT NULL, -- 병원코드
	pt_sbst_no varchar(10) NOT NULL, -- 환자대체번호
	bltr_prsc_ymd varchar(8) NOT NULL, -- 수혈처방일자
	bltr_prsc_seq numeric(3) NOT NULL, -- 수혈처방순번
	blpt_kncd varchar(20) NULL, -- 혈액제제종류코드
	blpt_knnm varchar(200) NULL, -- 혈액제제종류명
	blpt_cd varchar(20) NULL, -- 혈액제제코드
	blpt_nm varchar(200) NULL, -- 혈액제제명
	blpt_capa numeric(5) NULL, -- 혈액제제용량
	bltr_pack_cnt numeric(3) NULL, -- 수혈팩수
	bltr_totl_qty numeric(8) NULL, -- 수혈총량
	crtn_dt timestamp NOT NULL, -- 생성일시
	CONSTRAINT brcn_trtm_bltr_pk PRIMARY KEY (hosp_cd, pt_sbst_no, bltr_prsc_ymd, bltr_prsc_seq)
);
COMMENT ON TABLE brcn_trtm_bltr IS '유방암_치료_수혈';

-- Column comments

COMMENT ON COLUMN brcn_trtm_bltr.hosp_cd IS '병원코드';
COMMENT ON COLUMN brcn_trtm_bltr.pt_sbst_no IS '환자대체번호';
COMMENT ON COLUMN brcn_trtm_bltr.bltr_prsc_ymd IS '수혈처방일자';
COMMENT ON COLUMN brcn_trtm_bltr.bltr_prsc_seq IS '수혈처방순번';
COMMENT ON COLUMN brcn_trtm_bltr.blpt_kncd IS '혈액제제종류코드';
COMMENT ON COLUMN brcn_trtm_bltr.blpt_knnm IS '혈액제제종류명';
COMMENT ON COLUMN brcn_trtm_bltr.blpt_cd IS '혈액제제코드';
COMMENT ON COLUMN brcn_trtm_bltr.blpt_nm IS '혈액제제명';
COMMENT ON COLUMN brcn_trtm_bltr.blpt_capa IS '혈액제제용량';
COMMENT ON COLUMN brcn_trtm_bltr.bltr_pack_cnt IS '수혈팩수';
COMMENT ON COLUMN brcn_trtm_bltr.bltr_totl_qty IS '수혈총량';
COMMENT ON COLUMN brcn_trtm_bltr.crtn_dt IS '생성일시';


-- brcn_trtm_drin definition

-- Drop table

-- DROP TABLE brcn_trtm_drin;

CREATE TABLE brcn_trtm_drin (
	hosp_cd varchar(20) NOT NULL, -- 병원코드
	pt_sbst_no varchar(10) NOT NULL, -- 환자대체번호
	drug_prsc_ymd varchar(8) NOT NULL, -- 약제처방일자
	drug_prsc_seq numeric(3) NOT NULL, -- 약제처방순번
	drug_clcd varchar(20) NULL, -- 약제분류코드
	drug_clnm varchar(200) NULL, -- 약제분류명
	andr_spcd varchar(20) NULL, -- 항암약제구분코드
	andr_spnm varchar(200) NULL, -- 항암약제구분명
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
	drug_prsc_capa_unit_cd varchar(20) NULL, -- 약제처방용량단위코드
	drug_prsc_capa_unit_nm varchar(200) NULL, -- 약제처방용량단위명
	drug_prsc_dcnt numeric(6) NULL, -- 약제처방일수
	drug_injc_pth_cd varchar(20) NULL, -- 약제투여경로코드
	drug_injc_pth_nm varchar(200) NULL, -- 약제투여경로명
	crtn_dt timestamp NOT NULL, -- 생성일시
	CONSTRAINT brcn_trtm_drin_pk PRIMARY KEY (hosp_cd, pt_sbst_no, drug_prsc_ymd, drug_prsc_seq)
);
COMMENT ON TABLE brcn_trtm_drin IS '유방암_치료_약제성분';

-- Column comments

COMMENT ON COLUMN brcn_trtm_drin.hosp_cd IS '병원코드';
COMMENT ON COLUMN brcn_trtm_drin.pt_sbst_no IS '환자대체번호';
COMMENT ON COLUMN brcn_trtm_drin.drug_prsc_ymd IS '약제처방일자';
COMMENT ON COLUMN brcn_trtm_drin.drug_prsc_seq IS '약제처방순번';
COMMENT ON COLUMN brcn_trtm_drin.drug_clcd IS '약제분류코드';
COMMENT ON COLUMN brcn_trtm_drin.drug_clnm IS '약제분류명';
COMMENT ON COLUMN brcn_trtm_drin.andr_spcd IS '항암약제구분코드';
COMMENT ON COLUMN brcn_trtm_drin.andr_spnm IS '항암약제구분명';
COMMENT ON COLUMN brcn_trtm_drin.drin_kncd IS '약제성분종류코드';
COMMENT ON COLUMN brcn_trtm_drin.drin_knnm IS '약제성분종류명';
COMMENT ON COLUMN brcn_trtm_drin.drin_cd IS '약제성분코드';
COMMENT ON COLUMN brcn_trtm_drin.drin_nm IS '약제성분명';
COMMENT ON COLUMN brcn_trtm_drin.drin_smct_cd IS '약제성분SNOMEDCT코드';
COMMENT ON COLUMN brcn_trtm_drin.drin_smct_nm IS '약제성분SNOMEDCT명';
COMMENT ON COLUMN brcn_trtm_drin.drug_cd IS '약제코드';
COMMENT ON COLUMN brcn_trtm_drin.drug_nm IS '약제명';
COMMENT ON COLUMN brcn_trtm_drin.drug_edi_cd IS '약제EDI코드';
COMMENT ON COLUMN brcn_trtm_drin.drug_edi_nm IS '약제EDI명';
COMMENT ON COLUMN brcn_trtm_drin.drug_atc_cd IS '약제ATC코드';
COMMENT ON COLUMN brcn_trtm_drin.drug_atc_nm IS '약제ATC명';
COMMENT ON COLUMN brcn_trtm_drin.drug_rxnm_cd IS '약제RXNORM코드';
COMMENT ON COLUMN brcn_trtm_drin.drug_rxnm_nm IS '약제RXNORM명';
COMMENT ON COLUMN brcn_trtm_drin.drug_prsc_capa IS '약제처방용량';
COMMENT ON COLUMN brcn_trtm_drin.drug_prsc_capa_unit_cd IS '약제처방용량단위코드';
COMMENT ON COLUMN brcn_trtm_drin.drug_prsc_capa_unit_nm IS '약제처방용량단위명';
COMMENT ON COLUMN brcn_trtm_drin.drug_prsc_dcnt IS '약제처방일수';
COMMENT ON COLUMN brcn_trtm_drin.drug_injc_pth_cd IS '약제투여경로코드';
COMMENT ON COLUMN brcn_trtm_drin.drug_injc_pth_nm IS '약제투여경로명';
COMMENT ON COLUMN brcn_trtm_drin.crtn_dt IS '생성일시';


-- brcn_trtm_oprt definition

-- Drop table

-- DROP TABLE brcn_trtm_oprt;

CREATE TABLE brcn_trtm_oprt (
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
	oprt_anst_site_cd varchar(20) NULL, -- 수술마취부위코드
	oprt_anst_site_nm varchar(200) NULL, -- 수술마취부위명
	ebl_qty numeric(5) NULL, -- 추정실혈량
	oprt_ldtm varchar(20) NULL, -- 수술소요시간
	oprt_prps_cd varchar(20) NULL, -- 수술목적코드
	oprt_prps_nm varchar(200) NULL, -- 수술목적명
	oprt_site_cd varchar(20) NULL, -- 수술부위코드
	oprt_site_nm varchar(200) NULL, -- 수술부위명
	brcn_oprt_mtcd varchar(20) NULL, -- 유방암수술방법코드
	brcn_oprt_mtnm varchar(200) NULL, -- 유방암수술방법명
	asa_scor_cd varchar(20) NULL, -- ASA점수코드
	asa_scor_nm varchar(200) NULL, -- ASA점수명
	oprt_incs_mthd_cont varchar(4000) NULL, -- 수술절개방법내용
	oprt_icln_tpcd varchar(20) NULL, -- 수술절개선유형코드
	oprt_icln_tpnm varchar(200) NULL, -- 수술절개선유형명
	oprt_tumr_loca_cd varchar(20) NULL, -- 수술종양위치코드
	oprt_tumr_loca_nm varchar(200) NULL, -- 수술종양위치명
	oprt_tumr_detl_loca_cd varchar(20) NULL, -- 수술종양상세위치코드
	oprt_tumr_detl_loca_nm varchar(200) NULL, -- 수술종양상세위치명
	repr_clcd varchar(20) NULL, -- 재건술분류코드
	repr_clnm varchar(200) NULL, -- 재건술분류명
	repr_mtcd varchar(20) NULL, -- 재건술방법코드
	repr_mtnm varchar(200) NULL, -- 재건술방법명
	slnd_dtct_mtcd varchar(20) NULL, -- 감시림프절검출방법코드
	slnd_dtct_mtnm varchar(200) NULL, -- 감시림프절검출방법명
	afop_asmt_item_cd varchar(20) NULL, -- 수술후평가항목코드
	afop_asmt_item_nm varchar(200) NULL, -- 수술후평가항목명
	crtn_dt timestamp NOT NULL, -- 생성일시
	CONSTRAINT brcn_trtm_oprt_pk PRIMARY KEY (hosp_cd, pt_sbst_no, oprt_ymd, oprt_seq)
);
COMMENT ON TABLE brcn_trtm_oprt IS '유방암_치료_수술';

-- Column comments

COMMENT ON COLUMN brcn_trtm_oprt.hosp_cd IS '병원코드';
COMMENT ON COLUMN brcn_trtm_oprt.pt_sbst_no IS '환자대체번호';
COMMENT ON COLUMN brcn_trtm_oprt.oprt_ymd IS '수술일자';
COMMENT ON COLUMN brcn_trtm_oprt.oprt_seq IS '수술순번';
COMMENT ON COLUMN brcn_trtm_oprt.oprt_kncd IS '수술종류코드';
COMMENT ON COLUMN brcn_trtm_oprt.oprt_knnm IS '수술종류명';
COMMENT ON COLUMN brcn_trtm_oprt.oprt_cd IS '수술코드';
COMMENT ON COLUMN brcn_trtm_oprt.oprt_nm IS '수술명';
COMMENT ON COLUMN brcn_trtm_oprt.oprt_edi_cd IS '수술EDI코드';
COMMENT ON COLUMN brcn_trtm_oprt.oprt_edi_nm IS '수술EDI명';
COMMENT ON COLUMN brcn_trtm_oprt.oprt_smct_cd IS '수술SNOMEDCT코드';
COMMENT ON COLUMN brcn_trtm_oprt.oprt_smct_nm IS '수술SNOMEDCT명';
COMMENT ON COLUMN brcn_trtm_oprt.oprt_icd9cm_cd IS '수술ICD9CM코드';
COMMENT ON COLUMN brcn_trtm_oprt.oprt_icd9cm_nm IS '수술ICD9CM명';
COMMENT ON COLUMN brcn_trtm_oprt.oprt_anst_site_cd IS '수술마취부위코드';
COMMENT ON COLUMN brcn_trtm_oprt.oprt_anst_site_nm IS '수술마취부위명';
COMMENT ON COLUMN brcn_trtm_oprt.ebl_qty IS '추정실혈량';
COMMENT ON COLUMN brcn_trtm_oprt.oprt_ldtm IS '수술소요시간';
COMMENT ON COLUMN brcn_trtm_oprt.oprt_prps_cd IS '수술목적코드';
COMMENT ON COLUMN brcn_trtm_oprt.oprt_prps_nm IS '수술목적명';
COMMENT ON COLUMN brcn_trtm_oprt.oprt_site_cd IS '수술부위코드';
COMMENT ON COLUMN brcn_trtm_oprt.oprt_site_nm IS '수술부위명';
COMMENT ON COLUMN brcn_trtm_oprt.brcn_oprt_mtcd IS '유방암수술방법코드';
COMMENT ON COLUMN brcn_trtm_oprt.brcn_oprt_mtnm IS '유방암수술방법명';
COMMENT ON COLUMN brcn_trtm_oprt.asa_scor_cd IS 'ASA점수코드';
COMMENT ON COLUMN brcn_trtm_oprt.asa_scor_nm IS 'ASA점수명';
COMMENT ON COLUMN brcn_trtm_oprt.oprt_incs_mthd_cont IS '수술절개방법내용';
COMMENT ON COLUMN brcn_trtm_oprt.oprt_icln_tpcd IS '수술절개선유형코드';
COMMENT ON COLUMN brcn_trtm_oprt.oprt_icln_tpnm IS '수술절개선유형명';
COMMENT ON COLUMN brcn_trtm_oprt.oprt_tumr_loca_cd IS '수술종양위치코드';
COMMENT ON COLUMN brcn_trtm_oprt.oprt_tumr_loca_nm IS '수술종양위치명';
COMMENT ON COLUMN brcn_trtm_oprt.oprt_tumr_detl_loca_cd IS '수술종양상세위치코드';
COMMENT ON COLUMN brcn_trtm_oprt.oprt_tumr_detl_loca_nm IS '수술종양상세위치명';
COMMENT ON COLUMN brcn_trtm_oprt.repr_clcd IS '재건술분류코드';
COMMENT ON COLUMN brcn_trtm_oprt.repr_clnm IS '재건술분류명';
COMMENT ON COLUMN brcn_trtm_oprt.repr_mtcd IS '재건술방법코드';
COMMENT ON COLUMN brcn_trtm_oprt.repr_mtnm IS '재건술방법명';
COMMENT ON COLUMN brcn_trtm_oprt.slnd_dtct_mtcd IS '감시림프절검출방법코드';
COMMENT ON COLUMN brcn_trtm_oprt.slnd_dtct_mtnm IS '감시림프절검출방법명';
COMMENT ON COLUMN brcn_trtm_oprt.afop_asmt_item_cd IS '수술후평가항목코드';
COMMENT ON COLUMN brcn_trtm_oprt.afop_asmt_item_nm IS '수술후평가항목명';
COMMENT ON COLUMN brcn_trtm_oprt.crtn_dt IS '생성일시';


-- brcn_trtm_rd definition

-- Drop table

-- DROP TABLE brcn_trtm_rd;

CREATE TABLE brcn_trtm_rd (
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
	rd_gy numeric(10,3) NULL, -- 방사선선량
	rd_impl_nt numeric(5) NULL, -- 방사선시행횟수
	rd_totl_gy numeric(10,3) NULL, -- 방사선총선량
	rdt_asmt_ymd varchar(8) NULL, -- 방사선치료평가일자
	rdt_seff_perd_spcd varchar(20) NULL, -- 방사선치료부작용시기구분코드
	rdt_seff_perd_spnm varchar(200) NULL, -- 방사선치료부작용시기구분명
	rdt_seff_kncd varchar(20) NULL, -- 방사선치료부작용종류코드
	rdt_seff_knnm varchar(200) NULL, -- 방사선치료부작용종류명
	rdt_seff_grcd varchar(20) NULL, -- 방사선치료부작용등급코드
	rdt_seff_grnm varchar(200) NULL, -- 방사선치료부작용등급명
	rdt_asmt_item_cd varchar(20) NULL, -- 방사선치료평가항목코드
	rdt_asmt_item_nm varchar(200) NULL, -- 방사선치료평가항목명
	crtn_dt timestamp NOT NULL, -- 생성일시
	CONSTRAINT brcn_trtm_rd_pk PRIMARY KEY (hosp_cd, pt_sbst_no, rdt_prsc_ymd, rdt_prsc_seq)
);
COMMENT ON TABLE brcn_trtm_rd IS '유방암_치료_방사선';

-- Column comments

COMMENT ON COLUMN brcn_trtm_rd.hosp_cd IS '병원코드';
COMMENT ON COLUMN brcn_trtm_rd.pt_sbst_no IS '환자대체번호';
COMMENT ON COLUMN brcn_trtm_rd.rdt_prsc_ymd IS '방사선치료처방일자';
COMMENT ON COLUMN brcn_trtm_rd.rdt_prsc_seq IS '방사선치료처방순번';
COMMENT ON COLUMN brcn_trtm_rd.rdt_kncd IS '방사선치료종류코드';
COMMENT ON COLUMN brcn_trtm_rd.rdt_knnm IS '방사선치료종류명';
COMMENT ON COLUMN brcn_trtm_rd.rdt_cd IS '방사선치료코드';
COMMENT ON COLUMN brcn_trtm_rd.rdt_nm IS '방사선치료명';
COMMENT ON COLUMN brcn_trtm_rd.rdt_edi_cd IS '방사선치료EDI코드';
COMMENT ON COLUMN brcn_trtm_rd.rdt_edi_nm IS '방사선치료EDI명';
COMMENT ON COLUMN brcn_trtm_rd.rdt_smct_cd IS '방사선치료SNOMEDCT코드';
COMMENT ON COLUMN brcn_trtm_rd.rdt_smct_nm IS '방사선치료SNOMEDCT명';
COMMENT ON COLUMN brcn_trtm_rd.rdt_prps_cd IS '방사선치료목적코드';
COMMENT ON COLUMN brcn_trtm_rd.rdt_prps_nm IS '방사선치료목적명';
COMMENT ON COLUMN brcn_trtm_rd.rdt_site_cd IS '방사선치료부위코드';
COMMENT ON COLUMN brcn_trtm_rd.rdt_site_nm IS '방사선치료부위명';
COMMENT ON COLUMN brcn_trtm_rd.rd_gy IS '방사선선량';
COMMENT ON COLUMN brcn_trtm_rd.rd_impl_nt IS '방사선시행횟수';
COMMENT ON COLUMN brcn_trtm_rd.rd_totl_gy IS '방사선총선량';
COMMENT ON COLUMN brcn_trtm_rd.rdt_asmt_ymd IS '방사선치료평가일자';
COMMENT ON COLUMN brcn_trtm_rd.rdt_seff_perd_spcd IS '방사선치료부작용시기구분코드';
COMMENT ON COLUMN brcn_trtm_rd.rdt_seff_perd_spnm IS '방사선치료부작용시기구분명';
COMMENT ON COLUMN brcn_trtm_rd.rdt_seff_kncd IS '방사선치료부작용종류코드';
COMMENT ON COLUMN brcn_trtm_rd.rdt_seff_knnm IS '방사선치료부작용종류명';
COMMENT ON COLUMN brcn_trtm_rd.rdt_seff_grcd IS '방사선치료부작용등급코드';
COMMENT ON COLUMN brcn_trtm_rd.rdt_seff_grnm IS '방사선치료부작용등급명';
COMMENT ON COLUMN brcn_trtm_rd.rdt_asmt_item_cd IS '방사선치료평가항목코드';
COMMENT ON COLUMN brcn_trtm_rd.rdt_asmt_item_nm IS '방사선치료평가항목명';
COMMENT ON COLUMN brcn_trtm_rd.crtn_dt IS '생성일시';