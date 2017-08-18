CREATE TABLE patient(
id_dl uuid,
cod_progenitor varchar,
progenitor_is_benef varchar,
birthday varchar,
gender varchar,
city varchar,
state varchar,
skin_color varchar,
blood_type varchar,
PRIMARY KEY(id_dl)
 );

CREATE INDEX patient_cod_progenitor
  ON patient (cod_progenitor);
