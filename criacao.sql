create database 8156_8160_8181;
USE 8156_8160_8181;

-- Tabela para armazenar informações sobre usuários
CREATE TABLE Usuario (
    id_usuario INT PRIMARY KEY,
    nome_usuario VARCHAR(50) NOT NULL,
    senha VARCHAR(255) NOT NULL, -- Ajuste o comprimento conforme necessário
    email VARCHAR(100) NOT NULL,
    endereco VARCHAR(255),
    telefone VARCHAR(20) -- Ajuste o comprimento conforme necessário
);

-- Tabela para armazenar informações sobre contas
CREATE TABLE Conta (
    id_conta INT PRIMARY KEY,
    nome_conta VARCHAR(50) NOT NULL,
    saldo DECIMAL(10, 2) NOT NULL DEFAULT 0.0,
    id_usuario INT
);

-- Tabela para armazenar informações sobre categorias de despesas
CREATE TABLE CategoriaDespesa (
    id_categoria_despesa INT PRIMARY KEY,
    nome_categoria_despesa VARCHAR(50) NOT NULL
);

-- Tabela para armazenar informações sobre categorias de ganhos
CREATE TABLE CategoriaGanho (
    id_categoria_ganho INT PRIMARY KEY,
    nome_categoria_ganho VARCHAR(50) NOT NULL
);

-- Tabela para armazenar informações sobre transações de despesas
CREATE TABLE TransacaoDespesa (
    id_transacao_despesa INT PRIMARY KEY,
    descricao_despesa VARCHAR(255) NOT NULL,
    valor_despesa DECIMAL(10, 2) NOT NULL,
    data_transacao_despesa DATE NOT NULL,
    id_categoria_despesa INT,
    id_conta INT,
    id_usuario INT
);

-- Tabela para armazenar informações sobre transações de ganhos
CREATE TABLE TransacaoGanho (
    id_transacao_ganho INT PRIMARY KEY,
    descricao_ganho VARCHAR(255) NOT NULL,
    valor_ganho DECIMAL(10, 2) NOT NULL,
    data_transacao_ganho DATE NOT NULL,
    id_categoria_ganho INT,
    id_conta INT,
    id_usuario INT
);

-- Adiciona chave estrangeira à tabela Conta
ALTER TABLE Conta
ADD CONSTRAINT FK_Conta_Usuario
FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario);

-- Adiciona chave estrangeira à tabela TransacaoDespesa
ALTER TABLE TransacaoDespesa
ADD CONSTRAINT FK_TransacaoDespesa_CategoriaDespesa
FOREIGN KEY (id_categoria_despesa) REFERENCES CategoriaDespesa(id_categoria_despesa);

ALTER TABLE TransacaoDespesa
ADD CONSTRAINT FK_TransacaoDespesa_Conta
FOREIGN KEY (id_conta) REFERENCES Conta(id_conta);

ALTER TABLE TransacaoDespesa
ADD CONSTRAINT FK_TransacaoDespesa_Usuario
FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario);

-- Adiciona chave estrangeira à tabela TransacaoGanho
ALTER TABLE TransacaoGanho
ADD CONSTRAINT FK_TransacaoGanho_CategoriaGanho
FOREIGN KEY (id_categoria_ganho) REFERENCES CategoriaGanho(id_categoria_ganho);

ALTER TABLE TransacaoGanho
ADD CONSTRAINT FK_TransacaoGanho_Conta
FOREIGN KEY (id_conta) REFERENCES Conta(id_conta);

ALTER TABLE TransacaoGanho
ADD CONSTRAINT FK_TransacaoGanho_Usuario
FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario);

  
  
  