-- ==========================================
-- CONSULTAS UM POUCO MAIS AVANÇADAS
-- ==========================================

-- Soma total de vendas
SELECT SUM(valor_total) AS total_vendido
FROM vendas;

-- Média de preço dos produtos
SELECT AVG(preco) AS media_preco
FROM produtos;

-- Agrupando resultados
SELECT id_cliente, SUM(valor_total) AS total_cliente
FROM vendas
GROUP BY id_cliente;

-- JOIN entre clientes e vendas
SELECT clientes.nome, vendas.valor_total
FROM clientes
JOIN vendas ON clientes.id = vendas.id_cliente;

-- Produtos com preço maior que 100
SELECT nome, preco
FROM produtos
WHERE preco > 100;