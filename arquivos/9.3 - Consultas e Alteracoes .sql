/* Exemplo 9.3.1*/
Select * from filme where ano > 2000 and avaliacao > 3;  /*Filmes com Avaliacao maior que 3 e foram lancados depois de 2000*/

/* Exemplo 9.3.2*/
Select * from filme where titulo = 'Batman' and duracao > 120; /*Filmes com nome Batman e que tem mais de 120 minutos de duracao*/

/* Exemplo 9.3.3*/
Select * from filme where avaliacao > 2 or duracao < 100; /*Filmes com avaliacao maior 2 ou que tenha a duracao menor que q 100 minutos*/

/* Exemplo 9.3.4*/
Select * from filme where avalicao is not 1; /*Todos os filmes que nao tem avalicao com nota 1*/

/* Exemplo 9.3.5*/
Select * from usuario where nome = 'Matheus' or senha = 'jndsuiHi8h' ; /*Procura Usuario cadastrado que tenho como primeiro nome matheus ou que tenha a senha jndsuiHi8h*//*Exemplo 9.3.9*/
UPDATE usuario SET senha ='sjdbfsdbf34' WHERE senha = 'jndsuiHi8h'; /*Muda a senha do usuario*/

/*Exemplo 9.3.10*/
UPDATE filme SET avaliacao = 4  WHERE titulo = 'Cidade de Deus'; /*Muda o valor do campo avalicao do filme Cidade de Deus*/

/*Exemplo 9.3.11*/
UPDATE usuario SET email = 'exemploUpdate@gmail.com' WHERE cpf ='77444792208' ; /*Troca o email do usuario com o CPF 
'77444792208'*/

/*Exemplo 9.3.12*/
UPDATE usuario SET sobrenome = 'Gomes Souza' WHERE cpf = '32782754386'; /*Troca o SObrenome aonde o CPF for 32782754386 */ 

