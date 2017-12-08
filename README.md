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

<P Para desenvolver o sistema precisamos armazenar dados de conta  de usuário onde essas conta terá uma modalidade:(premium ou simples), um status para saber se conta encontra-se bloqueada ou não e também o usuário dono da conta. Para esses usuários precisamos guardar dados como nome: Nome, sobrenome, CPF, sexo, login, senha, cartão de Crédito, endereço, email, telefone e outros.
O usuário terá a sua disposição uma lista bem extensa de filmes disponíveis para assistir, e para isso serão cadastrados no sistema informações sobre os filmes como: Título, subtítulo, sinopse, diretores, elenco, duração, língua entre outros.</P>

 <P align="justify">&nbsp&nbsp Para que o usuário sinta-se único e reconhecido, gerando assim uma satisfação para o mesmo, utilizaremos um sistema de recomendações (SR). Para que o (SR) gere recomendações personalizadas ele irá primeiro identificar o perfil do usuário utilizando as técnicas de extração explícita e implícita, ou seja, quando o usuário se cadastra no site ele responderá um questionário que a partir desses dados irá criar um primeiro perfil, que posteriormente se ainda será mais personalizado pois o sistema utilizará a de extração explícita para personalizar o perfil, ou seja,  por meio da navegação do usuário no sistema, onde serão guardadas informações do tipo histórico de busca, filmes que assistiu, lista de filmes que deseja ver entre outras.</P>
    
<P align="justify">&nbsp&nbspO usuário ao acessar a página inicial vai se deparar com uma página que irá conter informações sobre os termos de uso, central de ajuda e um link que irá direcionar o usuário para um site que testará a velocidade da internet e um botão chamado Entrar, cujo o qual é a “porta de entrada” para o usuário aderir ao NETIFES. Já os que não estiverem cadastrados irão clicar no link (inscreva-se agora) e irão fazer o cadastro de usuário, onde iram preencher um formulário disponibilizando informações de identificação.</P>
    
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
-**Contratados:** Optamos por criar uma entidade que relacione todos os envolvidos com o filme, seja como ator, diretor e afins, onde essociado a esse contratado tem a sua função associada.

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
- [Instruçoes SQL](https://github.com/netifes/trab01/blob/master/arquivos/9.1%20-%20Consultas.sql)
- [Prints da Tela](https://github.com/netifes/trab01/tree/master/images/9%20-%20Tabelas%20e%20Principais%20Consultas/Tabelas%209.1)
#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE <br>
- [Instruçoes SQL](https://github.com/netifes/trab01/blob/master/arquivos/9.2%20-%20Consultas.sql)
- [Prints da Tela](https://github.com/netifes/trab01/tree/master/images/9%20-%20Tabelas%20e%20Principais%20Consultas/Tabelas%209.2)
#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E CAMPOS RENOMEADOS
- [Instruçoes SQL](https://github.com/netifes/trab01/blob/master/arquivos/9.3%20-%20Consultas%20e%20Alteracoes%20.sql)
- [Prints da Tela](https://github.com/netifes/trab01/tree/master/images/9%20-%20Tabelas%20e%20Principais%20Consultas/Tabelas%209.3)
     
#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE<br>
- [Instruçoes SQL](https://github.com/netifes/trab01/blob/master/arquivos/9.4%20-%20Consultas.sql)
- [Prints da Tela](https://github.com/netifes/trab01/tree/master/images/9%20-%20Tabelas%20e%20Principais%20Consultas/Tabelas%209.4)
>## Marco de Entrega 03 em: (Data definida no cronograma)<br>
    
#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
#### 9.6	CONSULTAS COM JUNÇÃO E ORDENAÇÃO (Mínimo 6)<br>
        a) Uma junção que envolva todas as tabelas possuindo no mínimo 3 registros no resultado
        b) Outras junções que o grupo considere como sendo as de principal importância para o trabalho
#### 9.7	CONSULTAS COM GROUP BY E FUNÇES DE AGRUPAMENTO (Mínimo 6)<br>
#### 9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4)<br>
#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)<br>
        a) Uma junção que envolva Self Join
        b) Outras junções com views que o grupo considere como sendo de relevante importância para o trabalho
#### 9.10	SUBCONSULTAS (Mínimo 3)<br>
### 10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES PARA APRESENTAÇAO FINAL (Mínimo 6 e Máximo 10)<br>
### 11	TUTORIAL COMPLETO DE PASSOS PARA RESTAURACAO DO BANCO E EXECUCAO DE PROCEDIMENTOS ENVOLVIDOS NO TRABALHO PARA OBTENÇÃO DOS RESULTADOS<br>
        a) Outros grupos deverão ser capazes de restaurar o banco 
        b) executar todas as consultas presentes no trabalho
        c) executar códigos que tenham sido construídos para o trabalho 
        d) realizar qualquer procedimento executado pelo grupo que desenvolveu o trabalho
        
### 12   DIFICULDADES ENCONTRADAS PELO GRUPO<br>
### 13   TRABALHO DE MINERAÇÃO DE DADOS
        a) captura das informaçõs
        b) integração com banco de dados em desenvolvimento
        c) atualização da documentação do trabalho incluindo a mineração de dados
        
### 13  FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/
<comentario no git>
    
##### About Formatting
    https://help.github.com/articles/about-writing-and-formatting-on-github/
    
##### Basic Formatting in Git
    
    https://help.github.com/articles/basic-writing-and-formatting-syntax/#referencing-issues-and-pull-requests
    
    
##### Working with advanced formatting
    https://help.github.com/articles/working-with-advanced-formatting/
#### Mastering Markdown
    https://guides.github.com/features/mastering-markdown/



### 14 Backup completo do banco de dados postgres 
    a) deve ser realizado no formato "backup" 
        (Em Dump Options #1 Habilitar opções Don't Save Owner e Privilege)
    b) antes de postar o arquivo no git o mesmo deve ser testado/restaurado por outro grupo de alunos/dupla
    c) informar aqui o grupo de alunos/dupla que realizou o teste.
    
>## Marco de Entrega 04/Entrega Final em: (Data definida no cronograma)<br>
    
### OBSERVAÇÕES IMPORTANTES

#### Todos os arquivos que fazem parte do projeto (Imagens, pdfs, arquivos fonte, etc..), devem estar presentes no GIT. Os arquivos do projeto vigente não devem ser armazenados em quaisquer outras plataformas.
1. Caso existam arquivos com conteúdos sigilosos, comunicar o professor que definirá em conjunto com o grupo a melhor forma de armazenamento do arquivo.

#### Todos os grupos deverão fazer Fork deste repositório e dar permissões administrativas ao usuário deste GIT, para acompanhamento do trabalho.

#### Os usuários criados no GIT devem possuir o nome de identificação do aluno (não serão aceitos nomes como Eu123, meuprojeto, pro456, etc). Em caso de dúvida comunicar o professor.


Link para BrModelo:<br>
http://sis4.com/brModelo/brModelo/download.html
<br>


Link para curso de GIT<br>
![https://www.youtube.com/curso_git](https://www.youtube.com/playlist?list=PLo7sFyCeiGUdIyEmHdfbuD2eR4XPDqnN2?raw=true "Title")


