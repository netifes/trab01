CREATE TABLE pais(
	id_Pais SERIAL NOT NULL,
    pais VARCHAR(50),
    PRIMARY KEY(id_Pais)
);
CREATE TABLE acesso(
	id_Acesso SERIAL NOT NULL,
    acesso VARCHAR(50),
    PRIMARY KEY(id_Acesso)
);
CREATE TABLE filme (
    id_Filme SERIAL NOT NULL, 
    titulo VARCHAR(255), 
    subtitulo VARCHAR(255),
    sinopse TEXT,
    duracao INT,
    ano INT,
    capa VARCHAR(255),
    video VARCHAR(255),
    id_Pais INT NOT NULL,
    avaliacao FLOAT,
    visualizacoes INT,
    id_Acesso INT NOT NULL,
    PRIMARY KEY(id_Filme),
    FOREIGN KEY(id_Pais) REFERENCES pais(id_Pais),
    FOREIGN KEY(id_Acesso) REFERENCES acesso(id_Acesso)
);
CREATE TABLE contratado(
	id_Contratado SERIAL NOT NULL,
    nome VARCHAR (50),
    data_nascimento DATE,
    PRIMARY KEY(id_Contratado)
);
CREATE TABLE funcao(
	id_Funcao SERIAL NOT NULL,
    descricao VARCHAR (50),
    PRIMARY KEY(id_Funcao)
);
CREATE TABLE rel_Contratado_Funcao(
	id_Contratado INT NOT NULL,
    id_Funcao INT NOT NULL,
    FOREIGN KEY(id_Contratado) REFERENCES contratado(id_Contratado),
    FOREIGN KEY(id_Funcao) REFERENCES funcao(id_Funcao)
);
CREATE TABLE rel_Contratado_Filme(
	id_Filme INT NOT NULL,
    id_Contratado INT NOT NULL,
    FOREIGN KEY(id_Filme) REFERENCES filme(id_Filme),
    FOREIGN KEY(id_Contratado) REFERENCES contratado(id_Contratado)
);
CREATE TABLE tipo_Contato(
	id_Tipo_Contato SERIAL NOT NULL,
    descricao VARCHAR(50),
    PRIMARY KEY(id_Tipo_Contato)
);
CREATE TABLE usuario(
	id_Usuario SERIAL NOT NULL,
    login VARCHAR(50),
    senha VARCHAR(255),
    cpf BIGINT,
    ultimo_acesso TIMESTAMP,
    nome VARCHAR(50),
    sobrenome VARCHAR(50),
    data_nascimento DATE,
    PRIMARY KEY(id_Usuario)
);
CREATE TABLE pagamento (
	id_Usuario INT NOT NULL,
    ultm_pgto TIMESTAMP,
    prox_pgto TIMESTAMP,
    numero_cartao BIGINT,
    nome_cartao VARCHAR(50),
    validade_cartao DATE,
    FOREIGN KEY(id_Usuario) REFERENCES usuario(id_Usuario)
);
CREATE TABLE cidade(
	id_Cidade SERIAL NOT NULL,
    cidade VARCHAR(50),
    PRIMARY KEY(id_Cidade)
);
CREATE TABLE estado(
	id_Estado SERIAL NOT NULL,
    estado VARCHAR(50),
    PRIMARY KEY (id_Estado)
);
CREATE TABLE cep(
	id_Cep SERIAL NOT NULL,
    cep INT,
    endereco VARCHAR(50),
    id_Cidade INT NOT NULL,
    id_Estado INT NOT NULL,
    PRIMARY KEY(id_Cep),
    FOREIGN KEY(id_Cidade) REFERENCES cidade(id_Cidade),
    FOREIGN KEY(id_Estado) REFERENCES estado(id_Estado)
);
CREATE TABLE end_complemento(
	id_Usuario INT NOT NULL,
    complemento VARCHAR (255),
    numero INT,
    FOREIGN KEY(id_Usuario) REFERENCES usuario(id_Usuario)
);
CREATE TABLE status(
	id_Status SERIAL NOT NULL,
    status VARCHAR(50),
    PRIMARY KEY(id_Status)
);
CREATE TABLE modalidade (
	id_Modalidade SERIAL NOT NULL,
    modalidade VARCHAR(50),
    PRIMARY KEY(id_Modalidade)
);
CREATE TABLE rel_Usuario_Contato(
	id_Contato SERIAL NOT NULL,
    contato VARCHAR (50),
    id_Usuario INT NOT NULL,
    id_Tipo_Contato INT NOT NULL,
    PRIMARY KEY(id_Contato),
    FOREIGN KEY(id_Usuario) REFERENCES usuario(id_Usuario),
    FOREIGN KEY(id_Tipo_Contato) REFERENCES tipo_Contato(id_Tipo_Contato)
);
CREATE TABLE rel_Usuario_Status(
	id_Usuario INT NOT NULL,
    id_Status INT NOT NULL,
    FOREIGN KEY(id_Usuario) REFERENCES usuario(id_Usuario),
    FOREIGN KEY(id_Status) REFERENCES status(id_Status)
);
CREATE TABLE rel_Usuario_Modalidade(
	id_Usuario INT NOT NULL,
    id_Modalidade INT NOT NULL,
    FOREIGN KEY(id_Usuario) REFERENCES usuario(id_Usuario),
    FOREIGN KEY(id_Modalidade) REFERENCES modalidade(id_Modalidade)
);
CREATE TABLE bandeira(
	id_Bandeira SERIAL NOT NULL,
    bandeira VARCHAR(50),
    PRIMARY KEY(id_Bandeira)
);
CREATE TABLE rel_Usuario_Bandeira(
	id_Usuario INT NOT NULL,
    id_Bandeira INT NOT NULL,
    FOREIGN KEY(id_Usuario) REFERENCES usuario(id_Usuario),
    FOREIGN KEY(id_Bandeira) REFERENCES bandeira(id_Bandeira)
);
CREATE TABLE rel_Pais_Cep(
	id_Pais INT NOT NULL,
    id_Cep INT NOT NULL,
    FOREIGN KEY(id_Pais) REFERENCES pais(id_Pais),
    FOREIGN KEY(id_Cep) REFERENCES cep(id_Cep)
);
CREATE TABLE genero(
	id_Genero SERIAL NOT NULL,
    genero VARCHAR(50),
    PRIMARY KEY(id_Genero)
);
CREATE TABLE rel_Filme_Genero(
	id_Filme INT NOT NULL,
    id_Genero INT NOT NULL,
    FOREIGN KEY(id_Filme) REFERENCES filme(id_Filme),
    FOREIGN KEY(id_Genero) REFERENCES genero(id_Genero)
);
CREATE TABLE idioma(
	id_Idioma SERIAL NOT NULL,
    idioma VARCHAR(50),
    PRIMARY KEY(id_Idioma)
);
CREATE TABLE legenda(
	id_Legenda SERIAL NOT NULL,
    legenda VARCHAR(50),
    PRIMARY KEY(id_Legenda)
);
CREATE TABLE rel_Filme_Idioma(
	id_Filme INT NOT NULL,
    id_Idioma INT NOT NULL,
    FOREIGN KEY(id_Filme) REFERENCES filme(id_Filme),
    FOREIGN KEY(id_Idioma) REFERENCES idioma(id_Idioma)
);
CREATE TABLE rel_Filme_Legenda(
	id_Filme INT NOT NULL,
    id_Legenda INT NOT NULL,
    FOREIGN KEY(id_Filme) REFERENCES filme(id_Filme),
    FOREIGN KEY(id_Legenda) REFERENCES legenda(id_Legenda)
);
CREATE TABLE historico_visualizacao (
    id_Historico_visulizacao Serial,
	id_Usuario INT NOT NULL,
    id_Filme INT NOT NULL,
    data_inicio TIMESTAMP,
    data_fim TIMESTAMP,
    FOREIGN KEY(id_Usuario) REFERENCES usuario(id_usuario),
    FOREIGN KEY(id_Filme) REFERENCES filme(id_Filme) 
);
/*INSERT DADOS*/
INSERT INTO acesso (acesso) 
	VALUES ('Indisponível'), 
    ('Disponível');
    
