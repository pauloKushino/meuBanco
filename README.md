# Banco de Dados de Sala

Este repositório contém os scripts SQL para o banco de dados de uma sala.

## Estrutura

- `create_tables.sql`: Scripts para criar as tabelas.
- `updates.sql`: Alterações e atualizações no banco.
- `insert_data.sql`: Scripts para inserir dados iniciais.
- `select.sql`: Consultas SQL para visualizar os dados.


## Como usar

1. Execute `create_tables.sql` para criar as tabelas.
2. Use `updates.sql` para aplicar alterações no banco.
3. Execute `insert_data.sql` para popular o banco com dados iniciais.
4. Use `select.sql` para consultar os dados.

# Banco de Dados da Escola

Este repositório contém os scripts SQL para o banco de dados da escola.



## Como instalar e configurar o MySQL

### 1. Baixar e instalar o MySQL
1. Acesse o site oficial do MySQL: [https://dev.mysql.com/downloads/]
2. Baixe o **MySQL Community Server**
3. Durante a instalação:
   - Escolha a opção **Developer Default**.
   - Configure o usuário `root` e defina uma senha (anote essa senha, pois será usada para acessar o banco).
   - Finalize a instalação.

### 2. Adicionar o MySQL ao PATH do sistema
Para usar o MySQL diretamente no terminal, você precisa adicioná-lo ao PATH do sistema:

1. Abra o **Explorador de Arquivos** e navegue até o diretório onde o MySQL foi instalado. Geralmente, o caminho é algo como: **C:\Program Files\MySQL\MySQL Server 8.0\bin**
2. Copie o caminho completo do diretório `bin`.
3. No Windows:
- Clique com o botão direito em **Este Computador** ou **Meu Computador** e selecione **Propriedades**.
- Vá em **Configurações Avançadas do Sistema** > **Variáveis de Ambiente**. (Ou vá na barra de pesquisas e escreva **Variáveis de Ambiente**)
- Na seção **Variáveis do Sistema**, encontre a variável `Path` e clique em **Editar**.
- Clique em **Novo** e cole o caminho copiado.
- Clique em **OK** para salvar.
4. Abra um novo terminal e execute: **mysql --version** para testar se esta funcionando, se retornar a versão, então esta ok.

## Configurando o Visual Studio Code para trabalhar com MySQL

### 1. Instalar extensões no VS Code
No Visual Studio Code, instale as seguintes extensões:

- **MySQL**
- **SQLTools**: Para gerenciar conexões com o banco de dados.
- **SQLTools MySQL/MariaDB Driver**: Driver necessário para conectar ao MySQL.

### 2. Configurar o SQLTools
1. Após instalar as extensões, abra o **SQLTools** no VS Code:
   - Pressione `Ctrl + Shift + P` e procure por `SQLTools: Add New Connection`.
2. Escolha o driver **MySQL/MariaDB**.
3. Preencha as informações da conexão:
   - **Name**: Nome da conexão (ex.: `Banco Escola`).
   - **Server**: `localhost` (ou o IP do servidor MySQL).
   - **Port**: `3306` (porta padrão do MySQL).
   - **User**: `root` (ou outro usuário configurado).
   - **Password**: A senha configurada durante a instalação.
   - **Database**: abra o terminal (CMD) e escreva 'mysql -u root -p', digite a senha que voccê colocou na instalação do MySQL, e então digite o seguinte:

   -- Criar o banco de dados
   CREATE DATABASE nomeDoBanco;

   -- Listar bancos de dados
   SHOW DATABASES;

se retornar seus databases e estiver lá o que você criou, ok. E finalmente preencha o espaço do **Database** com o nome do banco criado.
4. Clique em **Test Connection** para verificar se a conexão está funcionando.
5. Salve.
6. Rode o script **create_tables.sql**