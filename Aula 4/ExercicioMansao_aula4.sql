DROP DATABASE IF EXISTS mansao;
CREATE DATABASE mansao;
USE mansao;

CREATE TABLE investigacao(
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100),
idade INT,
profissao VARCHAR(100),
cidade VARCHAR(100),
estava_na_sala_do_cofre BOOLEAN,
horario_visto TIME,
possui_alibi BOOLEAN,
quantidade_evidencias INT,
nivel_suspeita INT
);

INSERT INTO investigacao (nome, idade, profissao, cidade, estava_na_sala_do_cofre, horario_visto, possui_alibi, quantidade_evidencias, nivel_suspeita) VALUES ('Arthur Carvalho', 45, 'Empresário', 'São Paulo', TRUE, '23:00:00', FALSE, 3, 4),
('Beatriz Moura', 34, 'Curadora de Arte', 'Campinas', FALSE, '22:45:00', TRUE, 1, 2),
('Carlos Nogueira', 52, 'Colecionador', 'Santos', FALSE, '23:10:00', FALSE, 2, 3),
('Daniela Rocha', 29, 'Jornalista', 'Santos', TRUE, '23:10:00', FALSE, 2, 4),
('Eduardo Lima', 41, 'Advogado', 'Campinas', TRUE, '22:55:00', FALSE, 2, 4),
('Fernanda Alves', 38, 'Arquiteta', 'Santos', FALSE, '22:40:00', TRUE, 0,1),
('Gustavo Prado', 47, 'Artista', 'São Paulo', TRUE, '23:00:00', FALSE, 3, 4),
('Helena Duarte', 31, 'Restauradora de Arte', 'Campinas', FALSE, '22:50:00', FALSE, 1, 2);


SET SQL_SAFE_UPDATES = 0;
SELECT * FROM investigacao;

/*PARTE 2 E 3
UPDATE investigacao SET nivel_suspeita = 3 WHERE id = 2;
UPDATE investigacao SET cidade = 'São Paulo' WHERE nome = 'Helena Duarte';
UPDATE investigacao SET nivel_suspeita = nivel_suspeita + 1  WHERE estava_na_sala_do_cofre = TRUE;
DELETE FROM investigacao WHERE possui_alibi = TRUE AND quantidade_evidencias = 0 AND nivel_suspeita = 1;

PARTE 4
1.CONSULTA
SELECT * FROM investigacao;
SELECT nome, profissao FROM investigacao;
SELECT * FROM investigacao ORDER BY idade DESC;
2.CONDICIONAL
SELECT * FROM investigacao WHERE estava_na_sala_do_cofre = 1 ; 
SELECT * FROM investigacao WHERE nivel_suspeita > 3; 
SELECT * FROM investigacao WHERE idade BETWEEN 30 AND 50;
3.FILTRO DE TEXTO
SELECT * FROM investigacao WHERE nome LIKE 'A%'; 
SELECT * FROM investigacao WHERE nome LIKE '%o'; 
SELECT * FROM investigacao WHERE profissao LIKE '%Art%';
4.IN 
SELECT * FROM investigacao WHERE cidade IN ('São Paulo', 'Campinas', 'Santos'); 
5.FUNCOES
SELECT COUNT(id) from investigacao;
SELECT MAX(nivel_suspeita) from investigacao; 
SELECT MIN(nivel_suspeita) from investigacao;
SELECT SUM(quantidade_evidencias) from investigacao;
6. AGRUPAMENTO
SELECT profissao, COUNT(*) AS total_convidados FROM investigacao GROUP BY profissao
SELECT cidade, ROUND(AVG(nivel_suspeita)) AS media_suspeitos FROM investigacao GROUP BY cidade;

DESAFIO
SELECT * FROM investigacao WHERE estava_na_sala_do_cofre = TRUE AND horario_visto = '23:00:00' AND possui_alibi = FALSE AND nivel_suspeita > 3 AND quantidade_evidencias >= 2 AND (nome LIKE 'A%' OR 'C%') AND nivel_suspeita = (SELECT MAX(nivel_suspeita) FROM investigacao);
*/


 
 
