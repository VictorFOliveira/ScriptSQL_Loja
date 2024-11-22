//PostgreSQL

// inserindo dados do cliente
insert into clientes (nome, email, telefone, data_cadastro) 
values 
  ('Marco Feliciano', 'marco@gmail.com', '8532843033', '2024-11-22'),
  ('Zambreli Tirocerto', 'carla@gmail.com', '8532843045', '2024-11-22'),
  ('Silas Falomais', 'silinhas@hotmail.com', '8532863033', '2024-11-22');

//vantagens dessa abordagem: um único comando "insert" é mais fácil de entender e gerenciar
//menos sobrecarga de execução: o sgbd precisa processar apenas um comando em vez de vários, o que pode ser mais eficiente
// menos código: reduz a repetição, tornando o script mais curto e fácil de manter.

//inserindo dados do produto 

insert into produtos (nome_produto, descricao, preco, quantidade_estoque)
VALUES
('Coca-Cola 2L', 'Refrigerante sabor cola', 10.50, 50),
('Pepsi 2L', 'Refrigerante sabor cola', 9.50, 50),
('Fanta Guaraná', 'Refrigerante sabor guaraná', 8.50, 50);

//inserindo dados do pedido
insert into pedidos (id_cliente, data_pedido, status, valor_total)
VALUES
(1,'2024-11-22', 'em separacao', 50.50),
(2,'2024-11-22', 'em rota', 100.50),
(3,'2024-11-22', 'entregue', 22.00);

//inserindo dados do itens_pedidos
insert into itens_pedidos(id_pedido, id_produto,quantidade, preco_unitario)
VALUES
(1, 1, 1, 10.50),
(1, 2, 1, 9.50),
(1, 3, 2, 8.50),
(2, 1, 5, 10.50),
(2, 2, 5, 9.50),
(3, 1, 2, 10.50);



