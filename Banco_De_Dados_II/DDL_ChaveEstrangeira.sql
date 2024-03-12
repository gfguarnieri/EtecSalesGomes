-- DDL 
-- Criando banco de dados com chave estrangeira

-- Dropando banco de dados se existir
DROP DATABASE IF EXISTS bercario;

CREATE DATABASE bercario;
USE bercario;

CREATE TABLE mae(
	idmae INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    estado CHAR(2) NULL,
    cidade VARCHAR(50) NULL,
    cep CHAR(8) NULL,
    telefone CHAR(11) NULL,
    nascimento DATE NOT NULL
)engine=InnoDB;

CREATE TABLE bebe(
	idbebe INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    nascimento DATE NOT NULL,
    peso DECIMAL(3,2) NOT NULL,
    altura DECIMAL(2,2) NULL,
    idmae INT NOT NULL,
    -- FOREIGN KEY (chaveEstrangeira) REFERENCES tabelaDaChaveEstrangeira(chaveprimaria)
    FOREIGN KEY(idmae) REFERENCES mae(idmae) -- Forma de adicionar chave estrangeira
)engine=InnoDB;

-- Outra forma de adicionar chave estrangeira
-- ALTER TABLE bebe ADD CONSTRAINT MAE_BEBE FOREIGN KEY(idmae)
-- REFERENCES  mae(idmae)

-- ALTER TABLE nome-da-tabela ADD CONSTRAINT nome-da-constraint 
-- FOREIGN KEY(nome-da-coluna-local) REFERENCES nome-da-tabela-da-fk(coluna-fk)

CREATE TABLE medico(
	crm CHAR(8) PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    telefone CHAR(11) NULL,
    especialidade VARCHAR(50) NULL
)engine=InnoDB;

-- Nesse caso, utilizamos chave primária composta.
-- Ou seja, existe apenas uma única chave primária, entretanto, 
-- ela é composta por dois atributos
-- A chave primária vai garantir que somente exista uma relação do mesmo bebê com o mesmo médico.

CREATE TABLE bebe_medico(
	idbebe INT,
    crmMedico CHAR(8),
    FOREIGN KEY (idbebe) REFERENCES bebe(idbebe),
    FOREIGN KEY (crmMedico) REFERENCES medico(crm),
    PRIMARY KEY (idbebe, crmMedico)
)engine=InnoDB;






