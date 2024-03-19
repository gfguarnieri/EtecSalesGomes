-- Selecionando base de dados bercario

USE bercario;

-- DML -> Data Manipulation Language
-- INSERT & DELETE

-- Inserindo dados

-- INSERT INTO tabela VALUES(val1, val2, val3);

INSERT INTO mae VALUES(
	0, "Anita", "SP", "Tatuí", "18275250", "12345678912", "1970-07-20");

INSERT INTO bebe VALUES(
	0, "Alceu", "2009-06-13", 5, 0.70, 1
);

INSERT INTO medico VALUES(
	"12345678", "Dr. Francisco", "98765432112", "Gastro");

-- DELETANDO DADOS - DELETE FROM tabela WHERE condicoes;
DELETE FROM bebe WHERE idbebe = 2;

-- DELETANDO BEBES ONDE O ID DA MÃE É = 10
DELETE FROM bebe WHERE idmae = 10;

-- DELETANDO BEBE QUE NASCEU HOJE
DELETE FROM bebe WHERE nascimento = "2024-03-19".

-- DQL - Data Query Language

SELECT * FROM bebe;
SELECT * FROM mae;
SELECT * FROM medico;

