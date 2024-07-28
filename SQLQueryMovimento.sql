INSERT INTO Movimento (idMovimento, Usuarios_idUsuario, idPessoa, idProduto, quantidade, tipo, valorUnitario)
VALUES
(1, 1, 7, 1, 20, 'S', 4.00),
(4, 1, 7, 3, 15, 'S', 2.00),
(5, 2, 7, 3, 10, 'S', 3.00),
(7, 1, 15, 3, 15, 'E', 5.00),
(8, 1, 15, 4, 20, 'E', 4.00);

SELECT * FROM Movimento;