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
<P align="justify">&nbsp&nbsp Como já dito o NETIFES é um serviço de  streaming cujo objetivo é disponibilizar serviços de transmissão online. Obs:(Não disponibilizamos filmes, apenas trailers para fazer como simulação do filmes).</P>

<P align="justify">&nbsp&nbsp Para desenvolver o sistema precisamos armazenar dados dos usuários: Nome, CPF, login, senha, tipo de conta e outros e para os filmes precisamos saber informações como: Titulo, subtítulo, sinopse, diretores, elenco entre outros. Para fazer com o que o sistema se adeque para cada usuário é necesário cadastrar informações para que sirva de estatística, essas informações serão uma uma lista com valores indicativos para o nível de gosto para cada genero de filma que será informado no momento do cadastro, como outras estatísticas para saber por exemplo o nivel de satisfação, total de visualização por gênero.
</P>

<P align="justify">&nbsp&nbsp O usuário ao acessar a página inicial vai se deparar com uma página que irá conter informações sobre os termos de uso, central de ajuda e um link que irá direcionar o usuário para um site que testará a velocidade da internet e um botão chamado entrar, cujo o qual é a “porta de entrada” para o usuário aderir ao NETIFES.</P>

<P align="justify">&nbsp&nbsp Quando o usuário clicar no botão entrar ele será direcionado para uma página de login, onde usuários já cadastrados irão fazer login com seu usuário e senha. Já os que não estiverem cadastrados irão clicar no link (inscreva-se agora) e irão fazer o cadastro de usuário, onde iram preencher um formulário disponibilizando dados como: Nome, CPF, login, senha, endereço, numero do cartão de credito, caso ele queira aderir ao serviço pago e outras informações de identificação.</P>
    
<P align="justify">&nbsp&nbsp Quando o usuário já se encontra cadastrado ele terá acesso a uma página de catálogo de  filmes, onde aparece um banner com os principais lançamentos disponíveis e abaixo todos os filmes disponíveis ordenados a critério do gosto do usuários, ou sejá, quando o usário fizer seu cadastro ele irá preencher um formulário, cujo o qual irá gerá um tabela se similarida, que irá conter infromações dos tipos de filme que o usuário mais gosta.</P>
    
 <P align="justify">&nbsp&nbsp Na página de catálogo o usuário contará também, com links que o levará até informações, serviços disponibilizados e informações para contato. Na página de catálogo o usuário poderá visualizar os filmes de acordo com a sua categoria. </P>
    
<P align="justify">&nbsp&nbsp Quando o usuário clicar no filme que ele quer assistir, abrirá uma página chamada filme que irá conter informações sobre o filme e a tela para assistir o filme que deseja. Obs:(Estará disponibilizado para assistir trailers puxados do youtube).</P>
    
<P align="justify">&nbsp&nbsp Será gerado também uma página contendo estatísticas gerais que apenas o administrador terá acesso. </P>

### 4.RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>
- [MOCKUPS](https://)

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
    A) NOTACAO ENTIDADE RELACIONAMENTO 
        * Para nosso prótótipo limitaremos o modelo conceitual nas 6 principais entidades do escopo
        * O protótipo deve possui no mínimo duas relações N para N
        * o mínimo de entidades do modelo conceitual será igual a 5
        
![Alt text](https://github.com/discipbd1/trab01/blob/master/sample_MC.png?raw=true "Modelo Conceitual")
    
    B) NOTACAO UML (Caso esteja fazendo a disciplina de analise)
    C) QUALIDADE 
        Garantir que a semântica dos atributos seja clara no esquema
        Criar o esquema de forma a garantir a redução de informação redundante, possibilidade de valores null, 
        e tuplas falsas
    
        
    
#### 5.1 Validação do Modelo Conceitual
    [Grupo01]: [Nomes dos que participaram na avaliação]
    [Grupo02]: [Nomes dos que participaram na avaliação]

#### 5.2 DECISÕES DE PROJETO
    [atributo]: [descrição da decisão]
    
    EXEMPLO:
    a) Campo endereço: em nosso projeto optamos por um campo multivalorado e composto, pois a empresa 
    pode possuir para cada departamento mais de uma localização... 
    b) justifique!

#### 5.3 DESCRIÇÃO DOS DADOS 
    [objeto]: [descrição do objeto]
    
    EXEMPLO:
    CLIENTE: Tabela que armazena as informações relativas ao cliente<br>
    CPF: campo que armazena o número de Cadastro de Pessoa Física para cada cliente da empresa.<br>


### 6	MODELO LÓGICO<br>
        a) inclusão do modelo lógico do banco de dados
        b) verificação de correspondencia com o modelo conceitual 
        (não serão aceitos modelos que não estejam em conformidade)

>## Marco de Entrega 02 em: (Data definida no cronograma)<br>

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


