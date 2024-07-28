SELECT u.idUsuario, u.nome
FROM Usuarios u
LEFT JOIN Movimento m ON u.idUsuario = m.Usuarios_idUsuario AND m.tipo = 'E'
WHERE m.idMovimento IS NULL;
