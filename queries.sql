-- Total movimentado
SELECT SUM(amount) FROM transacoes_cartao;

-- Valor de fraude
SELECT SUM(amount) 
FROM transacoes_cartao
WHERE class = 1;

-- Total de transações
SELECT COUNT(*) FROM transacoes_cartao;

-- Total de fraudes
SELECT COUNT(*) 
FROM transacoes_cartao
WHERE class = 1;

-- Agrupamento por tipo
SELECT class, COUNT(*) AS quantidade, SUM(amount) AS valor_total
FROM transacoes_cartao
GROUP BY class;
