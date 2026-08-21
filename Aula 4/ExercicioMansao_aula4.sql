DROP DATABASE mansao;
CREATE DATABASE mansao;
USE mansao;

CREATE TABLE investigacao(
id INT PRIMARY KEY,
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

INSERT INTO investigacao() VALUES ('Arthur Carvalho', 45, 'Empresário', 'São Paulo', TRUE, '23:00:00', FALSE, 3, 4),
('Beatriz Moura', 34, 'Curadora de Arte', 'Campinas', FALSE, '22:45:00', TRUE, 1, 2),
('Carlos Nogueira', 52, 'Colecionador', 'Santos', FALSE, '23:10:00', FALSE, 2, 3),
('Daniela Rocha', 29, 'Jornalista', 'Santos', TRUE, '23:10:00', FALSE, 2, 4),
('Eduardo Lima', 41, 'Advogado', 'Campinas',  '22:55:00', FALSE, 2, 4),
('Fernanda Alves', 38, 'Arquiteta', 'Santos', FALSE, '22:40:00', TRUE, 0,1),
('Gustavo Prado', 47, 'Artista', 'São Paulo', TRUE, '23:00:00', FALSE, 3, 4),
('Helena Duarte', 31, 'Restauradora de Arte', 'Campinas', FALSE, '22:50:00', FALSE, 1, 2);


 
 