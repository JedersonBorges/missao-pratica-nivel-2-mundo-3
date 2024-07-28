SELECT p.idPessoa, p.nome, p.logradouro, p.cidade, p.estado, p.telefone, p.email, pj.cnpj
FROM Pessoas p
JOIN PessoaJuridica pj ON p.idPessoa = pj.idPessoa;
