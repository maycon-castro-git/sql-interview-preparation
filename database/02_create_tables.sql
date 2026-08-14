INSERT INTO Departamentos (nome_departamento)
VALUES
('Vendas'),
('Financeiro'),
('Tecnologia'),
('Marketing'),
('Operações');

INSERT INTO Funcionarios
(nome, departamento_id, cargo, salario, data_admissao, gestor_id)
VALUES
('Carlos Mendes', 1, 'Gerente de Vendas', 9500, '2019-03-10', NULL),
('Ana Souza', 2, 'Gerente Financeiro', 10200, '2018-07-20', NULL),
('Ricardo Lima', 3, 'Gerente de Tecnologia', 12500, '2017-02-15', NULL),
('Fernanda Costa', 4, 'Gerente de Marketing', 9000, '2020-01-05', NULL),
('Paulo Rocha', 5, 'Gerente de Operações', 9800, '2019-09-12', NULL);

INSERT INTO Funcionarios
(nome, departamento_id, cargo, salario, data_admissao, gestor_id)
VALUES
('Marcos Silva', 1, 'Analista Comercial', 5200, '2022-04-01', 1),
('Juliana Alves', 1, 'Vendedora', 4200, '2023-02-10', 1),
('Lucas Martins', 1, 'Vendedor', 4100, '2023-06-15', 1),
('Patricia Gomes', 2, 'Analista Financeiro', 5500, '2021-08-18', 2),
('Bruno Castro', 3, 'Analista de Dados', 6800, '2022-01-20', 3),
('Larissa Ferreira', 3, 'Desenvolvedora', 7500, '2021-03-22', 3),
('Gabriel Santos', 4, 'Analista de Marketing', 4800, '2023-09-11', 4),
('Rafael Nunes', 5, 'Analista de Operações', 5100, '2022-11-07', 5);

INSERT INTO Categorias (nome_categoria)
VALUES
('Informática'),
('Eletrônicos'),
('Escritório'),
('Acessórios'),
('Móveis');

INSERT INTO Produtos
(nome_produto, categoria_id, preco, custo, estoque, ativo)
VALUES
('Notebook Pro',       1, 4500, 3200, 20, 1),
('Notebook Basic',     1, 2800, 1950, 35, 1),
('Monitor 24',         1,  950,  610, 60, 1),
('Monitor 27',         1, 1450,  920, 30, 1),
('Mouse Wireless',     4,  120,   55, 150, 1),
('Teclado Mecânico',   4,  350,  190, 90, 1),
('Headset',             4,  280,  135, 80, 1),
('Smartphone X',       2, 3200, 2250, 40, 1),
('Tablet 10',          2, 2100, 1470, 25, 1),
('Impressora Laser',   3, 1800, 1150, 15, 1),
('Cadeira Executiva',  5, 1250,  720, 25, 1),
('Mesa Escritório',    5,  900,  510, 20, 1),
('Webcam HD',           4,  240,  115, 75, 1),
('SSD 1TB',             1,  520,  310, 100, 1),
('HD Externo 2TB',     1,  650,  390, 50, 1),
('Projetor',            2, 2700, 1750, 10, 1),
('Mouse Antigo',        4,   60,   25, 0, 0);

INSERT INTO Clientes
(nome, cidade, estado, data_cadastro, segmento, ativo)
VALUES
('Alpha Tecnologia',      'São Luís',      'MA', '2022-01-10', 'Corporativo', 1),
('Beta Comércio',         'São Luís',      'MA', '2022-03-15', 'PME',         1),
('Gamma Serviços',        'Fortaleza',     'CE', '2022-06-01', 'Corporativo', 1),
('Delta Engenharia',      'Recife',        'PE', '2022-09-20', 'Corporativo', 1),
('Omega Consultoria',     'São Paulo',     'SP', '2023-01-11', 'PME',         1),
('Prime Solutions',       'Rio de Janeiro','RJ', '2023-02-17', 'Corporativo', 1),
('Nova Era Ltda',         'Teresina',      'PI', '2023-04-25', 'PME',         1),
('Tech Maranhão',         'São Luís',      'MA', '2023-06-13', 'Corporativo', 1),
('Nordeste Digital',      'Fortaleza',     'CE', '2023-08-09', 'PME',         1),
('Atlas Construções',     'Recife',        'PE', '2023-09-19', 'Corporativo', 1),
('Impacto Marketing',     'Salvador',      'BA', '2023-11-02', 'PME',         1),
('Infinity Systems',      'São Paulo',     'SP', '2024-01-08', 'Corporativo', 1),
('Global Office',         'São Luís',      'MA', '2024-02-21', 'PME',         1),
('Connect Telecom',       'Belém',         'PA', '2024-04-14', 'Corporativo', 1),
('Future Data',           'São Paulo',     'SP', '2024-05-29', 'Corporativo', 1),
('Cliente Inativo',       'São Luís',      'MA', '2021-03-04', 'PME',         0),
('Sem Compra Ltda',       'Recife',        'PE', '2024-07-13', 'PME',         1),
('Empresa Experimental',  NULL,            NULL, '2024-08-18', 'PME',         1);

