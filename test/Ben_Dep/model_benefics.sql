-- Create table
create table SIS.BENEFICS
(
  cod_ben        VARCHAR2(19) not null,
  nome           VARCHAR2(70) not null,
  cod_rec_dig    NUMBER(6) not null,
  cod_emp        NUMBER(6) not null,
  cod_loc_cobr   NUMBER(4),
  codigo         CHAR(19),
  codemp         CHAR(6),
  dtnasc         DATE not null,
  nrodoc         VARCHAR2(18),
  nrovias        NUMBER(2),
  dtcad          DATE not null,
  codplano       CHAR(3),
  endereco       VARCHAR2(60) not null,
  cidade         VARCHAR2(40) not null,
  bairro         VARCHAR2(40) not null,
  estado         CHAR(2) not null,
  cep            CHAR(8) not null,
  fone           VARCHAR2(12),
  sexo           CHAR(1) not null,
  cor            CHAR(1) not null,
  estcivil       CHAR(1) not null,
  codext         VARCHAR2(19),
  careadc        CHAR(1),
  fatura         CHAR(1),
  dtcons         DATE,
  dtexa          DATE,
  tipocgc        CHAR(1) not null,
  dtcta          DATE,
  rg             VARCHAR2(18),
  dtint          DATE,
  cic            VARCHAR2(11),
  inscrest       VARCHAR2(18),
  dtobs          DATE,
  cgc            CHAR(14),
  dtout          DATE,
  dtcar7         DATE,
  obscart1       VARCHAR2(60),
  obscart2       VARCHAR2(60),
  dtcar8         DATE,
  validade       DATE,
  dtativo        DATE,
  contrato       CHAR(6),
  dtcontra       DATE,
  mesfat         CHAR(5),
  codtabprc      CHAR(5),
  email_ben      VARCHAR2(100),
  dthr_alter     DATE not null,
  dt_alter       DATE,
  cod_setor      NUMBER(4),
  boleprop       CHAR(1) default 'F',
  cod_proced     NUMBER(4),
  cod_itproced   NUMBER(3),
  dt_admissao    DATE,
  cod_prof       NUMBER(4),
  nome_pai       VARCHAR2(70),
  cod_med_grup   NUMBER(4),
  nome_mae       VARCHAR2(70),
  cod_gestor     NUMBER(3),
  cod_lotdiusr   NUMBER(10),
  cod_carteira   NUMBER(4),
  dt_concorren   DATE,
  opc_doen_pre   NUMBER(1),
  pis_pasep      NUMBER(11),
  dthr_digitac   DATE not null,
  cod_grauins    NUMBER(3),
  nro_matric     VARCHAR2(20),
  cod_cidade     NUMBER(8),
  nro_lograd     NUMBER(6),
  compl_lograd   VARCHAR2(40),
  fone_com       VARCHAR2(12),
  ramal          NUMBER(5),
  fax            VARCHAR2(12),
  nome_contato   VARCHAR2(40),
  fone_contato   VARCHAR2(12),
  nro_crt_cred   VARCHAR2(20),
  dt_val_cart    DATE,
  fone_pager     VARCHAR2(12),
  cod_pager      VARCHAR2(25),
  idade_fx_et    NUMBER(3),
  cod_adcarcre   NUMBER(3),
  perc_contrib   NUMBER(5,2),
  ramal_fax      NUMBER(5),
  ramal_fonere   NUMBER(5),
  enviadatasus   VARCHAR2(1) default 'T' not null,
  ben_semcadps   VARCHAR2(1) default 'F' not null,
  cod_cen_cust   NUMBER(4),
  emite_cart     CHAR(1) default 'T' not null,
  nro_cns        VARCHAR2(20),
  excl_pre_cad   CHAR(1) default 'N' not null,
  nro_cont_pre   NUMBER(10),
  cod_pais_emiss NUMBER(3),
  org_emis_rg    VARCHAR2(30),
  perc_tx_inc    NUMBER(6,2) default 0,
  vlr_tx_inc     NUMBER default 0,
  dt_exp_rg      DATE,
  dt_infor       DATE,
  ativo          VARCHAR2(1),
  nacionalidade  VARCHAR2(40),
  ativoant       VARCHAR2(1),
  resp_infor     VARCHAR2(60),
  cargo_infor    VARCHAR2(30),
  celular        VARCHAR2(12),
  cod_cco_sib    VARCHAR2(10),
  tel_celular    VARCHAR2(12),
  tem_exc_pro    VARCHAR2(1),
  dv_cco_sib     VARCHAR2(2),
  dt_mig_por     DATE,
  cod_pla_por    NUMBER(9),
  cod_rec_alt    NUMBER(6),
  cod_liminar    NUMBER(10),
  dt_val_limi    DATE,
  dec_nas_vivo   VARCHAR2(11),
  cod_par_resp   NUMBER(2),
  cod_receb      NUMBER(6),
  ben_estend     VARCHAR2(1),
  apelido        VARCHAR2(70),
  cod_etnia_in   NUMBER(5),
  tp_sangue      VARCHAR2(3),
  dt_obito       DATE,
  just_obito     VARCHAR2(250),
  cod_cid_nas    NUMBER(8),
  dt_natu        DATE,
  nro_pr_natu    VARCHAR2(50),
  dt_entr_pais   DATE,
  cod_pais_nas   NUMBER(4),
  email_sec      VARCHAR2(100),
  cod_tp_logra   NUMBER(6),
  cod_org_emis   NUMBER(3),
  uf_org_emis    VARCHAR2(2),
  cod_tp_cert    NUMBER(3),
  nro_mat_cert   VARCHAR2(32),
  nm_cart_cert   VARCHAR2(20),
  nro_liv_cert   VARCHAR2(8),
  nro_fol_cert   VARCHAR2(4),
  nro_ter_cert   VARCHAR2(8),
  dt_emi_cert    DATE,
  nro_cpts       VARCHAR2(11),
  serie_cpts     VARCHAR2(5),
  dt_emi_ctps    DATE,
  nro_cnh        VARCHAR2(11),
  dt_emis_cnh    DATE,
  uf_cnh         VARCHAR2(2),
  nro_pasport    VARCHAR2(15),
  cod_pais_pas   NUMBER(4),
  dt_emis_pas    DATE,
  dt_val_pas     DATE,
  cod_subempr    VARCHAR2(20)
)
tablespace SIS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 6416K
    next 1M
    minextents 1
    maxextents unlimited
  );