INSERT INTO bandeira (bandeira) 
	VALUES ('VISA'), 
    ('MASTERCARD'), 
    ('BANESCARD');
    
INSERT INTO funcao (descricao)
	VALUES ('Ator'),
    ('Diretor');
    
INSERT INTO contratado (nome, data_nascimento) 
	VALUES ('Peter Jackson', '1999-01-02'), 
    ('Francis Ford Coppola', '1999-02-20'), 
    ('Robert Zemeckis', '1999-03-03'),
    ('George Lucas', '1999-04-30'),
    ('J. J. Abrams', '1999-05-04'),
    ('Christopher Nolan', '1999-06-05'),
    ('Guel Arraes', '1998-07-06'),
    ('Fernando Meirelles', '1998-08-07'),
    ('Allen Hughes ', '1998-09-08'),
    ('Chris Buck', '1998-10-15'),
    ('Jennifer Lee', '1997-11-25'),
    ('Elijah Wood', '1997-12-22'),
    ('Ian McKellen', '1989-01-23'),
    ('Liv Tyler', '1989-02-16'),
    ('Viggo Mortensen', '1989-03-24'),
    ('Sean Astin', '1989-04-26'),
    ('Cate Blanchett', '1989-05-27'),
    ('John Rhys-Davies', '1989-06-01'),
    ('Billy Boyd', '1989-07-10'),
    ('Marlon Brando', '1989-08-11'),
    ('Al Pacino', '1989-09-19'),
    ('James Caan', '1989-10-22'),
    ('Richard Castellano', '1989-11-27'),
    ('Robert Duvall', '1988-12-04'),
    ('Sterling Hayden', '1988-01-29'),
    ('John Marley', '1988-02-22'),
    ('Tom Hanks', '1988-03-21'),
    ('Robin Wright', '1988-04-14'),
    ('Gary Sinise', '1988-05-13'),
    ('Mark Hamill', '1988-06-23'),
    ('Harrison Ford', '1987-09-29'),
    ('Carrie Fisher', '1987-12-25'),
    ('Billy Dee Williams', '1987-02-22'),
    ('Anthony Daniels', '1987-04-14'),
    ('Daisy Ridley', '1987-06-28'),
    ('John Boyega', '1987-08-30'),
    ('Oscar Isaac', '1987-10-11'),
    ('Adam Driver', '1987-11-22'),
    ('Christian Bale', '1987-12-30'),
    ('Heath Ledger', '1986-05-15'),
    ('Aaron Eckhar', '1986-08-27'),
    ('Matheus Nachtergaele', '1986-12-13'),
    ('Selton Mello', '1985-03-03'),
    ('Denise Fraga', '1985-05-21'),
    ('Alexandre Rodrigues', '1985-07-17'),
    ('Leandro Firmino da Hora', '1985-09-29'),
    ('Phellipe Haagensen', '1987-11-13'),
    ('Denzel Washington', '1984-04-24'),
    ('Mila Kunis', '1982-07-17'),
    ('Gary Oldman', '1981-11-30,'),
    ('Kristen Bell', '1980-07-19'),
    ('Idina Menzel', '1979-01-01'),
    ('Jonathan Groff', '1978-02-09'),
    ('Josh Gad', '1977-06-07'),
    ('Santino Fontana', '1976-08-23'),
    ('Alan Tudyk', '1975-11-12');

