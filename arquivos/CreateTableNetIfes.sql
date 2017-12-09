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