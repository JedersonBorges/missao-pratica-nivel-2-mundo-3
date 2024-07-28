SELECT prod.nome AS produto, SUM(m.quantidade * m.valorUnitario) AS valorTotalSaida
FROM Movimento m
JOIN Produto prod ON m.idProduto = prod.idProduto
WHERE m.tipo = 'S'
GROUP BY prod.nome;
