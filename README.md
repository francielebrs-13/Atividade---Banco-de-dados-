# 💾 Banco de Dados - ONG de Resgate Animal

Este projeto implementa o banco de dados de um sistema de gestão para uma **ONG de Resgate e Adoção de Animais**.

O objetivo principal desta entrega é demonstrar a capacidade de **criação e manipulação dos dados** usando comandos SQL (DML e DDL).

---

## 1. O Nosso Modelo de Dados

O projeto da ONG foi modelado com 5 tabelas interligadas:

| Tabela | O que Guarda | Relação Principal |
| :--- | :--- | :--- |
| **Animal** | Os animais resgatados (nome, espécie, status). | Entidade Principal |
| **Voluntario** | As pessoas que trabalham na ONG (nome, contato, área). | Entidade Principal |
| **Candidato** | Pessoas interessadas em adotar (nome, contato, endereço). | Entidade Principal |
| **Cuidado** | Liga Voluntário a Animal (quem cuida de quem, com datas de início/fim). | Tabela de Ligação (N:M) |
| **Processo_Adocao** | Liga Candidato a Animal (status da adoção). | Tabela de Ligação (N:M) |

O modelo de dados (Diagrama Lógico) está disponível para visualização.

---

## 2. Instruções para Executar os Scripts

Os arquivos devem ser executados em ordem, do 1 ao 4, em qualquer programa SQL (como SQLiteStudio).

1.  **`1_ddl_tabelas.sql`**: Cria as 5 tabelas do banco de dados (DDL - `CREATE TABLE`).
2.  **`2_dml_inserts.sql`**: Povoa as tabelas com dados de exemplo (DML - `INSERT INTO`).

---

## 3. Análise da Manipulação de Dados (DML)

Os scripts 3 e 4 demonstram as habilidades de consulta e manipulação dos dados.

### A. Consultas (SELECT) - Script `3_dml_consultas.sql`

O script usa o `SELECT` para buscar informações específicas:

* **Busca Simples (`WHERE`):** Encontra todos os animais que estão com o `status_animal = 'Pronto para Adoção'`.
* **Busca com Ligação (`JOIN`):** Liga a tabela `Voluntario` com a tabela `Animal` (usando `Cuidado`) para descobrir "quem está cuidando de quem" na ONG.

### B. Modificação de Dados (`UPDATE` e `DELETE`) - Script `4_dml_manipulacao.sql`

O script demonstra o uso seguro do `UPDATE` e `DELETE` (sempre usando o **`WHERE`** para evitar apagar dados desnecessários):

* **`UPDATE`:** Altera o `status_animal` de um animal e registra a `data_fim_cuidado` (uma ação comum na rotina da ONG).
* **`DELETE`:** Remove um candidato e um registro de `Processo_Adocao` que falhou, limpando o banco de dados.
