--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.3
-- Dumped by pg_dump version 9.6.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE ar_internal_metadata OWNER TO "Guest";

--
-- Name: brands; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE brands (
    id bigint NOT NULL,
    title character varying,
    price money
);


ALTER TABLE brands OWNER TO "Guest";

--
-- Name: brands_id_seq; Type: SEQUENCE; Schema: public; Owner: Guest
--

CREATE SEQUENCE brands_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE brands_id_seq OWNER TO "Guest";

--
-- Name: brands_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Guest
--

ALTER SEQUENCE brands_id_seq OWNED BY brands.id;


--
-- Name: brands_stores; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE brands_stores (
    id bigint NOT NULL,
    brand_id integer,
    store_id integer
);


ALTER TABLE brands_stores OWNER TO "Guest";

--
-- Name: brands_stores_id_seq; Type: SEQUENCE; Schema: public; Owner: Guest
--

CREATE SEQUENCE brands_stores_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE brands_stores_id_seq OWNER TO "Guest";

--
-- Name: brands_stores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Guest
--

ALTER SEQUENCE brands_stores_id_seq OWNED BY brands_stores.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE schema_migrations OWNER TO "Guest";

--
-- Name: stores; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE stores (
    id bigint NOT NULL,
    name character varying
);


ALTER TABLE stores OWNER TO "Guest";

--
-- Name: stores_id_seq; Type: SEQUENCE; Schema: public; Owner: Guest
--

CREATE SEQUENCE stores_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE stores_id_seq OWNER TO "Guest";

--
-- Name: stores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Guest
--

ALTER SEQUENCE stores_id_seq OWNED BY stores.id;


--
-- Name: brands id; Type: DEFAULT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY brands ALTER COLUMN id SET DEFAULT nextval('brands_id_seq'::regclass);


--
-- Name: brands_stores id; Type: DEFAULT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY brands_stores ALTER COLUMN id SET DEFAULT nextval('brands_stores_id_seq'::regclass);


--
-- Name: stores id; Type: DEFAULT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY stores ALTER COLUMN id SET DEFAULT nextval('stores_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	default_env	2018-03-02 16:29:28.343622	2018-03-02 16:29:28.343622
\.


--
-- Data for Name: brands; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY brands (id, title, price) FROM stdin;
5	Onutsuka Tiger	$60.00
6	Saucony	$70.00
7	Brookes	$134.00
8	Chaco	$99.00
9	ToPo	$126.00
11	Adidas	$95.00
12	Nike	$45.00
13	Vasque	$219.00
14	Asolo	$319.00
15	Keen	$35.00
16	Converse	$65.00
\.


--
-- Name: brands_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('brands_id_seq', 16, true);


--
-- Data for Name: brands_stores; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY brands_stores (id, brand_id, store_id) FROM stdin;
1	1	2
2	2	2
3	3	2
4	6	2
5	7	2
6	8	2
7	1	3
8	3	3
9	4	3
10	5	3
11	9	2
12	11	2
\.


--
-- Name: brands_stores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('brands_stores_id_seq', 12, true);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY schema_migrations (version) FROM stdin;
20180302162218
20180302163037
20180302163421
\.


--
-- Data for Name: stores; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY stores (id, name) FROM stdin;
2	Fixed Fleet
3	Urban Pharm
\.


--
-- Name: stores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('stores_id_seq', 3, true);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: brands brands_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY brands
    ADD CONSTRAINT brands_pkey PRIMARY KEY (id);


--
-- Name: brands_stores brands_stores_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY brands_stores
    ADD CONSTRAINT brands_stores_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: stores stores_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY stores
    ADD CONSTRAINT stores_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

