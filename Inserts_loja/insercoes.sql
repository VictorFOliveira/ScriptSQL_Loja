//PostgreSQL

/* Os comandos foram criados com apenas um insert em cada tabela, pois reduz o processamento */

// adicionando dados a categoria
insert into categoria (nome_categoria) values
('Refrigerantes'),
('Snacks'),
('Alimentos'),
('Bebidas Alcoólicas');

//adicionando dados a clientes
insert into clientes (nome, email, telefone, data_cadastro) values
('Marco Feliciano', 'marco@gmail.com', '8532843033', '2024-11-22'),
('Zambreli Tirocerto', 'carla@gmail.com', '8532843045', '2024-11-22'),
('Silas Falomais', 'silinhas@hotmail.com', '8532863033', '2024-11-22');
('Maria Clara Perdigão', 'mcperdigao@outlook.com', '8597978545', '2024-11-23'),
('João Silva', 'joao.silva@gmail.com', '8598765432', '2024-11-22'),
('Ana Oliveira', 'ana.oliveira@yahoo.com', '8599988776', '2024-11-21'),
('Carlos Eduardo', 'carlos.eduardo@uol.com.br', '8599123456', '2024-11-20'),
('Fernanda Lima', 'fernanda.lima@live.com', '8599234567', '2024-11-19'),
('Lucas Pereira', 'lucas.pereira@hotmail.com', '8599345678', '2024-11-18'),
('Patrícia Costa', 'patricia.costa@outlook.com', '8599456789', '2024-11-17'),
('Felipe Santos', 'felipe.santos@gmail.com', '8599567890', '2024-11-16'),
('Beatriz Souza', 'beatriz.souza@yahoo.com', '8599678901', '2024-11-15'),
('Ricardo Almeida', 'ricardo.almeida@uol.com.br', '8599789012', '2024-11-14'),
('Juliana Martins', 'juliana.martins@live.com', '8599890123', '2024-11-13'),
('Roberto Silva', 'roberto.silva@hotmail.com', '8599901234', '2024-11-12'),
('Mariana Pereira', 'mariana.pereira@outlook.com', '8599012345', '2024-11-11'),
('Eduardo Lima', 'eduardo.lima@gmail.com', '8599113456', '2024-11-10'),
('Sofia Costa', 'sofia.costa@yahoo.com', '8599224567', '2024-11-09'),
('Gustavo Alves', 'gustavo.alves@uol.com.br', '8599335678', '2024-11-08'),
('Larissa Duarte', 'larissa.duarte@live.com', '8599446789', '2024-11-07'),
('Vitor Hugo', 'vitor.hugo@hotmail.com', '8599557890', '2024-11-06'),
('Carla Rodrigues', 'carla.rodrigues@gmail.com', '8599668901', '2024-11-05'),
('Igor Souza', 'igor.souza@yahoo.com', '8599779012', '2024-11-04');



//adicionando dados a produtos
insert into produtos (nome_produto, descricao, preco, quantidade_estoque, id_categoria) values
('Coca-Cola 2L', 'Refrigerante sabor cola', 10.50, 50, 1),
('Pepsi 2L', 'Refrigerante sabor cola', 9.50, 50, 1),
('Fanta Guaraná', 'Refrigerante sabor guaraná', 8.50, 50, 1),
('Doritos', 'Snack de milho', 5.00, 30, 2),
('Fubá', 'Farinha de milho', 4.00, 100, 3),
('Whisky', 'Bebida alcoólica', 50.00, 20, 4);

//adicionando dados a pedidos
insert into pedidos (id_cliente, data_pedido, status, valor_total) values
(1, '2024-11-22', 'separacao', 50.50),
(2, '2024-11-22', 'em rota', 100.50),
(3, '2024-11-22', 'entregue', 22.00);

//adicionando dados a itens_pedidos
insert into itens_pedidos (id_pedido, id_produto, quantidade, preco_unitario) values
(1, 1, 1, 10.50),
(1, 2, 1, 9.50),
(1, 3, 2, 8.50),
(2, 1, 5, 10.50),
(2, 2, 5, 9.50),
(3, 1, 2, 10.50);