INSERT INTO genero (genero)
	VALUES ('Animação'),
    ('Aventura'),
    ('Drama'),
    ('Ação'),
    ('Musical'),
    ('Terror'),
    ('Suspense'),
    ('Comédia'),
    ('Ficção cientifica'),
    ('Romance'),
    ('Fantaisa'),
    ('Documentário');
    
INSERT INTO idioma (idioma)
	VALUES ('Mandarin'),
    ('Espanhol'),
    ('Inglês'),
    ('Árabe'),
    ('Hindi'),
    ('Português'),
    ('Bengalês'),
    ('Russo'),
    ('Japonês'),
    ('Lahnda');
    
INSERT INTO legenda (legenda)
	VALUES ('Mandarin'),
    ('Espanhol'),
    ('Inglês'),
    ('Árabe'),
    ('Hindi'),
    ('Português'),
    ('Bengalês'),
    ('Russo'),
    ('Japonês'),
    ('Lahnda');
    
INSERT INTO modalidade (modalidade)
	VALUES ('Premium'),
    ('Simples'),
    ('Inativo');
    
INSERT INTO pais (pais)
	VALUES ('Estados Unidos'),
    ('Brasil'),
    ('Peru'),
    ('Chile'),
    ('Jamaica'),
    ('Venezuela'),
    ('África do Sul'),
    ('Alemanha'),
    ('Bélgica'),
    ('Canada'),
    ('Dinamarca'),
    ('Itália'),
    ('Espanha'),
    ('França'),
    ('Grécia'),
    ('Suécia'),
    ('Finlândia'),
    ('Polônia'),
    ('Irlanda'),
    ('Portugal'),
    ('Guatemala'),
    ('Honduras'),
    ('Paraguai'),
    ('Panamá'),
    ('Bolivia');
    
