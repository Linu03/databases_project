drop table tCursa cascade constraints;
drop table tSofer cascade constraints;
drop table tCompanie cascade constraints;
drop table tMasina cascade constraints;

-- Create tables
CREATE TABLE tMasina (
  nrMat VARCHAR2(10) NOT NULL,
  model VARCHAR2(40),
  serie VARCHAR2(40),
  CONSTRAINT masina_pk PRIMARY KEY(nrMat)
);

CREATE TABLE tCompanie (
  codCo VARCHAR2(5) NOT NULL,
  nume VARCHAR2(40),
  adresa VARCHAR2(50) NOT NULL,
  tel VARCHAR2(10),
  CONSTRAINT companie_pk PRIMARY KEY(codCo)
);

CREATE TABLE tSofer (
  sid CHAR(10) NOT NULL,
  cnp CHAR(13),
  nume VARCHAR2(40) NOT NULL,
  codCo VARCHAR2(5),
  CONSTRAINT sofer_pk PRIMARY KEY(sid),
  CONSTRAINT sofer_companie_fk FOREIGN KEY(codCo) REFERENCES tCompanie(codCo) on delete cascade
);

CREATE TABLE tCursa (
  numeCl VARCHAR2(40) NOT NULL,
  dataC DATE NOT NULL,
  distKm FLOAT(24),
  nrMat VARCHAR2(10) NOT NULL,
  sid CHAR(10) NOT NULL,
  CONSTRAINT cursa_pk PRIMARY KEY(numeCl),
  CONSTRAINT cursa_masina_fk FOREIGN KEY(nrMat) REFERENCES tMasina(nrMat) on delete cascade,
  CONSTRAINT cursa_sofer_fk FOREIGN KEY(sid) REFERENCES tSofer(sid) on delete cascade
);