-- Add comments to the columns 
comment on column SIS.BENEFICS.apelido
  is 'Apelido ou nome social';
comment on column SIS.BENEFICS.cod_etnia_in
  is 'Código da etnia (se indigena)';
comment on column SIS.BENEFICS.tp_sangue
  is 'Tipo sanguineo';
comment on column SIS.BENEFICS.dt_obito
  is 'Data do obito';
comment on column SIS.BENEFICS.just_obito
  is 'Justtificativa do obito';
comment on column SIS.BENEFICS.cod_cid_nas
  is 'Codigo do municipio de nascimento';
comment on column SIS.BENEFICS.dt_natu
  is 'Data de naturalização';
comment on column SIS.BENEFICS.nro_pr_natu
  is 'Número do protocolo/oficio da naturalização';
comment on column SIS.BENEFICS.dt_entr_pais
  is 'Data de entrada no pais';
comment on column SIS.BENEFICS.cod_pais_nas
  is 'Código do pais de nascimento';
comment on column SIS.BENEFICS.email_sec
  is 'Endereço de e-mail (secundário)';
comment on column SIS.BENEFICS.cod_tp_logra
  is 'Código do tipo de logradouro';
comment on column SIS.BENEFICS.cod_org_emis
  is 'Código do orgão emissor do RG';
comment on column SIS.BENEFICS.uf_org_emis
  is 'UF da emissão do RG';
comment on column SIS.BENEFICS.cod_tp_cert
  is 'Código do tipo de certidão';
comment on column SIS.BENEFICS.nro_mat_cert
  is 'Número da matricula da certidão';
comment on column SIS.BENEFICS.nm_cart_cert
  is 'Número da carteira da certidão';
comment on column SIS.BENEFICS.nro_liv_cert
  is 'Número do livro da certidão';
comment on column SIS.BENEFICS.nro_fol_cert
  is 'Número da folha da certidão';
