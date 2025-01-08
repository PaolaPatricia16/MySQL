CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
	tipodevenda VARCHAR(50) NOT NULL
);

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(150) NOT NULL,
    preco DECIMAL(6,2) NOT NULL,
    quantidade INT,
    datadevalidade DATE NOT NULL,
    categoriasid BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (categoriasid) REFERENCES tb_categorias(id) 
);

INSERT INTO tb_categorias(nome, tipodevenda)
VALUES("Cosméticos", "Livre"),
("Dermato", "Controlado"),
("Higiene", "Livre"),
("Remédios", "Livre"),
("Remédios", "Controlado");

INSERT INTO tb_produtos(nome, preco, quantidade, datadevalidade, categoriasid)
VALUES("Dipirona", 5.50, 100, "2026-01-08", 4),
("Simeticona", 6, 150, "2026-01-10", 4),
("Rivotril", 50, 80, "2027-01-10", 5),
("Protetor solar - Corporal", 55, 200, "2027-10-10", 1),
("Acetato de Dexametasona", 35.89, 40, "2024-11-11", 2),
("Pasta dental", 15.99, 60, "2027-01-01", 3),
("Omeprazol", 50.99, 20, "2027-01-10", 5),
("Hidratante Facial", 78.45, 35, "2028-01-01", 1);

SELECT * FROM tb_categorias;
SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 50;

SELECT * FROM tb_produtos WHERE preco >= 5 AND preco <= 60;

SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT tb_produtos.*, tb_categorias.nome AS Nome_Categoria, tb_categorias.tipodevenda
FROM tb_produtos
INNER JOIN tb_categorias
ON tb_produtos.categoriasid = tb_categorias.id;

SELECT tb_produtos.*, tb_categorias.nome AS Nome_Categoria, tb_categorias.tipodevenda
FROM tb_produtos
INNER JOIN tb_categorias
ON tb_produtos.categoriasid = tb_categorias.id
WHERE tb_categorias.nome = "Cosméticos";
