//Postgresql

//criando tabela clientes
create table clientes(
    id_cliente serial primary key,
    nome varchar(60) not null,
    email varchar(60) not null unique,
    telefone varchar(12) not null,
    data_cadastro date not null
);

// criando tabela de produtos
create table produtos(
    id_produto serial primary key,
    nome_produto varchar(50) not null,
    descricao varchar(60) not null,
    preco decimal(10,2) not null,
    quantidade_estoque integer not null
);

// criando tabela de pedidos
create table pedidos(
    id_pedido serial primary key,
    id_cliente integer not null,
    data_pedido date not null,
    status varchar(11) not null,
    valor_total decimal(10,2) not null,
    foreign key(id_cliente) references clientes(id_cliente)
);

create table itens_pedidos(
    id_itens serial primary key,
    id_pedido int not null,
    id_produto int not null,
    preco_unitario decimal(10,2) not null,
    foreign key(id_pedido) REFERENCES pedidos(id_pedido),
    foreign key(id_produto) REFERENCES produtos(id_produto)
);
