# TRABALHO 01:  _NetIfes_ 
Trabalho desenvolvido durante a disciplina de BD1 no semestres 2017/2.

# Sumário

### 1. COMPONENTES<br>
**Integrantes do grupo:**<br>
- Ana Carolina Cebin Pereira: <a href="url"> carolcebin@gmail.com </a>
- Jardielma Queiroz de Lima: <a href="url"> jardielmaqueiroz@hotmail.com </a>
- Matheus Barbosa: <a href="url"> matheuskleber@live.com<br></a>

### 2.INTRODUÇÃO E MOTIVAÇAO<br>
<P align="justify">&nbsp&nbsp NETIFES é um serviço de streaming cujo objetivo é disponibilizar os usuários um serviço de transmissão online, no qual filmes podem ser assistidos via internet sem a necessidade de fazer download. Obs:(Não disponibilizamos filmes, apenas trailers para fazer como simulação do filmes).</P>

<P align="justify">&nbsp&nbsp Na disciplina de programação 2 surgiu o desafio de desenvolver um provedor de filmes, cujo o nome é NetIfes. Quando desenvolvemos o trabalho, tivemos que fazer toda a parte de cadastro de usuário até as informações de filmes utilizando arquivo e com isso nos deparamos com algumas limitações que impedisse com que o projeto deixasse de ser apenas um site e virasse de fato um servidor de serviço de streaming. Devido tal fato ecolhemos este projeto para desenvolver.</P>


### 3.MINI-MUNDO<br>
<P align="justify">&nbsp&nbsp Como já dito o NETIFES é um serviço de streaming cujo objetivo é disponibilizar serviços de transmissão online. Obs:(Não disponibilizamos filmes, apenas trailers para fazer como simulação do filmes).</P>

<P Para desenvolver o sistema precisamos armazenar dados de conta  de usuário onde essas conta terá uma modalidade:(premium ou simples), um status para saber se conta encontra-se bloqueada ou não e também o usuário dono da conta. Para esses usuários precisamos guardar dados como nome: Nome, sobrenome, CPF, sexo, login, senha, endereço, email, telefone e outros.
O usuário terá a sua disposição uma lista bem extensa de filmes disponíveis para assistir, e para isso serão cadastrados no sistema informações sobre os filmes como: Título, subtítulo, sinopse, diretores, elenco, duração, língua entre outros.</P>

 <P align="justify">&nbsp&nbsp Para que o usuário sinta-se único e reconhecido, gerando assim uma satisfação para o mesmo, utilizaremos um sistema de recomendações (SR). Para que o (SR) gere recomendações personalizadas ele irá primeiro identificar o perfil do usuário utilizando as técnicas de extração explícita e implícita, ou seja, quando o usuário se cadastra no site ele responderá um questionário que a partir desses dados irá criar um primeiro perfil, que posteriormente será mais personalizado pois o sistema utilizará a extração explícita para personalizar o perfil, ou seja,  por meio da navegação do usuário no sistema, onde serão guardadas informações do tipo histórico de busca, filmes que assistiu, lista de filmes que deseja ver entre outras.</P>
    
<P align="justify">&nbsp&nbsp O usuário ao acessar a página inicial vai se deparar com uma página que irá conter informações sobre os termos de uso, central de ajuda e um link que irá direcionar o usuário para um site que testará a velocidade da internet e um botão chamado Entrar, cujo o qual é a “porta de entrada” para o usuário aderir ao NETIFES. Já os que não estiverem cadastrados irão clicar no link (inscreva-se agora) e irão fazer o cadastro de usuário, onde iram preencher um formulário disponibilizando informações de identificação.</P>
    
 <P align="justify">&nbsp&nbsp Quando o usuário já se encontra cadastrado ele terá acesso a uma página de catálogo de filmes, onde aparece um banner com os principais lançamentos disponíveis e abaixo todos os filmes disponíveis ordenados a critério do gosto do usuários. Na página de catálogo o usuário contará também, com links que o levará até informações, serviços disponibilizados e informações para contato. Na página de catálogo o usuário poderá visualizar os filmes de acordo com a sua categoria. </P>
    
<P align="justify">&nbsp&nbsp Quando o usuário clicar no filme que ele quer assistir, abrirá uma página chamada filme que irá conter informações sobre o filme e a tela para assistir o filme que deseja. Obs:(Estará disponibilizado para assistir trailers puxados do youtube).</P>
    
<P align="justify">&nbsp&nbsp Será gerado também uma página contendo estatísticas gerais que apenas o administrador terá acesso, essas estatísticas serão geradas quando o usuário assistir um filme, ou seja, quando ele clica em um filme ou assistir o mesmo o sistema entenderá que aquele filme foi buscado ou assistido e contabilizará esse número, para que fique disponível para o administrador e ele possa em cima desses dados gerar relatórios como: Média de idade que assiste filme de ficção científica, Número de usuários que  assistiram o último lançamento e etc. </P>

