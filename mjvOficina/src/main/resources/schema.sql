DROP TABLE IF EXISTS TB_DEFEITO_PECA;
DROP TABLE IF EXISTS TB_PECA_VEICULO;
DROP TABLE IF EXISTS TB_DEFEITO;
DROP TABLE IF EXISTS TB_PECA;
DROP TABLE IF EXISTS TB_VEICULO;

CREATE TABLE IF NOT EXISTS TB_DEFEITO(
	idDefeito INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS TB_PECA(
	idPeca INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS TB_VEICULO(
	idVeiculo INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(40) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS TB_DEFEITO_PECA(
	fkIdDefeito INT NOT NULL,
	fkIdPeca INT NOT NULL,
	FOREIGN KEY (fkIdDefeito) REFERENCES TB_DEFEITO(idDefeito),
	FOREIGN KEY (fkIdPeca) REFERENCES TB_PECA(idPeca)
);

CREATE TABLE IF NOT EXISTS TB_PECA_VEICULO(
	fkIdPeca INT NOT NULL,
	fkIdVeiculo INT NOT NULL,
	FOREIGN KEY (fkIdPeca) REFERENCES TB_PECA(idPeca),
	FOREIGN KEY (fkIdVeiculo) REFERENCES TB_VEICULO(idVeiculo)
);

INSERT INTO TB_DEFEITO (nome) VALUES
('Enferrujado'),
('Quebrado'),
('Furado'),
('Amassado');

INSERT INTO TB_PECA (nome) VALUES
('Motor'),
('Pneu'),
('Porta'),
('Volante'),
('Roda'),
('Eixo'),
('Asa'),
('Casco'),
('Banco');

INSERT INTO TB_VEICULO (nome) VALUES
('Carro'),
('Moto'),
('Navio'),
('Aviao');

INSERT INTO TB_DEFEITO_PECA(fkIdDefeito, fkIdPeca) VALUES
(1, 1),
(1, 3),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(4, 3),
(4, 5),
(4, 6),
(4, 8);

INSERT INTO TB_PECA_VEICULO(fkIdPeca, fkIdVeiculo ) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 1),
(2, 2),
(2, 4),
(3, 1),
(3, 3),
(3, 4),
(4, 1),
(5, 1),
(5, 2),
(5, 4),
(6, 1),
(6, 4),
(7, 4),
(8, 3),
(9, 1),
(9, 2),
(9, 3),
(9, 4);
