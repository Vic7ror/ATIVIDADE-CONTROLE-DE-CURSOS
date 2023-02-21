CREATE DATABASE controle_de_curso;
USE controle_de_curso;

CREATE TABLE curso(
codigo INT UNSIGNED AUTO_INCREMENT NOT NULL,
nomeCurso VARCHAR(120) NOT NULL,
conteudo TEXT NOT NULL,
valorMensalidade DOUBLE(9,2) NOT NULL,
cargaHoraria TEXT NOT NULL,
PRIMARY KEY (codigo)
)ENGINE = INNODB;

CREATE TABLE professor(
codigo INT UNSIGNED AUTO_INCREMENT NOT NULL,
nomeProfessor VARCHAR(120) NOT NULL,
valorHora DOUBLE(9,2) NOT NULL,
telefone CHAR(14) NOT NULL,
PRIMARY KEY(codigo) 
)ENGINE = INNODB;

CREATE TABLE turma(
codigo INT UNSIGNED AUTO_INCREMENT NOT NULL,
HoraInicio CHAR(5) NOT NULL,
HoraTermino CHAR(5) NOT NULL,
dataInicio CHAR(10) NOT NULL,
dataTermino CHAR(10) NOT NULL,
cod_professor INT UNSIGNED NOT NULL,
cod_curso INT UNSIGNED NOT NULL,
PRIMARY KEY (codigo),
FOREIGN KEY (cod_professor) REFERENCES professor(codigo),
FOREIGN KEY (cod_curso) REFERENCES curso(codigo)
)ENGINE = INNODB;