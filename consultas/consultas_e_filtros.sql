-- ================================================
-- EXEMPLOS DE CONSULTAS COM FILTROS E CONDIÇÕES 
-- ================================================

/* 1. Consulta Simples: Listar Clientes */
/* A consulta a seguir retorna os clientes mostrando o nome, email, telefone e data de cadastro */
SELECT nome, email, telefone, data_cadastro
FROM clientes;

-- ------------------------------------------------

/* 2. Filtrar por Nome: Consultar Cliente Específico */
/* Aqui estamos filtrando os clientes pelo nome específico. */
SELECT nome, email, telefone
FROM clientes
WHERE nome = 'marco feliciano';

-- ------------------------------------------------

/* 3. Consulta com Filtro - Produtos Disponíveis */
/* Este exemplo lista todos os produtos que estão disponíveis (com quantidade em estoque maior que zero),
   mostrando o nome, descrição, preço e quantidade. */
SELECT nome_produto, descricao, preco, quantidade_estoque
FROM produtos
WHERE quantidade_estoque > 0;

-- ------------------------------------------------

/* 4. Filtrar Valores em Faixa de Intervalo - Produtos com Preço Abaixo de 10.00 */
/* Aqui estamos filtrando os produtos cujo preço seja inferior a 10.00. */
SELECT nome_produto, descricao, preco, quantidade_estoque
FROM produtos
WHERE preco < 10.00;

-- ------------------------------------------------

/* 5. Filtro com LIKE - Pesquisa Parcial de Nome */
/* Neste exemplo, estamos filtrando os clientes cujos nomes contenham a palavra "Silas". */
SELECT nome, email, telefone
FROM clientes
WHERE nome LIKE '%Silas%';

-- ------------------------------------------------

/* 6. Filtrar por Múltiplos Valores com IN */
/* Aqui, estamos filtrando os produtos que pertencem às categorias 1 (Refrigerantes) e 2 (Snacks). */
SELECT nome_produto, preco, descricao
FROM produtos
WHERE id_categoria IN (1, 2);

-- ------------------------------------------------

/* 7. Filtrando Valores Nulos com IS NULL */
/* Este exemplo retorna os endereços onde o campo "complemento" é nulo. */
SELECT id_cliente, tipo_endereco, logradouro, numero, complemento
FROM endereco
WHERE complemento IS NULL;

-- ------------------------------------------------

/* 8. Combinação de Múltiplos Filtros com AND, NOT e OR */
/* Abaixo está um exemplo de como combinar múltiplos filtros, usando as cláusulas AND e OR. */
SELECT nome_produto, descricao, preco, quantidade_estoque
FROM produtos
WHERE preco > 5.0 AND quantidade_estoque > 20;

-- ------------------------------------------------

/* 9. Usando BETWEEN para Intervalos */
/* Aqui, estamos filtrando os produtos cujo preço está entre 5.00 e 15.00. */
SELECT nome_produto, preco
FROM produtos
WHERE preco BETWEEN 5.00 AND 15.00;

-- ------------------------------------------------

/* 10. Consulta com Filtro em Condições Múltiplas (Combinando AND e OR) */
/* Neste exemplo, estamos listando os produtos que são refrigerantes ou snacks e que têm um preço superior a 5,00. */
SELECT nome_produto, descricao, preco, id_categoria
FROM produtos
WHERE (id_categoria = 1 OR id_categoria = 2) AND preco > 5.00;

-- ------------------------------------------------

/* 
Resumo dos Operadores de Filtro:

- = : Igual a um valor específico
- > : Maior que um valor específico
- < : Menor que um valor específico
- >= : Maior ou igual a um valor específico
- <= : Menor ou igual a um valor específico
- <> ou != : Diferente de um valor específico
- IN : Para verificar se um valor está dentro de um conjunto de valores
- BETWEEN : Para verificar se um valor está dentro de um intervalo de valores
- LIKE : Para realizar comparações de padrões em strings
- IS NULL : Para verificar valores nulos
*/

-- ------------------------------------------------

/* Consultas Interessantes para Explorar */

/* 11. Filtrando Produtos Disponíveis */
/* Filtra os produtos que estão disponíveis (quantidade em estoque > 0) */
SELECT nome_produto, preco, quantidade_estoque
FROM produtos
WHERE quantidade_estoque > 0;

-- ------------------------------------------------

/* 12. Filtrando Pedidos Feitos por Cliente Específico */
/* Filtra os pedidos feitos pelo cliente com id_cliente = 1 */
SELECT id_cliente, data_pedido, status, valor_total
FROM pedidos
WHERE id_cliente = 1;

-- ------------------------------------------------

/* 13. Consulta para Filtrar Produtos de Categorias Específicas */
/* Neste exemplo, listamos os produtos que pertencem à categoria 1 (Refrigerantes) ou categoria 2 (Snacks) 
   e possuem um preço maior que 5.00 */
SELECT nome_produto, descricao, preco, id_categoria
FROM produtos
WHERE (id_categoria = 1 OR id_categoria = 2) AND preco > 5.00;
