PGDMP     1    &                u           netifes2    10.0    10.0 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           1262    25084    netifes2    DATABASE     �   CREATE DATABASE netifes2 WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';
    DROP DATABASE netifes2;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    25397    acesso    TABLE     Z   CREATE TABLE acesso (
    id_acesso integer NOT NULL,
    acesso character varying(50)
);
    DROP TABLE public.acesso;
       public         postgres    false    3            �            1259    25395    acesso_id_acesso_seq    SEQUENCE     �   CREATE SEQUENCE acesso_id_acesso_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.acesso_id_acesso_seq;
       public       postgres    false    3    199                        0    0    acesso_id_acesso_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE acesso_id_acesso_seq OWNED BY acesso.id_acesso;
            public       postgres    false    198            �            1259    25594    bandeira    TABLE     `   CREATE TABLE bandeira (
    id_bandeira integer NOT NULL,
    bandeira character varying(50)
);
    DROP TABLE public.bandeira;
       public         postgres    false    3            �            1259    25592    bandeira_id_bandeira_seq    SEQUENCE     �   CREATE SEQUENCE bandeira_id_bandeira_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.bandeira_id_bandeira_seq;
       public       postgres    false    229    3                       0    0    bandeira_id_bandeira_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE bandeira_id_bandeira_seq OWNED BY bandeira.id_bandeira;
            public       postgres    false    228            �            1259    25508    cep    TABLE     �   CREATE TABLE cep (
    id_cep integer NOT NULL,
    cep integer,
    endereco character varying(50),
    id_cidade integer NOT NULL,
    id_estado integer NOT NULL
);
    DROP TABLE public.cep;
       public         postgres    false    3            �            1259    25506    cep_id_cep_seq    SEQUENCE        CREATE SEQUENCE cep_id_cep_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.cep_id_cep_seq;
       public       postgres    false    218    3                       0    0    cep_id_cep_seq    SEQUENCE OWNED BY     3   ALTER SEQUENCE cep_id_cep_seq OWNED BY cep.id_cep;
            public       postgres    false    217            �            1259    25492    cidade    TABLE     Z   CREATE TABLE cidade (
    id_cidade integer NOT NULL,
    cidade character varying(50)
);
    DROP TABLE public.cidade;
       public         postgres    false    3            �            1259    25490    cidade_id_cidade_seq    SEQUENCE     �   CREATE SEQUENCE cidade_id_cidade_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.cidade_id_cidade_seq;
       public       postgres    false    214    3                       0    0    cidade_id_cidade_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE cidade_id_cidade_seq OWNED BY cidade.id_cidade;
            public       postgres    false    213            �            1259    25426 
   contratado    TABLE     z   CREATE TABLE contratado (
    id_contratado integer NOT NULL,
    nome character varying(50),
    data_nascimento date
);
    DROP TABLE public.contratado;
       public         postgres    false    3            �            1259    25424    contratado_id_contratado_seq    SEQUENCE     �   CREATE SEQUENCE contratado_id_contratado_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.contratado_id_contratado_seq;
       public       postgres    false    3    203                       0    0    contratado_id_contratado_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE contratado_id_contratado_seq OWNED BY contratado.id_contratado;
            public       postgres    false    202            �            1259    25524    end_complemento    TABLE     ~   CREATE TABLE end_complemento (
    id_usuario integer NOT NULL,
    complemento character varying(255),
    numero integer
);
 #   DROP TABLE public.end_complemento;
       public         postgres    false    3            �            1259    25500    estado    TABLE     Z   CREATE TABLE estado (
    id_estado integer NOT NULL,
    estado character varying(50)
);
    DROP TABLE public.estado;
       public         postgres    false    3            �            1259    25498    estado_id_estado_seq    SEQUENCE     �   CREATE SEQUENCE estado_id_estado_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.estado_id_estado_seq;
       public       postgres    false    3    216                       0    0    estado_id_estado_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE estado_id_estado_seq OWNED BY estado.id_estado;
            public       postgres    false    215            �            1259    25405    filme    TABLE     s  CREATE TABLE filme (
    id_filme integer NOT NULL,
    titulo character varying(255),
    subtitulo character varying(255),
    sinopse text,
    duracao integer,
    ano integer,
    capa character varying(255),
    video character varying(255),
    id_pais integer NOT NULL,
    avaliacao double precision,
    visualizacoes integer,
    id_acesso integer NOT NULL
);
    DROP TABLE public.filme;
       public         postgres    false    3            �            1259    25403    filme_id_filme_seq    SEQUENCE     �   CREATE SEQUENCE filme_id_filme_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.filme_id_filme_seq;
       public       postgres    false    201    3                       0    0    filme_id_filme_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE filme_id_filme_seq OWNED BY filme.id_filme;
            public       postgres    false    200            �            1259    25434    funcao    TABLE     ]   CREATE TABLE funcao (
    id_funcao integer NOT NULL,
    descricao character varying(50)
);
    DROP TABLE public.funcao;
       public         postgres    false    3            �            1259    25432    funcao_id_funcao_seq    SEQUENCE     �   CREATE SEQUENCE funcao_id_funcao_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.funcao_id_funcao_seq;
       public       postgres    false    3    205                       0    0    funcao_id_funcao_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE funcao_id_funcao_seq OWNED BY funcao.id_funcao;
            public       postgres    false    204            �            1259    25628    genero    TABLE     Z   CREATE TABLE genero (
    id_genero integer NOT NULL,
    genero character varying(50)
);
    DROP TABLE public.genero;
       public         postgres    false    3            �            1259    25626    genero_id_genero_seq    SEQUENCE     �   CREATE SEQUENCE genero_id_genero_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.genero_id_genero_seq;
       public       postgres    false    3    233                       0    0    genero_id_genero_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE genero_id_genero_seq OWNED BY genero.id_genero;
            public       postgres    false    232            �            1259    25691    historico_visualizacao    TABLE     �   CREATE TABLE historico_visualizacao (
    id_historico_visulizacao integer NOT NULL,
    id_usuario integer NOT NULL,
    id_filme integer NOT NULL,
    data_inicio timestamp without time zone,
    data_fim timestamp without time zone
);
 *   DROP TABLE public.historico_visualizacao;
       public         postgres    false    3            �            1259    25689 3   historico_visualizacao_id_historico_visulizacao_seq    SEQUENCE     �   CREATE SEQUENCE historico_visualizacao_id_historico_visulizacao_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 J   DROP SEQUENCE public.historico_visualizacao_id_historico_visulizacao_seq;
       public       postgres    false    3    242            	           0    0 3   historico_visualizacao_id_historico_visulizacao_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE historico_visualizacao_id_historico_visulizacao_seq OWNED BY historico_visualizacao.id_historico_visulizacao;
            public       postgres    false    241            �            1259    25649    idioma    TABLE     Z   CREATE TABLE idioma (
    id_idioma integer NOT NULL,
    idioma character varying(50)
);
    DROP TABLE public.idioma;
       public         postgres    false    3            �            1259    25647    idioma_id_idioma_seq    SEQUENCE     �   CREATE SEQUENCE idioma_id_idioma_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.idioma_id_idioma_seq;
       public       postgres    false    3    236            
           0    0    idioma_id_idioma_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE idioma_id_idioma_seq OWNED BY idioma.id_idioma;
            public       postgres    false    235            �            1259    25657    legenda    TABLE     ]   CREATE TABLE legenda (
    id_legenda integer NOT NULL,
    legenda character varying(50)
);
    DROP TABLE public.legenda;
       public         postgres    false    3            �            1259    25655    legenda_id_legenda_seq    SEQUENCE     �   CREATE SEQUENCE legenda_id_legenda_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.legenda_id_legenda_seq;
       public       postgres    false    3    238                       0    0    legenda_id_legenda_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE legenda_id_legenda_seq OWNED BY legenda.id_legenda;
            public       postgres    false    237            �            1259    25542 
   modalidade    TABLE     f   CREATE TABLE modalidade (
    id_modalidade integer NOT NULL,
    modalidade character varying(50)
);
    DROP TABLE public.modalidade;
       public         postgres    false    3            �            1259    25540    modalidade_id_modalidade_seq    SEQUENCE     �   CREATE SEQUENCE modalidade_id_modalidade_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.modalidade_id_modalidade_seq;
       public       postgres    false    223    3                       0    0    modalidade_id_modalidade_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE modalidade_id_modalidade_seq OWNED BY modalidade.id_modalidade;
            public       postgres    false    222            �            1259    25482 	   pagamento    TABLE     �   CREATE TABLE pagamento (
    id_usuario integer NOT NULL,
    ultm_pgto timestamp without time zone,
    prox_pgto timestamp without time zone,
    numero_cartao bigint,
    nome_cartao character varying(50),
    validade_cartao date
);
    DROP TABLE public.pagamento;
       public         postgres    false    3            �            1259    25389    pais    TABLE     T   CREATE TABLE pais (
    id_pais integer NOT NULL,
    pais character varying(50)
);
    DROP TABLE public.pais;
       public         postgres    false    3            �            1259    25387    pais_id_pais_seq    SEQUENCE     �   CREATE SEQUENCE pais_id_pais_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.pais_id_pais_seq;
       public       postgres    false    3    197                       0    0    pais_id_pais_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE pais_id_pais_seq OWNED BY pais.id_pais;
            public       postgres    false    196            �            1259    25453    rel_contratado_filme    TABLE     i   CREATE TABLE rel_contratado_filme (
    id_filme integer NOT NULL,
    id_contratado integer NOT NULL
);
 (   DROP TABLE public.rel_contratado_filme;
       public         postgres    false    3            �            1259    25440    rel_contratado_funcao    TABLE     k   CREATE TABLE rel_contratado_funcao (
    id_contratado integer NOT NULL,
    id_funcao integer NOT NULL
);
 )   DROP TABLE public.rel_contratado_funcao;
       public         postgres    false    3            �            1259    25634    rel_filme_genero    TABLE     a   CREATE TABLE rel_filme_genero (
    id_filme integer NOT NULL,
    id_genero integer NOT NULL
);
 $   DROP TABLE public.rel_filme_genero;
       public         postgres    false    3            �            1259    25663    rel_filme_idioma    TABLE     a   CREATE TABLE rel_filme_idioma (
    id_filme integer NOT NULL,
    id_idioma integer NOT NULL
);
 $   DROP TABLE public.rel_filme_idioma;
       public         postgres    false    3            �            1259    25676    rel_filme_legenda    TABLE     c   CREATE TABLE rel_filme_legenda (
    id_filme integer NOT NULL,
    id_legenda integer NOT NULL
);
 %   DROP TABLE public.rel_filme_legenda;
       public         postgres    false    3            �            1259    25613    rel_pais_cep    TABLE     Y   CREATE TABLE rel_pais_cep (
    id_pais integer NOT NULL,
    id_cep integer NOT NULL
);
     DROP TABLE public.rel_pais_cep;
       public         postgres    false    3            �            1259    25600    rel_usuario_bandeira    TABLE     i   CREATE TABLE rel_usuario_bandeira (
    id_usuario integer NOT NULL,
    id_bandeira integer NOT NULL
);
 (   DROP TABLE public.rel_usuario_bandeira;
       public         postgres    false    3            �            1259    25550    rel_usuario_contato    TABLE     �   CREATE TABLE rel_usuario_contato (
    id_contato integer NOT NULL,
    contato character varying(50),
    id_usuario integer NOT NULL,
    id_tipo_contato integer NOT NULL
);
 '   DROP TABLE public.rel_usuario_contato;
       public         postgres    false    3            �            1259    25548 "   rel_usuario_contato_id_contato_seq    SEQUENCE     �   CREATE SEQUENCE rel_usuario_contato_id_contato_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.rel_usuario_contato_id_contato_seq;
       public       postgres    false    3    225                       0    0 "   rel_usuario_contato_id_contato_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE rel_usuario_contato_id_contato_seq OWNED BY rel_usuario_contato.id_contato;
            public       postgres    false    224            �            1259    25579    rel_usuario_modalidade    TABLE     m   CREATE TABLE rel_usuario_modalidade (
    id_usuario integer NOT NULL,
    id_modalidade integer NOT NULL
);
 *   DROP TABLE public.rel_usuario_modalidade;
       public         postgres    false    3            �            1259    25566    rel_usuario_status    TABLE     e   CREATE TABLE rel_usuario_status (
    id_usuario integer NOT NULL,
    id_status integer NOT NULL
);
 &   DROP TABLE public.rel_usuario_status;
       public         postgres    false    3            �            1259    25534    status    TABLE     Z   CREATE TABLE status (
    id_status integer NOT NULL,
    status character varying(50)
);
    DROP TABLE public.status;
       public         postgres    false    3            �            1259    25532    status_id_status_seq    SEQUENCE     �   CREATE SEQUENCE status_id_status_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.status_id_status_seq;
       public       postgres    false    3    221                       0    0    status_id_status_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE status_id_status_seq OWNED BY status.id_status;
            public       postgres    false    220            �            1259    25468    tipo_contato    TABLE     i   CREATE TABLE tipo_contato (
    id_tipo_contato integer NOT NULL,
    descricao character varying(50)
);
     DROP TABLE public.tipo_contato;
       public         postgres    false    3            �            1259    25466     tipo_contato_id_tipo_contato_seq    SEQUENCE     �   CREATE SEQUENCE tipo_contato_id_tipo_contato_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.tipo_contato_id_tipo_contato_seq;
       public       postgres    false    3    209                       0    0     tipo_contato_id_tipo_contato_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE tipo_contato_id_tipo_contato_seq OWNED BY tipo_contato.id_tipo_contato;
            public       postgres    false    208            �            1259    25476    usuario    TABLE       CREATE TABLE usuario (
    id_usuario integer NOT NULL,
    login character varying(50),
    senha character varying(255),
    cpf bigint,
    ultimo_acesso timestamp without time zone,
    nome character varying(50),
    sobrenome character varying(50),
    data_nascimento date
);
    DROP TABLE public.usuario;
       public         postgres    false    3            �            1259    25474    usuario_id_usuario_seq    SEQUENCE     �   CREATE SEQUENCE usuario_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.usuario_id_usuario_seq;
       public       postgres    false    3    211                       0    0    usuario_id_usuario_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE usuario_id_usuario_seq OWNED BY usuario.id_usuario;
            public       postgres    false    210                       2604    25400    acesso id_acesso    DEFAULT     f   ALTER TABLE ONLY acesso ALTER COLUMN id_acesso SET DEFAULT nextval('acesso_id_acesso_seq'::regclass);
 ?   ALTER TABLE public.acesso ALTER COLUMN id_acesso DROP DEFAULT;
       public       postgres    false    199    198    199                       2604    25597    bandeira id_bandeira    DEFAULT     n   ALTER TABLE ONLY bandeira ALTER COLUMN id_bandeira SET DEFAULT nextval('bandeira_id_bandeira_seq'::regclass);
 C   ALTER TABLE public.bandeira ALTER COLUMN id_bandeira DROP DEFAULT;
       public       postgres    false    228    229    229            
           2604    25511 
   cep id_cep    DEFAULT     Z   ALTER TABLE ONLY cep ALTER COLUMN id_cep SET DEFAULT nextval('cep_id_cep_seq'::regclass);
 9   ALTER TABLE public.cep ALTER COLUMN id_cep DROP DEFAULT;
       public       postgres    false    218    217    218                       2604    25495    cidade id_cidade    DEFAULT     f   ALTER TABLE ONLY cidade ALTER COLUMN id_cidade SET DEFAULT nextval('cidade_id_cidade_seq'::regclass);
 ?   ALTER TABLE public.cidade ALTER COLUMN id_cidade DROP DEFAULT;
       public       postgres    false    213    214    214                       2604    25429    contratado id_contratado    DEFAULT     v   ALTER TABLE ONLY contratado ALTER COLUMN id_contratado SET DEFAULT nextval('contratado_id_contratado_seq'::regclass);
 G   ALTER TABLE public.contratado ALTER COLUMN id_contratado DROP DEFAULT;
       public       postgres    false    203    202    203            	           2604    25503    estado id_estado    DEFAULT     f   ALTER TABLE ONLY estado ALTER COLUMN id_estado SET DEFAULT nextval('estado_id_estado_seq'::regclass);
 ?   ALTER TABLE public.estado ALTER COLUMN id_estado DROP DEFAULT;
       public       postgres    false    215    216    216                       2604    25408    filme id_filme    DEFAULT     b   ALTER TABLE ONLY filme ALTER COLUMN id_filme SET DEFAULT nextval('filme_id_filme_seq'::regclass);
 =   ALTER TABLE public.filme ALTER COLUMN id_filme DROP DEFAULT;
       public       postgres    false    201    200    201                       2604    25437    funcao id_funcao    DEFAULT     f   ALTER TABLE ONLY funcao ALTER COLUMN id_funcao SET DEFAULT nextval('funcao_id_funcao_seq'::regclass);
 ?   ALTER TABLE public.funcao ALTER COLUMN id_funcao DROP DEFAULT;
       public       postgres    false    205    204    205                       2604    25631    genero id_genero    DEFAULT     f   ALTER TABLE ONLY genero ALTER COLUMN id_genero SET DEFAULT nextval('genero_id_genero_seq'::regclass);
 ?   ALTER TABLE public.genero ALTER COLUMN id_genero DROP DEFAULT;
       public       postgres    false    233    232    233                       2604    25694 /   historico_visualizacao id_historico_visulizacao    DEFAULT     �   ALTER TABLE ONLY historico_visualizacao ALTER COLUMN id_historico_visulizacao SET DEFAULT nextval('historico_visualizacao_id_historico_visulizacao_seq'::regclass);
 ^   ALTER TABLE public.historico_visualizacao ALTER COLUMN id_historico_visulizacao DROP DEFAULT;
       public       postgres    false    242    241    242                       2604    25652    idioma id_idioma    DEFAULT     f   ALTER TABLE ONLY idioma ALTER COLUMN id_idioma SET DEFAULT nextval('idioma_id_idioma_seq'::regclass);
 ?   ALTER TABLE public.idioma ALTER COLUMN id_idioma DROP DEFAULT;
       public       postgres    false    235    236    236                       2604    25660    legenda id_legenda    DEFAULT     j   ALTER TABLE ONLY legenda ALTER COLUMN id_legenda SET DEFAULT nextval('legenda_id_legenda_seq'::regclass);
 A   ALTER TABLE public.legenda ALTER COLUMN id_legenda DROP DEFAULT;
       public       postgres    false    237    238    238                       2604    25545    modalidade id_modalidade    DEFAULT     v   ALTER TABLE ONLY modalidade ALTER COLUMN id_modalidade SET DEFAULT nextval('modalidade_id_modalidade_seq'::regclass);
 G   ALTER TABLE public.modalidade ALTER COLUMN id_modalidade DROP DEFAULT;
       public       postgres    false    223    222    223                       2604    25392    pais id_pais    DEFAULT     ^   ALTER TABLE ONLY pais ALTER COLUMN id_pais SET DEFAULT nextval('pais_id_pais_seq'::regclass);
 ;   ALTER TABLE public.pais ALTER COLUMN id_pais DROP DEFAULT;
       public       postgres    false    197    196    197                       2604    25553    rel_usuario_contato id_contato    DEFAULT     �   ALTER TABLE ONLY rel_usuario_contato ALTER COLUMN id_contato SET DEFAULT nextval('rel_usuario_contato_id_contato_seq'::regclass);
 M   ALTER TABLE public.rel_usuario_contato ALTER COLUMN id_contato DROP DEFAULT;
       public       postgres    false    225    224    225                       2604    25537    status id_status    DEFAULT     f   ALTER TABLE ONLY status ALTER COLUMN id_status SET DEFAULT nextval('status_id_status_seq'::regclass);
 ?   ALTER TABLE public.status ALTER COLUMN id_status DROP DEFAULT;
       public       postgres    false    220    221    221                       2604    25471    tipo_contato id_tipo_contato    DEFAULT     ~   ALTER TABLE ONLY tipo_contato ALTER COLUMN id_tipo_contato SET DEFAULT nextval('tipo_contato_id_tipo_contato_seq'::regclass);
 K   ALTER TABLE public.tipo_contato ALTER COLUMN id_tipo_contato DROP DEFAULT;
       public       postgres    false    209    208    209                       2604    25479    usuario id_usuario    DEFAULT     j   ALTER TABLE ONLY usuario ALTER COLUMN id_usuario SET DEFAULT nextval('usuario_id_usuario_seq'::regclass);
 A   ALTER TABLE public.usuario ALTER COLUMN id_usuario DROP DEFAULT;
       public       postgres    false    211    210    211            �          0    25397    acesso 
   TABLE DATA               ,   COPY acesso (id_acesso, acesso) FROM stdin;
    public       postgres    false    199   '�       �          0    25594    bandeira 
   TABLE DATA               2   COPY bandeira (id_bandeira, bandeira) FROM stdin;
    public       postgres    false    229   Y�       �          0    25508    cep 
   TABLE DATA               C   COPY cep (id_cep, cep, endereco, id_cidade, id_estado) FROM stdin;
    public       postgres    false    218   ��       �          0    25492    cidade 
   TABLE DATA               ,   COPY cidade (id_cidade, cidade) FROM stdin;
    public       postgres    false    214   ^�       �          0    25426 
   contratado 
   TABLE DATA               C   COPY contratado (id_contratado, nome, data_nascimento) FROM stdin;
    public       postgres    false    203   ��       �          0    25524    end_complemento 
   TABLE DATA               C   COPY end_complemento (id_usuario, complemento, numero) FROM stdin;
    public       postgres    false    219   [�       �          0    25500    estado 
   TABLE DATA               ,   COPY estado (id_estado, estado) FROM stdin;
    public       postgres    false    216   $�       �          0    25405    filme 
   TABLE DATA               �   COPY filme (id_filme, titulo, subtitulo, sinopse, duracao, ano, capa, video, id_pais, avaliacao, visualizacoes, id_acesso) FROM stdin;
    public       postgres    false    201   ��       �          0    25434    funcao 
   TABLE DATA               /   COPY funcao (id_funcao, descricao) FROM stdin;
    public       postgres    false    205   W�       �          0    25628    genero 
   TABLE DATA               ,   COPY genero (id_genero, genero) FROM stdin;
    public       postgres    false    233   ��       �          0    25691    historico_visualizacao 
   TABLE DATA               p   COPY historico_visualizacao (id_historico_visulizacao, id_usuario, id_filme, data_inicio, data_fim) FROM stdin;
    public       postgres    false    242   �       �          0    25649    idioma 
   TABLE DATA               ,   COPY idioma (id_idioma, idioma) FROM stdin;
    public       postgres    false    236   �       �          0    25657    legenda 
   TABLE DATA               /   COPY legenda (id_legenda, legenda) FROM stdin;
    public       postgres    false    238   ��       �          0    25542 
   modalidade 
   TABLE DATA               8   COPY modalidade (id_modalidade, modalidade) FROM stdin;
    public       postgres    false    223   �       �          0    25482 	   pagamento 
   TABLE DATA               k   COPY pagamento (id_usuario, ultm_pgto, prox_pgto, numero_cartao, nome_cartao, validade_cartao) FROM stdin;
    public       postgres    false    212   N�       �          0    25389    pais 
   TABLE DATA               &   COPY pais (id_pais, pais) FROM stdin;
    public       postgres    false    197   ��       �          0    25453    rel_contratado_filme 
   TABLE DATA               @   COPY rel_contratado_filme (id_filme, id_contratado) FROM stdin;
    public       postgres    false    207   ��       �          0    25440    rel_contratado_funcao 
   TABLE DATA               B   COPY rel_contratado_funcao (id_contratado, id_funcao) FROM stdin;
    public       postgres    false    206   �       �          0    25634    rel_filme_genero 
   TABLE DATA               8   COPY rel_filme_genero (id_filme, id_genero) FROM stdin;
    public       postgres    false    234   ��       �          0    25663    rel_filme_idioma 
   TABLE DATA               8   COPY rel_filme_idioma (id_filme, id_idioma) FROM stdin;
    public       postgres    false    239   ��       �          0    25676    rel_filme_legenda 
   TABLE DATA               :   COPY rel_filme_legenda (id_filme, id_legenda) FROM stdin;
    public       postgres    false    240   �       �          0    25613    rel_pais_cep 
   TABLE DATA               0   COPY rel_pais_cep (id_pais, id_cep) FROM stdin;
    public       postgres    false    231   =�       �          0    25600    rel_usuario_bandeira 
   TABLE DATA               @   COPY rel_usuario_bandeira (id_usuario, id_bandeira) FROM stdin;
    public       postgres    false    230   w�       �          0    25550    rel_usuario_contato 
   TABLE DATA               X   COPY rel_usuario_contato (id_contato, contato, id_usuario, id_tipo_contato) FROM stdin;
    public       postgres    false    225   ��       �          0    25579    rel_usuario_modalidade 
   TABLE DATA               D   COPY rel_usuario_modalidade (id_usuario, id_modalidade) FROM stdin;
    public       postgres    false    227   �       �          0    25566    rel_usuario_status 
   TABLE DATA               <   COPY rel_usuario_status (id_usuario, id_status) FROM stdin;
    public       postgres    false    226   @�       �          0    25534    status 
   TABLE DATA               ,   COPY status (id_status, status) FROM stdin;
    public       postgres    false    221   f�       �          0    25468    tipo_contato 
   TABLE DATA               ;   COPY tipo_contato (id_tipo_contato, descricao) FROM stdin;
    public       postgres    false    209   ��       �          0    25476    usuario 
   TABLE DATA               j   COPY usuario (id_usuario, login, senha, cpf, ultimo_acesso, nome, sobrenome, data_nascimento) FROM stdin;
    public       postgres    false    211   ��                  0    0    acesso_id_acesso_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('acesso_id_acesso_seq', 2, true);
            public       postgres    false    198                       0    0    bandeira_id_bandeira_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('bandeira_id_bandeira_seq', 3, true);
            public       postgres    false    228                       0    0    cep_id_cep_seq    SEQUENCE SET     6   SELECT pg_catalog.setval('cep_id_cep_seq', 10, true);
            public       postgres    false    217                       0    0    cidade_id_cidade_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('cidade_id_cidade_seq', 6, true);
            public       postgres    false    213                       0    0    contratado_id_contratado_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('contratado_id_contratado_seq', 56, true);
            public       postgres    false    202                       0    0    estado_id_estado_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('estado_id_estado_seq', 5, true);
            public       postgres    false    215                       0    0    filme_id_filme_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('filme_id_filme_seq', 10, true);
            public       postgres    false    200                       0    0    funcao_id_funcao_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('funcao_id_funcao_seq', 2, true);
            public       postgres    false    204                       0    0    genero_id_genero_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('genero_id_genero_seq', 12, true);
            public       postgres    false    232                       0    0 3   historico_visualizacao_id_historico_visulizacao_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('historico_visualizacao_id_historico_visulizacao_seq', 17, true);
            public       postgres    false    241                       0    0    idioma_id_idioma_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('idioma_id_idioma_seq', 10, true);
            public       postgres    false    235                       0    0    legenda_id_legenda_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('legenda_id_legenda_seq', 10, true);
            public       postgres    false    237                       0    0    modalidade_id_modalidade_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('modalidade_id_modalidade_seq', 3, true);
            public       postgres    false    222                       0    0    pais_id_pais_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('pais_id_pais_seq', 25, true);
            public       postgres    false    196                        0    0 "   rel_usuario_contato_id_contato_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('rel_usuario_contato_id_contato_seq', 18, true);
            public       postgres    false    224            !           0    0    status_id_status_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('status_id_status_seq', 2, true);
            public       postgres    false    220            "           0    0     tipo_contato_id_tipo_contato_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('tipo_contato_id_tipo_contato_seq', 3, true);
            public       postgres    false    208            #           0    0    usuario_id_usuario_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('usuario_id_usuario_seq', 10, true);
            public       postgres    false    210                       2606    25402    acesso acesso_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY acesso
    ADD CONSTRAINT acesso_pkey PRIMARY KEY (id_acesso);
 <   ALTER TABLE ONLY public.acesso DROP CONSTRAINT acesso_pkey;
       public         postgres    false    199            .           2606    25599    bandeira bandeira_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY bandeira
    ADD CONSTRAINT bandeira_pkey PRIMARY KEY (id_bandeira);
 @   ALTER TABLE ONLY public.bandeira DROP CONSTRAINT bandeira_pkey;
       public         postgres    false    229            &           2606    25513    cep cep_pkey 
   CONSTRAINT     G   ALTER TABLE ONLY cep
    ADD CONSTRAINT cep_pkey PRIMARY KEY (id_cep);
 6   ALTER TABLE ONLY public.cep DROP CONSTRAINT cep_pkey;
       public         postgres    false    218            "           2606    25497    cidade cidade_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY cidade
    ADD CONSTRAINT cidade_pkey PRIMARY KEY (id_cidade);
 <   ALTER TABLE ONLY public.cidade DROP CONSTRAINT cidade_pkey;
       public         postgres    false    214                       2606    25431    contratado contratado_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY contratado
    ADD CONSTRAINT contratado_pkey PRIMARY KEY (id_contratado);
 D   ALTER TABLE ONLY public.contratado DROP CONSTRAINT contratado_pkey;
       public         postgres    false    203            $           2606    25505    estado estado_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY estado
    ADD CONSTRAINT estado_pkey PRIMARY KEY (id_estado);
 <   ALTER TABLE ONLY public.estado DROP CONSTRAINT estado_pkey;
       public         postgres    false    216                       2606    25413    filme filme_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY filme
    ADD CONSTRAINT filme_pkey PRIMARY KEY (id_filme);
 :   ALTER TABLE ONLY public.filme DROP CONSTRAINT filme_pkey;
       public         postgres    false    201                       2606    25439    funcao funcao_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY funcao
    ADD CONSTRAINT funcao_pkey PRIMARY KEY (id_funcao);
 <   ALTER TABLE ONLY public.funcao DROP CONSTRAINT funcao_pkey;
       public         postgres    false    205            0           2606    25633    genero genero_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY genero
    ADD CONSTRAINT genero_pkey PRIMARY KEY (id_genero);
 <   ALTER TABLE ONLY public.genero DROP CONSTRAINT genero_pkey;
       public         postgres    false    233            2           2606    25654    idioma idioma_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY idioma
    ADD CONSTRAINT idioma_pkey PRIMARY KEY (id_idioma);
 <   ALTER TABLE ONLY public.idioma DROP CONSTRAINT idioma_pkey;
       public         postgres    false    236            4           2606    25662    legenda legenda_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY legenda
    ADD CONSTRAINT legenda_pkey PRIMARY KEY (id_legenda);
 >   ALTER TABLE ONLY public.legenda DROP CONSTRAINT legenda_pkey;
       public         postgres    false    238            *           2606    25547    modalidade modalidade_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY modalidade
    ADD CONSTRAINT modalidade_pkey PRIMARY KEY (id_modalidade);
 D   ALTER TABLE ONLY public.modalidade DROP CONSTRAINT modalidade_pkey;
       public         postgres    false    223                       2606    25394    pais pais_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY pais
    ADD CONSTRAINT pais_pkey PRIMARY KEY (id_pais);
 8   ALTER TABLE ONLY public.pais DROP CONSTRAINT pais_pkey;
       public         postgres    false    197            ,           2606    25555 ,   rel_usuario_contato rel_usuario_contato_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY rel_usuario_contato
    ADD CONSTRAINT rel_usuario_contato_pkey PRIMARY KEY (id_contato);
 V   ALTER TABLE ONLY public.rel_usuario_contato DROP CONSTRAINT rel_usuario_contato_pkey;
       public         postgres    false    225            (           2606    25539    status status_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY status
    ADD CONSTRAINT status_pkey PRIMARY KEY (id_status);
 <   ALTER TABLE ONLY public.status DROP CONSTRAINT status_pkey;
       public         postgres    false    221                       2606    25473    tipo_contato tipo_contato_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY tipo_contato
    ADD CONSTRAINT tipo_contato_pkey PRIMARY KEY (id_tipo_contato);
 H   ALTER TABLE ONLY public.tipo_contato DROP CONSTRAINT tipo_contato_pkey;
       public         postgres    false    209                        2606    25481    usuario usuario_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id_usuario);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public         postgres    false    211            <           2606    25514    cep cep_id_cidade_fkey    FK CONSTRAINT     q   ALTER TABLE ONLY cep
    ADD CONSTRAINT cep_id_cidade_fkey FOREIGN KEY (id_cidade) REFERENCES cidade(id_cidade);
 @   ALTER TABLE ONLY public.cep DROP CONSTRAINT cep_id_cidade_fkey;
       public       postgres    false    2850    218    214            =           2606    25519    cep cep_id_estado_fkey    FK CONSTRAINT     q   ALTER TABLE ONLY cep
    ADD CONSTRAINT cep_id_estado_fkey FOREIGN KEY (id_estado) REFERENCES estado(id_estado);
 @   ALTER TABLE ONLY public.cep DROP CONSTRAINT cep_id_estado_fkey;
       public       postgres    false    218    2852    216            >           2606    25527 /   end_complemento end_complemento_id_usuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY end_complemento
    ADD CONSTRAINT end_complemento_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario);
 Y   ALTER TABLE ONLY public.end_complemento DROP CONSTRAINT end_complemento_id_usuario_fkey;
       public       postgres    false    211    219    2848            6           2606    25419    filme filme_id_acesso_fkey    FK CONSTRAINT     u   ALTER TABLE ONLY filme
    ADD CONSTRAINT filme_id_acesso_fkey FOREIGN KEY (id_acesso) REFERENCES acesso(id_acesso);
 D   ALTER TABLE ONLY public.filme DROP CONSTRAINT filme_id_acesso_fkey;
       public       postgres    false    2838    201    199            5           2606    25414    filme filme_id_pais_fkey    FK CONSTRAINT     m   ALTER TABLE ONLY filme
    ADD CONSTRAINT filme_id_pais_fkey FOREIGN KEY (id_pais) REFERENCES pais(id_pais);
 B   ALTER TABLE ONLY public.filme DROP CONSTRAINT filme_id_pais_fkey;
       public       postgres    false    197    2836    201            P           2606    25700 ;   historico_visualizacao historico_visualizacao_id_filme_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY historico_visualizacao
    ADD CONSTRAINT historico_visualizacao_id_filme_fkey FOREIGN KEY (id_filme) REFERENCES filme(id_filme);
 e   ALTER TABLE ONLY public.historico_visualizacao DROP CONSTRAINT historico_visualizacao_id_filme_fkey;
       public       postgres    false    242    2840    201            O           2606    25695 =   historico_visualizacao historico_visualizacao_id_usuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY historico_visualizacao
    ADD CONSTRAINT historico_visualizacao_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario);
 g   ALTER TABLE ONLY public.historico_visualizacao DROP CONSTRAINT historico_visualizacao_id_usuario_fkey;
       public       postgres    false    242    211    2848            ;           2606    25485 #   pagamento pagamento_id_usuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY pagamento
    ADD CONSTRAINT pagamento_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario);
 M   ALTER TABLE ONLY public.pagamento DROP CONSTRAINT pagamento_id_usuario_fkey;
       public       postgres    false    2848    212    211            :           2606    25461 <   rel_contratado_filme rel_contratado_filme_id_contratado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY rel_contratado_filme
    ADD CONSTRAINT rel_contratado_filme_id_contratado_fkey FOREIGN KEY (id_contratado) REFERENCES contratado(id_contratado);
 f   ALTER TABLE ONLY public.rel_contratado_filme DROP CONSTRAINT rel_contratado_filme_id_contratado_fkey;
       public       postgres    false    2842    207    203            9           2606    25456 7   rel_contratado_filme rel_contratado_filme_id_filme_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY rel_contratado_filme
    ADD CONSTRAINT rel_contratado_filme_id_filme_fkey FOREIGN KEY (id_filme) REFERENCES filme(id_filme);
 a   ALTER TABLE ONLY public.rel_contratado_filme DROP CONSTRAINT rel_contratado_filme_id_filme_fkey;
       public       postgres    false    207    201    2840            7           2606    25443 >   rel_contratado_funcao rel_contratado_funcao_id_contratado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY rel_contratado_funcao
    ADD CONSTRAINT rel_contratado_funcao_id_contratado_fkey FOREIGN KEY (id_contratado) REFERENCES contratado(id_contratado);
 h   ALTER TABLE ONLY public.rel_contratado_funcao DROP CONSTRAINT rel_contratado_funcao_id_contratado_fkey;
       public       postgres    false    206    2842    203            8           2606    25448 :   rel_contratado_funcao rel_contratado_funcao_id_funcao_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY rel_contratado_funcao
    ADD CONSTRAINT rel_contratado_funcao_id_funcao_fkey FOREIGN KEY (id_funcao) REFERENCES funcao(id_funcao);
 d   ALTER TABLE ONLY public.rel_contratado_funcao DROP CONSTRAINT rel_contratado_funcao_id_funcao_fkey;
       public       postgres    false    2844    205    206            I           2606    25637 /   rel_filme_genero rel_filme_genero_id_filme_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY rel_filme_genero
    ADD CONSTRAINT rel_filme_genero_id_filme_fkey FOREIGN KEY (id_filme) REFERENCES filme(id_filme);
 Y   ALTER TABLE ONLY public.rel_filme_genero DROP CONSTRAINT rel_filme_genero_id_filme_fkey;
       public       postgres    false    234    2840    201            J           2606    25642 0   rel_filme_genero rel_filme_genero_id_genero_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY rel_filme_genero
    ADD CONSTRAINT rel_filme_genero_id_genero_fkey FOREIGN KEY (id_genero) REFERENCES genero(id_genero);
 Z   ALTER TABLE ONLY public.rel_filme_genero DROP CONSTRAINT rel_filme_genero_id_genero_fkey;
       public       postgres    false    233    234    2864            K           2606    25666 /   rel_filme_idioma rel_filme_idioma_id_filme_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY rel_filme_idioma
    ADD CONSTRAINT rel_filme_idioma_id_filme_fkey FOREIGN KEY (id_filme) REFERENCES filme(id_filme);
 Y   ALTER TABLE ONLY public.rel_filme_idioma DROP CONSTRAINT rel_filme_idioma_id_filme_fkey;
       public       postgres    false    2840    239    201            L           2606    25671 0   rel_filme_idioma rel_filme_idioma_id_idioma_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY rel_filme_idioma
    ADD CONSTRAINT rel_filme_idioma_id_idioma_fkey FOREIGN KEY (id_idioma) REFERENCES idioma(id_idioma);
 Z   ALTER TABLE ONLY public.rel_filme_idioma DROP CONSTRAINT rel_filme_idioma_id_idioma_fkey;
       public       postgres    false    2866    239    236            M           2606    25679 1   rel_filme_legenda rel_filme_legenda_id_filme_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY rel_filme_legenda
    ADD CONSTRAINT rel_filme_legenda_id_filme_fkey FOREIGN KEY (id_filme) REFERENCES filme(id_filme);
 [   ALTER TABLE ONLY public.rel_filme_legenda DROP CONSTRAINT rel_filme_legenda_id_filme_fkey;
       public       postgres    false    2840    201    240            N           2606    25684 3   rel_filme_legenda rel_filme_legenda_id_legenda_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY rel_filme_legenda
    ADD CONSTRAINT rel_filme_legenda_id_legenda_fkey FOREIGN KEY (id_legenda) REFERENCES legenda(id_legenda);
 ]   ALTER TABLE ONLY public.rel_filme_legenda DROP CONSTRAINT rel_filme_legenda_id_legenda_fkey;
       public       postgres    false    238    240    2868            H           2606    25621 %   rel_pais_cep rel_pais_cep_id_cep_fkey    FK CONSTRAINT     w   ALTER TABLE ONLY rel_pais_cep
    ADD CONSTRAINT rel_pais_cep_id_cep_fkey FOREIGN KEY (id_cep) REFERENCES cep(id_cep);
 O   ALTER TABLE ONLY public.rel_pais_cep DROP CONSTRAINT rel_pais_cep_id_cep_fkey;
       public       postgres    false    2854    231    218            G           2606    25616 &   rel_pais_cep rel_pais_cep_id_pais_fkey    FK CONSTRAINT     {   ALTER TABLE ONLY rel_pais_cep
    ADD CONSTRAINT rel_pais_cep_id_pais_fkey FOREIGN KEY (id_pais) REFERENCES pais(id_pais);
 P   ALTER TABLE ONLY public.rel_pais_cep DROP CONSTRAINT rel_pais_cep_id_pais_fkey;
       public       postgres    false    197    231    2836            F           2606    25608 :   rel_usuario_bandeira rel_usuario_bandeira_id_bandeira_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY rel_usuario_bandeira
    ADD CONSTRAINT rel_usuario_bandeira_id_bandeira_fkey FOREIGN KEY (id_bandeira) REFERENCES bandeira(id_bandeira);
 d   ALTER TABLE ONLY public.rel_usuario_bandeira DROP CONSTRAINT rel_usuario_bandeira_id_bandeira_fkey;
       public       postgres    false    229    230    2862            E           2606    25603 9   rel_usuario_bandeira rel_usuario_bandeira_id_usuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY rel_usuario_bandeira
    ADD CONSTRAINT rel_usuario_bandeira_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario);
 c   ALTER TABLE ONLY public.rel_usuario_bandeira DROP CONSTRAINT rel_usuario_bandeira_id_usuario_fkey;
       public       postgres    false    2848    230    211            @           2606    25561 <   rel_usuario_contato rel_usuario_contato_id_tipo_contato_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY rel_usuario_contato
    ADD CONSTRAINT rel_usuario_contato_id_tipo_contato_fkey FOREIGN KEY (id_tipo_contato) REFERENCES tipo_contato(id_tipo_contato);
 f   ALTER TABLE ONLY public.rel_usuario_contato DROP CONSTRAINT rel_usuario_contato_id_tipo_contato_fkey;
       public       postgres    false    225    2846    209            ?           2606    25556 7   rel_usuario_contato rel_usuario_contato_id_usuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY rel_usuario_contato
    ADD CONSTRAINT rel_usuario_contato_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario);
 a   ALTER TABLE ONLY public.rel_usuario_contato DROP CONSTRAINT rel_usuario_contato_id_usuario_fkey;
       public       postgres    false    2848    211    225            D           2606    25587 @   rel_usuario_modalidade rel_usuario_modalidade_id_modalidade_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY rel_usuario_modalidade
    ADD CONSTRAINT rel_usuario_modalidade_id_modalidade_fkey FOREIGN KEY (id_modalidade) REFERENCES modalidade(id_modalidade);
 j   ALTER TABLE ONLY public.rel_usuario_modalidade DROP CONSTRAINT rel_usuario_modalidade_id_modalidade_fkey;
       public       postgres    false    2858    227    223            C           2606    25582 =   rel_usuario_modalidade rel_usuario_modalidade_id_usuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY rel_usuario_modalidade
    ADD CONSTRAINT rel_usuario_modalidade_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario);
 g   ALTER TABLE ONLY public.rel_usuario_modalidade DROP CONSTRAINT rel_usuario_modalidade_id_usuario_fkey;
       public       postgres    false    227    211    2848            B           2606    25574 4   rel_usuario_status rel_usuario_status_id_status_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY rel_usuario_status
    ADD CONSTRAINT rel_usuario_status_id_status_fkey FOREIGN KEY (id_status) REFERENCES status(id_status);
 ^   ALTER TABLE ONLY public.rel_usuario_status DROP CONSTRAINT rel_usuario_status_id_status_fkey;
       public       postgres    false    226    2856    221            A           2606    25569 5   rel_usuario_status rel_usuario_status_id_usuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY rel_usuario_status
    ADD CONSTRAINT rel_usuario_status_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario);
 _   ALTER TABLE ONLY public.rel_usuario_status DROP CONSTRAINT rel_usuario_status_id_usuario_fkey;
       public       postgres    false    211    2848    226            �   "   x�3���K�,.��;��,5�ˈ������ �gQ      �   )   x�3��v�2��uqrvr�2�tr�s�c���� �K      �   �   x�u�1N�0E��S��c�x��j�h�AT�f��
i#�m8#ʦ�����"�k�s�.��S�4-�eV�R6��eBB
Yj�������hX�� -5��<���*_'��� H�T��<4;�5WPr՜�����_�@��6_Ѫxq���ٺ��b�&���A�2s�O��ټ��ɷ��?̷F�      �   R   x�3�N-*J�2�t��<�(/3�˘ӳ$1)(h������������Y��e��X�X��\zxmR"��cIfR"PO� ���      �   �  x�=T�n�8=K_������>&�$i��m1{�ت��#�SL�뗒� 9~"���HN���=;Bs�%���,�Y.� ;�1#�9߲;���H/D&r*ɋ������gݜ̘@�?Z��v��������̩"�o�����+r�{3N�GN?���h�/hI�=����c\��%b�";�-�ֱ'm���К��e�K��%�V��sM��4��y������<j�2�<	�}0�g�ε	AE�܃eO�C��WQN!)/ȣ�bo�A��]d|E�"�L�!s�'m�[��DA���j̸'� E&0�$w0i�A��^OSU&J�+rt�e/�u̶�e�լ#��&3W�q�6�ANEN��β�j&%�Tp�=Cc���xM� G8��w �!
�Z��izށqBA`�2�T���/��UAHt�P�}9۱\�Y�*j�5Ws���&$@��͝1Ğ��uD�U�e,{����R5ك��Wcͨ�2.��r�0��,�PA��� m�R��XArR�d�lg�~��E�L�o�f�����#Y���zg�	X���T�"[0㕽�65^FF�I�� !UX7Y��c�ݏ Mb���ʊ�[8��7_7�<Ҩ�&��}k99h�z\����VQ1E4	x�{s��'�
�.�9��2���8���x�ޅD��?�[�W�rM
��a>��ܟ�f�PhL���5{q-�2�]E[c�y�w8F����%O�[Q���O��Q�@�
���c�Μ������-j�d`Oa%R}���9��yGxHN!'Af�M=[,�A5U�ܷ�jj"TΗ�S%q�������`܀�
Ǟ�!������p��N������{9GR�B1�ۥ��+X�س��~�������      �   �   x�}�A�0E��S�)�V�t�q�����X� �)�p��Ŭ\������@�Ȩ�����x�8�ε�-�(W\I��B�g)kPV�
.��60�_��0�'�TU)��0�c��ڙ�;�8����F��8�0�>�����e���D�)J�x�n$<O_y����l-�R(������dǸ�*����\M�      �   S   x�3�t-.�,�,�WN�+��2�t��L,�2����K,VpO-J�,�2���WHIU�J�K�,��2�>�8_! �4'�+F��� ��%      �   �  x��Y�n�}����@ 	�ċ��$��dI��E �9�$[��w�P�?�gx���~r��c9�zH��X�@�ÙS�N��Sua���*uA�Ɔή�p�5�N��b�y]�ZU�{�F�������VF5|�Lt�S�.y�ʫ�sj��s5qá��b0��M�tUcSTި�Jr,��U�rU6��*MV�4F]21X:p��ՉSzj|n�	6Kʛ��-�>����Ԫ�N9�6���q��y�ql��Q���p�C-�&6h<7���n��p؉3�DÚ�ț�p0|��Wՙ�6��z��]<�쵞��Υ8%��|��[8[5}Z;
wz9�+�"qp�����v��L���Sp��"��}�޻��v�ؚi�S�0N%u^z�cM'�hu�|��h�\|�fXѥr,x�������l��`7̶�@($8��k��r|��b�?tt�����Q�ߐZ����;�^�ߙTU~�v�2s:]��70  Zu~�姒��e��u{I�rb�M���0�����W�m1^�.���nooW�aR=4���{��d���_N��b��b/t��uc}c�3X �����O��t��B��p��q�Q����pu���%�|��q�`�y��H�͗��x嵛j�w�o�'	�>2�B ��X�N��&֛%j ��/P\-���j��j<��k�z	0t����YE$�I���Dk�x�����F[U��S`r���۪��-1�h��Z�����F�7�`��">1%�Q����Cb��ćZ�^숶��H��\��`���%��I������:�d��v�"]��O�\�^O�����	x��n�����������~@g������/� �Fgcg{� �u��P�#� ����JI�F��t��7�f�#!�GH���;������z[X�� 	'��e��[l4�	�4�uq�ARz]��˛����e�%��LREzZ�!l�m� H����Jm�@H����[��޹v	*�ub5 ����Z�ygM��f�5B9��"Hl�h��1!�"2�Σ�l1j~-��zn��^��X�@h����B�t�^���t���C��~p�{eu=�X_�z�T�^��N�u�����,�yY�uqs����\q���͐ծ ƭ��j7A��0V?8��Y����5a격e�%���͌ <�5�#���Y�Ê����n����ML �a^gd���c�Ye�Ġ�48�)�G�/�v<(�І��K�JsO�ӡ]y���nh��nf �(4x�!|��	*�ORQ�;� d<޾r���1�c)�TH�x3���ČD�0�'�m��B��J�*	�ʧ���Z����S�K�+H�H��*E~=���,��ʍO�/ɐ�_e�jηƥ>j�L�3@l��],���95j�Z`��N�܃>yk�	���nou	Fb�Z��e~�;���px��z#����� ���,���b��C��g��L���W�{��v�*&����
Nrh:�-�~�[0gZ���ϨW�'���ȃ�������k�2
rQ��`�l�fQ��
+��G4�MX��9ϼ��N�	����N->s���Y��2c�%���KH@,}Q�� 9/
,-��=���@�d�d�yf�J�zF=`���S�J����t�p-���N�։�� y�\i3WE��?X��H]/�Б'�FVO)��n�J�����mE�ZJ�DoN�^��ɚ������,[�9��d0�#��@����B�9����ޅ)��ܦ��_��˦�=X�a�+�-I$�|�孀�4<���@Q-Ї���^�uޡ-���na���X�KQ;}�� ,��P��e��0D�j�S�dU=���E��Pv������-�����Xw��<�E�]�6(w�}o��U�=�H��X6;{��8G���M1IA�S�]�U���M $1g�Sqp�XAh�JE*��"%FG�Bϧ�mu� MpdM��fهZ���#iJ�����ip���:�Rl�9���,DN�9� @?���q$�f�$7�����Y]�
urV3����I-�J��Jx��]&>�c+̓�5�D�CS��H�{i�19�Țܜ�J�h� Ď!��ԷČ��1`����ݴ/����EaǓ���2>��_����,k����: ����֕ a*�d��tv{�|��
�	��ȫ�||I�HՄ��5��1
����0��-
 C�QYi�ЃLl�|EWb�
q|�NnI�I�$$�4��C)M�|�O�ocP�v`cD\��ރ��- �TJ52������[6-�5(�.u�Q��f�ײ�Y84i�M}�
�P�eY�����I>���-	����[^;��� ;���(�<��f��ǡH�շe�"7j�G��uuA��['|zO�ϰ;uO�4~���[�D;�_�W��qg ���lw��c�:�=Vg|�w0�?whQ�4��G�b;"��(�dꂺ�$Pu��$B���EъJ���������=N)2Qo�K�&&b���5�-���!B���F��U�#M�c_���f��4+�\dQ�j���_�ՋX��l`�昜(�h{�,-ǈrc��*��E���XQ���	��4�KY*��F6 jU5�|����'�@W���l~�91�Z�Nq��c���&\�g.}�#��qX$�ӥ����qc���O����~�c�F�`[��V���N�p��v��J����ԋ�2��x��Gr�Vt	 d͗�b�i-���O'i��Z�@����N2��2���1���^�	��ni9EQ�i!6���΄�& ��^���ɬ7��J8@�,�`����Ҝ���l�+�{�I��:N��j�3}Wn����f2!y�۬��*�Y]W�á�U-������ر�Zj�̄���1�]��˖!Ȝ�� �g�;��/ǙXK~�E6���Wι�䍊%6.�:�Ə��+M{f�͏/�aw�?����m�NH;��:���d}��}�KNcځ-��X,�ݙ� ���2y)Ҏ��53��#�lN	�����nnvOW^Ґ�Ԭ����Ǉ�ڇ��W�uR����6�8¡w���Q���vv�$�'�R���� D3����=����а�tsƥŗ���op0�b�$ELPݙ�K��P�i��epp�L5N��)�����S����g1q�%�����Y�|b���^9,��9�gAm���QL[���u�e�R�/���&4��pPi�ˤՅg<,}�/Nx�H%��� ��Ɂ(ڹ��we��K�ƨ��U�<E��#H�Sv�|4WFf�m+#ù6�`b)z���{����
�{'�Oc������f�v[���ԏv�$xh��N3�(]!��X�W|?������5��հ��A�@$T7������F�3�p�֙W����^-�����7�F���&q�����/�cuaa�?���      �      x�3�t,�/�2�t�,J�b���� E�      �   �   x�%��1�}UP��?�8]F�$+c�����g�A�:��of�!%p}�WBG���X�1�^90d�lI����+:yդXӱ仏�cC���"�-�~��I{�k�`ftH���0��#KnsG}r%4�>U�S _GD3      �   �   x����q�0C�bj���Ϭ%�����Z{������j2E?�Ck���-�@�L�n|+-�v No�(-c�S)Of��*�Owɨ�5�X��	R��'�C1'1|a-R �n[�q�˓��6�N���u���Y�r1Ƞ��c�ύp~�et�G,g*��h0�@�[j��/֧�g�@y��m��o�R�p��1�%�tn�H������]$Zɷ�"�Y��^��_���x
������ろ+      �   l   x�3��M�KI,���2�t-.H�����2���K�9���˄�pcQbR*�)�Gf^J&�g@~QIiz)H֜�)5/=�҂3���8�˒�+� ?$dh�铘4�+F��� �Y#x      �   l   x�3��M�KI,���2�t-.H�����2���K�9���˄�pcQbR*�)�Gf^J&�g@~QIiz)H֜�)5/=�҂3���8�˒�+� ?$dh�铘4�+F��� �Y#x      �   +   x�3�(J��,��2���-�I-�2���K,�,������ ��
      �   ,  x��һj�0�Y~
���ѹ��-!:�:uQcA���!O_�uo�P���q���`\X� �?g�h��	DL�=�z�G:����cc����"Sa!�6P�]�93�L�Y��d3��Ӑ�&���_i,h���4�c���"c��lظ�yQ�s{Jz�7�tMM?�*E��0{!� x���[;�C�{HCj����B�JVWp�k׷0�@�o ]P������ڟ>�o����ַpG�~�`�{�}`�Ψ]w���>���G�B�Y�Y!g��G��n��5v��qӾ?TU�`޷      �   �   x�-�=N�@��7��	P���S�@B�"EPь��Yi2Fk/G	J��b��|�4?���n�~��
9ԑ� 4���D%֧ �*<�Ñi�g��#yaZ �FS'M79$�%nşYOL+��*��RL�f�ƨ�]P�G�a7�Ùy��+Jl"k�6����z�8�\`T�6c�ľ���#����j����8���\�m��|�e���i�,%9ɑ�ā\il��\����n_n���\�      �   |   x�ϹD1A��'NI����XZN��cb����ZR�Һe둣W��[OSsH(h�p�rs����P��6�y�w�15AR4l8p�3�$g@BM}6�#�w�ƚ�g<�Y��離�M&K      �   m   x�˹� ���*��")?���:N�l�Pi�m�k��g{�>Y3]m6�b7{ػ�ɚ!�B!�B#�0�#�0�#�"� �"� �"�Ab�� ����q$a      �   /   x�3�4�2bcN. m
�f�&\�@��1�%p�r��qqq ���      �   (   x�3�4�2b 6b3N3.s � �-��� H��qqq o�0      �   (   x�3�4�2bc 6bS 6bs � bK 64 1z\\\ �O�      �   *   x�3�4�2�4bc 6bS 6bs � bK 64������ ���      �   ,   x�3�4�2bcNc.NC.S 6bs �(n	���=... �3�      �   A  x�U��n�0�g�a�H�����бA�v�c�V`��$;p����"��D��G�h�'�_�Dl����7����h��@���m������{��D�0l	w�P@S׶2�q��r`�-jה"�*a�4�;Kϟ	���V�
V�8x<q��Lrl�t�0���j�.��.�������'�P�`��-�r�O��b��x�vS)&}��v�p���p�:qL����z~��큔�Q~%����1�5Oz�sz��LI*�3��T�)�Et�'Zz����e#��J��
(&Zq>-�'�)p������1���D���+F}�R����      �   ,   x�3�4�2�4�2�4�2�M�l3 m�@l	� �=... ���      �      x�3�4�2ĉ���=... y<      �   "   x�3���/�M��2�t��/,MML������ he7      �   *   x�3�t�M���2�tN�)�I,�2�I�IM��K����� �,	Z      �   j  x�u�Kr�@�׭S�J�S3�ʉ�@x)R6my���3���p.F�d�*6�h�������{\����a���0��؆1F<���h���M?�7޶ ���h%m	�qS��`e�m��Z(�>�`��xU邋��L�:�����l\��4���1:#;l5�Rrqe�3��������&�8ɢ
&�3	;Z7�k��@��v�Ɂ��݅;�nу)���[e��"���B��W�a��Ռ!��Ϡ,U���=.C��㍣g���:w�]7�}�N�D��@3��Fȿ�t!D�M��Z�<����D�=IM�a;v�)|X�ax��¥�Q�UJ��`��\RG5�6ah����+�\���:�Jp��&\F��ShZ\`ܝ��i5�5����;��Jn*ŞZR9�j�j�`5��,�D���`�������6��YY�XFU�ҜW��B��zB�L�	+?��\jTBe��!|��1M���{1��V���2��tO�L�X-e����gR>�R�r���*�}w�{���q��=ɄU%�J)��� ���e�����2-�0g���q��-.�bXl��a֬���S��о	kY��:O���Ռ���Ϡ�d*^f_/�,�
�/�     