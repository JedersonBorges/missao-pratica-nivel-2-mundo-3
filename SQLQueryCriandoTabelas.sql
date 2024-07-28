CREATE TABLE Pessoas (
    idPessoa INT PRIMARY KEY,
    nome VARCHAR(255),
    logradouro VARCHAR(255),
    cidade VARCHAR(255),
    estado CHAR(2),
    telefone VARCHAR(255),
    email VARCHAR(255)
);

CREATE TABLE PessoaFisica (
    cpf NUMERIC(11) PRIMARY KEY,
    idPessoa INT,
    FOREIGN KEY (idPessoa) REFERENCES Pessoas(idPessoa)
);

CREATE TABLE PessoaJuridica (
    cnpj NUMERIC(14) PRIMARY KEY,
    idPessoa INT,
    FOREIGN KEY (idPessoa) REFERENCES Pessoas(idPessoa)
);

CREATE TABLE Usuarios (
    idUsuario INT PRIMARY KEY,
    pessoaJuridica_cnpj NUMERIC(14),
    pessoaFisica_cpf NUMERIC(11),
    nome VARCHAR(255),
    email VARCHAR(255),
    nome_2 VARCHAR(255),
    FOREIGN KEY (pessoaJuridica_cnpj) REFERENCES PessoaJuridica(cnpj),
    FOREIGN KEY (pessoaFisica_cpf) REFERENCES PessoaFisica(cpf)
);

CREATE TABLE Movimento (
    idMovimento INT PRIMARY KEY,
    Usuarios_idUsuario INT,
    idPessoa INT,
    idProduto INT,
    quantidade NUMERIC,
    tipo CHAR(1),
    valorUnitario NUMERIC,
    FOREIGN KEY (Usuarios_idUsuario) REFERENCES Usuarios(idUsuario),
    FOREIGN KEY (idPessoa) REFERENCES Pessoas(idPessoa)
);

CREATE TABLE Produto (
    idProduto INT PRIMARY KEY,
    nome VARCHAR(255),
    quantidade INTEGER,
    precoVenda NUMERIC
);

CREATE SEQUENCE PessoaSeq
START WITH 1
INCREMENT BY 1;

CREATE SEQUENCE UsuarioSeq
START WITH 1
INCREMENT BY 1;

CREATE SEQUENCE MovimentoSeq
START WITH 1
INCREMENT BY 1;

CREATE SEQUENCE ProdutoSeq
START WITH 1
INCREMENT BY 1;
