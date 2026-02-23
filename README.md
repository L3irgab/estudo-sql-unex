# 📚 LINGUAGEM SQL

Repositório criado para apresentar os conteúdos estudados sobre SQL até o dia 11/02/2026, conforme solicitado pelo professor.

---

# 1. Introdução ao SQL

## 1.1 O que é SQL?

SQL (Structured Query Language) é uma linguagem utilizada para manipular e consultar bancos de dados relacionais.

Ela permite:

- Criar bancos de dados
- Criar tabelas
- Inserir dados
- Atualizar dados
- Excluir dados
- Consultar informações

Exemplo simples:

```sql
SELECT * FROM clientes;
```

---

## 1.2 Por que aprender SQL?

- Alta demanda no mercado
- Essencial para desenvolvedores
- Muito usado em análise de dados
- Base para Ciência de Dados e Engenharia de Dados

---

# 2. Conceitos Fundamentais

## 2.1 Banco de Dados

Banco de dados é um conjunto organizado de informações.

Exemplo:
Um sistema de escola pode ter um banco de dados com alunos, professores e turmas.

---

## 2.2 Tabela

Tabela é onde os dados ficam armazenados.

Exemplo:

| id | nome  | idade |
|----|-------|-------|
| 1  | João  | 20    |
| 2  | Maria | 22    |

---

## 2.3 Campo

Campo é a coluna da tabela.

Exemplo:
- id
- nome
- idade

---

## 2.4 Registro

Registro é cada linha da tabela.

Exemplo:
João, 20 anos → é um registro.

---

# 3. SGBD (Sistema de Gerenciamento de Banco de Dados)

SGBD é o software que gerencia o banco de dados.

Exemplos de SGBDs:

- MySQL
- PostgreSQL
- SQL Server
- Oracle

Eles permitem:

- Criar banco de dados
- Controlar acesso
- Fazer backup
- Executar comandos SQL

---

# 4. Tipos de Comandos SQL

## 4.1 DDL (Data Definition Language)

Comandos para definir estrutura.

### Criar tabela

```sql
CREATE TABLE clientes (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    idade INT
);
```

### Deletar tabela

```sql
DROP TABLE clientes;
```

---

## 4.2 DML (Data Manipulation Language)

Comandos para manipular dados.

### Inserir dados

```sql
INSERT INTO clientes (id, nome, idade)
VALUES (1, 'João', 20);
```

### Atualizar dados

```sql
UPDATE clientes
SET idade = 21
WHERE id = 1;
```

### Deletar dados

```sql
DELETE FROM clientes
WHERE id = 1;
```

---

## 4.3 DQL (Data Query Language)

Comandos para consultar dados.

### Selecionar todos os dados

```sql
SELECT * FROM clientes;
```

### Selecionar dados específicos

```sql
SELECT nome, idade FROM clientes;
```

### Usando filtro

```sql
SELECT * FROM clientes
WHERE idade > 18;
```

---

# 5. Aplicações do SQL no Mercado

SQL é utilizado em:

- Empresas de tecnologia
- Bancos
- Sistemas hospitalares
- E-commerce
- Business Intelligence
- Análise de dados

Ferramentas que utilizam SQL:

- Power BI
- Tableau
- Sistemas ERP
- Sistemas web

---

# 6. Conclusão

SQL é uma linguagem fundamental para quem deseja trabalhar com desenvolvimento, análise de dados ou administração de banco de dados.

O domínio dessa linguagem é essencial para o mercado atual de tecnologia.

---

# 👨‍💻 Autor

Projeto desenvolvido para atividade acadêmica da disciplina de Banco de Dados.
Aluno: Gabriel de Oliveira de Assis