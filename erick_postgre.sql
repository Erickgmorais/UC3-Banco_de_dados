CREATE TABLE livro (
	id SERIAL PRIMARY KEY,
	titulo VARCHAR(50) NOT NULL,
	ano_publicacao INT NOT NULL
);

CREATE TABLE autor (
	id SERIAL PRIMARY KEY,
	nome VARCHAR(50) NOT NULL,
	nacionalidade VARCHAR(30)
);

CREATE TABLE autoria (
	id SERIAL PRIMARY KEY, 
	livro_id INT NOT NULL, 
	autor_id INT NOT NULL,
	
	FOREIGN KEY (livro_id) REFERENCES livro(id),
	FOREIGN KEY (autor_id) REFERENCES autor(id)
);

INSERT INTO livro (titulo, ano_publicacao)
VALUES ('Algoritmos em Java', 2021)


INSERT INTO autoria (livro_id, autor_id)
VALUES (1, 1)

SELECT * FROM autoria;