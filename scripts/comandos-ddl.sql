-- ==========================================
-- COMANDOS DDL (Data Definition Language)
-- Criando estrutura de tabelas
-- ==========================================

-- Criar banco de dados
CREATE DATABASE loja;

-- Usar o banco
USE loja;

-- Criar tabela clientes
CREATE TABLE clientes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    idade INT,
    email VARCHAR(100)
);

-- Criar tabela produtos
CREATE TABLE produtos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    preco DECIMAL(10,2),
    estoque INT
);

-- Criar tabela vendas
CREATE TABLE vendas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT,
    id_produto INT,
    quantidade INT,
    valor_total DECIMAL(10,2)
);

-- Deletar tabela (caso precise)
-- DROP TABLE clientes;