comment on column SIS.BENEFICS.nro_ter_cert
  is 'Número do termo da certidão';
comment on column SIS.BENEFICS.dt_emi_cert
  is 'Data de emissão da certidão';
comment on column SIS.BENEFICS.nro_cpts
  is 'Número da Carteira de Trabalho';
comment on column SIS.BENEFICS.serie_cpts
  is 'Número de Série da Carteira de Trabalho';
comment on column SIS.BENEFICS.dt_emi_ctps
  is 'Data de emissão da Carteira de Trabalho';
comment on column SIS.BENEFICS.nro_cnh
  is 'Número da Carteira de Habilitação';
comment on column SIS.BENEFICS.dt_emis_cnh
  is 'Data da Habilitação';
comment on column SIS.BENEFICS.uf_cnh
  is 'UF da Habilitação';
comment on column SIS.BENEFICS.nro_pasport
  is 'Número do passaporte';
comment on column SIS.BENEFICS.cod_pais_pas
  is 'Código do Pais do passaporte';
comment on column SIS.BENEFICS.dt_emis_pas
  is 'Data de emissão do passaporte';
comment on column SIS.BENEFICS.dt_val_pas
  is 'Data de validade do passaporte';
comment on column SIS.BENEFICS.cod_subempr
  is 'CÃ³digo Sub_Empresa';
