-- Criando tabela clientes
create table clientes(
    id_cliente serial primary key,
    nome varchar(60) not null,
    email varchar(60) not null unique,
    telefone varchar(12) not null,
    data_cadastro date not null
);

-- Criando tabela produtos
create table produtos(
    id_produto serial primary key,
    nome_produto varchar(50) not null,
    descricao varchar(60) not null,
    preco decimal(10,2) not null,
    quantidade_estoque integer not null
);

-- Criando tabela pedidos
create table pedidos(
    id_pedido serial primary key,
    id_cliente integer not null,
    data_pedido date not null,
    status varchar(11) not null,
    valor_total decimal(10,2) not null,
    foreign key(id_cliente) references clientes(id_cliente)
);

-- Criando tabela itens_pedidos
create table itens_pedidos(
    id_item serial primary key,
    id_pedido int not null,
    id_produto int not null,
    quantidade int not null,
    preco_unitario decimal(10,2) not null,
    foreign key(id_pedido) REFERENCES pedidos(id_pedido),
    foreign key(id_produto) REFERENCES produtos(id_produto)
);

-- Criando tabela categoria
create table categoria (
    id_categoria serial primary key,
    nome_categoria varchar(40) not null
);

-- Criando tabela endereco
create table endereco(
    id_endereco serial primary key,
    id_cliente int not NULL,
    tipo_endereco varchar(50) not NULL,
    logradouro varchar(50) not NULL,
    numero varchar(5) not NULL,
    complemento varchar(15),
    cidade varchar(50) not NULL,
    estado char(2) not NULL,
    cep varchar(9) not NULL,
    bairro varchar(20) not NULL,
    foreign key (id_cliente) REFERENCES clientes(id_cliente)
);

-- Criando tabela pagamento
create table pagamento(
    id_pagamento serial primary key,
    id_pedido int not NULL, 
    forma_pagamento varchar(10) not NULL,
    status_pagamento varchar(20) not NULL,
    data_pagamento date not NULL,
    valor decimal(10,2) not NULL,
    foreign key (id_pedido) REFERENCES pedidos(id_pedido)
);

-- Criando tabela entrega
create table entrega(
    id_entrega serial primary key,
    id_endereco int not NULL,
    status varchar(20) not NULL,
    FOREIGN key(id_endereco) REFERENCES endereco (id_endereco)
);

-- Criando tabela avaliacao
create table avaliacao(
    id_avaliacao serial primary key,
    id_cliente int not null,
    id_item int not NULL,
    avaliacao int not null,
    comentario varchar(150),
    FOREIGN key(id_cliente) REFERENCES clientes(id_cliente),
    FOREIGN key(id_item) REFERENCES itens_pedidos(id_item)
);

-- Consultas

-- Selecionando todos os clientes
select * from clientes;

-- Selecionando nome e email dos clientes
select nome, email from clientes;

-- Selecionando produtos com preço superior a 100
select * from produtos where preco > 100;

-- Selecionando pedidos realizados no mês de janeiro de 2024
select id_pedido, id_cliente, data_pedido, status, valor_total
from pedidos
where data_pedido between '2024-01-01' and '2024-01-31';

-- Contando o total de registros na tabela de clientes
select count(*) as total_registros from clientes;

-- Calculando o total do valor de todos os pedidos
select sum(valor_total) as total from pedidos;

-- Selecionando o nome e preço do produto mais caro
select nome_produto, preco
from produtos
where preco = (Select Max(preco) from produtos);

-- Realizando um join entre clientes e itens_pedidos para buscar produtos comprados pelos clientes.
select clientes.nome, itens_pedidos.id_produto, produtos.nome_produto
from clientes
inner join itens_pedidos on clientes.id_cliente = itens_pedidos.id_pedido
inner join produtos on itens_pedidos.id_produto = produtos.id_produto;

-- Realizando um join entre clientes e pagamento para verificar formas de pagamento
select clientes.nome, pagamento.forma_pagamento
from clientes
inner join pagamento on pagamento.id_pagamento = clientes.id_cliente;
