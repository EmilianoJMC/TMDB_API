# Projeto: Coleta e Armazenamento de Dados do TMDB

## Descrição
Este projeto tem como objetivo coletar dados de filmes populares a partir da API do TMDB, processar e limpar os dados, armazená-los em um arquivo Excel e, por fim, inseri-los em um banco de dados MySQL.

## Estrutura do Projeto
O projeto contém dois scripts principais:
1. **api.ipynb**: Responsável por coletar os dados da API do TMDB, salvar em um arquivo CSV, limpar e converter os dados para Excel.
2. **to_sql.ipynb**: Lê o arquivo Excel e insere os dados em uma tabela MySQL.

---

## Dependências
Antes de rodar o projeto, certifique-se de ter as seguintes bibliotecas instaladas:

```bash
pip install requests pandas sqlalchemy pymysql openpyxl
```

---

## api.ipynb - Coleta e Processamento de Dados

### 1. Coleta de Dados da API TMDB
- Utiliza a API do TMDB para obter dados sobre filmes populares.
- A API é acessada até a página 100 para obter um grande volume de filmes.
- Campos coletados: `title`, `release_date`, `popularity`, `vote_average`, `vote_count`, `genre_ids`, `id`, `original_language`, `adult`, `overview`.
- Os dados são armazenados em um arquivo CSV chamado `movies.csv`.

### 2. Processamento e Limpeza dos Dados
- Remove caracteres especiais das colunas.
- Filtra a coluna `release_date` para manter apenas datas válidas.
- Exclui registros sem título.
- Converte o arquivo CSV para Excel (`movies.xlsx`).
- Remove o arquivo CSV após a conversão.

### 3. Caminho dos Arquivos Gerados
Os arquivos processados são salvos no diretório:
```
C://Users//Miza//Desktop//CoderHouse//TMDB_API//Arquivos
```

---

## to_sql.ipynb - Inserção dos Dados no MySQL

### 1. Leitura do Arquivo Excel
- O script lê o arquivo `movies.xlsx` e remove linhas com valores nulos.

### 2. Conexão com o Banco de Dados MySQL
- Configuração dos parâmetros de conexão:
  - Usuário: `root`
  - Senha: `Are@0051`
  - Host: `localhost`
  - Banco de dados: `tmdb`
- A conexão é feita utilizando `SQLAlchemy` e `PyMySQL`.

### 3. Inserção dos Dados no Banco
- Os dados são inseridos na tabela `filmes_populares_tmdb`.
- O modo `if_exists='replace'` é utilizado para substituir os dados a cada execução.

---

## Como Executar o Projeto
1. **Rodar o script de coleta e processamento de dados:**
   - Execute `api.ipynb` para coletar e processar os dados.

2. **Inserir os dados no banco de dados MySQL:**
   - Execute `to_sql.ipynb` para carregar os dados no MySQL.

---

## Melhorias Futuras
- Implementar paginação dinâmica para evitar falhas ao acessar a API.
- Adicionar logging para monitorar erros.
- Criar um dashboard para visualizar os dados coletados.

---

## Autor
Projeto desenvolvido por **Emiliano** para estudos e análise de dados de filmes populares.


