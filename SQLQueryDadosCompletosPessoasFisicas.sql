SELECT p.idPessoa, p.nome, p.logradouro, p.cidade, p.estado, p.telefone, p.email, pf.cpf
FROM Pessoas p
JOIN PessoaFisica pf ON p.idPessoa = pf.idPessoa;
