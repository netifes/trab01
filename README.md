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

<P align="justify">&nbsp&nbsp Na disciplina de programação 2 surgiu o desafio de desenvolver um provedor de filmes, cujo o nome é NetIfes. Quando desenvolvemos o trabalho, tivemos que fazer toda a parte de cadastro de usuário até as informações de filmes utilizando arquivo e com isso nos deparamos com algumas limitações que impedisse com que o projeto deixasse de ser apenas um site e virasse de fato um servidor de serviço de streaming. Devido o motivo citado acima ecolhemos este projeto para desenvolver.</P>


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
    
- [NOTAÇÃO UML](https://github.com/netifes/trab01/blob/master/arquivos/L%C3%B3gico_1.brM3)   
 ![Alt Text](https://github.com/netifes/trab01/blob/master/images/Modelo%20De%20Classe.png)
    
#### 5.1 VALIDAÇÃO DO MODELO CONCEITUAL

- **_Ido:_** Higor Rebello, Icaro Gandini, Tadeu Junior.
- **_2Weeels:_** Lucas Eduardo.

#### 5.2 DECISÕES DE PROJETO

- **Telefone:** Optamos por um campo multivalorado, pois o usuário queando se cadastrar
    vai poder cadastrar mais de um telefone.

- **Genero:** Optamos por um campo multivalorado, pois um filme pode ser classificado em mais de um genero.

- **Elenco:** Optamos por um campo multivalorado, pois um filme é composto por um elenco, que é um conjunto
de atores, logo o filme vai possuir mais de um ator fazendo parte do seu elenco.

- **Idioma:** Optamos por um campo multivalorado, pois um filme é "adaptado" para varios idiomas.

#### 5.3 DESCRIÇÃO DOS DADOS 
- **Usuário:** Tabela que armazena as informações relativas ao usuário.
    - **Pk_usuário:** Campo identificador do usuário.
    - **CPF:** Campo que armazena o número de Cadastro de Pessoa Física de cada usuário do provedor.
    - **Nome:** Campo que armazena o nome do usuário do provedor.
    - **Sobrenome:** campo que armazena o sobreno do usuário do provedor.
    - **Data_Nascimento:** Campo que armazena a data de nascimento do usuário.
    - **Sexo:** Campo que armazena o sexo do usário.
    - **Endereco:** Campo que armazena o endereço do usuário.
    - **Email:** Campo que armazena o email do usário.
    - **Senha:** Campo que armazena a senha que o usuário irá utilizar para fazer login no provedor.
    - **Telefone:** Campo que armazena o telefone do usuário.
    - **Tipo:** Campo que identifica o tipo do usuário (Admim, Comum)..
    - **Status:** Campo que verifica se o usuário está com a conta bloqueada ou não, situação que ocorrre por exemplo que errar a senha 3 vezes (Bloqueado, Desbloqueado).

- **Filme:** Tabela que armazena as informações relativas aos filmes cadastrados no sistema.
    - **Pk_filme:** Campo identificador do filme.
    - **Titulo:** Campo que armazena o titulo do filme que estará disponivel para o usuário assistir.
    - **Subtitulo:** Campo que armazena o subtitulo do filme que estará disponivel para o usuário assistir.
    - **Sinopese:** Campo que armazena uma breve descrião do filme que estará disponivel para o usuário assistir.
    - **Duração:** Campo que armazena o tempo de duração do filme.
    - **Ano:** Campo que armazena o ano de lançamento do filme.
    - **Capa:** Campo que armazena o endereço da imagem da capa do filme.
    - **Video:** Campo que armazena a URL do trailer do filme.
    - **Genero:** Campo que armazena os generos do filme.
    - **Elenco:** Campo que armazena os nomes do atores que fazem parte do elenco do filme.
    - **Idioma:** Campo que armazena o idioma original do filme.
    - **Pais:** Campo que armazena o pais de origem do filme.
    - **Sinopese:** Campo que armazena a quantida de visualizações que o filme tem no site.
   
- **Conta:** Tabela que armazena informações referentes a conta do usuário.
    - **Pk_conta:** Campo identificador da conta.
    - **Usário:** Campo que armazena a PK de cadastro do usuário dono da conta.
    - **Data_cadastro:** Campo que armazena a data que o usuário cadastrou a conta.
    
- **Modalidade:** Tabela que armazena informaões sobre a modalidade da conta do usuário.
    - **Pk_modalidade:** Campo identificador da modalidade.
    - **Modalidade:** Campo que armazena a descrição da modalidade da conta (Premium, Normal).
 
- **Histórico_Pagamento:** Tabela que armazena os pagamentos realizados, caso o usuário deseje ter uma conta na modalidade premium.
    - **Pk_pagamento:** Campo identificador do pagamento.
    - **Data_pagamento:** Campo que armazena a data do pagamento realizado.
 
- **Diretor:** Tabela que armazena registro de diretores de filmes.
    - **Pk_diretor:** Campo identificador do diretor cadastrado.
    - **Nome:** Campo que armazena o nome do diretor.
    - **Sobrenome:** Campo que armazena o sobrenome do diretor.
    - **Idade:** Campo que armazena a idade do diretor.
    - **Pais:** Campo que armazena o pais origem do diretor.

### 6	MODELO LÓGICO<br>
- [MODELO LÓGICO](https://github.com/netifes/trab01/blob/master/arquivos/modelo_logico_netIfes.brM3)   
 ![Alt Text](https://github.com/netifes/trab01/blob/master/images/modelo_logico_netIfes.png)
    
    
### 7	MODELO FÍSICO<br>
        a) inclusão das instruções de criacão das estruturas DDL 
        (criação de tabelas, alterações, etc..)
          
        
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
#### 8.1 DETALHAMENTO DAS INFORMAÇÕES
        a) inclusão das instruções de inserção dos dados nas tabelas criadas pelo script de modelo físic
        b) formato .SQL

#### 8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS
        a) Junção dos scripts anteriores em um único script 
        (create para tabelas e estruturas de dados + dados a serem inseridos)
        b) Criar um novo banco de dados para testar a restauracao 
        (em caso de falha na restauração o grupo não pontuará neste quesito)
        c) formato .SQL
#### 8.3 INCLUSÃO DO SCRIPT PARA EXCLUSÃO DE TABELAS EXISTENTES, CRIAÇÃO DE TABELA NOVAS E INSERÇÃO DOS DADOS
        a) Junção dos scripts anteriores em um único script 
        (Drop table + Create de tabelas e estruturas de dados + dados a serem inseridos)
        b) Criar um novo banco de dados para testar a restauracao 
        (em caso de falha na restauração o grupo não pontuará neste quesito)
        c) formato .SQL


### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
    OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>
#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E CAMPOS RENOMEADOS (Mínimo 6)
     a) Criar no mínimo 2 com operadores lógicos
     b) Criar no mínimo 2 com operadores aritméticos
     c) Criar no mínimo 2 com operação de renomear campo
#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE (Mínimo 4) <br>

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


