drop table if exists pedidos;
drop table if exists produtos;
drop table if exists clientes;
drop table if exists leads_potenciais;

CREATE TABLE public.clientes (
    id int NOT NULL,
    nome varchar(50) NOT NULL,
    cidade varchar(50) NULL,
    CONSTRAINT clientes_pkey PRIMARY KEY (id)
);

CREATE TABLE public.produtos (
    id int NOT NULL,
    nomeproduto varchar(100) NOT NULL,
    precopadrao numeric(10,2) NULL,
    CONSTRAINT produtos_pkey PRIMARY KEY (id)
);

CREATE TABLE public.pedidos (
    id int NOT NULL,
    clienteid int NULL,
    produtoid int NULL,
    quantidade int NULL,
    precovenda numeric(10,2) NULL,
    CONSTRAINT pedidos_pkey PRIMARY KEY (id),
    CONSTRAINT fk_cliente_pedido FOREIGN KEY (clienteid) REFERENCES clientes(id),
    CONSTRAINT fk_produto_pedido FOREIGN KEY (produtoid) REFERENCES produtos(id)
);

CREATE TABLE public.leads_potenciais (
    id int NOT NULL,
    nome varchar(50),
    email varchar(50),
    CONSTRAINT leads_potenciais_pkey PRIMARY KEY (id)
);

INSERT INTO Produtos (Id, NomeProduto, PrecoPadrao) VALUES
(1, 'Notebook', 4500.00),
(2, 'Mouse Sem Fio', 120.00),
(3, 'Monitor 24', 950.00),
(4, 'Teclado Mecânico', 350.00),
(5, 'Webcam HD', 250.00);

INSERT INTO Clientes (Id, Nome, Cidade) VALUES
(1, 'Maria Silva', 'São Paulo'),
(2, 'João Pereira', 'Rio de Janeiro'),
(3, 'Ana Costa', 'Curitiba'),
(4, 'Ricardo Santos', 'Belo Horizonte');

INSERT INTO Pedidos (Id, ClienteID, ProdutoID, Quantidade, PrecoVenda) VALUES
(101, 1, 1, 1, 4500.00),
(102, 1, 2, 2, 110.00),
(103, 2, 3, 1, 950.00),
(104, 3, 4, 1, 350.00);

INSERT INTO Leads_Potenciais (Id, Nome, Email) VALUES
(1, 'Maria Silva', 'maria@email.com'),
(2, 'João Pereira', 'joao@email.com'),
(3, 'Carlos Mendes', 'carlos@test.com'),
(4, 'Fernanda Lima', 'fernanda@test.com');

SELECT * FROM clientes;

SELECT nome FROM clientes;

SELECT * FROM clientes
WHERE cidade = 'São Paulo';

SELECT * FROM clientes
ORDER BY nome;

SELECT DISTINCT cidade FROM clientes;

UPDATE clientes
SET cidade = 'Salvador'
WHERE id = 4;

DELETE FROM leads_potenciais
WHERE id = 4;

SELECT clientes.nome, produtos.nomeproduto, pedidos.quantidade
FROM pedidos
INNER JOIN clientes ON pedidos.clienteid = clientes.id
INNER JOIN produtos ON pedidos.produtoid = produtos.id;

SELECT clientes.nome, pedidos.id
FROM clientes
LEFT JOIN pedidos ON clientes.id = pedidos.clienteid;

SELECT nome FROM clientes
UNION
SELECT nome FROM leads_potenciais;

SELECT nome FROM clientes
UNION ALL
SELECT nome FROM leads_potenciais;