-- Create/Recreate indexes 
create unique index SIS.AK_BENEFICS1 on SIS.BENEFICS (COD_BEN, COD_EMP, DTNASC, NOME, IDADE_FX_ET, CODEXT, DTCAD, CIC, CGC, SEXO)
  tablespace SIS_INDEX
  pctfree 0
  initrans 6
  maxtrans 255
  storage
  (
    initial 504K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index SIS.AK_BENEFICS3 on SIS.BENEFICS (COD_BEN, COD_EMP, DTNASC, NOME, IDADE_FX_ET, CODEXT, DTCAD, SEXO, COD_GESTOR, FONE, FONE_COM)
  tablespace SIS_INDEX
  pctfree 10
  initrans 6
  maxtrans 255
  storage
  (
    initial 1M
    next 1M
    minextents 1
    maxextents unlimited
  );
create index SIS.IE_BENEFICS_SS_02 on SIS.BENEFICS (SUBSTR(REPLACE(TRANSLATE(FONE,'-_.',' '),' ',''),1,2), SUBSTR(REPLACE(TRANSLATE(FONE,'-_.',' '),' ',''),3,10))
  tablespace SIS_INDEX
  pctfree 2
  initrans 10
  maxtrans 255
  storage
  (
    initial 512K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index SIS.IE_BENEFICS_SS_03 on SIS.BENEFICS (SUBSTR(REPLACE(TRANSLATE(FONE,'-._#@!*',' '),' ',''),3,10))
  tablespace SIS_INDEX
  pctfree 2
  initrans 10
  maxtrans 255
  storage
  (
    initial 512K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index SIS.IE_BENEFICS_SS_04 on SIS.BENEFICS (SUBSTR(REPLACE(TRANSLATE(FONE_COM,'-._#@!*',' '),' ',''),1,2))
  tablespace SIS_INDEX
  pctfree 2
  initrans 10
  maxtrans 255
  storage
  (
    initial 512K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index SIS.IE_BENEFICS_SS_05 on SIS.BENEFICS (SUBSTR(REPLACE(TRANSLATE(FONE_COM,'-._#@!*',' '),' ',''),3,10))
  tablespace SIS_INDEX
  pctfree 2
  initrans 10
  maxtrans 255
  storage
  (
    initial 512K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index SIS.IE_BENEFICS_SS_06 on SIS.BENEFICS (SUBSTR(REPLACE(TRANSLATE(FONE_COM,'-_.',' '),' ',''),1,2), SUBSTR(REPLACE(TRANSLATE(FONE_COM,'-_.',' '),' ',''),3,10))
  tablespace SIS_INDEX
  pctfree 2
  initrans 10
  maxtrans 255
  storage
  (
    initial 512K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index SIS.IE_BENEFICS_SS_07 on SIS.BENEFICS (SUBSTR(REPLACE(TRANSLATE(FONE_CONTATO,'-_.',' '),' ',''),1,2), SUBSTR(REPLACE(TRANSLATE(FONE_CONTATO,'-_.',' '),' ',''),3,10))
  tablespace SIS_INDEX
  pctfree 2
  initrans 10
  maxtrans 255
  storage
  (
    initial 512K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index SIS.IE_BENEFICS_SS_08 on SIS.BENEFICS (SUBSTR(REPLACE(TRANSLATE(FONE,'-._#@!*',' '),' ',''),1,2))
  tablespace SIS_INDEX
  pctfree 2
  initrans 10
  maxtrans 255
  storage
  (
    initial 512K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index SIS.IE_BENEFICS_UCSC_01 on SIS.BENEFICS (CODEXT)
  tablespace SIS_INDEX
  pctfree 2
  initrans 10
  maxtrans 255
  storage
  (
    initial 512K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index SIS.IE_BENEFICS1 on SIS.BENEFICS (NOME, COD_BEN)
  tablespace SIS_INDEX
  pctfree 10
  initrans 6
  maxtrans 255
  storage
  (
    initial 504K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index SIS.IE_BENEFICS_10 on SIS.BENEFICS (RG)
  tablespace SIS_INDEX
  pctfree 10
  initrans 6
  maxtrans 255
  storage
  (
    initial 1M
    next 1M
    minextents 1
    maxextents unlimited
  );
create index SIS.IE_BENEFICS_15 on SIS.BENEFICS (COD_CCO_SIB||DV_CCO_SIB)
  tablespace SIS_INDEX
  pctfree 10
  initrans 6
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index SIS.IE_BENEFICS_16 on SIS.BENEFICS (COD_CCO_SIB)
  tablespace SIS_INDEX
  pctfree 10
  initrans 6
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index SIS.IE_BENEFICS_17 on SIS.BENEFICS (NOME, COD_EMP, COD_BEN)
  tablespace SIS_INDEX
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 504K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index SIS.IE_BENEFICS_18 on SIS.BENEFICS (NOME, CGC, CIC, COD_BEN)
  tablespace SIS_INDEX
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 504K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index SIS.IE_BENEFICS_19 on SIS.BENEFICS (COD_EMP, COD_BEN)
  tablespace SIS_INDEX
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 504K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index SIS.IE_BENEFICS2 on SIS.BENEFICS (COD_EMP, COD_SETOR, COD_BEN, NOME, DTNASC)
  tablespace SIS_INDEX
  pctfree 10
  initrans 6
  maxtrans 255
  storage
  (
    initial 504K
    next 1M
    minextents 1
    maxextents unlimited
  );
create unique index SIS.IE_BENEFICS3 on SIS.BENEFICS (COD_BEN, COD_EMP, DTNASC, NOME, IDADE_FX_ET, CODEXT, DTCAD, COD_CEN_CUST)
  tablespace SIS_INDEX
  pctfree 0
  initrans 6
  maxtrans 255
  storage
  (
    initial 504K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index SIS.IE_BENEFICS_30 on SIS.BENEFICS (COD_SUBEMPR)
  tablespace SIS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index SIS.IE_BENEFICS4 on SIS.BENEFICS (CIC)
  tablespace SIS_INDEX
  pctfree 10
  initrans 6
  maxtrans 255
  storage
  (
    initial 504K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index SIS.IE_BENEFICS5 on SIS.BENEFICS (COD_EMP, COD_SETOR, NOME, COD_BEN, DTNASC)
  tablespace SIS_INDEX
  pctfree 0
  initrans 6
  maxtrans 255
  storage
  (
    initial 504K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index SIS.IE_BENEFICS6 on SIS.BENEFICS (COD_LOC_COBR, COD_BEN, NOME, ENDERECO, BAIRRO, CEP, RG, CIC, COD_EMP, COD_CIDADE, NRO_LOGRAD, DTHR_ALTER, DTCAD, DTNASC, DTHR_DIGITAC, FONE, NRODOC)
  tablespace SIS_INDEX
  pctfree 0
  initrans 6
  maxtrans 255
  storage
  (
    initial 504K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index SIS.IE_BENEFICS8 on SIS.BENEFICS (COD_CIDADE, COD_BEN, NOME, ENDERECO, BAIRRO, CEP, RG, CIC, COD_EMP, COD_LOC_COBR, DTHR_ALTER, DTCAD, DTNASC, DTHR_DIGITAC)
  tablespace SIS
  pctfree 10
  initrans 6
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index SIS.IE_BENEFICS9 on SIS.BENEFICS (COD_EMP, COD_BEN, NOME, DTNASC, RG, CODEXT, COD_CIDADE)
  tablespace SIS_INDEX
  pctfree 10
  initrans 6
  maxtrans 255
  storage
  (
    initial 1M
    next 1M
    minextents 1
    maxextents unlimited
  );
create index SIS.IF_BENEFICS_SS_01 on SIS.BENEFICS (TO_NUMBER(COD_BEN))
  tablespace SIS_INDEX
  pctfree 2
  initrans 10
  maxtrans 255
  storage
  (
    initial 512K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index SIS.IF_BENEFICS_1 on SIS.BENEFICS (COD_ADCARCRE)
  tablespace SIS_INDEX
  pctfree 0
  initrans 6
  maxtrans 255
  storage
  (
    initial 504K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index SIS.IF_BENEFICS_10 on SIS.BENEFICS (COD_PROF)
  tablespace SIS_INDEX
  pctfree 0
  initrans 6
  maxtrans 255
  storage
  (
    initial 504K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index SIS.IF_BENEFICS_11 on SIS.BENEFICS (COD_REC_DIG)
  tablespace SIS_INDEX
  pctfree 0
  initrans 6
  maxtrans 255
  storage
  (
    initial 504K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index SIS.IF_BENEFICS13 on SIS.BENEFICS (COD_CEN_CUST)
  tablespace SIS_INDEX
  pctfree 0
  initrans 6
  maxtrans 255
  storage
  (
    initial 504K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index SIS.IF_BENEFICS_14 on SIS.BENEFICS (NRO_CONT_PRE)
  tablespace SIS_INDEX
  pctfree 10
  initrans 6
  maxtrans 255
  storage
  (
    initial 1M
    next 1M
    minextents 1
    maxextents unlimited
  );
create index SIS.IF_BENEFICS_2 on SIS.BENEFICS (COD_PROCED, COD_ITPROCED)
  tablespace SIS_INDEX
  pctfree 0
  initrans 6
  maxtrans 255
  storage
  (
    initial 504K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index SIS.IF_BENEFICS_20 on SIS.BENEFICS (COD_ETNIA_IN)
  tablespace SIS_INDEX
  pctfree 10
  initrans 6
  maxtrans 255
  storage
  (
    initial 504K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index SIS.IF_BENEFICS_21 on SIS.BENEFICS (COD_CID_NAS)
  tablespace SIS_INDEX
  pctfree 10
  initrans 6
  maxtrans 255
  storage
  (
    initial 504K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index SIS.IF_BENEFICS_22 on SIS.BENEFICS (COD_PAIS_NAS)
  tablespace SIS_INDEX
  pctfree 10
  initrans 6
  maxtrans 255
  storage
  (
    initial 504K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index SIS.IF_BENEFICS_23 on SIS.BENEFICS (COD_PAIS_PAS)
  tablespace SIS_INDEX
  pctfree 10
  initrans 6
  maxtrans 255
  storage
  (
    initial 504K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index SIS.IF_BENEFICS_24 on SIS.BENEFICS (COD_TP_LOGRA)
  tablespace SIS_INDEX
  pctfree 10
  initrans 6
  maxtrans 255
  storage
  (
    initial 504K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index SIS.IF_BENEFICS_25 on SIS.BENEFICS (COD_ORG_EMIS)
  tablespace SIS_INDEX
  pctfree 10
  initrans 6
  maxtrans 255
  storage
  (
    initial 504K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index SIS.IF_BENEFICS_26 on SIS.BENEFICS (COD_TP_CERT)
  tablespace SIS_INDEX
  pctfree 10
  initrans 6
  maxtrans 255
  storage
  (
    initial 504K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index SIS.IF_BENEFICS_3 on SIS.BENEFICS (COD_LOTDIUSR)
  tablespace SIS_INDEX
  pctfree 0
  initrans 6
  maxtrans 255
  storage
  (
    initial 504K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index SIS.IF_BENEFICS_4 on SIS.BENEFICS (COD_MED_GRUP)
  tablespace SIS_INDEX
  pctfree 0
  initrans 6
  maxtrans 255
  storage
  (
    initial 504K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index SIS.IF_BENEFICS_5 on SIS.BENEFICS (COD_LOC_COBR)
  tablespace SIS_INDEX
  pctfree 0
  initrans 6
  maxtrans 255
  storage
  (
    initial 504K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index SIS.IF_BENEFICS_6 on SIS.BENEFICS (COD_GRAUINS)
  tablespace SIS_INDEX
  pctfree 0
  initrans 6
  maxtrans 255
  storage
  (
    initial 504K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index SIS.IF_BENEFICS_7 on SIS.BENEFICS (COD_CIDADE)
  tablespace SIS_INDEX
  pctfree 0
  initrans 6
  maxtrans 255
  storage
  (
    initial 504K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index SIS.IXFKTR_SIS40 on SIS.BENEFICS (COD_RECEB)
  tablespace IXFKTBS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index SIS.IXFKTR_SIS41 on SIS.BENEFICS (COD_LIMINAR)
  tablespace IXFKTBS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index SIS.IXFKTR_SIS42 on SIS.BENEFICS (COD_REC_ALT)
  tablespace IXFKTBS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index SIS.IX_PERF_BENEFICS_1 on SIS.BENEFICS (SUBSTR(REPLACE(TRANSLATE(FONE,'-_.',' '),' ',''),3,10), SUBSTR(REPLACE(TRANSLATE(FONE,'-_.',' '),' ',''),1,2))
  tablespace SIS_INDEX
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index SIS.IX_PERF_BENEFICS_2 on SIS.BENEFICS (SUBSTR(REPLACE(TRANSLATE(FONE_COM,'-_.',' '),' ',''),3,10), SUBSTR(REPLACE(TRANSLATE(FONE_COM,'-_.',' '),' ',''),1,2))
  tablespace SIS_INDEX
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index SIS.IX_PERF_BENEFICS_3 on SIS.BENEFICS (SUBSTR(REPLACE(TRANSLATE(FONE_CONTATO,'-_.',' '),' ',''),3,10), SUBSTR(REPLACE(TRANSLATE(FONE_CONTATO,'-_.',' '),' ',''),1,2))
  tablespace SIS_INDEX
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index UCSC.UCSC_IE_BENEFICS1 on SIS.BENEFICS (NOME, DTNASC)
  tablespace SIS_INDEX
  pctfree 10
  initrans 6
  maxtrans 255
  storage
  (
    initial 1M
    next 1M
    minextents 1
    maxextents unlimited
  );
create index UCSC.UCSC_IE_BENEFICS2 on SIS.BENEFICS (NOME_MAE, DTNASC)
  tablespace SIS_INDEX
  pctfree 10
  initrans 6
  maxtrans 255
  storage
  (
    initial 1M
    next 1M
    minextents 1
    maxextents unlimited
  );
-- Create/Recreate primary, unique and foreign key constraints 
alter table SIS.BENEFICS
  add constraint PK_BENEFICS primary key (COD_BEN)
  using index 
  tablespace SIS_INDEX
  pctfree 10
  initrans 6
  maxtrans 255
  storage
  (
    initial 504K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table SIS.BENEFICS
  add constraint FK_ADM_CARTCRE#BENEFICS foreign key (COD_ADCARCRE)
  references SIS.ADM_CARTCRED (COD_ADCARCRE);
alter table SIS.BENEFICS
  add constraint FK_CENTRO_CUSTO#BENEFICS foreign key (COD_CEN_CUST)
  references SIS.CENTRO_CUSTO (COD_CEN_CUST);
alter table SIS.BENEFICS
  add constraint FK_CIDADE#BENEFICS foreign key (COD_CIDADE)
  references SIHSIS.CIDADE (COD_CIDADE);
alter table SIS.BENEFICS
  add constraint FK_CIDADE2#BENEFICS foreign key (COD_CID_NAS)
  references SIHSIS.CIDADE (COD_CIDADE);
alter table SIS.BENEFICS
  add constraint FK_EMPRESAS#BENEFICS foreign key (COD_EMP)
  references SIS.EMPRESAS (COD_EMP);
alter table SIS.BENEFICS
  add constraint FK_EMP_SETOR#BENEFICS foreign key (COD_EMP, COD_SETOR)
  references SIS.EMP_SETOR (COD_EMP, COD_SETOR);
alter table SIS.BENEFICS
  add constraint FK_ETNIA_INDIG#BENEFICS foreign key (COD_ETNIA_IN)
  references SIH.ETNIA_INDIG (COD_ETNIA_IN);
alter table SIS.BENEFICS
  add constraint FK_GRAU_INSTR#BENEFICS foreign key (COD_GRAUINS)
  references SIS.GRAU_INSTR (COD_GRAUINS);
alter table SIS.BENEFICS
  add constraint FK_ITEM_PROCED#BENEFICS foreign key (COD_PROCED, COD_ITPROCED)
  references SIS.ITEM_PROCED (COD_PROCED, COD_ITPROCED);
alter table SIS.BENEFICS
  add constraint FK_LIMINAR#BENEFICS foreign key (COD_LIMINAR)
  references SIS.LIMINAR (COD_LIMINAR);
alter table SIS.BENEFICS
  add constraint FK_LOCALCOB#BENEFICS foreign key (COD_LOC_COBR)
  references SIS.LOCALCOB (COD_LOC_COBR);
alter table SIS.BENEFICS
  add constraint FK_LOTE_DIG_USR#BENEFICS foreign key (COD_LOTDIUSR)
  references SIS.LOTE_DIG_USR (COD_LOTDIUSR);
alter table SIS.BENEFICS
  add constraint FK_MEDGRUPO#BENEFICS foreign key (COD_MED_GRUP)
  references SIS.MEDGRUPO (COD_MED_GRUP);
alter table SIS.BENEFICS
  add constraint FK_ORG_EMISSOR#BENEFICS foreign key (COD_ORG_EMIS)
  references SIHSIS.ORG_EMISSOR (COD_ORG_EMIS);
alter table SIS.BENEFICS
  add constraint FK_PAIS1#BENEFICS foreign key (COD_PAIS_NAS)
  references SIHSIS.PAIS (COD_PAIS);
alter table SIS.BENEFICS
  add constraint FK_PAIS2#BENEFICS foreign key (COD_PAIS_PAS)
  references SIHSIS.PAIS (COD_PAIS);
alter table SIS.BENEFICS
  add constraint FK_PRE_CAD#BENEFICS foreign key (NRO_CONT_PRE)
  references SIS.PRE_CAD (NRO_CONT_PRE);
alter table SIS.BENEFICS
  add constraint FK_PROFISSAO#BENEFICS foreign key (COD_PROF)
  references SIS.PROFISSAO (COD_PROF);
alter table SIS.BENEFICS
  add constraint FK_RECEBEDOR#BENEFICS foreign key (COD_RECEB)
  references SIHSIS.RECEBEDOR (COD_RECEB);
alter table SIS.BENEFICS
  add constraint FK_RECEP#BENEFICS foreign key (COD_REC_DIG)
  references SIS.RECEP (COD_RECEP);
alter table SIS.BENEFICS
  add constraint FK_RECEP3#BENEFICS foreign key (COD_REC_ALT)
  references SIS.RECEP (COD_RECEP);
alter table SIS.BENEFICS
  add constraint FK_SUB_EMPRESA#BENEFICS foreign key (COD_SUBEMPR)
  references SIS.SUB_EMPRESA (COD_SUBEMPR);
alter table SIS.BENEFICS
  add constraint FK_TIPO_LOGRAD#BENEFICS foreign key (COD_TP_LOGRA)
  references SIHSIS.TIPO_LOGRAD (COD_TP_LOGRA);
alter table SIS.BENEFICS
  add constraint FK_TP_CERTIDAO#BENEFICS foreign key (COD_TP_CERT)
  references SIHSIS.TP_CERTIDAO (COD_TP_CERT);
-- Create/Recreate check constraints 
alter table SIS.BENEFICS
  add constraint CK_BENEFICS#BEN_SEMCADPS
  check (BEN_SEMCADPS IN ('T', 'F'))
  novalidate;
alter table SIS.BENEFICS
  add constraint CK_BENEFICS#CAREADC
  check (CAREADC IN ('S', 'N'))
  novalidate;
alter table SIS.BENEFICS
  add constraint CK_BENEFICS#COR
  check (COR IN ('A', 'B', 'M', 'O', 'P','I'));
alter table SIS.BENEFICS
  add constraint CK_BENEFICS#DT_ADMISSAO
  check (dt_admissao > dtnasc)
  novalidate;
alter table SIS.BENEFICS
  add constraint CK_BENEFICS#ENVIADATASUS
  check (ENVIADATASUS IN ('T', 'F'))
  novalidate;
alter table SIS.BENEFICS
  add constraint CK_BENEFICS#ESTADO
  check (ESTADO IN ('AC', 'AL', 'AM', 'AP', 'BA', 'CE', 'DF', 'ES', 'GO', 'MA', 'MG', 'MS', 'MT', 'PA', 'PB', 'PE', 'PI', 'PR', 'RJ', 'RN', 'RO', 'RR', 'RS', 'SC', 'SE', 'SP', 'TO'))
  novalidate;
alter table SIS.BENEFICS
  add constraint CK_BENEFICS#ESTCIVIL
  check (ESTCIVIL IN ('C', 'O', 'S', 'V'))
  novalidate;
alter table SIS.BENEFICS
  add constraint CK_BENEFICS#EXCL_PRE_CAD
  check (EXCL_PRE_CAD IN ('S','N'));
alter table SIS.BENEFICS
  add constraint CK_BENEFICS#FATURA
  check (FATURA IN ('S', 'N'))
  novalidate;
alter table SIS.BENEFICS
  add constraint CK_BENEFICS#OPC_DOEN_PRE
  check (OPC_DOEN_PRE IN (1, 2, 3))
  novalidate;
alter table SIS.BENEFICS
  add constraint CK_BENEFICS#SEXO
  check (SEXO IN ('F', 'M', 'I'));
alter table SIS.BENEFICS
  add constraint CK_BENEFICS#TEM_EXC_PRO
  check (TEM_EXC_PRO in ('0','1','2'));
alter table SIS.BENEFICS
  add constraint CK_BENEFICS#TIPOCGC
  check (TIPOCGC IN ('0', '1'))
  novalidate;
alter table SIS.BENEFICS
  add constraint CK_BENEFICS#TP_SANGUE
  check (TP_SANGUE IN ('A+', 'A-', 'AB+', 'AB-',  'B+' , 'O+', 'O-', 'B-'));
alter table SIS.BENEFICS
  add constraint CK_BENEFICS#UF_CNH
  check (UF_CNH IN ('AC', 'AL', 'AM', 'AP', 'BA', 'CE', 'DF', 'ES', 'GO', 'MA', 'MG', 'MS', 'MT', 'PA', 'PB', 'PE', 'PI', 'PR',
'RJ', 'RN', 'RO', 'RR', 'RS', 'SC', 'SE', 'SP', 'TO'));
alter table SIS.BENEFICS
  add constraint CK_BENEFICS#UF_ORG_EMIS
  check (UF_ORG_EMIS IN ('AC', 'AL', 'AM', 'AP', 'BA', 'CE', 'DF', 'ES', 'GO', 'MA', 'MG', 'MS', 'MT', 'PA', 'PB', 'PE',
'PI', 'PR', 'RJ', 'RN', 'RO', 'RR', 'RS', 'SC', 'SE', 'SP', 'TO'));
alter table SIS.BENEFICS
  add constraint CK_EMITE_CART
  check (EMITE_CART IN ('T','F'))
  novalidate;
-- Grant/Revoke object privileges 
grant select on SIS.BENEFICS to PUBLIC;
grant select, insert, update, delete on SIS.BENEFICS to SIHPRD;
grant select, insert, update, delete on SIS.BENEFICS to SIHSISPRD;
grant select, insert, update, delete on SIS.BENEFICS to SISDSV;
grant select, insert, update, delete on SIS.BENEFICS to SISPRD;
