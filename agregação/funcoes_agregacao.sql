#funções agregadas e agrupamento de dados
/*count(),
sum(),
avg()
Max e min() */

// contar o número de produtos em cada categoria
select id_categoria, count(*) as total_produtos
from produtos
group by id_categoria;

-- exemplos mais comuns
select count (*) from cliente

select count(nome) from cliente

select count(*) as total_resgistros
from clientes c
inner join endereco e on c.id_cliente = e.id_cliente
where e.cidade ='Fortaleza';
