CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores(
	cpf BIGINT NOT NULL,
    nome VARCHAR(255) NOT NULL,
    salario DECIMAL (6,2),
    datanascimento DATE,
    cargo VARCHAR (100),
    PRIMARY KEY (cpf)
);

-- Inserir registros

INSERT INTO tb_colaboradores(cpf, nome, salario, datanascimento, cargo)
VALUES(78945612840, "Elisa", 7000.00, "1968-09-28", "Diretora Financeira");
INSERT INTO tb_colaboradores(cpf, nome, salario, datanascimento, cargo)
VALUES(12345679880, "Gabriel", 2500.50, "2006-11-13", "Assistente Financeiro");
INSERT INTO tb_colaboradores(cpf, nome, salario, datanascimento, cargo)
VALUES(45612378880, "Abraham", 5500.00, "1968-04-08", "Gerente Financeiro");
INSERT INTO tb_colaboradores(cpf, nome, salario, datanascimento, cargo)
VALUES(78945622840, "Paola", 3500.00, "1998-09-16", "Analista Financeira");
INSERT INTO tb_colaboradores(cpf, nome, salario, datanascimento, cargo)
VALUES(14725639848, "Lucas", 4500.79, "1998-01-19", "Supervisor Financeiro");

-- Selecionar registro
SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE salario > 2000;

SELECT * FROM tb_colaboradores WHERE salario < 2000;

-- Atualizando registro
UPDATE tb_colaboradores SET salario = 8000 WHERE cpf = 78945612840; -- att o salario

