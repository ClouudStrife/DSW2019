----------------------------------
----------------------------------

DROP TABLE locacoes;
DROP TABLE clientes;
DROP TABLE locadoras;
DROP TABLE usuario;
DROP TABLE papel;

----------------------------------
----------------------------------

CREATE TABLE clientes (
  id        INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
  email     varchar(255) UNIQUE NOT NULL,
  senha     varchar(255) NOT NULL,
  cpf       varchar(255) NOT NULL,
  nome      varchar(255) NOT NULL,
  telefone  varchar(255),
  sexo      varchar(1),
  nasc      date,
  CONSTRAINT Clientes_PK PRIMARY KEY (cpf)
);

CREATE TABLE locadoras (
  id      INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
  email   varchar(255) UNIQUE NOT NULL,
  senha   varchar(255) NOT NULL,
  cnpj    varchar(255) NOT NULL,
  nome    varchar(255) NOT NULL,
  cidade  varchar(255) NOT NULL,
  CONSTRAINT Locadoras_PK PRIMARY KEY (cnpj)
);

CREATE TABLE locacoes (
  id        INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
  cpf_cli   varchar(255) NOT NULL,
  cnpj_loc  varchar(255) NOT NULL,
  dia_hora  TIMESTAMP,
  CONSTRAINT Locacoes_PK_ID PRIMARY KEY (id),
  CONSTRAINT Locacoes_FK_CPF FOREIGN KEY (cpf_cli) REFERENCES clientes(cpf) ON DELETE CASCADE,
  CONSTRAINT Locacoes_FK_CNPJ FOREIGN KEY (cnpj_loc) REFERENCES locadoras(cnpj) ON DELETE CASCADE
);

CREATE TABLE usuario(
  id      INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
  email   varchar(255) NOT NULL,
  senha   varchar(255) NOT NULL,
  ativo   INTEGER,
  CONSTRAINT Usuario_PK_ID PRIMARY KEY (id)
);

CREATE TABLE papel(
  id      INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
  email   varchar(255) NOT NULL,
  papel   varchar(255) NOT NULL,
  CONSTRAINT Papel_PK_ID PRIMARY KEY (id)
);

----------------------------------
----------------------------------

INSERT INTO clientes(email, senha, cpf, nome, telefone, sexo, nasc) VALUES ('joaosilva@dc.ufscar.br', '123', '56237209110', 'João da Silva', '(99) 99999-9999', 'M', '12/04/1996');
INSERT INTO clientes(email, senha, cpf, nome, telefone, sexo, nasc) VALUES ('mariasilva@dc.ufscar.br', '123', '56237209111', 'Maria da Silva', '(99) 99999-9999', 'F', '12/04/1996');
INSERT INTO clientes(email, senha, cpf, nome, telefone, sexo, nasc) VALUES ('mariacunha@dc.ufscar.br', '123', '56237209112', 'Maria da Cunha', '(99) 99999-9999', 'F', '12/04/1996');
INSERT INTO clientes(email, senha, cpf, nome, telefone, sexo, nasc) VALUES ('marianascimento@dc.ufscar.br', '123', '56237209113', 'Maria da Nascimento', '(99) 99999-9999', 'F', '12/04/1996');
INSERT INTO clientes(email, senha, cpf, nome, telefone, sexo, nasc) VALUES ('joaonascimento@dc.ufscar.br', '123', '56237209114', 'João da Nascimento', '(99) 99999-9999', 'M', '12/04/1996');
INSERT INTO clientes(email, senha, cpf, nome, telefone, sexo, nasc) VALUES ('pedronascimento@dc.ufscar.br', '123', '56237209115', 'Pedro da Nascimento', '(99) 99999-9999', 'M', '12/04/1996');
INSERT INTO clientes(email, senha, cpf, nome, telefone, sexo, nasc) VALUES ('pedrocunha@dc.ufscar.br', '123', '56237209116', 'Pedro da Cunha', '(99) 99999-9999', 'M', '12/04/1996');
INSERT INTO clientes(email, senha, cpf, nome, telefone, sexo, nasc) VALUES ('pedrosilva@dc.ufscar.br', '123', '56237209117', 'Pedro da Silva', '(99) 99999-9999', 'M', '12/04/1996');

