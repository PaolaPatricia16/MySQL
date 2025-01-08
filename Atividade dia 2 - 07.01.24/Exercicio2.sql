CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    tamanho VARCHAR(10) NOT NULL,
    tipo VARCHAR(10)
);

CREATE TABLE tb_pizzas(
	id BIGINT AUTO_INCREMENT,
    sabor VARCHAR(50) NOT NULL,
    inteirametade VARCHAR(15) NOT NULL,
    sabor2 VARCHAR(50),
    preco DECIMAL(4,2) NOT NULL,
    categoriasid BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (categoriasid) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(tamanho, tipo)
VALUES("Grande", "Doce"),
("Média", "Doce"),
("Pequena", "Doce"),
("Grande", "Salgada"),
("Méida", "Salgada"),
("Pequena", "Salgada");

INSERT INTO tb_pizzas(sabor, inteirametade, sabor2, preco, categoriasid)
VALUES("Mussarela", "Inteira", NULL, 45.50, 4),
("Calabresa", "Inteira", NULL, 50, 4),
("Mussarela", "Metade", "Calabresa", 50, 4),
("Prestígio", "Inteira", NULL, 60, 2),
("Chocolate", "Inteira", NULL, 74.50, 1),
("Portuguesa", "Inteira", NULL, 66, 4),
("Cinderela", "Inteira", NULL, 35, 6),
("Romeu e Julieta", "Inteira", NULL, 33.99, 3);

SELECT * FROM tb_pizzas;
SELECT * FROM tb_categorias;

SELECT * FROM tb_pizzas WHERE preco > 45;

SELECT * FROM tb_pizzas WHERE preco >= 50 AND preco <= 100;

SELECT * FROM tb_pizzas WHERE sabor LIKE "%m%";

SELECT tb_pizzas.*, tb_categorias.tamanho, tb_categorias.tipo
FROM tb_pizzas
INNER JOIN tb_categorias
ON tb_pizzas.categoriasid = tb_categorias.id 
ORDER BY sabor ASC;-- compara ambos campos

SELECT tb_pizzas.*, tb_categorias.tamanho, tb_categorias.tipo
FROM tb_pizzas
INNER JOIN tb_categorias
ON tb_pizzas.categoriasid = tb_categorias.id
WHERE tb_categorias.tipo = "Doce";