INSERT INTO status (status)
	VALUES ('Normal'),
    ('Bloqueado');
    
INSERT INTO tipo_Contato (descricao)
	VALUES ('Email'),
    ('Celular'),
    ('Telefone');

INSERT INTO usuario (login, senha, ultimo_acesso, nome, sobrenome, cpf, data_nascimento)
	VALUES ('isabellaGomesSousa@jourrapide.com', 'jndsuiHi8h', '2017-09-06 18:16:24', 'Isabella', 'Gomes Sousa', 32782754386, '1995-12-15'),
    ('brendaSouzaGomes@rhyta.com', 'queiP3lah5', '2017-09-06 15:22:03', 'Brenda', 'Souza Gomes', 26318271473, '1994-03-05'),
    ('matheusbarbosa@gmail.com', 'aik8mogeeSai', '2017-02-03 22:34:19', 'Matheus', 'Barbosa', 76538418481, '1989-05-19'),
    ('vitoriaCorreiaPereira@teleworm.us', 'Iciefie2xai4g', '2017-05-22 17:59:57', 'Vitoria', 'Correia Pereira', 50717187233, '1975-05-17'),
    ('juliabrandao@hotmail.com', 'Iciefie2xai4g', '2017-02-10 13:24:02', 'Julia', 'Brandão', 55774684423, '1987-11-12'),
    ('eduardoAraujoRocha@armyspy.com', 'ceecoph8EK0', '2017-09-04 19:10:14', 'Eduardo Araujo', 'Rocha', 46208317940, '1999-07-08'),
    ('aliceCostaAzevedo@armyspy.com', 'aik8mogeeSai', '2017-10-27 18:25:02', 'Alice', 'Costa Azevedo', 37801845676, '2002-04-24'),
    ('enzoOliveiraPinto@armyspy.com', 'aiw2taij9Fo', '2017-09-07 00:33:12', 'Enzo', 'Liveira Pinto', 77444792208, '1996-02-18'),
    ('silvawallace@gmail.com', 'aik8mogeeSai', '2017-09-04 23:11:08', 'Wallace', 'Silva', 30284609633, '1993-03-27'),
    ('estevanCunhaCastro@dayrep.com', 'abcxi123', '2017-09-05 16:25:34', 'Estevan', 'Cunha Castro', 47718288064, '1983-06-16');
    
INSERT INTO cidade (cidade) 
	VALUES ('Serra'), 
    ('Goiânia'), 
    ('Itabira'), 
    ('Rio de Janeiro'),
    ('Carapicuíba'), 
    ('Atibaia');
    
INSERT INTO estado (estado)
	VALUES ('Espirito Santo'),
    ('Goias'),
    ('Minas Gerais'),
    ('Rio de Janeiro'),
    ('São Paulo');
    
INSERT INTO cep (cep, endereco, id_Cidade, id_Estado)
	VALUES (5586090, 'Rua Leonardo Mota', 1, 1),
    (74477056, 'Rua A 31', 2, 2),
    (35900456, 'Rua Estrela', 3, 3),
    (17690190, 'Rua Alcindo Zorzi', 4, 4),
    (29175257, 'Rua Guacyra', 1, 1),
    (6397330, 'Rua Arujá1', 5, 5),
    (35900456, 'Rua Estrela', 3, 3),
    (29176797, 'Travessa Cristal', 1, 1),
    (35900456, 'Rua Estrela', 3, 3),
    (12944460, 'Rua Caramuru', 6, 5);
    
INSERT INTO end_complemento (id_Usuario, complemento, numero)
	VALUES (1, 'apto 305, Ed. Hortencia', 1916),
    (2, 'apto 405', 865),
    (3, 'apto 208', 393),
    (4, 'Proximo à pastelaria', 365),
    (5, 'Proximo à pastelaria', 365),
    (6, 'Proximo a caixa economica', 206),
    (7, 'proximo ao supermecado carone', 393),
    (8, 'Rua da Farmacia Santa Lucia', 659),
    (9, 'apto 809', 393),
    (10, 'apto 303, bloco A', 459);
    
