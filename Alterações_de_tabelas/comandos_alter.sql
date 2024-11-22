// postgresql

//Aqui você precisará rodar esse comando, pois foi adicionado depois a coluna id_categoria na tabela 

alter table produtos add column id_categoria integer; // aqui você pode adicionar uma nova coluna 
alter table produtos add foreign key(id_categoria) REFERENCES categoria(id_categoria); E adicionar uma chave estrangeira

// Exemplos de alterações de tipos te varchar para integer

alter table nome_da_tabela 
alter COLUMN nome_da_coluna type "O tipo desejado" USING nome_coluna:: Integer

// Exemplos de alterações de tipo Integer para varchar
ALTER TABLE nome_tabela
ALTER COLUMN nome_da_coluna TYPE VARCHAR(50) USING quantidade::VARCHAR;

//adicionando coluna
/* Adicionando uma coluna*/
ALTER TABLE nome_tabela
alter COLUMN nome_coluna tipo_coluna

/* exemplo*/
alter table clientes
alter column add idade integer;

// removendo coluna
/* Removendo uma coluna*/
alter table nome_tabela
DROP column nome_coluna;

/* exemplo*/
alter table clientes
drop column idade;

//renomear coluna
/* Renomeando uma coluna */
alter table nome_tabela
rename COLUMN nome_coluna_antiga TO nome_coluna_novo;

/*exemplo*/
alter table clientes
rename telefone to celular;

// renomear clientes
/* renomear tabela */
alter table clientes
rename to novo_nome_tabela

/* exemplo */
alter table cliente
rename to novos_clientes;