//adicionando dados a endereco
insert into endereco (id_cliente, tipo_endereco, logradouro, numero, complemento, cidade, estado, cep, bairro) values
(1, 'Residencial', 'Rua A', '123', 'Apto 101', 'Fortaleza', 'CE', '60123000', 'Centro'),
(2, 'Comercial', 'Av. João Pessoa', '456', 'Sala 202', 'Fortaleza', 'CE', '60123456', 'Aldeota'),
(3, 'Residencial', 'Rua B', '789', '', 'Fortaleza', 'CE', '60123890', 'Bairro de Fátima');
(4, 'Residencial', 'Rua C', '101', 'Apto 202', 'Fortaleza', 'CE', '60000-000', 'Meireles'),
(5, 'Comercial', 'Av. Beira Mar', '102', 'Loja 303', 'Fortaleza', 'CE', '60001-000', 'Beira Mar'),
(6, 'Residencial', 'Rua D', '150', NULL, 'Fortaleza', 'CE', '60002-000', 'Aldeota'),
(7, 'Comercial', 'Rua E', '203', 'Sala 404', 'Fortaleza', 'CE', '60003-000', 'Centro'),
(8, 'Residencial', 'Rua F', '305', 'Apto 505', 'Fortaleza', 'CE', '60004-000', 'José de Alencar'),
(9, 'Comercial', 'Av. Santos Dumont', '410', 'Loja 606', 'Fortaleza', 'CE', '60005-000', 'Ceará'),
(10, 'Residencial', 'Rua G', '507', NULL, 'Fortaleza', 'CE', '60006-000', 'Varjota'),
(11, 'Comercial', 'Rua H', '602', 'Sala 707', 'Fortaleza', 'CE', '60007-000', 'Papicu'),
(12, 'Residencial', 'Rua I', '808', 'Apto 909', 'Fortaleza', 'CE', '60008-000', 'Cais do Porto'),
(13, 'Comercial', 'Av. Aguanambi', '150', 'Loja 808', 'Fortaleza', 'CE', '60009-000', 'Messejana'),
(14, 'Residencial', 'Rua J', '303', NULL, 'Fortaleza', 'CE', '60010-000', 'Conjunto Ceará'),
(15, 'Comercial', 'Rua K', '412', 'Sala 1010', 'Fortaleza', 'CE', '60011-000', 'São João do Tauape'),
(16, 'Residencial', 'Rua L', '600', 'Apto 1205', 'Fortaleza', 'CE', '60012-000', 'Granja Portugal'),
(17, 'Comercial', 'Av. Engenheiro Santana Júnior', '503', 'Loja 1301', 'Fortaleza', 'CE', '60013-000', 'Vila União'),
(18, 'Residencial', 'Rua M', '700', NULL, 'Fortaleza', 'CE', '60014-000', 'Alagadiço'),
(19, 'Comercial', 'Rua N', '600', 'Sala 1402', 'Fortaleza', 'CE', '60015-000', 'Parangaba'),
(20, 'Residencial', 'Rua O', '200', 'Apto 1502', 'Fortaleza', 'CE', '60016-000', 'São Gerardo'),
(21, 'Comercial', 'Av. 13 de Maio', '900', 'Loja 1603', 'Fortaleza', 'CE', '60017-000', 'Centro'),
(22, 'Residencial', 'Rua P', '100', NULL, 'Fortaleza', 'CE', '60018-000', 'Bonsucesso'),
(23, 'Comercial', 'Rua Q', '305', 'Sala 1704', 'Fortaleza', 'CE', '60019-000', 'Cidade dos Funcionários');


//adicionando dados a pagamento
insert into pagamento (id_pedido, forma_pagamento, status_pagamento, data_pagamento, valor) values
(1, 'Crédito', 'Aprovado', '2024-11-22', 50.50),
(2, 'Boleto', 'Pendente', '2024-11-22', 100.50),
(3, 'Dinheiro', 'Aprovado', '2024-11-22', 22.00);

//adicionando dados a entrega
insert into entrega (id_endereco, status) values
(1, 'Em Transito'),
(2, 'Aguardando Retirada'),
(3, 'Entregue');

//adicionando dados a avaliacao
insert into avaliacao (id_cliente, id_item, avaliacao, comentario) values
(1, 1, 5, 'Produto excelente, recomendo!'),
(2, 2, 4, 'Gostei, mas poderia ser mais gelado.'),
(3, 3, 3, 'Produto bom, mas o preço poderia ser menor.');