INSERT INTO filme (titulo, subtitulo, sinopse, duracao, ano, capa, video, id_Pais, avaliacao, visualizacoes, id_Acesso)
	VALUES ('O Senhor dos Aneis', 'A Sociedade do Anel', 'Numa terra fantástica e única chamada Terra-Média um hobbit (seres de estatura entre 80 cm e 1m com pés peludos e bochechas um pouco avermelhadas) recebe de presente de seu tio o Um Anel um anel mágico e maligno que precisa ser destruído antes que caia nas mãos do mal. Para isso o hobbit Frodo (Elijah Woods) terá um caminho árduo pela frente onde encontrará perigo medo e personagens bizarros. Ao seu lado para o cumprimento desta jornada aos poucos ele poderá contar com outros hobbit um elfo um anão dois humanos e um mago totalizando 9 pessoas que formarão a Sociedade do Anel.', 178, 2001, 'https://upload.wikimedia.org/wikipedia/pt/0/0c/The_Fellowship_Of_The_Ring.jpg', 'https://www.youtube.com/watch?v=IUerKBZHnBs', 1, 4, 17456, 2),
    ('O Poderoso Chefão', '', 'Don Vito Corleone (Marlon Brando) é o chefe de uma "família" de Nova York que está feliz pois Connie (Talia Shire) sua filha se casou com Carlo (Gianni Russo). Porém durante a festa Bonasera (Salvatore Corsitto) é visto no escritório de Don Corleone pedindo "justiça" vingança na verdade contra membros de uma quadrilha que espancaram barbaramente sua filha por ela ter se recusado a fazer sexo para preservar a honra.', 175, 1972, 'https://upload.wikimedia.org/wikipedia/pt/7/71/Chef%C3%A3o.jpg', 'https://www.youtube.com/watch?v=SEPtyESN2Zw', 1, 5, 59890, 2),
    ('Forest Gump', 'O Contador de Histórias', 'Quarenta anos da história dos Estados Unidos vistos pelos olhos de Forrest Gump (Tom Hanks) um rapaz com QI abaixo da média e boas intenções. Por obra do acaso; ele consegue participar de momentos cruciais como a Guerra do Vietnã e Watergate mas continua pensando no seu amor de infância Jenny Curran.', 142, 1994, 'https://upload.wikimedia.org/wikipedia/pt/c/c0/ForrestGumpPoster.jpg', 'https://www.youtube.com/watch?v=bLvqoHBptjg', 1, 4, 43222, 2),
    ('Star Wars IV', 'Uma Nova Esperança', 'Luke Skywalker (Mark Hammil) sonha ir para a Academia como seus amigos mas se vê envolvido em uma guerra intergalática quando seu tio compra dois robôs e com eles encontra uma mensagem da princesa Leia Organa (Carrie Fisher) para o jedi Obi-Wan Kenobi (Alec Guiness) sobre os planos da construção da Estrela da Morte uma gigantesca estação espacial com capacidade para destruir um planeta. Luke então se junta aos cavaleiros jedi e a Hans Solo (Harrison Ford) um mercenário para tentar destruir esta terrível ameaça ao lado dos membros da resistência.', 121, 1977, 'https://upload.wikimedia.org/wikipedia/pt/8/87/StarWarsMoviePoster1977.jpg', 'https://www.youtube.com/watch?v=9gvqpFbRKtQ', 1, 5, 61231, 1),
    ('Star Wars VII', 'O Despertar da Força', 'Décadas após a queda de Darth Vader e do Império surge uma nova ameaça: a Primeira Ordem uma organização sombria que busca minar o poder da República e que tem Kylo Ren (Adam Driver) o General Hux (Domhnall Gleeson) e o Líder Supremo Snoke (Andy Serkis) como principais expoentes. Eles conseguem capturar Poe Dameron (Oscar Isaac) um dos principais pilotos da Resistência que antes de ser preso envia através do pequeno robô BB-8 o mapa de onde vive o mitológico Luke Skywalker (Mark Hamill). Ao fugir pelo deserto; BB-8 encontra a jovem Rey (Daisy Ridley) que vive sozinha catando destroços de naves antigas. Paralelamente Poe recebe a ajuda de Finn (John Boyega) um stormtrooper que decide abandonar o posto repentinamente. Juntos eles escapam do domínio da Primeira Ordem.', 137, 2015, 'https://upload.wikimedia.org/wikipedia/pt/a/ae/Starwars_06.jpg', 'https://www.youtube.com/watch?v=4r0287tUEgk', 1, 5, 2342, 1),
    ('Batman', 'O cavaleiro das trevas', 'Após dois anos desde o surgimento do Batman (Christian Bale) os criminosos de Gotham City têm muito o que temer. Com a ajuda do tenente James Gordon (Gary Oldman) e do promotor público Harvey Dent (Aaron Eckhart) Batman luta contra o crime organizado. Acuados com o combate os chefes do crime aceitam a proposta feita pelo Coringa (Heath Ledger) e o contratam para combater o Homem-Morcego.', 152, 2008, 'https://upload.wikimedia.org/wikipedia/pt/d/d1/The_Dark_Knight.jpg', 'https://www.youtube.com/watch?v=4gHh4TGxCK0', 1, 3, 27345, 2),
    ('O Auto da Compadecida', '', 'As aventuras dos nordestinos João Grilo (Matheus Natchergaele) um sertanejo pobre e mentiroso e Chicó (Selton Mello) o mais covarde dos homens. Ambos lutam pelo pão de cada dia e atravessam por vários episódios enganando a todos do pequeno vilarejo de Taperoá no sertão da Paraíba. A salvação da dupla acontece com a aparição da Nossa Senhora (Fernanda Montenegro). Adaptação da obra de Ariano Suassuna.', 104, 2000, 'https://upload.wikimedia.org/wikipedia/pt/b/bf/O_auto_da_compadecida.jpg', 'https://www.youtube.com/watch?v=XPuMu_ENzlg', 2, 3, 1290, 2),
    ('Cidade de Deus', '', 'Buscapé (Alexandre Rodrigues) é um jovem pobre negro e muito sensível que cresce em um universo de muita violência. Buscapé vive na Cidade de Deus favela carioca conhecida por ser um dos locais mais violentos da cidade. Amedrontado com a possibilidade de se tornar um bandido Buscapé acaba sendo salvo de seu destino por causa de seu talento como fotógrafo o qual permite que siga carreira na profissão. É através de seu olhar atrás da câmera que Buscapé analisa o dia-a-dia da favela onde vive onde a violência aparenta ser infinita.', 130, 2002, 'https://upload.wikimedia.org/wikipedia/pt/1/10/CidadedeDeus.jpg', 'https://www.youtube.com/watch?v=pUt-yPxOZqk', 2, 3, 12232, 1),
    ('O livro de Eli', '', 'Num futuro pós-apocalíptico onde a Terra fora devastada por uma guerra nuclear, Eli (Denzel Washington), um homem que vive perambulando há 30 anos em direção ao oeste, chega a um vilarejo cujo prefeito, um homem chamado Carnegie (Gary Oldman) procura incessantemente por um determinado livro que, segundo o próprio, trará a ele o poder para governar todas as outras cidades que existem, pois a obra que ele busca contém conhecimento para dominar as pessoas. Este livro é o livro que Eli tem em sua posse e que é o motivo que o faz viajar rumo ao Oeste, onde entregará o exemplar, que possivelmente seja o último.', 117, 2010, 'https://upload.wikimedia.org/wikipedia/pt/6/66/O-Livro-de-Eli-poster.jpg', 'https://www.youtube.com/watch?v=t3qJj_ljctE', 1, 3, 9106, 1),
    ('Frozen', 'O reino do gelo', 'A caçula Anna (Kristen Bell/Gabi Porto) adora sua irmã Elsa (Idina Menzel/Taryn Szpilman), mas um acidente envolvendo os poderes especiais da mais velha, durante a infância, fez com que os pais as mantivessem afastadas. Após a morte deles, as duas cresceram isoladas no castelo da família, até o dia em que Elsa deveria assumir o reinado de Arendell. Com o reencontro das duas, um novo acidente acontece e ela decide partir para sempre e se isolar do mundo, deixando todos para trás e provocando o congelamento do reino. É quando Anna decide se aventurar pelas montanhas de gelo para encontrar a irmã e acabar com o frio.', 102, 2013, 'https://upload.wikimedia.org/wikipedia/pt/c/cf/P%C3%B4ster_de_Frozen.png', 'https://www.youtube.com/watch?v=TbQm5doF_Uc', 1, 5, 65710, 1);
    
