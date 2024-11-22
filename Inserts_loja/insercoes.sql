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
