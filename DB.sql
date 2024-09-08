CREATE TABLE filmes_populares (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255),
    data_lancamento DATE,
    popularidade FLOAT,
    sinopse TEXT,
    nota FLOAT
);
