SELECT u.idUsuario, u.nome, SUM(m.quantidade * m.valorUnitario) AS valorTotalEntrada
FROM Usuarios u
JOIN Movimento m ON u.idUsuario = m.Usuarios_idUsuario
WHERE m.tipo = 'E'
GROUP BY u.idUsuario, u.nome;
