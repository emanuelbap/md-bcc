DROP DATABASE IF EXISTS biblioteca_musical;
CREATE DATABASE biblioteca_musical;
USE biblioteca_musical;

CREATE TABLE Autor (
    id_autor INT PRIMARY KEY AUTO_INCREMENT,
    nome_autor VARCHAR(100) NOT NULL
);

CREATE TABLE CD (
    id_cd INT PRIMARY KEY AUTO_INCREMENT,
    nome_cd VARCHAR(150) NOT NULL,
    estilo VARCHAR(50),
    preco_cd DECIMAL(6,2),
    data_lancamento DATE,
    id_autor INT,
    FOREIGN KEY (id_autor) REFERENCES Autor(id_autor)
);

-- ======================================
-- INSERINDO AUTORES
-- ======================================

INSERT INTO Autor (nome_autor) VALUES
('Caetano Veloso'),
('Gilberto Gil'),
('Marisa Monte'),
('Chico Buarque'),
('Legião Urbana'),
('Tom Jobim'),
('Elis Regina'),
('Milton Nascimento'),
('Djavan'),
('Titãs');

-- ======================================
-- INSERINDO CDs
-- alguns autores têm 4 CDs
-- ======================================

INSERT INTO CD (nome_cd, estilo, preco_cd, data_lancamento, id_autor) VALUES

-- Caetano Veloso (3)
('Cores, Nomes', 'MPB', 36.90, '1982-01-01', 1),
('Tropicália ou Panis et Circencis', 'MPB', 41.00, '1968-01-01', 1),
('Cinema Transcendental', 'MPB', 38.50, '1979-01-01', 1),

-- Gilberto Gil (4)
('Refazenda', 'MPB', 35.50, '1975-01-01', 2),
('Realce', 'MPB', 38.20, '1979-01-01', 2),
('Expresso 2222', 'MPB', 37.00, '1972-01-01', 2),
('Raça Humana', 'MPB', 39.00, '1984-01-01', 2),

-- Marisa Monte (4)
('Memórias, Crônicas e Declarações de Amor', 'MPB', 42.00, '2000-01-01', 3),
('Verde, Anil, Amarelo, Cor-de-Rosa e Carvão', 'MPB', 44.90, '1994-01-01', 3),
('Infinito Particular', 'MPB', 45.00, '2006-01-01', 3),
('Universo ao Meu Redor', 'MPB', 43.00, '2006-01-01', 3),

-- Chico Buarque (4)
('Construção', 'MPB', 38.90, '1971-01-01', 4),
('Paratodos', 'MPB', 40.00, '1993-01-01', 4),
('Carioca', 'MPB', 42.30, '2006-01-01', 4),
('Meus Caros Amigos', 'MPB', 39.20, '1976-01-01', 4),

-- Legião Urbana (4)
('Dois', 'Rock', 36.00, '1986-01-01', 5),
('Que País é Este', 'Rock', 37.00, '1987-01-01', 5),
('As Quatro Estações', 'Rock', 39.00, '1989-01-01', 5),
('V', 'Rock', 38.80, '1991-01-01', 5),

-- Tom Jobim (3)
('Wave', 'Bossa Nova', 41.00, '1967-01-01', 6),
('Stone Flower', 'Bossa Nova', 40.00, '1970-01-01', 6),
('Matita Perê', 'Bossa Nova', 38.00, '1973-01-01', 6),

-- Elis Regina (3)
('Elis & Tom', 'MPB', 45.00, '1974-01-01', 7),
('Falso Brilhante', 'MPB', 39.50, '1976-01-01', 7),
('Essa Mulher', 'MPB', 38.20, '1979-01-01', 7),

-- Milton Nascimento (3)
('Clube da Esquina', 'MPB', 44.00, '1972-01-01', 8),
('Minas', 'MPB', 40.50, '1975-01-01', 8),
('Geraes', 'MPB', 41.20, '1976-01-01', 8),

-- Djavan (3)
('A Voz, o Violão, a Música de Djavan', 'MPB', 37.50, '1976-01-01', 9),
('Luz', 'MPB', 38.90, '1982-01-01', 9),
('Oceano', 'MPB', 39.80, '1989-01-01', 9),

-- Titãs (3)
('Cabeça Dinossauro', 'Rock', 36.40, '1986-01-01', 10),
('Õ Blésq Blom', 'Rock', 35.90, '1989-01-01', 10),
('Titanomaquia', 'Rock', 37.60, '1993-01-01', 10);
