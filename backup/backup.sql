--
-- PostgreSQL database dump
--

\restrict OXJDeacd7fdoAdqcCFIujSZ2bxAIOaQ9cgwrDaWMcMlZ1ILQH4RmeyhHJDUIbyd

-- Dumped from database version 18.1 (Debian 18.1-1.pgdg13+2)
-- Dumped by pg_dump version 18.1 (Debian 18.1-1.pgdg13+2)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: inventario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.inventario (
    id_inventario integer NOT NULL,
    nombre character varying(50) NOT NULL,
    id_usuario integer
);


ALTER TABLE public.inventario OWNER TO postgres;

--
-- Name: inventario_id_inventario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.inventario_id_inventario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.inventario_id_inventario_seq OWNER TO postgres;

--
-- Name: inventario_id_inventario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.inventario_id_inventario_seq OWNED BY public.inventario.id_inventario;


--
-- Name: nenomon; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.nenomon (
    id_nenomon integer NOT NULL,
    nombre character varying(50) NOT NULL,
    tipo character varying(50),
    hp integer,
    ataque integer,
    defensa integer,
    nivel integer
);


ALTER TABLE public.nenomon OWNER TO postgres;

--
-- Name: nenomon_id_nenomon_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.nenomon_id_nenomon_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.nenomon_id_nenomon_seq OWNER TO postgres;

--
-- Name: nenomon_id_nenomon_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.nenomon_id_nenomon_seq OWNED BY public.nenomon.id_nenomon;


--
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario (
    id_usuario integer NOT NULL,
    username character varying(50) NOT NULL,
    email character varying(70),
    password character varying(100),
    nivel integer
);


ALTER TABLE public.usuario OWNER TO postgres;

--
-- Name: usuario_id_usuario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuario_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.usuario_id_usuario_seq OWNER TO postgres;

--
-- Name: usuario_id_usuario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuario_id_usuario_seq OWNED BY public.usuario.id_usuario;


--
-- Name: usuario_nenomon; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario_nenomon (
    id_usuario_nenomon integer NOT NULL,
    id_usuario integer NOT NULL,
    id_nenomon integer NOT NULL
);


ALTER TABLE public.usuario_nenomon OWNER TO postgres;

--
-- Name: usuario_nenomon_id_usuario_nenomon_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuario_nenomon_id_usuario_nenomon_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.usuario_nenomon_id_usuario_nenomon_seq OWNER TO postgres;

--
-- Name: usuario_nenomon_id_usuario_nenomon_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuario_nenomon_id_usuario_nenomon_seq OWNED BY public.usuario_nenomon.id_usuario_nenomon;


--
-- Name: inventario id_inventario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventario ALTER COLUMN id_inventario SET DEFAULT nextval('public.inventario_id_inventario_seq'::regclass);


--
-- Name: nenomon id_nenomon; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nenomon ALTER COLUMN id_nenomon SET DEFAULT nextval('public.nenomon_id_nenomon_seq'::regclass);


--
-- Name: usuario id_usuario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario ALTER COLUMN id_usuario SET DEFAULT nextval('public.usuario_id_usuario_seq'::regclass);


--
-- Name: usuario_nenomon id_usuario_nenomon; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_nenomon ALTER COLUMN id_usuario_nenomon SET DEFAULT nextval('public.usuario_nenomon_id_usuario_nenomon_seq'::regclass);


--
-- Data for Name: inventario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.inventario (id_inventario, nombre, id_usuario) FROM stdin;
1	Revivir	\N
2	Pocion	\N
3	MT	\N
4	Caramelo Raro	\N
\.


--
-- Data for Name: nenomon; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nenomon (id_nenomon, nombre, tipo, hp, ataque, defensa, nivel) FROM stdin;
1	Swinttie	Agua	50	12	10	1
2	Sworddna	Agua	65	18	15	1
3	Sworddiran	Agua	90	25	22	1
4	Forax	Fuego	52	14	9	1
5	Forasek	Fuego	70	20	14	1
6	Forserorax	Fuego	95	28	20	1
7	Toxyn	Planta	48	11	12	1
8	Toxicroc	Planta	68	17	18	1
9	Toxidrile	Planta	92	24	26	1
10	Wormmie	Bicho	40	9	8	1
11	Caskket	Bicho	60	15	14	1
12	Shogunnye	Bicho	88	23	19	1
13	Bakkar	Legendario	150	40	35	1
\.


--
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuario (id_usuario, username, email, password, nivel) FROM stdin;
1	Sergio	murosverasergio@gmail.com	$2a$10$VwKzMJjjL4bQMZTyY/.AQOIv5LF657c/7opPiuLmuWZ.FsOKghqJi	\N
2	Andrei	AndreiCristea@gmail.com	$2a$10$7fhfDgh6WL.SA51N8APMgOhPbW/VdSVWCRo1sFi17SuIXZECwFbI6	\N
3	Jorge	JorgeSalgado@gmail.com	$2a$10$4Hvl798EOUVu72SfofcDR.gU9T4xIeZ3iw1fEzkER8c4K/iyMXQBO	\N
\.


--
-- Data for Name: usuario_nenomon; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuario_nenomon (id_usuario_nenomon, id_usuario, id_nenomon) FROM stdin;
\.


--
-- Name: inventario_id_inventario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.inventario_id_inventario_seq', 4, true);


--
-- Name: nenomon_id_nenomon_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.nenomon_id_nenomon_seq', 13, true);


--
-- Name: usuario_id_usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuario_id_usuario_seq', 3, true);


--
-- Name: usuario_nenomon_id_usuario_nenomon_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuario_nenomon_id_usuario_nenomon_seq', 1, false);


--
-- Name: inventario inventario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventario
    ADD CONSTRAINT inventario_pkey PRIMARY KEY (id_inventario);


--
-- Name: nenomon nenomon_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nenomon
    ADD CONSTRAINT nenomon_pkey PRIMARY KEY (id_nenomon);


--
-- Name: usuario usuario_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_email_key UNIQUE (email);


--
-- Name: usuario_nenomon usuario_nenomon_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_nenomon
    ADD CONSTRAINT usuario_nenomon_pkey PRIMARY KEY (id_usuario_nenomon);


--
-- Name: usuario usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id_usuario);


--
-- Name: usuario_nenomon fk_nenomon_usuario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_nenomon
    ADD CONSTRAINT fk_nenomon_usuario FOREIGN KEY (id_nenomon) REFERENCES public.nenomon(id_nenomon) ON DELETE CASCADE;


--
-- Name: inventario fk_usuario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventario
    ADD CONSTRAINT fk_usuario FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario) ON DELETE CASCADE;


--
-- Name: usuario_nenomon fk_usuario_nenomon; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_nenomon
    ADD CONSTRAINT fk_usuario_nenomon FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

\unrestrict OXJDeacd7fdoAdqcCFIujSZ2bxAIOaQ9cgwrDaWMcMlZ1ILQH4RmeyhHJDUIbyd

