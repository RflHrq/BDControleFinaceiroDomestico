# Controle Financeiro Doméstico

Este repositório contém um banco de dados projetado em SQL para um sistema de controle financeiro doméstico, permitindo a gestão individualizada dos recursos financeiros de cada membro da família. O esquema do banco de dados é composto por diversas entidades fundamentais que refletem a estrutura organizacional e funcionalidades do sistema.

## Entidades Fundamentais

### Usuários
Os usuários são membros da família e possuem perfis distintos, caracterizados pelos seguintes atributos:

- `id_usuario` (identificador único)
- `nome_usuario`
- `senha`
- `email`
- `endereco`
- `telefone`

### Contas
Cada membro da família possui uma ou mais contas que representam seus "cofres" particulares. Os atributos das contas são:

- `id_conta` (identificador único)
- `nome_conta`
- `saldo`
- `id_usuario` (chave estrangeira vinculada ao Usuário)

### Categorias de Despesa
As categorias de despesa organizam e classificam os gastos realizados pelos usuários. Os atributos são:

- `id_categoria_despesa`
- `nome_categoria_despesa`

### Categorias de Ganho
As categorias de ganho organizam e classificam as fontes de renda dos usuários. Os atributos são:

- `id_categoria_ganho`
- `nome_categoria_ganho`

### Transações de Despesa
As transações de despesa representam os gastos realizados pelos usuários. Os atributos são:

- `id_transacao_despesa` (identificador único)
- `descricao_despesa`
- `valor_despesa`
- `data_transacao_despesa`
- `id_categoria_despesa` (chave estrangeira)
- `id_conta` (chave estrangeira)
- `id_usuario` (chave estrangeira)

### Transações de Ganho
As transações de ganho representam as fontes de renda dos usuários. Os atributos são:

- `id_transacao_ganho` (identificador único)
- `descricao_ganho`
- `valor_ganho`
- `data_transacao_ganho`
- `id_categoria_ganho` (chave estrangeira)
- `id_conta` (chave estrangeira)
- `id_usuario` (chave estrangeira)

## Relacionamentos
- Um usuário pode ter várias contas, promovendo a gestão individualizada dos recursos.
- Cada transação está vinculada a uma categoria específica, uma conta e um usuário.

Este banco de dados oferece uma estrutura robusta para o controle financeiro doméstico, permitindo aos usuários gerenciar suas finanças de forma organizada e eficiente.

## Utilização

### Configuração do Ambiente de Banco de Dados:
1. Certifique-se de ter um sistema de gerenciamento de banco de dados compatível com SQL, como MySQL, PostgreSQL, SQLite, ou outro de sua preferência, instalado em seu sistema.
   
### Criação do Banco de Dados:
1. Utilize o script SQL fornecido neste repositório para criar o esquema do banco de dados. Você pode executar este script utilizando a ferramenta de linha de comando do seu sistema de gerenciamento de banco de dados ou através de um cliente SQL, como DBeaver, MySQL Workbench, ou similar.
   
### População do Banco de Dados (Opcional):
1. Se desejar, você pode adicionar dados de exemplo ao banco de dados utilizando instruções SQL de inserção de dados. Isso pode ser feito manualmente ou através de scripts de inserção.
   
### Conexão com o Banco de Dados:
1. Após a criação do banco de dados e, se aplicável, a adição de dados, você pode conectar seu sistema ou aplicativo ao banco de dados utilizando as credenciais adequadas.
   
### Execução de Consultas:
1. Utilize consultas SQL para realizar operações de leitura, inserção, atualização e exclusão de dados conforme necessário para atender aos requisitos do sistema de controle financeiro doméstico.
   
### Desenvolvimento de Aplicações (Opcional):
1. Se desejar integrar este banco de dados em uma aplicação, você pode desenvolver uma camada de acesso a dados utilizando a linguagem de programação de sua escolha (por exemplo, Python, Java, C#, etc.) e o driver adequado para seu sistema de gerenciamento de banco de dados.
