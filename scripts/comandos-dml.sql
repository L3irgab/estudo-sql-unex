-- ==========================================
-- COMANDOS DML (Data Manipulation Language)
-- Inserindo e manipulando dados
-- ==========================================

-- Inserir clientes
INSERT INTO clientes (nome, idade, email)
VALUES 
('João', 25, 'joao@email.com'),
('Maria', 30, 'maria@email.com'),
('Carlos', 19, 'carlos@email.com');

-- Inserir produtos
INSERT INTO produtos (nome, preco, estoque)
VALUES
('Teclado', 120.00, 10),
('Mouse', 80.00, 20),
('Monitor', 900.00, 5);

-- Atualizar idade de um cliente
UPDATE clientes
SET idade = 26
WHERE nome = 'João';

-- Diminuir estoque após venda
UPDATE produtos
SET estoque = estoque - 1
WHERE nome = 'Teclado';

-- Deletar cliente específico
DELETE FROM clientes
WHERE nome = 'Carlos';