### 4.RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>
- [MOCKUPS](https://github.com/netifes/trab01/blob/master/Projeto.pdf)

#### 4.1 TABELA DE DADOS DO SISTEMA:
- [TABELA](https://github.com/netifes/trab01/blob/master/TABELA%20GERAL%20(1).xlsx)

#### 4.2 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?
- **Principais Relatórios do Sistema NetIfes:**
    - Lista de filmes no catálogo
    - Detalhes do filme
    - Estatísticas gerais para o administrador
    - Dados do usuário
    - Pedidos de sugestões de filmes do usuário
    - Lista de recomendados para o usuário
    - Lista de novas aquisições
    - Lista de novos lançamentos
    - Relatório de novos usuários para o administrador
    - Estatísticas de evasão do serviço premium para o administrador
    
>## Marco de Entrega 01 em: (06/09/2017)<br>

### 5.MODELO CONCEITUAL<br>
 
- [MODELO CONCEITUAL](https://github.com/netifes/trab01/blob/master/arquivos/modelo_conceitual_netIfes.brM3)   
 ![Alt Text](https://github.com/netifes/trab01/blob/master/images/modelo_conceitual_netIfes.png)       
    
- [NOTAÇÃO UML](https://github.com/netifes/trab01/blob/master/arquivos/Logico_1.brM3)   
 ![Alt Text](https://github.com/netifes/trab01/blob/master/images/modelo_classe_netIfes.png%20.png)
    
#### 5.1 VALIDAÇÃO DO MODELO CONCEITUAL

- **_Ido:_** Higor Rebello, Icaro Gandini, Tadeu Junior.
- **_2Weeels:_** Lucas Eduardo.

#### 5.2 DECISÕES DE PROJETO

- **Genero:** Optamos por um campo multivalorado, pois um filme pode ser classificado em mais de um genero.
- **Idioma:** Optamos por um campo multivalorado, pois um filme é "adaptado" para varios idiomas.
- **Contato:** Optamos por criar uma entidade contato, pois o tlefone, e-mail entre outros meios de contatos são atibutos atômicos, por tanto decidimos criar uma entidade onde relacionasse todos os meios de contato do usuário e o assiciasse também com o tipo do contato.
- **Contratados:** Optamos por criar uma entidade que relacione todos os envolvidos com o filme, seja como ator, diretor e afins, onde essociado a esse contratado tem a sua função associada.

#### 5.3 DESCRIÇÃO DOS DADOS 
- **Usuário:** Tabela que armazena as informações relativas ao usuário.
    - **Pk_usuário:** Campo identificador do usuário.
    - **CPF:** Campo que armazena o número de Cadastro de Pessoa Física de cada usuário do provedor.
    - **Nome:** Campo que armazena o nome do usuário do provedor.
    - **Sobrenome:** campo que armazena o sobreno do usuário do provedor.
    - **Data_Nascimento:** Campo que armazena a data de nascimento do usuário.
    - **Sexo:** Campo que armazena o sexo do usário.
    - **Endereco:** Campo que armazena o endereço do usuário.
    - **Senha:** Campo que armazena a senha que o usuário irá utilizar para fazer login no provedor.
    - **Status:** Campo que verifica se o usuário está com a conta bloqueada ou não, situação que ocorrre por exemplo que errar a senha 3 vezes (Bloqueado, Desbloqueado).

- **Filme:** Tabela que armazena as informações relativas aos filmes cadastrados no sistema.
    - **Pk_filme:** Campo identificador do filme.
    - **Titulo:** Campo que armazena o titulo do filme que estará disponivel para o usuário assistir.
    - **Subtitulo:** Campo que armazena o subtitulo do filme que estará disponivel para o usuário assistir.
    - **Sinopse:** Campo que armazena uma breve descrião do filme que estará disponivel para o usuário assistir.
    - **Duração:** Campo que armazena o tempo de duração do filme.
    - **Ano:** Campo que armazena o ano de lançamento do filme.
    - **Capa:** Campo que armazena o endereço da imagem da capa do filme.
    - **Trailer:** Campo que armazena a URL do trailer do filme.
    - **Genero:** Campo que armazena os generos do filme.
    - **Idioma:** Campo que armazena o idioma original do filme.
    - **Pais:** Campo que armazena o pais de origem do filme.
    - **Visualizações:** Campo que armazena a quantida de visualizações que o filme tem no site.
    - **Data_visualização:** Campo que armazena o dia em que o filme foi visualizado.
    
- **Contato:** Tabela que armazena registro de contatos do usuário.
    - **Pk_contato:** Campo identificador do conta cadastrado.
    - **Contato:** Campo que armazena o contato.
    
 - **Tipo_contato:** Tabela que armazena os tipos de meios de contatos (Telefone, celular, e-mail, ...).
    - **Pk_tipo_contato:** Campo identificador do tipo de contato.
    - **Descricao:** Campo que armazena a descrição do tipo de contato.
    
- **Modalidade:** Tabela que armazena informaões sobre a modalidade da conta do usuário.
    - **Pk_modalidade:** Campo identificador da modalidade.
    - **Modalidade:** Campo que armazena a descrição da modalidade da conta (Premium, Normal).
    - **Valor:** Campo que armazena o valor que o usuário pagará pela modalidade.
 
- **Histórico_Pagamento:** Tabela que armazena os pagamentos realizados, caso o usuário deseje ter uma conta na modalidade premium.
    - **Pk_pagamento:** Campo identificador do pagamento.
    - **Data_pagamento:** Campo que armazena a data do pagamento realizado.
 
- **Contratado:** Tabela que armazena registro de pessoas que exercem funções no filme.
    - **Pk_contratado:** Campo identificador do contratado cadastrado.
    - **Nome:** Campo que armazena o nome do cadastrado.
    - **Data_nascimento:** Campo que armazena a data de nascimento do contratado.
    
 - **Funcao:** Tabela que armazena registro de funções dos contratos.
    - **Pk_funcao:** Campo identificador da funcao cadastrada.
    - **Descricao:** Campo que armazena a descrição da função.
 
### 6	MODELO LÓGICO<br>
- [MODELO LÓGICO](https://github.com/netifes/trab01/blob/master/arquivos/logico_NetIfes.brM3)   
 ![Alt Text](https://github.com/netifes/trab01/blob/master/images/logico_NetIfes.png)
    
    
### 7	MODELO FÍSICO<br>
- [Script SQL 7](https://github.com/netifes/trab01/blob/master/arquivos/CreateTableNetIfes.sql)          
        
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
#### 8.1 DETALHAMENTO DAS INFORMAÇÕES
- [Script SQL 8.1](https://github.com/netifes/trab01/blob/master/arquivos/InsertNetIfes.sql)

#### 8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS      
- [Script SQL 8.2](https://github.com/netifes/trab01/blob/master/arquivos/CreateAndInsertNetifes.sql)
- [Backup do Banco de Dados POSTGRES](https://github.com/netifes/trab01/blob/master/arquivos/BackupNetifes)
        
#### 8.3 INCLUSÃO DO SCRIPT PARA EXCLUSÃO DE TABELAS EXISTENTES, CRIAÇÃO DE TABELA NOVAS E INSERÇÃO DOS DADOS
- [Script SQL 8.3](https://github.com/netifes/trab01/blob/master/arquivos/DropCreateInsert.sql)
- [Backup do Banco de Dados POSTGRES](https://github.com/netifes/trab01/blob/master/arquivos/BackupNetifes)

### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
   
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS<br>

SELECT * FROM acesso; <br>
![Alt Text](https://github.com/netifes/trab01/blob/master/images/9%20-%20TABELAS%20E%20PRINCIPAIS%20CONSULTAS/9.1%20CONSULTAS%20DAS%20TABELAS%20COM%20TODOS%20OS%20DADOS%20INSERIDOS/acesso.png)

SELECT * FROM bandeira; <br>
![Alt Text](https://github.com/netifes/trab01/blob/master/images/9%20-%20TABELAS%20E%20PRINCIPAIS%20CONSULTAS/9.1%20CONSULTAS%20DAS%20TABELAS%20COM%20TODOS%20OS%20DADOS%20INSERIDOS/bandeira.png)

SELECT * FROM cep; <br>
![Alt Text](https://github.com/netifes/trab01/blob/master/images/9%20-%20TABELAS%20E%20PRINCIPAIS%20CONSULTAS/9.1%20CONSULTAS%20DAS%20TABELAS%20COM%20TODOS%20OS%20DADOS%20INSERIDOS/cep.png)

SELECT * FROM contratado; <br>
![Alt Text](https://github.com/netifes/trab01/blob/master/images/9%20-%20TABELAS%20E%20PRINCIPAIS%20CONSULTAS/9.1%20CONSULTAS%20DAS%20TABELAS%20COM%20TODOS%20OS%20DADOS%20INSERIDOS/contratados.png)

SELECT * FROM end_complemento; <br>
![Alt Text](https://github.com/netifes/trab01/blob/master/images/9%20-%20TABELAS%20E%20PRINCIPAIS%20CONSULTAS/9.1%20CONSULTAS%20DAS%20TABELAS%20COM%20TODOS%20OS%20DADOS%20INSERIDOS/end_complemento.png)

SELECT * FROM estado; <br>
![Alt Text](https://github.com/netifes/trab01/blob/master/images/9%20-%20TABELAS%20E%20PRINCIPAIS%20CONSULTAS/9.1%20CONSULTAS%20DAS%20TABELAS%20COM%20TODOS%20OS%20DADOS%20INSERIDOS/estadp.png)

SELECT * FROM filme; <br>
![Alt Text](https://github.com/netifes/trab01/blob/master/images/9%20-%20TABELAS%20E%20PRINCIPAIS%20CONSULTAS/9.1%20CONSULTAS%20DAS%20TABELAS%20COM%20TODOS%20OS%20DADOS%20INSERIDOS/filme.png)

SELECT * FROM funcao; <br>
![Alt Text](https://github.com/netifes/trab01/blob/master/images/9%20-%20TABELAS%20E%20PRINCIPAIS%20CONSULTAS/9.1%20CONSULTAS%20DAS%20TABELAS%20COM%20TODOS%20OS%20DADOS%20INSERIDOS/funcao.png)

SELECT * FROM genero; <br>
![Alt Text](https://github.com/netifes/trab01/blob/master/images/9%20-%20TABELAS%20E%20PRINCIPAIS%20CONSULTAS/9.1%20CONSULTAS%20DAS%20TABELAS%20COM%20TODOS%20OS%20DADOS%20INSERIDOS/genero.png)

SELECT * FROM idioma; <br>
![Alt Text](https://github.com/netifes/trab01/blob/master/images/9%20-%20TABELAS%20E%20PRINCIPAIS%20CONSULTAS/9.1%20CONSULTAS%20DAS%20TABELAS%20COM%20TODOS%20OS%20DADOS%20INSERIDOS/idioma.png)

SELECT * FROM legenda; <br>
![Alt Text](https://github.com/netifes/trab01/blob/master/images/9%20-%20TABELAS%20E%20PRINCIPAIS%20CONSULTAS/9.1%20CONSULTAS%20DAS%20TABELAS%20COM%20TODOS%20OS%20DADOS%20INSERIDOS/legenda.png)

SELECT * FROM modalidade; <br>
![Alt Text](https://github.com/netifes/trab01/blob/master/images/9%20-%20TABELAS%20E%20PRINCIPAIS%20CONSULTAS/9.1%20CONSULTAS%20DAS%20TABELAS%20COM%20TODOS%20OS%20DADOS%20INSERIDOS/modalidade.png)

SELECT * FROM pagamento; <br>
![Alt Text](https://github.com/netifes/trab01/blob/master/images/9%20-%20TABELAS%20E%20PRINCIPAIS%20CONSULTAS/9.1%20CONSULTAS%20DAS%20TABELAS%20COM%20TODOS%20OS%20DADOS%20INSERIDOS/pagamento.png)

SELECT * FROM pais; <br>
![Alt Text](https://github.com/netifes/trab01/blob/master/images/9%20-%20TABELAS%20E%20PRINCIPAIS%20CONSULTAS/9.1%20CONSULTAS%20DAS%20TABELAS%20COM%20TODOS%20OS%20DADOS%20INSERIDOS/pais.png)

SELECT * FROM rel_contratado_filme; <br>
![Alt Text](https://github.com/netifes/trab01/blob/master/images/9%20-%20TABELAS%20E%20PRINCIPAIS%20CONSULTAS/9.1%20CONSULTAS%20DAS%20TABELAS%20COM%20TODOS%20OS%20DADOS%20INSERIDOS/rel_contratado_filme.png)

SELECT * FROM rel_contratado_funcao; <br>
![Alt Text](https://github.com/netifes/trab01/blob/master/images/9%20-%20TABELAS%20E%20PRINCIPAIS%20CONSULTAS/9.1%20CONSULTAS%20DAS%20TABELAS%20COM%20TODOS%20OS%20DADOS%20INSERIDOS/rel_contratado_funcao.png)

SELECT * FROM rel_filme_genero; <br>
![Alt Text](https://github.com/netifes/trab01/blob/master/images/9%20-%20TABELAS%20E%20PRINCIPAIS%20CONSULTAS/9.1%20CONSULTAS%20DAS%20TABELAS%20COM%20TODOS%20OS%20DADOS%20INSERIDOS/rel_filme_genero.png)

SELECT * FROM rel_filme_idioma; <br>
![Alt Text](https://github.com/netifes/trab01/blob/master/images/9%20-%20TABELAS%20E%20PRINCIPAIS%20CONSULTAS/9.1%20CONSULTAS%20DAS%20TABELAS%20COM%20TODOS%20OS%20DADOS%20INSERIDOS/rel_filme_idioma.png)

SELECT * FROM rel_filme_legenda; <br>
![Alt Text](https://github.com/netifes/trab01/blob/master/images/9%20-%20TABELAS%20E%20PRINCIPAIS%20CONSULTAS/9.1%20CONSULTAS%20DAS%20TABELAS%20COM%20TODOS%20OS%20DADOS%20INSERIDOS/rel_filme_legenda.png)

SELECT * FROM rel_pais_cep; <br>
![Alt Text](https://github.com/netifes/trab01/blob/master/images/9%20-%20TABELAS%20E%20PRINCIPAIS%20CONSULTAS/9.1%20CONSULTAS%20DAS%20TABELAS%20COM%20TODOS%20OS%20DADOS%20INSERIDOS/rel_pais_cep.png)

SELECT * FROM rel_usuario_bandeira; <br>
![Alt Text](https://github.com/netifes/trab01/blob/master/images/9%20-%20TABELAS%20E%20PRINCIPAIS%20CONSULTAS/9.1%20CONSULTAS%20DAS%20TABELAS%20COM%20TODOS%20OS%20DADOS%20INSERIDOS/rel_usuario_bandeira.png)

SELECT * FROM rel_usuario_contato; <br>
![Alt Text](https://github.com/netifes/trab01/blob/master/images/9%20-%20TABELAS%20E%20PRINCIPAIS%20CONSULTAS/9.1%20CONSULTAS%20DAS%20TABELAS%20COM%20TODOS%20OS%20DADOS%20INSERIDOS/rel_usuario_contato.png)

SELECT * FROM rel_usuario_status; <br>
![Alt Text](https://github.com/netifes/trab01/blob/master/images/9%20-%20TABELAS%20E%20PRINCIPAIS%20CONSULTAS/9.1%20CONSULTAS%20DAS%20TABELAS%20COM%20TODOS%20OS%20DADOS%20INSERIDOS/rel_usuario_status.png)

SELECT * FROM status; <br>
![Alt Text](https://github.com/netifes/trab01/blob/master/images/9%20-%20TABELAS%20E%20PRINCIPAIS%20CONSULTAS/9.1%20CONSULTAS%20DAS%20TABELAS%20COM%20TODOS%20OS%20DADOS%20INSERIDOS/status.png)

SELECT * FROM tipo_contato; <br>
![Alt Text](https://github.com/netifes/trab01/blob/master/images/9%20-%20TABELAS%20E%20PRINCIPAIS%20CONSULTAS/9.1%20CONSULTAS%20DAS%20TABELAS%20COM%20TODOS%20OS%20DADOS%20INSERIDOS/tipo_contato.png)

SELECT * FROM usuario; <br>
![Alt Text](https://github.com/netifes/trab01/blob/master/images/9%20-%20TABELAS%20E%20PRINCIPAIS%20CONSULTAS/9.1%20CONSULTAS%20DAS%20TABELAS%20COM%20TODOS%20OS%20DADOS%20INSERIDOS/usuario.png)

#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE <br>
###### 1º Consulta:
SELECT * FROM cep WHERE cep = 74477056;

![Alt Text](https://github.com/netifes/trab01/blob/master/images/9%20-%20TABELAS%20E%20PRINCIPAIS%20CONSULTAS/9.2%20CONSULTAS%20DAS%20TABELAS%20COM%20FILTROS%20WHERE/Screenshot_1.png)

###### 2º Consulta:

SELECT * FROM filme WHERE duracao > 120;

![Alt Text](https://github.com/netifes/trab01/blob/master/images/9%20-%20TABELAS%20E%20PRINCIPAIS%20CONSULTAS/9.2%20CONSULTAS%20DAS%20TABELAS%20COM%20FILTROS%20WHERE/Screenshot_2.png)

###### 3º Consulta:
SELECT * FROM filme WHERE avaliacao = 5; 

![Alt Text](https://github.com/netifes/trab01/blob/master/images/9%20-%20TABELAS%20E%20PRINCIPAIS%20CONSULTAS/9.2%20CONSULTAS%20DAS%20TABELAS%20COM%20FILTROS%20WHERE/Screenshot_3.png)

###### 4º Consulta:
SELECT * FROM usuario WHERE nome = 'Enzo';

![Alt Text](https://github.com/netifes/trab01/blob/master/images/9%20-%20TABELAS%20E%20PRINCIPAIS%20CONSULTAS/9.2%20CONSULTAS%20DAS%20TABELAS%20COM%20FILTROS%20WHERE/Screenshot_4.png)

###### 5º Consulta:
SELECT * FROM usuario WHERE cpf = 46208317940;

![Alt Text](https://github.com/netifes/trab01/blob/master/images/9%20-%20TABELAS%20E%20PRINCIPAIS%20CONSULTAS/9.2%20CONSULTAS%20DAS%20TABELAS%20COM%20FILTROS%20WHERE/Screenshot_5.png)


#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E CAMPOS RENOMEADOS
- Consultas que envolvam os operadores lógicos AND, OR e Not: <br>
###### 1º Consulta:
SELECT * FROM filme WHERE ano > 2000 AND avaliacao > 3; <br>

![Alt Text](https://github.com/netifes/trab01/blob/master/images/9%20-%20TABELAS%20E%20PRINCIPAIS%20CONSULTAS/9.3%20CONSULTAS%20QUE%20USAM%20OPERADORES%20L%C3%93GICOS%2C%20ARITM%C3%89TICOS%20E%20TABELAS%20OU%20CAMPOS%20RENOMEADOS/Screenshot_1.png)


###### 2º Consulta:
SELECT * FROM filme WHERE titulo = 'Batman' AND duracao > 120;<br>
![Alt Text](https://github.com/netifes/trab01/blob/master/images/9%20-%20TABELAS%20E%20PRINCIPAIS%20CONSULTAS/9.3%20CONSULTAS%20QUE%20USAM%20OPERADORES%20L%C3%93GICOS%2C%20ARITM%C3%89TICOS%20E%20TABELAS%20OU%20CAMPOS%20RENOMEADOS/Screenshot_2.png)


###### 3º Consulta:
SELECT * FROM filme WHERE avaliacao > 2 OR duracao < 100;<br>
![Alt Text](https://github.com/netifes/trab01/blob/master/images/9%20-%20TABELAS%20E%20PRINCIPAIS%20CONSULTAS/9.3%20CONSULTAS%20QUE%20USAM%20OPERADORES%20L%C3%93GICOS%2C%20ARITM%C3%89TICOS%20E%20TABELAS%20OU%20CAMPOS%20RENOMEADOS/Screenshot_3.png)


###### 4º Consulta:
SELECT * FROM usuario WHERE login = 'brendaSouzaGomes@rhyta.com' AND senha = 'queiP3lah5'; 

![Alt Text](https://github.com/netifes/trab01/blob/master/images/9%20-%20TABELAS%20E%20PRINCIPAIS%20CONSULTAS/9.3%20CONSULTAS%20QUE%20USAM%20OPERADORES%20L%C3%93GICOS%2C%20ARITM%C3%89TICOS%20E%20TABELAS%20OU%20CAMPOS%20RENOMEADOS/Screenshot_4.png)

###### 5º Consulta:
Select * from usuario where nome = 'Matheus' or senha = 'jndsuiHi8h';

![Alt Text](https://github.com/netifes/trab01/blob/master/images/9%20-%20TABELAS%20E%20PRINCIPAIS%20CONSULTAS/9.3%20CONSULTAS%20QUE%20USAM%20OPERADORES%20L%C3%93GICOS%2C%20ARITM%C3%89TICOS%20E%20TABELAS%20OU%20CAMPOS%20RENOMEADOS/Screenshot_6.png)

- Criar no mínimo 3 consultas com operadores aritméticos 
###### 1º Consulta:
SELECT  visualizacoes, ((visualizacoes*1.0/ 299824) *100)  AS mediaVisualizacoes FROM filme;

![Alt Text](https://github.com/netifes/trab01/blob/master/images/9%20-%20TABELAS%20E%20PRINCIPAIS%20CONSULTAS/9.3%20CONSULTAS%20QUE%20USAM%20OPERADORES%20L%C3%93GICOS%2C%20ARITM%C3%89TICOS%20E%20TABELAS%20OU%20CAMPOS%20RENOMEADOS/Screenshot_5.png)

- Criar no mínimo 3 consultas com operação de renomear nomes de campos ou tabelas

###### 1º Consulta:
SELECT capa AS "'Link do cartaz do filme'", titulo AS "'Nome do Filme'" FROM filme WHERE titulo = 'Frozen';

![Alt Text](https://github.com/netifes/trab01/blob/master/images/9%20-%20TABELAS%20E%20PRINCIPAIS%20CONSULTAS/9.3%20CONSULTAS%20QUE%20USAM%20OPERADORES%20L%C3%93GICOS%2C%20ARITM%C3%89TICOS%20E%20TABELAS%20OU%20CAMPOS%20RENOMEADOS/Screenshot_7.png)

###### 2º Consulta:
SELECT ultm_pgto AS "'Data do ultimo pagamento'", prox_pgto AS "'Data do proximo pagamento'" FROM pagamento WHERE  ultm_pgto > '2017-01-01';

![Alt Text](https://github.com/netifes/trab01/blob/master/images/9%20-%20TABELAS%20E%20PRINCIPAIS%20CONSULTAS/9.3%20CONSULTAS%20QUE%20USAM%20OPERADORES%20L%C3%93GICOS%2C%20ARITM%C3%89TICOS%20E%20TABELAS%20OU%20CAMPOS%20RENOMEADOS/Screenshot_8.png)

###### 3º Consulta:
SELECT id_funcao AS "'Numero da funcao'", descricao AS "'Nome da Funcao'" FROM funcao WHERE descricao = 'Ator';

![Alt Text](https://github.com/netifes/trab01/blob/master/images/9%20-%20TABELAS%20E%20PRINCIPAIS%20CONSULTAS/9.3%20CONSULTAS%20QUE%20USAM%20OPERADORES%20L%C3%93GICOS%2C%20ARITM%C3%89TICOS%20E%20TABELAS%20OU%20CAMPOS%20RENOMEADOS/Screenshot_9.png)
     
#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE<br>
- Consultas que envolvam like ou ilike
###### 1º Consulta:
SELECT * FROM filme WHERE sinopse LIKE '%Star%' or  subtitulo LIKE '%trevas%';

![Alt Text](https://github.com/netifes/trab01/blob/master/images/9%20-%20TABELAS%20E%20PRINCIPAIS%20CONSULTAS/9.4%20CONSULTAS%20QUE%20USAM%20OPERADORES%20LIKE/Screenshot_1.png)

###### 2º Consulta:
SELECT * FROM filme WHERE sinopse LIKE '%amor%'; 

![Alt Text](https://github.com/netifes/trab01/blob/master/images/9%20-%20TABELAS%20E%20PRINCIPAIS%20CONSULTAS/9.4%20CONSULTAS%20QUE%20USAM%20OPERADORES%20LIKE/Screenshot_2.png)

###### 3º Consulta:
SELECT * FROM filme WHERE titulo LIKE 'F%'; 

![Alt Text](https://github.com/netifes/trab01/blob/master/images/9%20-%20TABELAS%20E%20PRINCIPAIS%20CONSULTAS/9.4%20CONSULTAS%20QUE%20USAM%20OPERADORES%20LIKE/Screenshot_3.png)

###### 4º Consulta:
SELECT * FROM usuario WHERE nome LIKE '%Matheus%'; 

![Alt Text](https://github.com/netifes/trab01/blob/master/images/9%20-%20TABELAS%20E%20PRINCIPAIS%20CONSULTAS/9.4%20CONSULTAS%20QUE%20USAM%20OPERADORES%20LIKE/Screenshot_4.png)

###### 5º Consulta:
SELECT * FROM usuario WHERE login LIKE '%gmail%'; 

![Alt Text](https://github.com/netifes/trab01/blob/master/images/9%20-%20TABELAS%20E%20PRINCIPAIS%20CONSULTAS/9.4%20CONSULTAS%20QUE%20USAM%20OPERADORES%20LIKE/Screenshot_5.png)

###### 6º Consulta:
SELECT * FROM cep WHERE endereco LIKE '%Rua%'; 

![Alt Text](https://github.com/netifes/trab01/blob/master/images/9%20-%20TABELAS%20E%20PRINCIPAIS%20CONSULTAS/9.4%20CONSULTAS%20QUE%20USAM%20OPERADORES%20LIKE/Screenshot_9.png)


###### 7º Consulta:
SELECT * FROM contratado WHERE nome ILIKE '%ford%';

![Alt Text](https://github.com/netifes/trab01/blob/master/images/9%20-%20TABELAS%20E%20PRINCIPAIS%20CONSULTAS/9.4%20CONSULTAS%20QUE%20USAM%20OPERADORES%20LIKE/Screenshot_10.png)


- Criar uma consulta para cada tipo de função data apresentada.
###### 1º Consulta:
SELECT nome, date_part('year',(age(current_date, data_nascimento))) AS "'Idade'" FROM contratado WHERE nome ILIKE '%w%'; 

![Alt Text](https://github.com/netifes/trab01/blob/master/images/9%20-%20TABELAS%20E%20PRINCIPAIS%20CONSULTAS/9.4%20CONSULTAS%20QUE%20USAM%20OPERADORES%20LIKE/Screenshot_11.png)

###### 2º Consulta:
SELECT nome, sobrenome,(age(current_date, ultimo_acesso)) AS "'Tempo ultimo acesso'" FROM usuario;

![Alt Text](https://github.com/netifes/trab01/blob/master/images/9%20-%20TABELAS%20E%20PRINCIPAIS%20CONSULTAS/9.4%20CONSULTAS%20QUE%20USAM%20OPERADORES%20LIKE/Screenshot_6.png)

###### 3º Consulta:
SELECT nome, sobrenome,date_part('year',(age(current_date, data_nascimento))) AS "'Idade'" FROM usuario;

![Alt Text](https://github.com/netifes/trab01/blob/master/images/9%20-%20TABELAS%20E%20PRINCIPAIS%20CONSULTAS/9.4%20CONSULTAS%20QUE%20USAM%20OPERADORES%20LIKE/Screenshot_7.png)

###### 4º Consulta:
SELECT id_usuario, extract(day from ultm_pgto) AS "'Dia de vencimento'" FROM pagamento;

![Alt Text](https://github.com/netifes/trab01/blob/master/images/9%20-%20TABELAS%20E%20PRINCIPAIS%20CONSULTAS/9.4%20CONSULTAS%20QUE%20USAM%20OPERADORES%20LIKE/Screenshot_8.png)

    
#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS<br>
###### 1º Update:
UPDATE usuario SET senha = 'AKsjdf24sda7' WHERE id_usuario = 4 AND login = 'vitoriaCorreiaPereira@teleworm.us';

Antes:

![Alt Text](https://github.com/netifes/trab01/blob/master/images/9%20-%20TABELAS%20E%20PRINCIPAIS%20CONSULTAS/9.5%20ATUALIZA%C3%87%C3%83O%20E%20EXCLUS%C3%83O%20DE%20DADOS%20(M%C3%ADnimo%206)/Screenshot_1.png)

Depois:

![Alt Text](https://github.com/netifes/trab01/blob/master/images/9%20-%20TABELAS%20E%20PRINCIPAIS%20CONSULTAS/9.5%20ATUALIZA%C3%87%C3%83O%20E%20EXCLUS%C3%83O%20DE%20DADOS%20(M%C3%ADnimo%206)/Screenshot_2.png)

###### 2º Update:
UPDATE filme SET avaliacao = 4.5  WHERE titulo = 'Cidade de Deus' AND id_filme = 8;

Antes:

![Alt Text](https://github.com/netifes/trab01/blob/master/images/9%20-%20TABELAS%20E%20PRINCIPAIS%20CONSULTAS/9.5%20ATUALIZA%C3%87%C3%83O%20E%20EXCLUS%C3%83O%20DE%20DADOS%20(M%C3%ADnimo%206)/Screenshot_3.png)

Depois:

![Alt Text](https://github.com/netifes/trab01/blob/master/images/9%20-%20TABELAS%20E%20PRINCIPAIS%20CONSULTAS/9.5%20ATUALIZA%C3%87%C3%83O%20E%20EXCLUS%C3%83O%20DE%20DADOS%20(M%C3%ADnimo%206)/Screenshot_4.png)

###### 3º Update:
UPDATE usuario SET ultimo_acesso = current_timestamp WHERE login = 'aliceCostaAzevedo@armyspy.com' AND senha = 'aik8mogeeSai';

Antes:

![Alt Text](https://github.com/netifes/trab01/blob/master/images/9%20-%20TABELAS%20E%20PRINCIPAIS%20CONSULTAS/9.5%20ATUALIZA%C3%87%C3%83O%20E%20EXCLUS%C3%83O%20DE%20DADOS%20(M%C3%ADnimo%206)/Screenshot_5.png)

Depois:

![Alt Text](https://github.com/netifes/trab01/blob/master/images/9%20-%20TABELAS%20E%20PRINCIPAIS%20CONSULTAS/9.5%20ATUALIZA%C3%87%C3%83O%20E%20EXCLUS%C3%83O%20DE%20DADOS%20(M%C3%ADnimo%206)/Screenshot_6.png)

###### 4º Update:
UPDATE filme SET visualizacoes = 61232, id_acesso = 2 WHERE id_filme = 4;

Antes:

![Alt Text](https://github.com/netifes/trab01/blob/master/images/9%20-%20TABELAS%20E%20PRINCIPAIS%20CONSULTAS/9.5%20ATUALIZA%C3%87%C3%83O%20E%20EXCLUS%C3%83O%20DE%20DADOS%20(M%C3%ADnimo%206)/Screenshot_7.png)

Depois:

![Alt Text](https://github.com/netifes/trab01/blob/master/images/9%20-%20TABELAS%20E%20PRINCIPAIS%20CONSULTAS/9.5%20ATUALIZA%C3%87%C3%83O%20E%20EXCLUS%C3%83O%20DE%20DADOS%20(M%C3%ADnimo%206)/Screenshot_8.png)

###### 5º Update:
UPDATE usuario SET sobrenome = 'Gomes Souza' WHERE cpf = '32782754386';

Antes:

![Alt Text](https://github.com/netifes/trab01/blob/master/images/9%20-%20TABELAS%20E%20PRINCIPAIS%20CONSULTAS/9.5%20ATUALIZA%C3%87%C3%83O%20E%20EXCLUS%C3%83O%20DE%20DADOS%20(M%C3%ADnimo%206)/Screenshot_9.png)

Depois:

![Alt Text](https://github.com/netifes/trab01/blob/master/images/9%20-%20TABELAS%20E%20PRINCIPAIS%20CONSULTAS/9.5%20ATUALIZA%C3%87%C3%83O%20E%20EXCLUS%C3%83O%20DE%20DADOS%20(M%C3%ADnimo%206)/Screenshot_10.png)

###### 6º Update:
UPDATE pagamento SET numero_cartao = 45686789247853218, validade_cartao = '2019-06-25';

Antes:

![Alt Text](https://github.com/netifes/trab01/blob/master/images/9%20-%20TABELAS%20E%20PRINCIPAIS%20CONSULTAS/9.5%20ATUALIZA%C3%87%C3%83O%20E%20EXCLUS%C3%83O%20DE%20DADOS%20(M%C3%ADnimo%206)/Screenshot_11.png)

Depois:

![Alt Text](https://github.com/netifes/trab01/blob/master/images/9%20-%20TABELAS%20E%20PRINCIPAIS%20CONSULTAS/9.5%20ATUALIZA%C3%87%C3%83O%20E%20EXCLUS%C3%83O%20DE%20DADOS%20(M%C3%ADnimo%206)/Screenshot_12.png)


#### 9.6	CONSULTAS COM JUNÇÃO E ORDENAÇÃO<br>

#### 9.7	CONSULTAS COM GROUP BY E FUNÇES DE AGRUPAMENTO<br>

###### 1º Consulta:
SELECT usuario.nome, filme.titulo, data_inicio, data_fim 
FROM historico_visualizacao 
INNER JOIN usuario ON(usuario.id_usuario = historico_visualizacao.id_usuario)
INNER JOIN filme ON(filme.id_filme = historico_visualizacao.id_filme)
GROUP BY usuario.nome, filme.titulo, data_inicio, data_fim;

![Alt Text](https://github.com/netifes/trab01/blob/master/images/9%20-%20TABELAS%20E%20PRINCIPAIS%20CONSULTAS/9.7%20CONSULTAS%20COM%20GROUP%20BY%20E%20FUN%C3%87ES%20DE%20AGRUPAMENTO/Screenshot_1.png)

###### 2º Consulta:
SELECT nome, sobrenome, cpf, data_nascimento
FROM usuario
WHERE UPPER(nome) LIKE UPPER('%a%')
AND UPPER(login) LIKE UPPER('%@gmail.com%')
GROUP BY nome, sobrenome, cpf, data_nascimento;

![Alt Text](https://github.com/netifes/trab01/blob/master/images/9%20-%20TABELAS%20E%20PRINCIPAIS%20CONSULTAS/9.7%20CONSULTAS%20COM%20GROUP%20BY%20E%20FUN%C3%87ES%20DE%20AGRUPAMENTO/Screenshot_2.png)

###### 3º Consulta:
SELECT nome, data_nascimento 
FROM contratado
WHERE UPPER(nome) LIKE UPPER('%ll%')
GROUP BY nome, data_nascimento;

![Alt Text](https://github.com/netifes/trab01/blob/master/images/9%20-%20TABELAS%20E%20PRINCIPAIS%20CONSULTAS/9.7%20CONSULTAS%20COM%20GROUP%20BY%20E%20FUN%C3%87ES%20DE%20AGRUPAMENTO/Screenshot_3.png)


###### 4º Consulta:
SELECT nome, sobrenome, ultimo_acesso, data_nascimento
FROM usuario
WHERE data_nascimento > '1995-11-15'
GROUP BY nome, sobrenome, ultimo_acesso, data_nascimento;

![Alt Text](https://github.com/netifes/trab01/blob/master/images/9%20-%20TABELAS%20E%20PRINCIPAIS%20CONSULTAS/9.7%20CONSULTAS%20COM%20GROUP%20BY%20E%20FUN%C3%87ES%20DE%20AGRUPAMENTO/Screenshot_4.png)

###### 5º Consulta:
SELECT filme.titulo, filme.subtitulo, acesso.acesso
FROM filme
INNER JOIN acesso ON(filme.id_acesso = acesso.id_acesso)
WHERE filme.id_acesso = 1
GROUP BY filme.titulo, filme.subtitulo, acesso.acesso;

![Alt Text](https://github.com/netifes/trab01/blob/master/images/9%20-%20TABELAS%20E%20PRINCIPAIS%20CONSULTAS/9.7%20CONSULTAS%20COM%20GROUP%20BY%20E%20FUN%C3%87ES%20DE%20AGRUPAMENTO/Screenshot_5.png)

###### 6º Consulta:
SELECT usuario.nome, pagamento.numero_cartao, pagamento.validade_cartao
FROM pagamento
INNER JOIN usuario ON(pagamento.id_usuario = usuario.id_usuario)
WHERE pagamento.validade_cartao > '2021-12-03'
GROUP BY usuario.nome, pagamento.numero_cartao, pagamento.validade_cartao;

![Alt Text](https://github.com/netifes/trab01/blob/master/images/9%20-%20TABELAS%20E%20PRINCIPAIS%20CONSULTAS/9.7%20CONSULTAS%20COM%20GROUP%20BY%20E%20FUN%C3%87ES%20DE%20AGRUPAMENTO/Screenshot_6.png)


#### 9.9	CONSULTAS COM SELF JOIN E VIEW 
- Self Join:
Pelo fato do nosso banco estar normalizado não tem como realizarmos SELF JOIN, todas as informações estão separadas em sua respectiva tabela

###### 1º View: Lista de usuarios que tem o dia atual como vencimento da assinatura
CREATE VIEW vencimentosDoDia AS SELECT id_usuario FROM pagamento where current_date = prox_pgto;

###### 2º View: Lista de ususarios bloqueados
CREATE VIEW usuariosBloqueados AS
SELECT nome, sobrenome, login from usuario
INNER JOIN rel_usuario_status ON (usuario.id_usuario = rel_usuario_status.id_usuario)
WHERE id_status = 2;

###### 3º View: Lista de usuarios com a assinatura Premium
CREATE VIEW usuariosPremium AS
SELECT nome, sobrenome, login from usuario
INNER JOIN rel_usuario_modalidade ON (usuario.id_usuario = rel_usuario_modalidade.id_usuario)
WHERE id_modalidade = 1;

###### 4º View: Lista de ususarios Inativos(Muito tempo sem entrar no netIfes)
CREATE VIEW usuariosInativos AS
SELECT nome, sobrenome, login from usuario
INNER JOIN rel_usuario_modalidade ON (usuario.id_usuario = rel_usuario_modalidade.id_usuario)
WHERE id_modalidade = 3;

###### 5º View: Lista de usuario com a assinatura Simples
CREATE VIEW usuariosSimples AS
SELECT nome, sobrenome, login from usuario
INNER JOIN rel_usuario_modalidade ON (usuario.id_usuario = rel_usuario_modalidade.id_usuario)
WHERE id_modalidade = 2;o
#### 9.10	SUBCONSULTAS <br>

