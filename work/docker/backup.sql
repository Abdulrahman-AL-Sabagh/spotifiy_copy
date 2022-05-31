--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2 (Debian 14.2-1.pgdg110+1)
-- Dumped by pg_dump version 14.2 (Debian 14.2-1.pgdg110+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: School; Type: SCHEMA; Schema: -; Owner: app
--

CREATE SCHEMA "School";


ALTER SCHEMA "School" OWNER TO app;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: School; Type: TABLE; Schema: School; Owner: app
--

CREATE TABLE "School"."School" (
    id integer NOT NULL,
    name character varying
);


ALTER TABLE "School"."School" OWNER TO app;

--
-- Name: School_id_seq; Type: SEQUENCE; Schema: School; Owner: app
--

CREATE SEQUENCE "School"."School_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "School"."School_id_seq" OWNER TO app;

--
-- Name: School_id_seq; Type: SEQUENCE OWNED BY; Schema: School; Owner: app
--

ALTER SEQUENCE "School"."School_id_seq" OWNED BY "School"."School".id;


--
-- Name: school; Type: TABLE; Schema: public; Owner: app
--

CREATE TABLE public.school (
    id integer NOT NULL
);


ALTER TABLE public.school OWNER TO app;

--
-- Name: school_id_seq; Type: SEQUENCE; Schema: public; Owner: app
--

CREATE SEQUENCE public.school_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.school_id_seq OWNER TO app;

--
-- Name: school_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: app
--

ALTER SEQUENCE public.school_id_seq OWNED BY public.school.id;


--
-- Name: School id; Type: DEFAULT; Schema: School; Owner: app
--

ALTER TABLE ONLY "School"."School" ALTER COLUMN id SET DEFAULT nextval('"School"."School_id_seq"'::regclass);


--
-- Name: school id; Type: DEFAULT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.school ALTER COLUMN id SET DEFAULT nextval('public.school_id_seq'::regclass);


--
-- Data for Name: School; Type: TABLE DATA; Schema: School; Owner: app
--

COPY "School"."School" (id, name) FROM stdin;
\.


--
-- Data for Name: school; Type: TABLE DATA; Schema: public; Owner: app
--

COPY public.school (id) FROM stdin;
\.


--
-- Name: School_id_seq; Type: SEQUENCE SET; Schema: School; Owner: app
--

SELECT pg_catalog.setval('"School"."School_id_seq"', 1, false);


--
-- Name: school_id_seq; Type: SEQUENCE SET; Schema: public; Owner: app
--

SELECT pg_catalog.setval('public.school_id_seq', 1, false);


--
-- Name: School school_pk; Type: CONSTRAINT; Schema: School; Owner: app
--

ALTER TABLE ONLY "School"."School"
    ADD CONSTRAINT school_pk PRIMARY KEY (id);


--
-- Name: school school_pk; Type: CONSTRAINT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.school
    ADD CONSTRAINT school_pk PRIMARY KEY (id);


--
-- Name: school_name_uindex; Type: INDEX; Schema: School; Owner: app
--

CREATE UNIQUE INDEX school_name_uindex ON "School"."School" USING btree (name);


--
-- PostgreSQL database dump complete
--

