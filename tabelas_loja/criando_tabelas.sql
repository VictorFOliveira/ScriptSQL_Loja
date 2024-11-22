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
    id_item serial primary key,
    id_pedido int not null,
    id_produto int not null,
    quantidade int not null,
    preco_unitario decimal(10,2) not null,
    foreign key(id_pedido) REFERENCES pedidos(id_pedido),
    foreign key(id_produto) REFERENCES produtos(id_produto)
);

// Agora adicione a chave estrangeira em produtos usando "alter table"
create table categoria (
    id_categoria serial primary key,
    nome_categoria varchar(40) not null
);

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

create table pagamento(
    id_pagamento serial primary key,
    id_pedido int not NULL, 
    forma_pagamento varchar(10) not NULL,
    status_pagamento varchar(20) not NULL,
    data_pagamento date not NULL,
    valor decimal(10,2) not NULL,
    foreign key (id_pedido) REFERENCES pedidos(id_pedido)
);

create table entrega(
    id_entrega serial primary key,
    id_endereco int not NULL,
    status varchar(20) not NULL,
    FOREIGN key(id_endereco) REFERENCES endereco (id_endereco)
);

create table avaliacao(
    id_avaliacao serial primary key,
    id_cliente int not null,
    id_item int not NULL,
    avaliacao int not null,
    comentario varchar(150),
    FOREIGN key(id_cliente) REFERENCES clientes(id_cliente),
    FOREIGN key(id_item) REFERENCES itens_pedidos(id_item)
);



