CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(200) NOT NULL,
    quantidade INT,
    sistemaoperacional VARCHAR (10),
    preco DECIMAL (6,2) NOT NULL,
    PRIMARY KEY (id)
);

 -- Inserir registros
INSERT INTO tb_produtos(nome, quantidade, sistemaoperacional, preco)
VALUES("Notebook 1", 5, "Windows", 5045),
("Notebook 2", 10, "Linux", 4500),
("Notebook 3", 40, "MacOS", 8500.99),
("Desktop 1", 9, "Windows", 6000),
("Desktop 2", 7, "Linux", 5500.78),
("Desktop 3", 25, "MacOS", 9500.47),
("Tablet 1", 5, "Android", 450.98),
("Tablet 2", 16, "IOS", 1500);

-- Selecionar registros
SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 500;

SELECT * FROM tb_produtos WHERE preco < 500;

-- Atualizando registro
UPDATE tb_produtos SET quantidade = 15 WHERE id = 6;

SELECT nome, quantidade FROM tb_produtos WHERE id = 6; -- Validando alteração de registro



