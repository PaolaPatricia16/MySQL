CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR (200) NOT NULL,
    curso VARCHAR(50),
    mediageral DECIMAL (4,2) NOT NULL,
    semestre INT,
	PRIMARY KEY (id)
);

-- Inserir registros
INSERT INTO tb_estudantes(nome, curso, mediageral, semestre)
VALUES("Paola", "Java", 8.5, 2),
("Gabriel", "Java", 7, 1),
("Lucas", "CSS", 10, 3),
("Diego", "CSS", 5, 3),
("Leonardo", "JavaScript", 6.99, 1),
("Luan", "JavaScript", 8.5, 1),
("Bruno", "SQLServer", 6.5, 4),
("Fabiana", "SQLServer", 9.5, 4);

-- Selecionando registros
SELECT * FROM tb_estudantes;

SELECT * FROM tb_estudantes WHERE mediageral > 7.0;

SELECT * FROM tb_estudantes WHERE mediageral < 7.0;

-- Alterando registros
UPDATE tb_estudantes SET mediageral = 7.0 WHERE id = 5;

SELECT nome, mediageral FROM tb_estudantes WHERE id = 5; -- validando alteração