INSERT INTO pagamento (id_Usuario, ultm_pgto, prox_pgto, numero_cartao, nome_cartao, validade_cartao)
	VALUES (1, '2017-02-12', '2017-03-12', 5193343088452305, 'Isabella G Sousa', '2021-03-31'),
    (2, '2015-10-26', '2015-11-26', 5476060436452229, 'Brenda S Gomes', '2022-12-31'),
    (3, '2015-12-31', '2016-01-31', 4539441417994785, 'Alice C Azevedo', '2021-05-31'),
    (4, '2017-02-12', '2017-03-12', 4485382490983663, 'Vitoria C Pereira', '2021-11-30'),
    (5, '2015-10-26', '2015-11-26', 4485382490983663, 'Vitoria C Pereira', '2021-11-30'),
    (6, '2015-12-31', '2016-01-31', 4929550193700279, 'Eduardo A Rocha', '2022-07-30'),
    (7, '2017-02-12', '2017-03-12', 4539441417994785, 'Alice C Azevedo', '2021-05-31'),
    (8, '2015-10-26', '2015-11-26', 5298458894254671, 'Enzo L Pinto', '2021-08-31'),
    (9, '2015-12-31', '2016-01-31', 4539441417994785, 'Alice C Azevedo', '2021-05-31'),
    (10, '2015-12-31', '2016-01-31', 5376669388825587, 'Estevan C Castro', '2021-08-31');
    
