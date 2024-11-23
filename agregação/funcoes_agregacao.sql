#funções agregadas e agrupamento de dados
/*count(),
sum(),
avg()
Max e min() */

// contar o número de produtos em cada categoria
select id_categoria, count(*) as total_produtos
from produtos
group by id_categoria;