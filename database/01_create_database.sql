CREATE DATABASE DataCorp;

USE DataCorp;

-- CLIENTES

CREATE TABLE Clientes (
	cliente_id INT IDENTITY(1,1) PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cidade VARCHAR(80),
    estado CHAR(2),
    data_cadastro DATE NOT NULL,
    segmento VARCHAR(50),
    ativo BIT DEFAULT 1
);

-- DEPARTAMENTOS

CREATE TABLE Departamentos (
    departamento_id INT IDENTITY(1,1) PRIMARY KEY,
    nome_departamento VARCHAR(80) NOT NULL
);

-- FUNCIONÁRIOS

CREATE TABLE Funcionarios (
    funcionario_id INT IDENTITY(1,1) PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    departamento_id INT,
    cargo VARCHAR(80),
    salario DECIMAL(10,2),
    data_admissao DATE,
    gestor_id INT NULL,

    CONSTRAINT FK_Funcionario_Departamento
        FOREIGN KEY (departamento_id)
        REFERENCES Departamentos(departamento_id),

    CONSTRAINT FK_Funcionario_Gestor
        FOREIGN KEY (gestor_id)
        REFERENCES Funcionarios(funcionario_id)
);

-- CATEGORIAS

CREATE TABLE Categorias (
    categoria_id INT IDENTITY(1,1) PRIMARY KEY,
    nome_categoria VARCHAR(80) NOT NULL
);

-- PRODUTOS

CREATE TABLE Produtos (
    produto_id INT IDENTITY(1,1) PRIMARY KEY,
    nome_produto VARCHAR(100) NOT NULL,
    categoria_id INT,
    preco DECIMAL(10,2) NOT NULL,
    custo DECIMAL(10,2),
    estoque INT,
    ativo BIT DEFAULT 1,

    CONSTRAINT FK_Produto_Categoria
        FOREIGN KEY (categoria_id)
        REFERENCES Categorias(categoria_id)
);

--  PEDIDOS


CREATE TABLE Pedidos (
    pedido_id INT IDENTITY(1,1) PRIMARY KEY,
    cliente_id INT NOT NULL,
    funcionario_id INT,
    data_pedido DATE NOT NULL,
    status VARCHAR(30),
    forma_pagamento VARCHAR(30),

    CONSTRAINT FK_Pedido_Cliente
        FOREIGN KEY (cliente_id)
        REFERENCES Clientes(cliente_id),

    CONSTRAINT FK_Pedido_Funcionario
        FOREIGN KEY (funcionario_id)
        REFERENCES Funcionarios(funcionario_id)
);

-- ITENS DOS PEDIDOS

CREATE TABLE Itens_Pedido (
    item_id INT IDENTITY(1,1) PRIMARY KEY,
    pedido_id INT NOT NULL,
    produto_id INT NOT NULL,
    quantidade INT NOT NULL,
    preco_unitario DECIMAL(10,2) NOT NULL,
    desconto DECIMAL(5,2) DEFAULT 0,

    CONSTRAINT FK_Item_Pedido
        FOREIGN KEY (pedido_id)
        REFERENCES Pedidos(pedido_id),

    CONSTRAINT FK_Item_Produto
        FOREIGN KEY (produto_id)
        REFERENCES Produtos(produto_id)
);
