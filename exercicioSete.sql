SELECT c.nome AS clientes, p.nome AS produtos
FROM clientes AS c 
INNER JOIN compras AS co
ON c.id = co.cliente_id
INNER JOIN produtos AS p
ON p.id = co.produto_id;

SELECT c.nome AS clientes, co.data_compra
FROM clientes AS C
INNER JOIN compras AS co 
ON c.id = co.cliente_id
INNER JOIN produtos AS p 
ON p.id = co.produto_id
ORDER BY data_compra ASC;

SELECT c.nome AS clientes, p.nome AS produtos, p.categoria AS categoria
FROM clientes AS C
INNER JOIN compras AS co 
ON c.id = co.cliente_id
INNER JOIN produtos AS p 
ON p.id = co.produto_id
WHERE categoria = 'Informática';

SELECT c.nome AS clientes, p.nome AS produtos, p.preco AS preço
FROM clientes AS C
INNER JOIN compras AS co 
ON c.id = co.cliente_id
INNER JOIN produtos AS p 
ON p.id = co.produto_id
WHERE preco > 500;

SELECT c.nome AS clientes, co.data_compra
FROM clientes AS c
LEFT JOIN compras AS co 
ON c.id = co.cliente_id;

INSERT INTO clientes (nome, idade, cidade)
VALUES
('Erick Gustavo de Morais', 20, 'São Leopoldo');

SELECT c.nome AS clientes, co.data_compra
FROM clientes AS c
LEFT JOIN compras AS co 
ON c.id = co.cliente_id;

SELECT c.nome AS clientes, co.data_compra
FROM clientes AS c 
LEFT JOIN compras AS co
ON c.id = co.cliente_id
WHERE co.data_compra IS NULL;

SELECT c.nome AS clientes, co.data_compra
FROM clientes AS c 
RIGHT JOIN compras AS co
ON c.id = co.cliente_id;

SELECT c.nome AS clientes, p.nome AS produtos, co.quantidade AS quantidades, p.preco AS precos
FROM clientes AS c
INNER JOIN compras AS co
ON co.cliente_id = c.id
INNER JOIN produtos AS p
ON p.id = co.produto_id;

SELECT c.nome AS clientes, co.data_compra
FROM clientes AS c
INNER JOIN compras AS co
ON co.cliente_id = c.id
WHERE co.data_compra BETWEEN '2025-02-01' AND '2025-02-28'
ORDER BY co.data_compra ASC;

SELECT c.nome AS clientes, c.cidade AS cidades, p.nome AS produtos, p.categoria AS categoria, co.quantidade AS quantidades, p.preco AS preco, (co.quantidade * p.preco) AS valor_total, co.data_compra AS data_compra
FROM clientes AS c
INNER JOIN compras AS co
ON co.cliente_id = c.id
INNER JOIN produtos AS p
ON co.produto_id = p.id
ORDER BY valor_total DESC, c.nome ASC;