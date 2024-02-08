-- Linguagem: SQL
-- 1. Listar todas as transações de despesas de um usuário específico:
SELECT * FROM TransacaoDespesa WHERE id_usuario = 1;

-- 2. Calcular o total de despesas em uma determinada categoria:
SELECT nome_categoria_despesa, SUM(valor_despesa) AS total_gasto
FROM TransacaoDespesa
JOIN CategoriaDespesa ON TransacaoDespesa.id_categoria_despesa = CategoriaDespesa.id_categoria_despesa
WHERE nome_categoria_despesa = 'Alimentação/ Supermercado';

-- 3. Encontrar as maiores despesas de um usuário em um mês específico:
SELECT descricao_despesa, valor_despesa
FROM TransacaoDespesa
WHERE id_usuario = 1 AND MONTH(data_transacao_despesa) = 12
ORDER BY valor_despesa DESC
LIMIT 5;

-- 4. Calcular o saldo atual de uma conta específica:
SELECT nome_conta, saldo
FROM Conta
WHERE id_conta = 2;

-- 5. Listar as despesas agrupadas por categoria e ordenadas por valor:
SELECT nome_categoria_despesa, SUM(valor_despesa) AS total_gasto
FROM TransacaoDespesa
JOIN CategoriaDespesa ON TransacaoDespesa.id_categoria_despesa = CategoriaDespesa.id_categoria_despesa
GROUP BY nome_categoria_despesa
ORDER BY total_gasto DESC;

-- 6. Listar todas as despesas de um usuário em um intervalo de datas:
SELECT * FROM TransacaoDespesa
WHERE id_usuario = 2 AND data_transacao_despesa BETWEEN '2023-12-01' AND '2023-12-06';

-- 7. Calcular o total de despesas de um usuário em um mês específico:
SELECT id_usuario, MONTH(data_transacao_despesa) AS mes, SUM(valor_despesa) AS total_gasto
FROM TransacaoDespesa
WHERE id_usuario = 3
GROUP BY id_usuario, mes;

-- 8. Encontrar as categorias mais frequentes de despesas de um usuário:
SELECT nome_categoria_despesa, COUNT(*) AS quantidade
FROM TransacaoDespesa
JOIN CategoriaDespesa ON TransacaoDespesa.id_categoria_despesa = CategoriaDespesa.id_categoria_despesa
WHERE id_usuario = 1
GROUP BY nome_categoria_despesa
ORDER BY quantidade DESC
LIMIT 5;

-- 9. Identificar as transações de despesas acima de um determinado valor:
SELECT * FROM TransacaoDespesa
WHERE valor_despesa > 100.00;

-- 10. Listar todas as despesas de um usuário ordenadas por data:
SELECT * FROM TransacaoDespesa
WHERE id_usuario = 1
ORDER BY data_transacao_despesa;

-- 11. Calcular a média de despesas mensais de um usuário:
SELECT id_usuario, MONTH(data_transacao_despesa) AS mes, AVG(valor_despesa) AS media_mensal
FROM TransacaoDespesa
WHERE id_usuario = 2
GROUP BY id_usuario, mes;

-- 12. Encontrar a despesa mais alta de cada categoria para um usuário específico:
SELECT nome_categoria_despesa, MAX(valor_despesa) AS maior_despesa
FROM TransacaoDespesa
JOIN CategoriaDespesa ON TransacaoDespesa.id_categoria_despesa = CategoriaDespesa.id_categoria_despesa
WHERE id_usuario = 3
GROUP BY nome_categoria_despesa;


-- 13. Calcular o total de despesas agrupadas por mês:
SELECT MONTH(data_transacao_despesa) AS mes, SUM(valor_despesa) AS total_gasto
FROM TransacaoDespesa
WHERE id_usuario = 1
GROUP BY mes
ORDER BY mes;

-- 14. Listar as despesas de um usuário com valor superior à média geral:
SELECT * FROM TransacaoDespesa
WHERE id_usuario = 2 AND valor_despesa > (SELECT AVG(valor_despesa) FROM TransacaoDespesa WHERE id_usuario = 1);
  
