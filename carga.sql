INSERT INTO Usuario (id_usuario, nome_usuario, senha, email, endereco, telefone)
VALUES 
  (1, 'Joao da Silva', 'Senha123', 'joao.silva@email.com', 'Rua das Flores, 123, City - RP', '(01) 91124 - 2326'),
  (2, 'Ana Silva', 'Senha456', 'ana.pereira@email.com', 'Rua das Flores, 123, City - RP', '(01) 96623 - 1324'),
  (3, 'Carlos Oliveira', 'Senha789', 'carlos.oliveira@email.com', 'Travessa das Palmeiras, 789, City - RP', '(01) 91223 - 2344');
  
INSERT INTO Conta (id_conta, nome_conta, saldo, id_usuario)
VALUES 
  (1, 'ContaPrincipal', 10000.00, 1),     -- ContaPrincipal de Joao
  (2, 'ContaSecundaria', 5000.00, 1),     -- ContaSecundaria de Joao
  (3, 'ContaPessoalAna', 3000.00, 2),     -- Conta de Ana
  (4, 'ContaPessoalCarlos', 4000.00, 3);  -- Conta de Carlos
  
  INSERT INTO CategoriaDespesa (id_categoria_despesa, nome_categoria_despesa)
VALUES
  (1, 'Moradia'),
  (2, 'Alimentação/ Supermercado'),
  (3, 'Transporte'),
  (4, 'Saúde'),
  (5, 'Educação'),
  (6, 'Entretenimento'),
  (7, 'Seguros'),
  (8, 'Dívidas'),
  (9, 'Economias e Investimentos'),
  (10, 'Vestuário'),
  (11, 'Cuidados Pessoais'),
  (12, 'Impostos'),
  (13, 'Doações e Caridade'),
  (14, 'Despesas Variáveis'),
  (15, 'Gastos Imprevistos e Emergências'),
  (16, 'Outros');
  
INSERT INTO CategoriaGanho (id_categoria_ganho, nome_categoria_ganho)
VALUES
  (1, 'Salario'),
  (2, 'Venda'),
  (3, 'Rendimentos'),
  (4, 'Aluguel Recebido'),
  (5, 'Aposentadoria'),
  (6, 'Outros');
  
INSERT INTO TransacaoDespesa (id_transacao_despesa, descricao_despesa, valor_despesa, data_transacao_despesa, id_categoria_despesa, id_conta, id_usuario)
VALUES
  (1, 'Aluguel', 1500.00, '2023-12-01', 1, 1, 1),
  (2, 'Mercado', 300.00, '2023-12-05', 2, 1, 1),
  (3, 'Gasolina', 100.00, '2023-12-10', 3, 1, 1),
  (4, 'Consulta Médica', 50.00, '2023-12-15', 4, 1, 1),
  (5, 'Cinema', 30.00, '2023-12-20', 6, 1, 1),
  (6, 'Supermercado', 200.00, '2023-12-02', 2, 3, 2),
  (7, 'Uber', 50.00, '2023-12-07', 3, 3, 2),
  (8, 'Exame de Rotina', 80.00, '2023-12-12', 4, 3, 2),
  (9, 'Teatro', 40.00, '2023-12-18', 6, 3, 2),
  (10, 'Medicamentos', 80.00, '2023-12-03', 4, 4, 3),
  (11, 'Cesta Básica', 150.00, '2023-12-08', 2, 4, 3),
  (12, 'Transporte Público', 30.00, '2023-12-14', 3, 4, 3),
  (13, 'Livros', 50.00, '2023-12-22', 5, 4, 3),
  (14, 'Restaurante', 80.00, '2023-12-03', 2, 1, 1),
  (15, 'Eletricidade', 120.00, '2023-12-08', 1, 1, 1),
  (16, 'Internet', 50.00, '2023-12-14', 14, 1, 1),
  (17, 'Presente de Natal', 100.00, '2023-12-22', 16, 1, 1),
  (18, 'Cafeteria', 20.00, '2023-12-04', 6, 3, 2),
  (19, 'Manutenção do Carro', 200.00, '2023-12-09', 15, 3, 2),
  (20, 'Assinatura de Streaming', 15.00, '2023-12-15', 6, 3, 2),
  (21, 'Compras Online', 70.00, '2023-12-21', 14, 3, 2),
  (22, 'Farmácia', 40.00, '2023-12-05', 4, 4, 3),
  (23, 'Almoço com Amigos', 80.00, '2023-12-10', 2, 4, 3),
  (24, 'Manutenção do Jardim', 50.00, '2023-12-16', 14, 4, 3),
  (25, 'Presente de Aniversário', 30.00, '2023-12-24', 16, 4, 3),
  (26, 'Academia', 70.00, '2023-12-05', 11, 2, 1),
  (27, 'Compra de Roupas', 150.00, '2023-12-10', 10, 2, 1),
  (28, 'Cinema', 25.00, '2023-12-15', 6, 2, 1),
  (29, 'Assinatura de Música', 10.00, '2023-12-20', 6, 2, 1),
  (30, 'Café da Manhã Fora', 15.00, '2023-12-04', 6, 3, 2),
  (31, 'Manutenção do Celular', 100.00, '2023-12-09', 15, 3, 2),
  (32, 'Assinatura de Revistas', 20.00, '2023-12-15', 6, 3, 2),
  (33, 'Jantar Especial', 80.00, '2023-12-21', 6, 3, 2),
  (34, 'Compra de Plantas', 50.00, '2023-12-05', 14, 4, 3),
  (35, 'Jantar com a Família', 120.00, '2023-12-10', 2, 4, 3),
  (36, 'Assinatura de Filmes', 15.00, '2023-12-16', 6, 4, 3),
  (37, 'Material de Jardinagem', 40.00, '2023-12-24', 14, 4, 3);

