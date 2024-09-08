
-- Tabela Criada previamente ao DB

CREATE TABLE filmes_populares_TMDB (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255),
    data_lancamento DATE,
    popularidade FLOAT,
    sinopse TEXT,
    nota FLOAT
);


-- Ajustes a tabela

ALTER TABLE filmes_populares_TMDB 
ADD COLUMN linguagem_origem VARCHAR(255),
ADD COLUMN genero VARCHAR(255),
ADD COLUMN votos INT;