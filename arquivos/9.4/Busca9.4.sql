
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

/*Exemplo 9.4.7*/
Select nome, 
current_date as data_atual, 
ultimo_acesso, 
(age(current_date, ultimo_acesso))
FROM usuario; /*Calcula o tempo do ultimo acesso (Com a funcao AGE)*/


/*Exemplo 9.4.8*/
Select id_usuario, 
current_date as data_atual, 
prox_pgto, 
date_part('day', age(prox_pgto, current_date)) as tempoValidade
FROM pagamento; /*Calcula os dias restante da Assinatura (Com a funcao AGE e DATE_PART)*/

/*Exemplo 9.4.9*/
Select id_usuario, 
current_date as data_atual, ultm_pgto, 
extract('day' from ultm_pgto)
FROM pagamento; /*Dia do mes que sempre ocorrera o vencimento da Assinatura*/

