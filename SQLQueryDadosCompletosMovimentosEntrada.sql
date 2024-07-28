SELECT m.idMovimento, p.idPessoa AS fornecedor, prod.nome AS produto, m.quantidade, m.valorUnitario, (m.quantidade * m.valorUnitario) AS valorTotal
FROM Movimento m
JOIN Pessoas p ON m.idPessoa = p.idPessoa
JOIN Produto prod ON m.idProduto = prod.idProduto
WHERE m.tipo = 'E';