INSERT INTO TransacaoGanho (id_transacao_ganho, descricao_ganho, valor_ganho, data_transacao_ganho, id_categoria_ganho, id_conta, id_usuario)
VALUES 
  (1, 'Salário Joao', 5000.00, '2023-12-01', 1, 1, 1),
  (2, 'Venda de itens usados', 200.00, '2023-12-01', 2, 1, 1),
  (3, 'Rendimento de investimentos', 300.00, '2023-12-01', 3, 1, 1),
  (4, 'Salário Ana', 4000.00, '2023-12-01', 1, 3, 2),
  (5, 'Rendimento de aplicações', 150.00, '2023-12-01', 3, 3, 2),
  (6, 'Aposentadoria', 1200.00, '2023-12-01', 5, 4, 3),
  (7, 'Rendimentos de aluguel', 500.00, '2023-12-01', 4, 4, 3);
  

UPDATE Conta SET saldo = saldo + 5.000 + 200.00 + 300.00 WHERE id_conta = 1;
UPDATE Conta SET saldo = saldo + 4000.00 + 150.00 WHERE id_conta = 3;
UPDATE Conta SET saldo = saldo + 1200.00 + 500.00 WHERE id_conta = 4;

UPDATE Conta SET saldo = saldo - (1500.00 + 300.00 + 100.00 + 50.00 + 30.00) WHERE id_conta =1;
UPDATE Conta SET saldo = saldo - (200.00 + 50.00 + 80.00 + 40.00) WHERE id_conta = 3;
UPDATE Conta SET saldo = saldo - (80.00 + 150.00 + 30.00 + 50.00) WHERE id_conta = 4;
UPDATE Conta SET saldo = saldo - (80.00 + 120.00 + 50.00 + 100.00) WHERE id_conta = 1;
UPDATE Conta SET saldo = saldo - (20.00 + 200.00 + 15.00 + 70.00) WHERE id_conta = 3;
UPDATE Conta SET saldo = saldo - (40.00 + 80.00 + 50.00 + 30.00) WHERE id_conta = 4;
UPDATE Conta SET saldo = saldo - (70.00 + 150.00 + 25.00 + 10.00) WHERE id_conta = 2;
UPDATE Conta SET saldo = saldo - (15.00 + 100.00 + 20.00 + 80.00) WHERE id_conta = 3;
UPDATE Conta SET saldo = saldo - (50.00 + 120.00 + 15.00 + 40.00) WHERE id_conta = 4;