INSERT INTO Pedidos
(cliente_id, funcionario_id, data_pedido, status, forma_pagamento)
VALUES
(1,  7, '2024-01-10', 'APROVADO',  'PIX'),
(1,  7, '2024-02-15', 'APROVADO',  'CARTAO'),
(1,  8, '2024-03-20', 'APROVADO',  'BOLETO'),
(1,  7, '2024-05-18', 'CANCELADO', 'CARTAO'),

(2,  8, '2024-01-22', 'APROVADO',  'PIX'),
(2,  8, '2024-04-12', 'APROVADO',  'PIX'),

(3,  7, '2024-02-07', 'APROVADO',  'BOLETO'),
(3,  7, '2024-03-11', 'APROVADO',  'CARTAO'),
(3,  8, '2024-05-09', 'APROVADO',  'PIX'),
(3,  8, '2024-07-14', 'APROVADO',  'PIX'),

(4,  6, '2024-03-05', 'APROVADO',  'BOLETO'),
(4,  6, '2024-05-20', 'CANCELADO', 'BOLETO'),

(5,  7, '2024-01-16', 'APROVADO',  'CARTAO'),
(5,  8, '2024-02-21', 'APROVADO',  'PIX'),
(5,  7, '2024-06-04', 'APROVADO',  'CARTAO'),

(6,  8, '2024-04-10', 'APROVADO',  'BOLETO'),
(6,  8, '2024-06-18', 'APROVADO',  'PIX'),
(6,  7, '2024-07-20', 'PENDENTE',  'BOLETO'),

(7,  7, '2024-05-01', 'APROVADO',  'PIX'),

(8,  6, '2024-02-02', 'APROVADO',  'CARTAO'),
(8,  6, '2024-03-02', 'APROVADO',  'CARTAO'),
(8,  7, '2024-04-02', 'APROVADO',  'PIX'),
(8,  7, '2024-05-02', 'APROVADO',  'PIX'),
(8,  8, '2024-06-02', 'APROVADO',  'BOLETO'),

(9,  8, '2024-06-15', 'CANCELADO', 'CARTAO'),

(10, 6, '2024-01-30', 'APROVADO',  'BOLETO'),
(10, 6, '2024-04-30', 'APROVADO',  'BOLETO'),
(10, 7, '2024-07-30', 'APROVADO',  'PIX'),

(11, 7, '2024-03-17', 'APROVADO',  'PIX'),

(12, 8, '2024-05-25', 'APROVADO',  'CARTAO'),
(12, 8, '2024-06-25', 'APROVADO',  'CARTAO'),
(12, 7, '2024-07-25', 'APROVADO',  'PIX'),

(13, 7, '2024-07-03', 'APROVADO',  'PIX'),

(14, 8, '2024-07-10', 'APROVADO',  'BOLETO'),

(15, 6, '2024-06-12', 'APROVADO',  'PIX'),
(15, 6, '2024-07-12', 'APROVADO',  'PIX');

INSERT INTO Itens_Pedido
(pedido_id, produto_id, quantidade, preco_unitario, desconto)
VALUES
(1,1,1,4500,0),
(1,5,2,120,0),

(2,3,3,950,5),
(2,6,2,350,0),

(3,8,1,3200,10),
(3,7,2,280,0),

(4,2,1,2800,0),

(5,5,5,120,0),
(5,6,2,350,5),

(6,10,1,1800,0),

(7,1,2,4500,5),
(7,3,2,950,0),

(8,11,4,1250,10),

(9,14,5,520,0),
(9,5,10,120,5),

(10,8,2,3200,8),

(11,12,4,900,0),

(12,16,1,2700,0),

(13,2,2,2800,0),
(13,5,3,120,0),

(14,3,2,950,5),
(14,13,3,240,0),

(15,1,1,4500,10),

(16,10,2,1800,0),
(16,11,2,1250,5),

(17,14,6,520,0),

(18,9,1,2100,0),

(19,5,3,120,0),

(20,1,1,4500,5),
(20,3,1,950,0),

(21,14,4,520,0),

(22,8,1,3200,0),
(22,7,3,280,5),

(23,11,2,1250,0),

(24,2,3,2800,10),
(24,6,5,350,0),

(25,5,2,120,0),

(26,1,2,4500,8),
(26,10,1,1800,0),

(27,12,6,900,5),

(28,16,2,2700,0),

(29,13,5,240,0),

(30,8,2,3200,0),
(30,5,5,120,0),

(31,3,4,950,5),

(32,1,1,4500,0),
(32,14,3,520,0),

(33,6,4,350,0),

(34,9,2,2100,0),

(35,2,1,2800,0),
(35,14,2,520,0),

(36,3,3,950,0);