INSERT INTO rel_Usuario_Contato(id_Usuario, id_Tipo_contato, contato)
	VALUES (1, 1,'isabellaGomesSousa@jourrapide.com'),
    (1,2,'998352120'),
    (2,1,'brendaSouzaGomes@rhyta.com'),
    (2,2,'988372425'),
    (2,3,'32348596'),
    (3,1,'matheusbarbosa@gmail.com'),
    (4,1,'vitoriaCorreiaPereira@teleworm.us'),
    (5,1,'juliabrandao@hotmail.com'),
    (6,1,'eduardoAraujoRocha@armyspy.com'),
    (6,3,'31315545'),
    (7,1,'aliceCostaAzevedo@armyspy.com'),
    (7,2,'998660323'),
    (8,1,'enzoOliveiraPinto@armyspy.com'),
    (8,2,'995256323'),
    (8,3,'35254595'),
    (9,1,'silvawallace@gmail.com'),
    (10,1,'estevanCunhaCastro@dayrep.com'),
    (10,2,'995157222');
    
INSERT INTO rel_filme_genero (id_Filme, id_Genero)
	VALUES (1, 2),
    (2, 2),
    (3, 8),
    (4, 2),
    (5, 2),
    (6, 4),
    (7, 8),
    (8, 3),
    (9, 3),
    (10, 5);
    
INSERT INTO rel_filme_idioma (id_Filme, id_Idioma)
	VALUES (1, 3),
    (2, 3),
    (4, 3),
    (5, 3),
    (6, 6),
    (7, 6),
    (8, 3),
    (9, 3),
    (10, 3);

INSERT INTO rel_filme_legenda(id_Filme, id_Legenda)
	VALUES (1,6),
    (2,6),
    (3,6),
    (4,6),
    (5,6),
    (6,6),
    (7,6),
    (8,6),
    (9,6),
    (10,6);
   
INSERT INTO rel_pais_cep (id_Pais, id_Cep)
	VALUES (2, 1),
    (2, 2),
    (2, 3),
    (2, 4),
    (2, 5),
    (2, 6),
    (2, 7),
    (2, 8),
    (2, 9),
    (2, 10);

INSERT INTO rel_usuario_bandeira (id_Usuario, id_Bandeira)
	VALUES (1,2),
    (2,2),
    (3,3),
    (4,1),
    (5,1),
    (6,1),
    (7,3),
    (8,2),
    (9,3),
    (10,2);
   
