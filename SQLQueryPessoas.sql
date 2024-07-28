-- Inserir pessoas físicas
INSERT INTO Pessoas (idPessoa, nome, logradouro, cidade, estado, telefone, email)
VALUES
(7, 'Joao', 'Rua 12, casa 3, Quitanda', 'Riacho do Sul', 'PA', '1111-1111', 'joao@riacho.com');

INSERT INTO PessoaFisica (cpf, idPessoa)
VALUES
(11111111111, 7);

-- Inserir pessoas jurídicas 
INSERT INTO Pessoas (idPessoa, nome, logradouro, cidade, estado, telefone, email)
VALUES
(15, 'JJC', 'Rua 11, Centro', 'Riacho do Norte', 'PA', '1212-1212', 'jcc@riacho.com');

INSERT INTO PessoaJuridica (cnpj, idPessoa)
VALUES
(22222222222222, 15);

SELECT * FROM Pessoas;
SELECT * FROM pessoaJuridica;
SELECT * FROM pessoaFisica;
