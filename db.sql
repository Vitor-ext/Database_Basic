/* Treino DB
   Data: 23/12/2022
   Autor: Vitor Santana */

#CREATE DATABASE dbtreino;
USE dbtreino;

CREATE TABLE departamento (
idDepartamento int NOT NULL,
nome varchar (45) NOT NULL,
sigla varchar (45) NOT NULL,
PRIMARY KEY (idDepartamento)
);

CREATE TABLE chefe_departamento (
idChefe int NOT NULL,
funcionario_idFuncionario int NOT NULL,
departamento_idDepartamento int NOT NULL,
CONSTRAINT  FK_funcionario FOREIGN KEY (funcionario_idFuncionario) REFERENCES funcionario (idFuncionario),
CONSTRAINT  FK_Departamento FOREIGN KEY (departamento_idDepartamento) REFERENCES departamento (idDepartamento)
);

CREATE TABLE funcionario (
idFuncionario int NOT NULL, 
primeiro_nome varchar (45) NOT NULL,
sobre_nome varchar (45) NOT NULL,
matricula varchar (45) NOT NULL,
permissao int NOT NULL,
departamento_FK int,
CONSTRAINT FK_DP FOREIGN KEY (departamento_FK) REFERENCES departamento (idDepartamento)
);

SHOW DATABASES;   # Mostra as DATABASES;

SHOW TABLES FROM dbtreino; # Mostra as Tabelas pertecentes a uma database;

SELECT * FROM departamento; # Mostra o conteudo dentro de uma table;

# Insere valores dentro de uma table
INSERT INTO departamento (idDepartamento, nome, sigla)values
('1','Engenharia','Eng'),
('2','Recursos Humanos','RH'),
('3','Manutenção','MNT'),
('4','Produção','PRO'),
('5','Administração','ADM');

# Cria consultas de acordo com as necessidades
SELECT * FROM departamento 
WHERE 
sigla = 'RH';

# Cria consultas de acordo com as necessidades
SELECT * FROM departamento 
WHERE 
idDepartamento = 1;

# Cria consultas de acordo com as necessidades
SELECT * FROM departamento 
WHERE 
nome = 'Administração';

# Realizando Alterações em uma table
ALTER TABLE departamento
ADD PRIMARY KEY (idDepartamento);

ALTER TABLE funcionario 
ADD PRIMARY KEY (idFuncionario);

ALTER TABLE chefe_departamento 
ADD PRIMARY KEY (idChefe);

ALTER TABLE funcionario 
ADD  FK_DP VARCHAR(10);

# Apagando uma Table 
DROP TABLE departamento;

# Insere valores dentro de uma table
INSERT INTO funcionario (idFuncionario, primeiro_nome, sobre_nome, matricula, permissao)values
('1','Wendel','Santos', '15642', '777'),
('2','Maria','Silva', '18745', '555'),
('3','Hector','Pierre', '18652', '777'),
('4','Helena','Santana', '12574', '666'),
('5','Manuela','Cavalcante', '13876', '777');

 # Insere valores dentro de uma table
INSERT INTO chefe_departamento (idChefe, funcionario_idFuncionario, departamento_idDepartamento)values
('1','3','1'),
('2','5','2'),
('3','4','3'),
('4','2','5'),
('5','1','4');   
	
SELECT * FROM dbtreino.chefe_departamento;