INSERT INTO rel_usuario_modalidade (id_Usuario, id_Modalidade)
	VALUES (1,1),
    (2,2),
    (3,3),
    (4,1),
    (5,2),
    (6,1),
    (7,1),
    (8,1),
    (9,2),
    (10,2);
    
INSERT INTO rel_usuario_status (id_Usuario, id_Status)
	VALUES (1,1),
    (1,1),
    (1,1),
    (1,1),
    (1,1),
    (1,1),
    (1,1),
    (1,2),
    (1,1),
    (1,1);
    
INSERT INTO rel_Contratado_Funcao(id_Contratado, id_Funcao)
	VALUES (1,2),
    (2,2),
    (3,2),
    (4,2),
    (5,2),
    (6,2),
    (7,2),
    (8,2),
    (9,2),
    (10,2),
    (11,2),
    (12,1),
    (13,1),
    (14,1),
    (15,1),
    (16,1),
    (17,1),
    (18,1),
    (19,1),
    (20,1),
    (21,1),
    (22,1),
    (23,1),
    (24,1),
    (25,1),
    (26,1),
    (27,1),
    (28,1),
    (29,1),
    (30,1),
    (31,1),
    (32,1),
    (33,1),
    (34,1),
    (35,1),
    (36,1),
    (37,1),
    (38,1),
    (39,1),
    (40,1),
    (41,1),
    (42,1),
    (43,1),
    (44,1),
    (45,1),
    (46,1),
    (47,1),
    (48,1),
    (49,1),
    (50,1),
    (51,1),
    (52,1),
    (53,1),
    (54,1),
    (55,1),
    (56,1);
    
INSERT INTO rel_Contratado_Filme(id_Contratado, id_Filme)
	VALUES (1,1),
    (2,2),
    (3,3),
    (4,4),
    (5,5),
    (6,6),
    (7,7),
    (8,8),
    (9,9),
    (10,10),
    (11,10),
    (12,1),
    (13,1),
    (14,1),
    (15,1),
    (16,1),
    (17,1),
    (18,1),
    (19,1),
    (20,2),
    (21,2),
    (22,2),
    (23,2),
    (24,2),
    (25,2),
    (26,3),
    (27,3),
    (28,3),
    (29,4),
    (30,4),
    (31,4),
    (32,4),
    (33,4),
    (34,5),
    (35,5),
    (36,5),
    (37,5),
    (38,5),
    (39,5),
    (40,6),
    (41,6),
    (42,6),
    (43,7),
    (44,7),
    (45,7),
    (46,8),
    (47,8),
    (48,8),
    (49,9),
    (50,9),
    (51,9),
    (52,10),
    (53,10),
    (54,10),
    (55,10),
    (56,10);

INSERT INTO historico_visualizacao(id_usuario, id_Filme, data_inicio, data_fim)
	VALUES(1,5,'2017-11-05 11:54:12', '2017-11-05 14:10:22'),
    (1,1,'2017-11-05 14:16:23', '2017-11-05 19:23:11'),
    (1,7,'2017-11-06 18:33:14', '2017-11-06 20:01:25'),
    (2,7,'2017-11-04 15:35:58', '2017-11-04 18:03:14'),
    (3,1,'2017-12-01 14:21:13', '2017-12-01 16:15:41'),
    (3,2,'2017-12-01 18:21:14', '2017-12-01 22:54:12'),
    (3,3,'2017-12-01 23:54:12', '2017-12-02 04:54:11'),
    (3,6,'2017-12-21 13:01:19', '2017-12-22 17:22:01'),
    (4,8,'2018-01-15 15:07:19', '2018-01-17 17:33:01'),
    (5,4,'2018-01-15 15:01:56', '2017-01-15 18:02:03'),
    (6,7,'2017-11-04 15:35:58', '2017-11-04 18:03:14'),
    (7,8,'2017-12-01 14:21:13', '2017-12-01 16:15:41'),
    (7,9,'2017-12-01 18:21:14', '2017-12-01 22:54:12'),
    (7,10,'2017-12-01 23:54:12', '2017-12-02 04:54:11'),
    (7,4,'2017-12-21 13:01:19', '2017-12-22 17:22:01'),
    (8,3,'2017-11-05 14:16:23', '2017-11-05 19:23:11'),
    (10,1,'2017-10-05 13:10:09', '2017-10-05 17:11');