INSERT INTO locadoras(email, senha, cnpj, nome, cidade) VALUES ('locathor@dc.br', '123', '64.184.865/0001-30', 'Loca Thor', 'Osasco');
INSERT INTO locadoras(email, senha, cnpj, nome, cidade) VALUES ('locadoida@dc.br', '123', '64.184.865/0001-31', 'Loca Doida', 'Carapicuiba');
INSERT INTO locadoras(email, senha, cnpj, nome, cidade) VALUES ('webloca@dc.br', '123', '64.184.865/0001-32', 'Web Loca', 'Ibaté');
INSERT INTO locadoras(email, senha, cnpj, nome, cidade) VALUES ('soninblenin@dc.br', '123', '64.184.865/0001-33', 'Sonin Blenin', 'Bauru');
INSERT INTO locadoras(email, senha, cnpj, nome, cidade) VALUES ('buscafacil@dc.br', '123', '64.184.865/0001-34', 'Busca Fácil', 'Campina Grande');
INSERT INTO locadoras(email, senha, cnpj, nome, cidade) VALUES ('chegarapido@dc.br', '123', '64.184.865/0001-35', 'Chega Rápido', 'São Carlos');
INSERT INTO locadoras(email, senha, cnpj, nome, cidade) VALUES ('vrau@dc.br', '123', '64.184.865/0001-36', 'Vrau', 'Moji das Cruzes');
INSERT INTO locadoras(email, senha, cnpj, nome, cidade) VALUES ('badumtis@dc.br', '123', '64.184.865/0001-37', 'Ba Dum Tis', 'Curitiba');

INSERt INTO LOCACOES(cpf_cli, cnpj_loc, dia_hora) VALUES ('56237209110', '64.184.865/0001-30', '2019-04-11 10:47:00');
INSERt INTO LOCACOES(cpf_cli, cnpj_loc, dia_hora) VALUES ('56237209110', '64.184.865/0001-31', '2019-03-10 10:47:00');
INSERt INTO LOCACOES(cpf_cli, cnpj_loc, dia_hora) VALUES ('56237209110', '64.184.865/0001-32', '2019-04-12 10:47:00');
INSERt INTO LOCACOES(cpf_cli, cnpj_loc, dia_hora) VALUES ('56237209110', '64.184.865/0001-33', '2019-04-10 11:47:00');
INSERt INTO LOCACOES(cpf_cli, cnpj_loc, dia_hora) VALUES ('56237209111', '64.184.865/0001-30', '2019-04-10 10:37:00');
INSERt INTO LOCACOES(cpf_cli, cnpj_loc, dia_hora) VALUES ('56237209111', '64.184.865/0001-34', '2019-04-10 10:17:00');
INSERt INTO LOCACOES(cpf_cli, cnpj_loc, dia_hora) VALUES ('56237209112', '64.184.865/0001-35', '2019-04-10 14:47:00');
INSERt INTO LOCACOES(cpf_cli, cnpj_loc, dia_hora) VALUES ('56237209113', '64.184.865/0001-32', '2019-04-10 15:47:00');
INSERt INTO LOCACOES(cpf_cli, cnpj_loc, dia_hora) VALUES ('56237209114', '64.184.865/0001-36', '2019-01-10 18:47:00');
INSERt INTO LOCACOES(cpf_cli, cnpj_loc, dia_hora) VALUES ('56237209114', '64.184.865/0001-37', '2019-04-10 20:47:00');
INSERt INTO LOCACOES(cpf_cli, cnpj_loc, dia_hora) VALUES ('56237209114', '64.184.865/0001-33', '2019-04-12 13:47:00');
INSERt INTO LOCACOES(cpf_cli, cnpj_loc, dia_hora) VALUES ('56237209115', '64.184.865/0001-37', '2019-04-16 16:47:00');
INSERt INTO LOCACOES(cpf_cli, cnpj_loc, dia_hora) VALUES ('56237209115', '64.184.865/0001-32', '2019-04-13 09:47:00');
INSERt INTO LOCACOES(cpf_cli, cnpj_loc, dia_hora) VALUES ('56237209116', '64.184.865/0001-31', '2019-04-11 15:47:00');
