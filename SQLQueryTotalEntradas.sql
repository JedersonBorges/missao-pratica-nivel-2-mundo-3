SELECT prod.nome AS produto, SUM(m.quantidade * m.valorUnitario) AS valorTotalEntrada
FROM Movimento m
JOIN Produto prod ON m.idProduto = prod.idProduto
WHERE m.tipo = 'E'
GROUP BY prod.nome;
