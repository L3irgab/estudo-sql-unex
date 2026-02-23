-- ==========================================
-- CONSULTAS BÁSICAS EM SQL
-- Disciplina: Banco de Dados
-- Autor: Estudo pessoal
-- ==========================================

-- Selecionar todos os dados da tabela clientes
SELECT * FROM clientes;

-- Selecionar apenas algumas colunas
SELECT nome, idade
FROM clientes;

-- Filtrar dados com WHERE
SELECT nome, idade
FROM clientes
WHERE idade > 18;

-- Buscar clientes com nome específico
SELECT *
FROM clientes
WHERE nome = 'João';

-- Ordenar resultados em ordem crescente
SELECT nome, idade
FROM clientes
ORDER BY idade ASC;

-- Ordenar em ordem decrescente
SELECT nome, idade
FROM clientes
ORDER BY idade DESC;

-- Usando operador LIKE
SELECT *
FROM clientes
WHERE nome LIKE 'A%';

-- Contar registros
SELECT COUNT(*) 
FROM clientes;