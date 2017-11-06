/*Exemplo 9.4.1*/
SELECT * FROM filme WHERE sinopse LIKE '%Star%' or  subtitulo LIKE '%trevas%'; /*Procura Filmes que contenha 
a palavra Star no titulo ou a palavra Trevas no subtitulo*/

/*Exemplo 9.4.2*/
SELECT * FROM filme WHERE sinopse LIKE '%amor%'; /*Procura Filmes que contenha 
a palavra AMOR na sinopse*/

/*Exemplo 9.4.3*/
SELECT * FROM filme WHERE titulo LIKE 'F%'; /*Procura Filmes que o titulo começam com a letra F*/

/*Exemplo 9.4.4*/
SELECT * FROM usuario WHERE nome LIKE '%Matheus%'; /*Procura os ususario com o nome Matheus*/

/*Exemplo 9.4.5*/
SELECT * FROM usuario WHERE email LIKE '%gmail%'; /*Procura os ususario com email do gmail*/

/*Exemplo 9.4.6*/
SELECT * FROM cep WHERE endereco LIKE '%Rua%'; /*Procura os ususario que moram em uma Rua*/

