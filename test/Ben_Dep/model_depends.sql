-- Create table
create table SIS.DEPENDS
(
  cod_dep        VARCHAR2(19) not null,
  nome           VARCHAR2(70) not null,
  cod_loc_cobr   NUMBER(4),
  cod_emp        NUMBER(6) not null,
  cod_ben        VARCHAR2(19) not null,
  sexo           CHAR(1) not null,
  codigo         CHAR(19),
  dt_alter       DATE,
  cod_parentes   NUMBER(2) not null,
  cor            CHAR(1) not null,
  estcivil       CHAR(1) not null,
  parentesco     CHAR(1),
  dtnasc         DATE not null,
  dtlimite       DATE,
  dtcad          DATE not null,
  fatura         CHAR(1),
  endereco       VARCHAR2(60),
  dtcons         DATE,
  dtexa          DATE,
  careadc        CHAR(1),
  cidade         VARCHAR2(40),
  dtcta          DATE,
  dtint          DATE,
  nrovias        NUMBER(2),
  dtobs          DATE,
  bairro         VARCHAR2(40),
  dtout          DATE,
  estado         CHAR(2),
  cep            CHAR(8),
  dtcar7         DATE,
  dtcar8         DATE,
  obscart1       VARCHAR2(60),
  fone           VARCHAR2(12),
  obscart2       VARCHAR2(60),
  codplano       CHAR(3),
  rg             VARCHAR2(18),
  nrodoc         VARCHAR2(18),
  cic            VARCHAR2(11),
  mesfat         CHAR(5),
  dtativo        DATE,
  validade       DATE,
  codtab         CHAR(7),
  codext         VARCHAR2(19),
  codtabprc      CHAR(5),
  email_dep      VARCHAR2(100),
  dtini_evento   DATE,
  dthr_alter     DATE not null,
  cod_prof       NUMBER(4),
  cod_lotdiusr   NUMBER(10),
  opc_doen_pre   NUMBER(1),
  nome_pai       VARCHAR2(70),
  pis_pasep      NUMBER(11),
  nome_mae       VARCHAR2(70),
  cod_rec_dig    NUMBER(6) not null,
  dthr_digitac   DATE not null,
  cod_grauins    NUMBER(3),
  cod_cidade     NUMBER(8),
  nro_lograd     NUMBER(6),
  compl_lograd   VARCHAR2(40),
  fone_com       VARCHAR2(12),
  ramal          NUMBER(5),
  fax            VARCHAR2(12),
  nro_crt_cred   VARCHAR2(20),
  dt_val_cart    DATE,
  fone_pager     VARCHAR2(12),
  cod_pager      VARCHAR2(25),
  idade_fx_et    NUMBER(3),
  cod_adcarcre   NUMBER(3),
  perc_contrib   NUMBER(5,2),
  ramal_fonere   NUMBER(5),
  enviadatasus   VARCHAR2(1) default 'T' not null,
  cod_cen_cust   NUMBER(4),
  emite_cart     CHAR(1) default 'T',
  dt_comp_est    DATE,
  nro_cns        VARCHAR2(20),
  dep_semcadps   VARCHAR2(1) default 'F',
  nro_cont_pre   NUMBER(10),
  cod_pais_emiss NUMBER(3),
  org_emis_rg    VARCHAR2(30),
  perc_tx_inc    NUMBER(6,2) default 0,
  vlr_tx_inc     NUMBER default 0,
  dt_exp_rg      DATE,
  cargo_infor    VARCHAR2(30),
  resp_infor     VARCHAR2(60),
  ativoant       VARCHAR2(1),
  dt_infor       DATE,
  nacionalidade  VARCHAR2(40),
  ativo          VARCHAR2(1),
  tel_celular    VARCHAR2(12),
  tem_exc_pro    VARCHAR2(1),
  dt_mig_por     DATE,
  dv_cco_sib     VARCHAR2(2),
  cod_pla_por    NUMBER(9),
  cod_cco_sib    VARCHAR2(10),
  cod_rec_alt    NUMBER(6),
  cod_liminar    NUMBER(10),
  dt_val_limi    DATE,
  dec_nas_vivo   VARCHAR2(11),
  cod_par_resp   NUMBER(2),
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
comment on column SIS.DEPENDS.apelido
  is 'Apelido ou nome social';
comment on column SIS.DEPENDS.cod_etnia_in
  is 'Código da etnia (se indigena)';
comment on column SIS.DEPENDS.tp_sangue
  is 'Tipo sanguineo';
comment on column SIS.DEPENDS.dt_obito
  is 'Data do obito';
comment on column SIS.DEPENDS.just_obito
  is 'Justtificativa do obito';
comment on column SIS.DEPENDS.cod_cid_nas
  is 'Codigo do municipio de nascimento';
comment on column SIS.DEPENDS.dt_natu
  is 'Data de naturalização';
comment on column SIS.DEPENDS.nro_pr_natu
  is 'Número do protocolo/oficio da naturalização';
comment on column SIS.DEPENDS.dt_entr_pais
  is 'Data de entrada no pais';
comment on column SIS.DEPENDS.cod_pais_nas
  is 'Código do pais de nascimento';
comment on column SIS.DEPENDS.email_sec
  is 'Endereço de e-mail (secundário)';
comment on column SIS.DEPENDS.cod_tp_logra
  is 'Código do tipo de logradouro';
comment on column SIS.DEPENDS.cod_org_emis
  is 'Código do orgão emissor do RG';
comment on column SIS.DEPENDS.uf_org_emis
  is 'UF da emissão do RG';
comment on column SIS.DEPENDS.cod_tp_cert
  is 'Código do tipo de certidão';
comment on column SIS.DEPENDS.nro_mat_cert
  is 'Número da matricula da certidão';
comment on column SIS.DEPENDS.nm_cart_cert
  is 'Número da carteira da certidão';
comment on column SIS.DEPENDS.nro_liv_cert
  is 'Número do livro da certidão';
comment on column SIS.DEPENDS.nro_fol_cert
  is 'Número da folha da certidão';
comment on column SIS.DEPENDS.nro_ter_cert
  is 'Número do termo da certidão';
comment on column SIS.DEPENDS.dt_emi_cert
  is 'Data de emissão da certidão';
comment on column SIS.DEPENDS.nro_cpts
  is 'Número da Carteira de Trabalho';
comment on column SIS.DEPENDS.serie_cpts
  is 'Número de Série da Carteira de Trabalho';
comment on column SIS.DEPENDS.dt_emi_ctps
  is 'Data de emissão da Carteira de Trabalho';
comment on column SIS.DEPENDS.nro_cnh
  is 'Número da Carteira de Habilitação';
comment on column SIS.DEPENDS.dt_emis_cnh
  is 'Data da Habilitação';
comment on column SIS.DEPENDS.uf_cnh
  is 'UF da Habilitação';
comment on column SIS.DEPENDS.nro_pasport
  is 'Número do passaporte';
comment on column SIS.DEPENDS.cod_pais_pas
  is 'Código do Pais do passaporte';
comment on column SIS.DEPENDS.dt_emis_pas
  is 'Data de emissão do passaporte';
comment on column SIS.DEPENDS.dt_val_pas
  is 'Data de validade do passaporte';
comment on column SIS.DEPENDS.cod_subempr
  is 'CÃ³digo Sub_Empresa';
-- Create/Recreate indexes 
create unique index SIS.AK_DEPENDS1 on SIS.DEPENDS (COD_DEP, DTNASC, COD_EMP, NOME)
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
create unique index SIS.AK_DEPENDS2 on SIS.DEPENDS (COD_DEP, COD_EMP, COD_PARENTES, COD_BEN, DTNASC, NOME, SEXO, FONE, FONE_COM)
  tablespace SIS_INDEX
  pctfree 0
  initrans 6
  maxtrans 255
  storage
  (
    initial 1M
    next 1M
    minextents 1
    maxextents unlimited
  );
create index SIS.AK_DEPENDS3 on SIS.DEPENDS (COD_EMP, COD_DEP, COD_BEN, NOME, DTNASC, COD_PARENTES, DTLIMITE, CODEXT)
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
create unique index SIS.AK_DEPENDS4 on SIS.DEPENDS (COD_DEP, COD_EMP, COD_PARENTES, COD_BEN, DTNASC, NOME, COD_CEN_CUST)
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
create index SIS.IE_DEPENDS_SS_02 on SIS.DEPENDS (SUBSTR(REPLACE(TRANSLATE(FONE,'-_.',' '),' ',''),1,2), SUBSTR(REPLACE(TRANSLATE(FONE,'-_.',' '),' ',''),3,10))
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
create index SIS.IE_DEPENDS_SS_03 on SIS.DEPENDS (SUBSTR(REPLACE(TRANSLATE(FONE_COM,'-_.',' '),' ',''),1,2), SUBSTR(REPLACE(TRANSLATE(FONE_COM,'-_.',' '),' ',''),3,10))
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
create index SIS.IE_DEPENDS_SS_04 on SIS.DEPENDS (SUBSTR(REPLACE(TRANSLATE(FAX,'-_.',' '),' ',''),1,2), SUBSTR(REPLACE(TRANSLATE(FAX,'-_.',' '),' ',''),3,10))
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
create index SIS.IE_DEPENDS_UCSC_01 on SIS.DEPENDS (CODEXT)
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
create index SIS.IE_DEPENDS1 on SIS.DEPENDS (NOME, COD_DEP, COD_EMP, DTNASC)
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
create index SIS.IE_DEPENDS_10 on SIS.DEPENDS (RG)
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
create index SIS.IE_DEPENDS_11 on SIS.DEPENDS (DTLIMITE)
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
create index SIS.IE_DEPENDS_15 on SIS.DEPENDS (COD_CCO_SIB||DV_CCO_SIB)
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
create index SIS.IE_DEPENDS_16 on SIS.DEPENDS (COD_CCO_SIB)
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
create index SIS.IE_DEPENDS2 on SIS.DEPENDS (COD_BEN, COD_DEP, NOME, CODEXT, COD_EMP, DTNASC, DTLIMITE, COD_CIDADE)
  tablespace SIS_INDEX
  pctfree 0
  initrans 6
  maxtrans 255
  storage
  (
    initial 1M
    next 1M
    minextents 1
    maxextents unlimited
  );
create index SIS.IE_DEPENDS3 on SIS.DEPENDS (COD_PARENTES, COD_DEP, COD_BEN, COD_EMP)
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
create index SIS.IE_DEPENDS_30 on SIS.DEPENDS (COD_SUBEMPR)
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
create index SIS.IE_DEPENDS4 on SIS.DEPENDS (COD_CIDADE, COD_BEN, COD_EMP, COD_DEP, DTNASC)
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
create index SIS.IE_DEPENDS5 on SIS.DEPENDS (COD_EMP, COD_DEP, COD_BEN, COD_PARENTES, NOME, DTLIMITE, CODEXT)
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
create index SIS.IE_DEPENDS6 on SIS.DEPENDS (CIC)
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
create index SIS.IE_DEPENDS7 on SIS.DEPENDS (COD_EMP, COD_DEP, NOME, DTNASC, RG)
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
create index SIS.IE_DEPENDS8 on SIS.DEPENDS (COD_EMP, COD_DEP, COD_BEN, COD_PARENTES, NOME, DTLIMITE, CODEXT, DTNASC)
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
create index SIS.IF_DEPENDS_SS_01 on SIS.DEPENDS (TO_NUMBER(COD_BEN))
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
create index SIS.IF_DEPENDS_SS_02 on SIS.DEPENDS (TO_NUMBER(COD_DEP))
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
create index SIS.IF_DEPENDS_1 on SIS.DEPENDS (COD_ADCARCRE)
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
create index SIS.IF_DEPENDS_17 on SIS.DEPENDS (NOME, COD_DEP, COD_BEN)
  tablespace SIS_INDEX
  pctfree 0
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index SIS.IF_DEPENDS_20 on SIS.DEPENDS (COD_ETNIA_IN)
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
create index SIS.IF_DEPENDS_21 on SIS.DEPENDS (COD_CID_NAS)
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
create index SIS.IF_DEPENDS_22 on SIS.DEPENDS (COD_PAIS_NAS)
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
create index SIS.IF_DEPENDS_23 on SIS.DEPENDS (COD_PAIS_PAS)
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
create index SIS.IF_DEPENDS_24 on SIS.DEPENDS (COD_TP_LOGRA)
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
create index SIS.IF_DEPENDS_25 on SIS.DEPENDS (COD_ORG_EMIS)
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
create index SIS.IF_DEPENDS_26 on SIS.DEPENDS (COD_TP_CERT)
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
create index SIS.IF_DEPENDS_3 on SIS.DEPENDS (COD_LOC_COBR)
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
create index SIS.IF_DEPENDS_5 on SIS.DEPENDS (COD_LOTDIUSR)
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
create index SIS.IF_DEPENDS_6 on SIS.DEPENDS (COD_GRAUINS)
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
create index SIS.IF_DEPENDS_7 on SIS.DEPENDS (COD_PROF)
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
create index SIS.IF_DEPENDS8 on SIS.DEPENDS (COD_CEN_CUST)
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
create index SIS.IF_DEPENDS_9 on SIS.DEPENDS (NRO_CONT_PRE)
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
create index SIS.IXFKTR_SIS43 on SIS.DEPENDS (COD_REC_ALT)
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
create index SIS.IXFKTR_SIS44 on SIS.DEPENDS (COD_LIMINAR)
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
create index SIS.IXFKTR_SIS45 on SIS.DEPENDS (COD_REC_DIG)
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
create index SIS.IX_PERF_DEPENDS_1 on SIS.DEPENDS (SUBSTR(REPLACE(TRANSLATE(FONE,'-_.',' '),' ',''),3,10), SUBSTR(REPLACE(TRANSLATE(FONE,'-_.',' '),' ',''),1,2))
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
create index SIS.IX_PERF_DEPENDS_2 on SIS.DEPENDS (SUBSTR(REPLACE(TRANSLATE(FONE_COM,'-_.',' '),' ',''),3,10), SUBSTR(REPLACE(TRANSLATE(FONE_COM,'-_.',' '),' ',''),1,2))
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
create index SIS.IX_PERF_DEPENDS_3 on SIS.DEPENDS (SUBSTR(REPLACE(TRANSLATE(FAX,'-_.',' '),' ',''),3,10), SUBSTR(REPLACE(TRANSLATE(FAX,'-_.',' '),' ',''),1,2))
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
create index UCSC.UCSC_IE_DEPENDS1 on SIS.DEPENDS (NOME, DTNASC)
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
create index UCSC.UCSC_IE_DEPENDS2 on SIS.DEPENDS (NOME_MAE, DTNASC)
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
alter table SIS.DEPENDS
  add constraint PK_DEPENDS primary key (COD_DEP)
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
alter table SIS.DEPENDS
  add constraint FK_ADM_CARTCRED#DEPENDS foreign key (COD_ADCARCRE)
  references SIS.ADM_CARTCRED (COD_ADCARCRE);
alter table SIS.DEPENDS
  add constraint FK_BENEFICS#DEPENDS foreign key (COD_BEN)
  references SIS.BENEFICS (COD_BEN);
alter table SIS.DEPENDS
  add constraint FK_CENTRO_CUSTO#DEPENDS foreign key (COD_CEN_CUST)
  references SIS.CENTRO_CUSTO (COD_CEN_CUST);
alter table SIS.DEPENDS
  add constraint FK_CIDADE#DEPENDS foreign key (COD_CIDADE)
  references SIHSIS.CIDADE (COD_CIDADE);
alter table SIS.DEPENDS
  add constraint FK_CIDADE2#DEPENDS foreign key (COD_CID_NAS)
  references SIHSIS.CIDADE (COD_CIDADE);
alter table SIS.DEPENDS
  add constraint FK_EMPRESAS#DEPENDS foreign key (COD_EMP)
  references SIS.EMPRESAS (COD_EMP);
alter table SIS.DEPENDS
  add constraint FK_ETNIA_INDIG#DEPENDS foreign key (COD_ETNIA_IN)
  references SIH.ETNIA_INDIG (COD_ETNIA_IN);
alter table SIS.DEPENDS
  add constraint FK_GRAU_INSTR#DEPENDS foreign key (COD_GRAUINS)
  references SIS.GRAU_INSTR (COD_GRAUINS);
alter table SIS.DEPENDS
  add constraint FK_LIMINAR#DEPENDS foreign key (COD_LIMINAR)
  references SIS.LIMINAR (COD_LIMINAR);
alter table SIS.DEPENDS
  add constraint FK_LOCALCOB#DEPENDS foreign key (COD_LOC_COBR)
  references SIS.LOCALCOB (COD_LOC_COBR);
alter table SIS.DEPENDS
  add constraint FK_LOTE_DIG_USR#DEPENDS foreign key (COD_LOTDIUSR)
  references SIS.LOTE_DIG_USR (COD_LOTDIUSR);
alter table SIS.DEPENDS
  add constraint FK_ORG_EMISSOR#DEPENDS foreign key (COD_ORG_EMIS)
  references SIHSIS.ORG_EMISSOR (COD_ORG_EMIS);
alter table SIS.DEPENDS
  add constraint FK_PAIS1#DEPENDS foreign key (COD_PAIS_NAS)
  references SIHSIS.PAIS (COD_PAIS);
alter table SIS.DEPENDS
  add constraint FK_PAIS2#DEPENDS foreign key (COD_PAIS_PAS)
  references SIHSIS.PAIS (COD_PAIS);
alter table SIS.DEPENDS
  add constraint FK_PARENTES#DEPENDS foreign key (COD_PARENTES)
  references SIS.PARENTES (COD_PARENTES);
alter table SIS.DEPENDS
  add constraint FK_PRE_CAD#DEPENDS foreign key (NRO_CONT_PRE)
  references SIS.PRE_CAD (NRO_CONT_PRE);
alter table SIS.DEPENDS
  add constraint FK_PROFISSAO#DEPENDS foreign key (COD_PROF)
  references SIS.PROFISSAO (COD_PROF);
alter table SIS.DEPENDS
  add constraint FK_RECEP#DEPENDS foreign key (COD_REC_DIG)
  references SIS.RECEP (COD_RECEP);
alter table SIS.DEPENDS
  add constraint FK_RECEP3#DEPENDS foreign key (COD_REC_ALT)
  references SIS.RECEP (COD_RECEP);
alter table SIS.DEPENDS
  add constraint FK_SUB_EMPRESA#DEPENDS foreign key (COD_SUBEMPR)
  references SIS.SUB_EMPRESA (COD_SUBEMPR);
alter table SIS.DEPENDS
  add constraint FK_TIPO_LOGRAD#DEPENDS foreign key (COD_TP_LOGRA)
  references SIHSIS.TIPO_LOGRAD (COD_TP_LOGRA);
alter table SIS.DEPENDS
  add constraint FK_TP_CERTIDAO#DEPENDS foreign key (COD_TP_CERT)
  references SIHSIS.TP_CERTIDAO (COD_TP_CERT);
-- Create/Recreate check constraints 
alter table SIS.DEPENDS
  add constraint CK_DEPENDS#CAREADC
  check (CAREADC IN ('S', 'N'))
  novalidate;
alter table SIS.DEPENDS
  add constraint CK_DEPENDS#COR
  check (COR IN ('A', 'B', 'M', 'O', 'P','I'));
alter table SIS.DEPENDS
  add constraint CK_DEPENDS#DEP_SEMCADPS
  check (DEP_SEMCADPS IN ('T','F'))
  novalidate;
alter table SIS.DEPENDS
  add constraint CK_DEPENDS#ENVIADATASUS
  check (ENVIADATASUS IN ('T', 'F'))
  novalidate;
alter table SIS.DEPENDS
  add constraint CK_DEPENDS#ESTADO
  check (ESTADO IN ('AC', 'AL', 'AM', 'AP', 'BA', 'CE', 'DF', 'ES', 'GO', 'MA', 'MG', 'MS', 'MT', 'PA', 'PB', 'PE', 'PI', 'PR', 'RJ', 'RN', 'RO', 'RR', 'RS', 'SC', 'SE', 'SP', 'TO'))
  novalidate;
alter table SIS.DEPENDS
  add constraint CK_DEPENDS#ESTCIVIL
  check (ESTCIVIL IN ('C', 'O', 'S', 'V'))
  novalidate;
alter table SIS.DEPENDS
  add constraint CK_DEPENDS#FATURA
  check (FATURA IN ('S', 'N'))
  novalidate;
alter table SIS.DEPENDS
  add constraint CK_DEPENDS#OPC_DOEN_PRE
  check (OPC_DOEN_PRE IN (1, 2, 3))
  novalidate;
alter table SIS.DEPENDS
  add constraint CK_DEPENDS#SEXO
  check (SEXO IN ('F', 'M', 'I'));
alter table SIS.DEPENDS
  add constraint CK_DEPENDS#TEM_EXC_PRO
  check (TEM_EXC_PRO in ('0','1','2'));
alter table SIS.DEPENDS
  add constraint CK_DEPENDS#TP_SANGUE
  check (TP_SANGUE IN ('A+', 'A-', 'AB+', 'AB-',  'B+' , 'O+', 'O-', 'B-'));
alter table SIS.DEPENDS
  add constraint CK_DEPENDS#UF_CNH
  check (UF_CNH IN ('AC', 'AL', 'AM', 'AP', 'BA', 'CE', 'DF', 'ES', 'GO', 'MA', 'MG', 'MS', 'MT', 'PA', 'PB', 'PE', 'PI', 'PR',
'RJ', 'RN', 'RO', 'RR', 'RS', 'SC', 'SE', 'SP', 'TO'));
alter table SIS.DEPENDS
  add constraint CK_DEPENDS#UF_ORG_EMIS
  check (UF_ORG_EMIS IN ('AC', 'AL', 'AM', 'AP', 'BA', 'CE', 'DF', 'ES', 'GO', 'MA', 'MG', 'MS', 'MT', 'PA', 'PB', 'PE',
'PI', 'PR', 'RJ', 'RN', 'RO', 'RR', 'RS', 'SC', 'SE', 'SP', 'TO'));
alter table SIS.DEPENDS
  add constraint CK_EMITE_CART#DEPENDS
  check (EMITE_CART IN ('T','F'))
  novalidate;
-- Grant/Revoke object privileges 
grant select, insert, update, delete on SIS.DEPENDS to SIHPRD;
grant select, insert, update, delete on SIS.DEPENDS to SIHSISPRD;
grant select, insert, update, delete on SIS.DEPENDS to SISDSV;
grant select, insert, update, delete on SIS.DEPENDS to SISPRD;
