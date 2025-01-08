CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(200)
);

CREATE TABLE tb_personagens (
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    poderataque INT,
    poderdefesa INT,
    nivel INT,
    classeid BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (classeid) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes(nome, descricao)
VALUES ("Arqueiro", "Possui arco e flechas ilimitadas"),
("Guerreiro", "Combate corpo a corpo" ),
("Mago", "Usa magia, ataque a distância"),
("Assassino", "Habilidade de ataques mortais rápidos"),
("Curandeiro", "Habilidade de cura e proteção");

INSERT INTO tb_personagens(nome, poderataque, poderdefesa, nivel, classeid)
VALUES ("Katrina", 1500, 2001, 1, 3),
("Athena", 5000, 3500, 5, 2),
("Magnus", 3000, 1050, 4, 3),
("Ethan", 7000, 3800, 5, 4),
("Selena", 4800, 900, 2, 1),
("Kyra", 2600, 6999, 4, 5),
("Daemon", 8000, 6500, 5, 4),
("Stefan", 6000, 6000, 5, 2);

SELECT * FROM tb_classes;
SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens WHERE poderataque > 2000;

SELECT * FROM tb_personagens WHERE poderdefesa >= 1000 AND poderdefesa <= 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%c%"; -- O '%' é um caractere coringa, ele significa 'qualquer texto que contenha' o 'c' 

-- INNER JOIN
SELECT tb_personagens.*, tb_classes.nome AS Nome_Classe, tb_classes.descricao AS Descricao_Classe -- pega todos os campos da tab personagens e somente 2 campos da tab classes
FROM tb_personagens
INNER JOIN tb_classes -- junta as duas tabelas
ON tb_personagens.classeid = tb_classes.id; -- comparando os campos id tanto da tab onde é uma PK quanto da tab onde é uma FK

SELECT tb_personagens.*, tb_classes.nome AS Nome_Classe, tb_classes.descricao AS Descricao_Classe
FROM tb_personagens
INNER JOIN tb_classes
ON tb_personagens.classeid = tb_classes.id
WHERE  tb_personagens.classeid = 4;