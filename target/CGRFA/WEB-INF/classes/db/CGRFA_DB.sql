--
-- PostgreSQL database dump
--

-- Dumped from database version 9.1.15
-- Dumped by pg_dump version 9.3.7
-- Started on 2015-06-10 13:41:04 CEST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

DROP DATABASE cgrfa;
--
-- TOC entry 1988 (class 1262 OID 16385)
-- Name: cgrfa; Type: DATABASE; Schema: -; Owner: -
--

CREATE DATABASE cgrfa WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';


\connect cgrfa

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 5 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA public;


--
-- TOC entry 1989 (class 0 OID 0)
-- Dependencies: 5
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA public IS 'standard public schema';


--
-- TOC entry 178 (class 3079 OID 11645)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 1991 (class 0 OID 0)
-- Dependencies: 178
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 165 (class 1259 OID 16499)
-- Name: ControlledLists; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE "ControlledLists" (
    cl_id integer,
    key text COLLATE pg_catalog."C.UTF-8",
    value text COLLATE pg_catalog."C.UTF-8",
    text_e text COLLATE pg_catalog."C.UTF-8",
    text_f text COLLATE pg_catalog."C.UTF-8",
    text_s text COLLATE pg_catalog."C.UTF-8",
    text_c text COLLATE pg_catalog."C.UTF-8",
    text_r text COLLATE pg_catalog."C.UTF-8",
    text_a text COLLATE pg_catalog."C.UTF-8",
    pk integer NOT NULL,
    external_cl text,
    external_cl_key text,
    external_cl_value text
);


--
-- TOC entry 161 (class 1259 OID 16389)
-- Name: Countries; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE "Countries" (
    "ID" integer NOT NULL,
    "NAME_EN" text COLLATE pg_catalog."C.UTF-8",
    "NAME_FR" text COLLATE pg_catalog."C.UTF-8",
    "NAME_ES" text COLLATE pg_catalog."C.UTF-8",
    "NAME_RU" text COLLATE pg_catalog."C.UTF-8",
    "NAME_AR" text COLLATE pg_catalog."C.UTF-8",
    "NAME_ZH" text COLLATE pg_catalog."C.UTF-8",
    "ISO2" text COLLATE pg_catalog."C.UTF-8",
    "ISO3" text COLLATE pg_catalog."C.UTF-8"
);


--
-- TOC entry 162 (class 1259 OID 16400)
-- Name: QuestionType; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE "QuestionType" (
    "ID" integer NOT NULL,
    type text
);


--
-- TOC entry 166 (class 1259 OID 16510)
-- Name: Questions; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE "Questions" (
    "ID" integer NOT NULL,
    "order" integer,
    name_e text COLLATE pg_catalog."C.UTF-8",
    name_f text COLLATE pg_catalog."C.UTF-8",
    name_s text COLLATE pg_catalog."C.UTF-8",
    name_c text COLLATE pg_catalog."C.UTF-8",
    name_r text COLLATE pg_catalog."C.UTF-8",
    name_a text COLLATE pg_catalog."C.UTF-8",
    type integer,
    title text COLLATE pg_catalog."C.UTF-8",
    deleted integer DEFAULT 0 NOT NULL
);


--
-- TOC entry 164 (class 1259 OID 16477)
-- Name: QuestionsFields; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE "QuestionsFields" (
    "ID" integer NOT NULL,
    "question_ID" integer,
    type integer,
    text_e text COLLATE pg_catalog."C.UTF-8",
    text_f text COLLATE pg_catalog."C.UTF-8",
    text_s text COLLATE pg_catalog."C.UTF-8",
    text_c text COLLATE pg_catalog."C.UTF-8",
    text_r text COLLATE pg_catalog."C.UTF-8",
    text_a text COLLATE pg_catalog."C.UTF-8",
    name text COLLATE pg_catalog."C.UTF-8",
    controlled_list integer
);


--
-- TOC entry 167 (class 1259 OID 16525)
-- Name: QuestionsTables; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE "QuestionsTables" (
    "ID" integer NOT NULL,
    name text COLLATE pg_catalog."C.UTF-8",
    columns integer,
    rows integer,
    deleted integer DEFAULT 0 NOT NULL
);


--
-- TOC entry 170 (class 1259 OID 16671)
-- Name: QuestionsTablesColumns; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE "QuestionsTablesColumns" (
    "ID" integer NOT NULL,
    table_id integer,
    "order" integer,
    header_e text COLLATE pg_catalog."C.UTF-8",
    header_f text COLLATE pg_catalog."C.UTF-8",
    header_s text COLLATE pg_catalog."C.UTF-8",
    header_c text COLLATE pg_catalog."C.UTF-8",
    header_r text COLLATE pg_catalog."C.UTF-8",
    header_a text COLLATE pg_catalog."C.UTF-8",
    deleted integer DEFAULT 0 NOT NULL
);


--
-- TOC entry 169 (class 1259 OID 16593)
-- Name: QuestionsTablesFields; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE "QuestionsTablesFields" (
    "ID" integer NOT NULL,
    table_id integer,
    column_id integer,
    row_id integer,
    type integer,
    text_e text COLLATE pg_catalog."C.UTF-8",
    text_f text COLLATE pg_catalog."C.UTF-8",
    text_s text COLLATE pg_catalog."C.UTF-8",
    text_c text COLLATE pg_catalog."C.UTF-8",
    text_r text COLLATE pg_catalog."C.UTF-8",
    text_a text COLLATE pg_catalog."C.UTF-8",
    name text COLLATE pg_catalog."C.UTF-8",
    controlled_list integer,
    default_value text COLLATE pg_catalog."C.UTF-8",
    deleted integer DEFAULT 0 NOT NULL
);


--
-- TOC entry 168 (class 1259 OID 16554)
-- Name: QuestionsTablesRows; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE "QuestionsTablesRows" (
    "ID" integer NOT NULL,
    multi smallint,
    "table_ID" integer,
    "order" integer,
    name text COLLATE pg_catalog."C.UTF-8",
    deleted integer DEFAULT 0 NOT NULL
);


--
-- TOC entry 163 (class 1259 OID 16445)
-- Name: Species; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE "Species" (
    "ID" integer NOT NULL,
    value text COLLATE pg_catalog."C.UTF-8",
    name_e text COLLATE pg_catalog."C.UTF-8",
    name_f text COLLATE pg_catalog."C.UTF-8",
    name_s text COLLATE pg_catalog."C.UTF-8",
    name_c text COLLATE pg_catalog."C.UTF-8",
    name_r text COLLATE pg_catalog."C.UTF-8",
    name_a text COLLATE pg_catalog."C.UTF-8",
    scientific_name text COLLATE pg_catalog."C.UTF-8"
);


--
-- TOC entry 175 (class 1259 OID 17052)
-- Name: Status; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE "Status" (
    "ID" integer NOT NULL,
    status text COLLATE pg_catalog."C.UTF-8"
);


--
-- TOC entry 174 (class 1259 OID 16893)
-- Name: Survey; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE "Survey" (
    "ID" integer NOT NULL,
    date date,
    country integer,
    name text COLLATE pg_catalog."C.UTF-8",
    prepared_by text COLLATE pg_catalog."C.UTF-8",
    deleted integer DEFAULT 0,
    inserted_date date,
    modified_date date
);


--
-- TOC entry 172 (class 1259 OID 16760)
-- Name: SurveyAnswers; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE "SurveyAnswers" (
    "ID" integer NOT NULL,
    survey_id integer,
    field_id integer,
    table_id integer,
    field text COLLATE pg_catalog."C.UTF-8",
    value text COLLATE pg_catalog."C.UTF-8",
    table_row_id integer,
    table_row_multi_sort integer,
    deleted integer DEFAULT 0,
    value_opt text COLLATE pg_catalog."C.UTF-8"
);


--
-- TOC entry 171 (class 1259 OID 16758)
-- Name: SurveyAnswers_ID_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "SurveyAnswers_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 1992 (class 0 OID 0)
-- Dependencies: 171
-- Name: SurveyAnswers_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "SurveyAnswers_ID_seq" OWNED BY "SurveyAnswers"."ID";


--
-- TOC entry 177 (class 1259 OID 17069)
-- Name: SurveyStatus; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE "SurveyStatus" (
    "ID" integer NOT NULL,
    survey_id integer,
    question_id integer,
    status integer DEFAULT 1
);


--
-- TOC entry 176 (class 1259 OID 17067)
-- Name: SurveyStatus_ID_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "SurveyStatus_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 1993 (class 0 OID 0)
-- Dependencies: 176
-- Name: SurveyStatus_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "SurveyStatus_ID_seq" OWNED BY "SurveyStatus"."ID";


--
-- TOC entry 173 (class 1259 OID 16891)
-- Name: Survey_ID_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "Survey_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 1994 (class 0 OID 0)
-- Dependencies: 173
-- Name: Survey_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "Survey_ID_seq" OWNED BY "Survey"."ID";


--
-- TOC entry 1827 (class 2604 OID 16896)
-- Name: ID; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "Survey" ALTER COLUMN "ID" SET DEFAULT nextval('"Survey_ID_seq"'::regclass);


--
-- TOC entry 1825 (class 2604 OID 16763)
-- Name: ID; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "SurveyAnswers" ALTER COLUMN "ID" SET DEFAULT nextval('"SurveyAnswers_ID_seq"'::regclass);


--
-- TOC entry 1829 (class 2604 OID 17072)
-- Name: ID; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "SurveyStatus" ALTER COLUMN "ID" SET DEFAULT nextval('"SurveyStatus_ID_seq"'::regclass);


--
-- TOC entry 1971 (class 0 OID 16499)
-- Dependencies: 165
-- Data for Name: ControlledLists; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (1, 'Increasing', '0', 'Increasing', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (1, 'Stable', '1', 'Stable', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (1, 'Decreasing', '2', 'Decreasing', NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (1, 'Stopped', '3', 'Stopped', NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (1, 'Still in Research and Development', '4', 'Still in Research and Development', NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (1, 'Fluctuating', '5', 'Fluctuating', NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (1, 'Not known', '6', 'Not known', NULL, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (2, 'Yes', '0', 'Yes', NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (2, 'No', '1', 'No', NULL, NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (2, 'Mostly Yes', '2', 'Mostly Yes', NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (2, 'Mostly No', '3', 'Mostly No', NULL, NULL, NULL, NULL, NULL, 10, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (3, 'Not at all', '0', 'Not at all', NULL, NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (3, 'To a minor extent', '1', 'To a minor extent', NULL, NULL, NULL, NULL, NULL, 12, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (3, 'To some extent', '2', 'To some extent', NULL, NULL, NULL, NULL, NULL, 13, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (3, 'To a great extent', '3', 'To a great extent', NULL, NULL, NULL, NULL, NULL, 14, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (4, 'Traditional selective breeding', '1', 'Traditional selective breeding', NULL, NULL, NULL, NULL, NULL, 15, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (5, 'Hybrids', '1', 'Hybrids', NULL, NULL, NULL, NULL, NULL, 16, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (6, 'Triploids and other polyploids', '1', 'Triploids and other polyploids', NULL, NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (7, 'Mono-sex production', '1', 'Mono-sex production', NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (8, 'Other', '1', 'Other', NULL, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (9, 'Private Sector', '1', 'Private Sector', NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (9, 'Public Sector', '2', 'Public Sector', NULL, NULL, NULL, NULL, NULL, 21, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (9, 'Private/Public partnership', '3', 'Private/Public partnership', NULL, NULL, NULL, NULL, NULL, 22, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (10, 'Introduced', '1', 'Introduced', NULL, NULL, NULL, NULL, NULL, 24, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (11, 'Wild Type', '1', 'Wild Type', NULL, NULL, NULL, NULL, NULL, 25, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (11, 'Selective bred type', '2', 'Selective bred type', NULL, NULL, NULL, NULL, NULL, 26, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (11, 'Hybrids', '3', 'Hybrids', NULL, NULL, NULL, NULL, NULL, 27, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (11, 'Cross breeds', '4', 'Cross breeds', NULL, NULL, NULL, NULL, NULL, 28, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (11, 'Strains', '5', 'Strains', NULL, NULL, NULL, NULL, NULL, 29, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (11, 'Varieties', '6', 'Varieties', NULL, NULL, NULL, NULL, NULL, 30, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (11, 'Polyploids', '7', 'Polyploids', NULL, NULL, NULL, NULL, NULL, 31, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (12, 'Yes', '0', 'Yes', NULL, NULL, NULL, NULL, NULL, 32, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (12, 'No', '1', 'No', NULL, NULL, NULL, NULL, NULL, 33, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (12, 'Not Known', '2', 'Not Known', NULL, NULL, NULL, NULL, NULL, 34, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (13, 'Increasing', '0', 'Increasing', NULL, NULL, NULL, NULL, NULL, 35, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (13, 'Stable', '1', 'Stable', NULL, NULL, NULL, NULL, NULL, 36, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (14, 'Selective breeding', '1', 'Selective breeding', NULL, NULL, NULL, NULL, NULL, 40, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (14, 'Hybridization', '2', 'Hybridization', NULL, NULL, NULL, NULL, NULL, 41, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (14, 'Polyploidy (chromosome set manipulation)', '3', 'Polyploidy (chromosome set manipulation)', NULL, NULL, NULL, NULL, NULL, 42, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (14, 'Marker assisted selection', '5', 'Marker assisted selection', NULL, NULL, NULL, NULL, NULL, 44, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (14, 'Other (specify in comment)', '6', 'Other (specify in comment)', NULL, NULL, NULL, NULL, NULL, 45, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (18, 'Import', '1', 'Import', NULL, NULL, NULL, NULL, NULL, 54, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (18, 'Export', '2', 'Export', NULL, NULL, NULL, NULL, NULL, 55, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (19, 'DNA', '1', 'DNA', NULL, NULL, NULL, NULL, NULL, 56, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (19, 'Genes', '2', 'Genes', NULL, NULL, NULL, NULL, NULL, 57, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (19, 'Gametes', '3', 'Gametes', NULL, NULL, NULL, NULL, NULL, 58, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (19, 'Tissues', '4', 'Tissues', NULL, NULL, NULL, NULL, NULL, 59, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (19, 'Embryos', '5', 'Embryos', NULL, NULL, NULL, NULL, NULL, 60, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (19, 'Living specimens', '6', 'Living specimens', NULL, NULL, NULL, NULL, NULL, 61, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (19, 'Other', '7', 'Other', NULL, NULL, NULL, NULL, NULL, 62, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (20, 'Capture fisheries', '1', 'Capture fisheries', NULL, NULL, NULL, NULL, NULL, 63, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (20, 'Recreational fishery', '2', 'Recreational fishery', NULL, NULL, NULL, NULL, NULL, 64, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (20, 'Aquaria', '3', 'Aquaria', NULL, NULL, NULL, NULL, NULL, 65, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (20, 'Biological control', '4', 'Biological control', NULL, NULL, NULL, NULL, NULL, 66, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (20, 'Research and develpment', '5', 'Research and develpment', NULL, NULL, NULL, NULL, NULL, 67, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (20, 'Other (specify in comments)', '6', 'Other (specify in comments)', NULL, NULL, NULL, NULL, NULL, 68, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (21, 'Straddling', '1', 'Straddling', NULL, NULL, NULL, NULL, NULL, 69, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (21, 'Transboundary', '2', 'Transboundary', NULL, NULL, NULL, NULL, NULL, 70, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (21, 'Introduced', '3', 'Introduced', NULL, NULL, NULL, NULL, NULL, 71, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (21, 'Native', '4', 'Native', NULL, NULL, NULL, NULL, NULL, 72, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (22, 'Increasing', '0', 'Increasing', NULL, NULL, NULL, NULL, NULL, 73, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (22, 'Stable', '1', 'Stable', NULL, NULL, NULL, NULL, NULL, 74, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (23, 'Interdital', '1', 'Interdital', NULL, NULL, NULL, NULL, NULL, 78, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (23, 'Coastal in EEZ', '2', 'Coastal in EEZ', NULL, NULL, NULL, NULL, NULL, 79, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (23, 'High seas', '3', 'High seas', NULL, NULL, NULL, NULL, NULL, 80, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (23, 'Lake', '4', 'Lake', NULL, NULL, NULL, NULL, NULL, 81, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (23, 'Reservoir', '5', 'Reservoir', NULL, NULL, NULL, NULL, NULL, 82, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (23, 'River', '6', 'River', NULL, NULL, NULL, NULL, NULL, 83, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (23, 'Swamp', '7', 'Swamp', NULL, NULL, NULL, NULL, NULL, 84, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (23, 'Other (specify)', '8', 'Other (specify)', NULL, NULL, NULL, NULL, NULL, 85, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (24, 'Increasing', '0', 'Increasing', NULL, NULL, NULL, NULL, NULL, 86, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (24, 'Stable', '1', 'Stable', NULL, NULL, NULL, NULL, NULL, 87, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (24, 'Decreasing', '2', 'Decreasing', NULL, NULL, NULL, NULL, NULL, 88, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (24, 'Not known', '4', 'Not known', NULL, NULL, NULL, NULL, NULL, 89, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (25, 'Loss of habitat', '1', 'Loss of habitat', NULL, NULL, NULL, NULL, NULL, 90, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (25, 'Climate', '2', 'Climate', NULL, NULL, NULL, NULL, NULL, 91, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (25, 'Invasive species', '3', 'Invasive species', NULL, NULL, NULL, NULL, NULL, 92, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (26, 'Strongly positive', '0', 'Strongly positive', NULL, NULL, NULL, NULL, NULL, 96, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (26, 'Positive', '1', 'Positive', NULL, NULL, NULL, NULL, NULL, 97, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (26, 'Negative', '2', 'Negative', NULL, NULL, NULL, NULL, NULL, 98, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (26, 'Strongly negative', '3', 'Strongly negative', NULL, NULL, NULL, NULL, NULL, 99, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (26, 'No effect', '4', 'No effect', NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (26, 'Unknown', '5', 'Unknown', NULL, NULL, NULL, NULL, NULL, 101, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (27, 'To a great extent', '0', 'To a great extent', NULL, NULL, NULL, NULL, NULL, 102, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (27, 'To a limited extent', '1', 'To a limited extent', NULL, NULL, NULL, NULL, NULL, 103, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (27, 'Not at all', '2', 'Not at all', NULL, NULL, NULL, NULL, NULL, 104, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (27, 'Not applicable', '3', 'Not applicable', NULL, NULL, NULL, NULL, NULL, 105, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (28, '1', '1', '1', '1', '1', '1', '1', '1', 106, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (28, '2', '2', '2', '2', '2', '2', '2', '2', 107, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (28, '3', '3', '3', '3', '3', '3', '3', '3', 108, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (28, '4', '4', '4', '4', '4', '4', '4', '4', 109, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (10, 'Native', '0', 'Native', NULL, NULL, NULL, NULL, NULL, 23, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 47, 'Countries', 'ISO3', 'NAME_EN');
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (13, 'Decreasing', '3', 'Decreasing', NULL, NULL, NULL, NULL, NULL, 37, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (13, 'Stopped', '4', 'Stopped', NULL, NULL, NULL, NULL, NULL, 38, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (13, 'Not Known', '5', 'Not Known', NULL, NULL, NULL, NULL, NULL, 39, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (22, 'Depleted', '4', 'Depleted', NULL, NULL, NULL, NULL, NULL, 76, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (22, 'Not known', '5', 'Not known', NULL, NULL, NULL, NULL, NULL, 77, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (25, 'Others', '6', 'Others', NULL, NULL, NULL, NULL, NULL, 94, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (25, 'Pollution', '4', 'Pollution', NULL, NULL, NULL, NULL, NULL, 93, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (25, 'Not known', '7', 'Not known', NULL, NULL, NULL, NULL, NULL, 95, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (17, 'No genetic alteration', '1', 'No genetic alteration', NULL, NULL, NULL, NULL, NULL, 48, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (17, 'Traditional selective breeding', '2', 'Traditional selective breeding', NULL, NULL, NULL, NULL, NULL, 49, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (17, 'Hybrids', '3', 'Hybrids', NULL, NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (17, 'Triploids and other polyploids', '4', 'Triploids and other polyploids', NULL, NULL, NULL, NULL, NULL, 51, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (17, 'Mono-sex production', '5', 'Mono-sex production', NULL, NULL, NULL, NULL, NULL, 52, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (17, 'Other', '6', 'Other', NULL, NULL, NULL, NULL, NULL, 53, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 46, 'Species', 'value', 'name_e,scientific_name');
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (28, '5', '5', '5', '5', '5', '5', '5', '5', 110, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (28, '6', '6', '6', '6', '6', '6', '6', '6', 111, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (28, '7', '7', '7', '7', '7', '7', '7', '7', 112, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (28, '8', '8', '8', '8', '8', '8', '8', '8', 113, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (28, '9', '9', '9', '9', '9', '9', '9', '9', 114, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (28, '10', '10', '10', '10', '10', '10', '10', '10', 115, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (29, 'Yes', '0', 'Yes', NULL, NULL, NULL, NULL, NULL, 116, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (29, 'Not yet, but planned to be included', '1', 'Not yet, but planned to be included', NULL, NULL, NULL, NULL, NULL, 117, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (29, 'No', '2', 'No', NULL, NULL, NULL, NULL, NULL, 118, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (29, 'Unknown', '4', 'Unknown', NULL, NULL, NULL, NULL, NULL, 119, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (30, 'Yes', '0', 'Yes', NULL, NULL, NULL, NULL, NULL, 120, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (30, 'Not yet, but under development', '1', 'Not yet, but under development', NULL, NULL, NULL, NULL, NULL, 121, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (30, 'No', '2', 'No', NULL, NULL, NULL, NULL, NULL, 122, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (31, 'Yes', '0', 'Yes', NULL, NULL, NULL, NULL, NULL, 124, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (31, 'No', '1', 'No', NULL, NULL, NULL, NULL, NULL, 125, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (32, 'Very effective', '0', 'Very effective', NULL, NULL, NULL, NULL, NULL, 126, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (32, 'Somewhat effective', '1', 'Somewhat effective', NULL, NULL, NULL, NULL, NULL, 127, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (32, 'Not effective', '2', 'Not effective', NULL, NULL, NULL, NULL, NULL, 128, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (32, 'Unknown', '4', 'Unknown', NULL, NULL, NULL, NULL, NULL, 129, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (33, 'Direct human consumption', '1', 'Direct human consumption', NULL, NULL, NULL, NULL, NULL, 130, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (33, 'Live feed organism', '2', 'Live feed organism', NULL, NULL, NULL, NULL, NULL, 131, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (33, 'Other', '3', 'Other', NULL, NULL, NULL, NULL, NULL, 132, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (34, 'In vitro collection of gametes', '1', 'In vitro collection of gametes', NULL, NULL, NULL, NULL, NULL, 133, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (34, 'In vitro collextion of embryos', '2', 'In vitro collextion of embryos', NULL, NULL, NULL, NULL, NULL, 134, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (34, 'In vitro collection of tissues', '3', 'In vitro collection of tissues', NULL, NULL, NULL, NULL, NULL, 135, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (34, 'Spores', '4', 'Spores', NULL, NULL, NULL, NULL, NULL, 136, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (34, 'Other', '5', 'Other', NULL, NULL, NULL, NULL, NULL, 137, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (35, 'Aquaculture facilities', '1', 'Aquaculture facilities', NULL, NULL, NULL, NULL, NULL, 138, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (35, 'Research facilities', '2', 'Research facilities', NULL, NULL, NULL, NULL, NULL, 139, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (35, 'Universities', '3', 'Universities', NULL, NULL, NULL, NULL, NULL, 140, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (35, 'Zoos and aquaria', '4', 'Zoos and aquaria', NULL, NULL, NULL, NULL, NULL, 141, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (35, 'Other', '5', 'Other', NULL, NULL, NULL, NULL, NULL, 142, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (36, 'Conservation', '1', 'Conservation', NULL, NULL, NULL, NULL, NULL, 143, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (36, 'Production', '2', 'Production', NULL, NULL, NULL, NULL, NULL, 144, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (36, 'Feed manufactoring', '3', 'Feed manufactoring', NULL, NULL, NULL, NULL, NULL, 145, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (36, 'Breeding', '4', 'Breeding', NULL, NULL, NULL, NULL, NULL, 146, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (36, 'Research', '5', 'Research', NULL, NULL, NULL, NULL, NULL, 147, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (36, 'Marketing', '6', 'Marketing', NULL, NULL, NULL, NULL, NULL, 148, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (36, 'Processing', '7', 'Processing', NULL, NULL, NULL, NULL, NULL, 149, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (36, 'Advocacy', '8', 'Advocacy', NULL, NULL, NULL, NULL, NULL, 150, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (36, 'Outreach/Extension', '9', 'Outreach/Extension', NULL, NULL, NULL, NULL, NULL, 151, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (36, 'Other (specify)', '10', 'Other (specify)', NULL, NULL, NULL, NULL, NULL, 152, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (37, 'DNA', '1', 'DNA', NULL, NULL, NULL, NULL, NULL, 153, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (37, 'Stock, breed or variety', '2', 'Stock, breed or variety', NULL, NULL, NULL, NULL, NULL, 154, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (37, 'Species', '3', 'Species', NULL, NULL, NULL, NULL, NULL, 155, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (37, 'Other', '4', 'Other', NULL, NULL, NULL, NULL, NULL, 156, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (38, 'Genes or molecules only', '1', 'Genes or molecules only', NULL, NULL, NULL, NULL, NULL, 157, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (38, 'Aquaculture', '2', 'Aquaculture', NULL, NULL, NULL, NULL, NULL, 158, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (38, 'Capture fisheries', '3', 'Capture fisheries', NULL, NULL, NULL, NULL, NULL, 159, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (38, 'Conservation', '4', 'Conservation', NULL, NULL, NULL, NULL, NULL, 160, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (38, 'Intellectual property protection', '5', 'Intellectual property protection', NULL, NULL, NULL, NULL, NULL, 161, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (38, 'Importation', '6', 'Importation', NULL, NULL, NULL, NULL, NULL, 162, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (38, 'Trade and commerce', '7', 'Trade and commerce', NULL, NULL, NULL, NULL, NULL, 163, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (38, 'Access and benefit sharing', '8', 'Access and benefit sharing', NULL, NULL, NULL, NULL, NULL, 164, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (38, 'Other', '9', 'Other', NULL, NULL, NULL, NULL, NULL, 165, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (39, 'Genetic resource management', '1', 'Genetic resource management', NULL, NULL, NULL, NULL, NULL, 166, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (39, 'Basic knowledge on aquatic genetic resources', '2', 'Basic knowledge on aquatic genetic resources', NULL, NULL, NULL, NULL, NULL, 167, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (39, 'Characterization and monitoring of aquatic genetic resources', '3', 'Characterization and monitoring of aquatic genetic resources', NULL, NULL, NULL, NULL, NULL, 168, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (39, 'Genetic improvement', '4', 'Genetic improvement', NULL, NULL, NULL, NULL, NULL, 169, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (39, 'Economic valuation of aquatic genetic resources', '5', 'Economic valuation of aquatic genetic resources', NULL, NULL, NULL, NULL, NULL, 170, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (39, 'Conservation of aquatic genetic resources', '6', 'Conservation of aquatic genetic resources', NULL, NULL, NULL, NULL, NULL, 171, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (39, 'Communication on aquatic genetic resources', '7', 'Communication on aquatic genetic resources', NULL, NULL, NULL, NULL, NULL, 172, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (39, 'Access and distribution of aquatic genetic resources', '8', 'Access and distribution of aquatic genetic resources', NULL, NULL, NULL, NULL, NULL, 173, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (39, 'Other', '9', 'Other', NULL, NULL, NULL, NULL, NULL, 174, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (40, 'Undergraduate', '1', 'Undergraduate', NULL, NULL, NULL, NULL, NULL, 175, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (40, 'Post-graduate', '2', 'Post-graduate', NULL, NULL, NULL, NULL, NULL, 176, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (40, 'Training', '3', 'Training', NULL, NULL, NULL, NULL, NULL, 177, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (40, 'Extension', '4', 'Extension', NULL, NULL, NULL, NULL, NULL, 178, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (41, 'Improve basic knowledge on aquatic genetic resources', '1', 'Improve basic knowledge on aquatic genetic resources', NULL, NULL, NULL, NULL, NULL, 179, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (41, 'Improve capacities for characterization and monitoring of aquatic genetic resources', '2', 'Improve capacities for characterization and monitoring of aquatic genetic resources', NULL, NULL, NULL, NULL, NULL, 180, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (41, 'Improve capacities for genetic improvement', '3', 'Improve capacities for genetic improvement', NULL, NULL, NULL, NULL, NULL, 181, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (41, 'Improve capacities for economic valuation of aquatic genetic resources', '4', 'Improve capacities for economic valuation of aquatic genetic resources', NULL, NULL, NULL, NULL, NULL, 182, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (41, 'Improve capacities for conservation of aquatic genetic resources', '5', 'Improve capacities for conservation of aquatic genetic resources', NULL, NULL, NULL, NULL, NULL, 183, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (41, 'Improve communication on aquatic genetic resources', '6', 'Improve communication on aquatic genetic resources', NULL, NULL, NULL, NULL, NULL, 184, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (41, 'Improve access to and distribution of aquatic genetic resources', '7', 'Improve access to and distribution of aquatic genetic resources', NULL, NULL, NULL, NULL, NULL, 185, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (42, 'DNA sequence', '1', 'DNA sequence', NULL, NULL, NULL, NULL, NULL, 186, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (42, 'Genes and genotype', '2', 'Genes and genotype', NULL, NULL, NULL, NULL, NULL, 187, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (42, 'Breeds, strains or stocks', '3', 'Breeds, strains or stocks', NULL, NULL, NULL, NULL, NULL, 188, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (42, 'Species names', '4', 'Species names', NULL, NULL, NULL, NULL, NULL, 189, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (42, 'Production figures', '5', 'Production figures', NULL, NULL, NULL, NULL, NULL, 190, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (42, 'Distribution', '6', 'Distribution', NULL, NULL, NULL, NULL, NULL, 191, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (42, 'Level of endangerment', '7', 'Level of endangerment', NULL, NULL, NULL, NULL, NULL, 192, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (42, 'Other', '8', 'Other', NULL, NULL, NULL, NULL, NULL, 193, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (43, 'Fish farmers', '1', 'Fish farmers', NULL, NULL, NULL, NULL, NULL, 194, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (43, 'Fishers in capture fisheries', '2', 'Fishers in capture fisheries', NULL, NULL, NULL, NULL, NULL, 195, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (43, 'Fish hatchery people', '3', 'Fish hatchery people', NULL, NULL, NULL, NULL, NULL, 196, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (43, 'People involved in marketing', '4', 'People involved in marketing', NULL, NULL, NULL, NULL, NULL, 197, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (43, 'Government resource managers', '5', 'Government resource managers', NULL, NULL, NULL, NULL, NULL, 198, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (43, 'Fishing or aquaculture associations', '6', 'Fishing or aquaculture associations', NULL, NULL, NULL, NULL, NULL, 199, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (43, 'Aquatic protected area managers', '7', 'Aquatic protected area managers', NULL, NULL, NULL, NULL, NULL, 200, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (43, 'University and academic people', '8', 'University and academic people', NULL, NULL, NULL, NULL, NULL, 201, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (43, 'Non-Governmental Organizations', '9', 'Non-Governmental Organizations', NULL, NULL, NULL, NULL, NULL, 202, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (43, 'Intergovernmental Organizations', '10', 'Intergovernmental Organizations', NULL, NULL, NULL, NULL, NULL, 203, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (43, 'Policy makers', '11', 'Policy makers', NULL, NULL, NULL, NULL, NULL, 204, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (43, 'Donors', '12', 'Donors', NULL, NULL, NULL, NULL, NULL, 205, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (43, 'Consumers', '13', 'Consumers', NULL, NULL, NULL, NULL, NULL, 206, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (43, 'Politicians', '14', 'Politicians', NULL, NULL, NULL, NULL, NULL, 207, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (44, 'To a great extent', '0', 'To a great extent', NULL, NULL, NULL, NULL, NULL, 208, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (44, 'To some extent', '1', 'To some extent', NULL, NULL, NULL, NULL, NULL, 209, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (44, 'None', '2', 'None', NULL, NULL, NULL, NULL, NULL, 210, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (44, 'Unknown', '3', 'Unknown', NULL, NULL, NULL, NULL, NULL, 211, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (14, 'Monosex', '4', 'Monosex', NULL, NULL, NULL, NULL, NULL, 43, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (45, 'DNA', '1', 'DNA', NULL, NULL, NULL, NULL, NULL, 212, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (45, 'Gametes', '3', 'Gametes', NULL, NULL, NULL, NULL, NULL, 214, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (45, 'Tissues', '4', 'Tissues', NULL, NULL, NULL, NULL, NULL, 215, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (45, 'Embryos', '5', 'Embryos', NULL, NULL, NULL, NULL, NULL, 216, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (45, 'Living specimens', '6', 'Living specimens', NULL, NULL, NULL, NULL, NULL, 217, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (13, 'Fluctuating', '2', 'Fluctuating', NULL, NULL, NULL, NULL, NULL, 218, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (22, 'Decreasing', '3', 'Decreasing', NULL, NULL, NULL, NULL, NULL, 75, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (22, 'Fluctuating', '2', 'Fluctuating', NULL, NULL, NULL, NULL, NULL, 219, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (25, 'Rehabilitation of habitat', '5', 'Rehabilitation of habitat', NULL, NULL, NULL, NULL, NULL, 220, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (45, 'Genes', '2', 'Genes', NULL, NULL, NULL, NULL, NULL, 213, NULL, NULL, NULL);
INSERT INTO "ControlledLists" (cl_id, key, value, text_e, text_f, text_s, text_c, text_r, text_a, pk, external_cl, external_cl_key, external_cl_value) VALUES (30, 'Unknown', '3', 'Unknown', NULL, NULL, NULL, NULL, NULL, 123, NULL, NULL, NULL);


--
-- TOC entry 1967 (class 0 OID 16389)
-- Dependencies: 161
-- Data for Name: Countries; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (54, 'Eritrea', 'Érythrée', 'Eritrea', 'Эритрея', 'إريتريا', '厄立特里亚', 'ER', 'ERI');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (57, 'European Union (Member Organization)', NULL, NULL, NULL, NULL, NULL, 'EU', 'EUR');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (128, 'Palau', 'Palaos', 'Palau', 'Палау', 'بالاو', '帕劳', 'PW', 'PLW');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (1, 'Albania', 'Albanie', 'Albania', 'Албания', 'ألبانيا', '阿尔巴尼亚', 'AL', 'ALB');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (2, 'Algeria', 'Algérie', 'Argelia', 'Алжир', 'الجزائر', '阿尔及利亚', 'DZ', 'DZA');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (6, 'Argentina', 'Argentine', 'Argentina', 'Аргентина', 'الأرجنتين', '阿根廷', 'AR', 'ARG');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (9, 'Austria', 'Autriche', 'Austria', 'Австрия', 'النمسا', '奥地利', 'AT', 'AUT');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (12, 'Bahrain', 'Bahreïn', 'Bahrein', 'Бахрейн', 'البحرين', '巴 林', 'BH', 'BHR');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (14, 'Barbados', 'Barbade', 'Barbados', 'Барбадос', 'بربادوس', '巴巴多斯', 'BB', 'BRB');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (16, 'Belgium', 'Belgique', 'Bélgica', 'Бельгия', 'بلجيكا', '比利时', 'BE', 'BEL');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (18, 'Benin', 'Bénin', 'Benin', 'Бенин', 'بنن', '贝 宁', 'BJ', 'BEN');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (19, 'Bhutan', 'Bhoutan', 'Bhután', 'Бутан', 'بوتان', '不 丹', 'BT', 'BTN');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (24, 'Bulgaria', 'Bulgarie', 'Bulgaria', 'Болгария', 'بلغاريا', '保加利亚', 'BG', 'BGR');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (26, 'Burundi', 'Burundi', 'Burundi', 'Бурунди', 'بوروندي', '布隆迪', 'BI', 'BDI');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (29, 'Cameroon', 'Cameroun', 'Camerún', 'Камерун', 'الكاميرون', '喀麦隆', 'CM', 'CMR');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (27, 'Cabo Verde', 'Cabo Verde', 'Cabo Verde', 'Кабо-Верде', 'كابو فيردي', '佛得角', 'CV', 'CPV');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (32, 'Chad', 'Tchad', 'Chad', 'Чад', 'تشاد', '乍 得', 'TD', 'TCD');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (33, 'Chile', 'Chili', 'Chile', 'Чили', 'شيلى', '智 利', 'CL', 'CHL');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (35, 'Colombia', 'Colombie', 'Colombia', 'Колумбия', 'كولومبيا', '哥伦比亚', 'CO', 'COL');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (38, 'Costa Rica', 'Costa Rica', 'Costa Rica', 'Коста-Рика', 'كوستاريكا', '哥斯达黎加', 'CR', 'CRI');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (41, 'Cuba', 'Cuba', 'Cuba', 'Куба', 'كوبا', '古 巴', 'CU', 'CUB');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (46, 'Denmark', 'Danemark', 'Dinamarca', 'Дания', 'الدانمرك', '丹 麦', 'DK', 'DNK');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (48, 'Dominica', 'Dominique', 'Dominica', 'Доминика', 'دومينيكا', '多米尼克', 'DM', 'DMA');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (50, 'Ecuador', 'Équateur', 'Ecuador', 'Эквадор', 'إكوادور', '厄瓜多尔', 'EC', 'ECU');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (52, 'El Salvador', 'El Salvador', 'El Salvador', 'Сальвадор', 'السلفادور', '萨尔瓦多', 'SV', 'SLV');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (56, 'Ethiopia', 'Éthiopie', 'Etiopía', 'Эфиопия', 'إثيوبيا', '埃塞俄比亚', 'ET', 'ETH');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (60, 'Finland', 'Finlande', 'Finlandia', 'Финляндия', 'فنلندا', '芬 兰', 'FI', 'FIN');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (62, 'Gabon', 'Gabon', 'Gabón', 'Габон', 'غابون', '加 蓬', 'GA', 'GAB');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (65, 'Germany', 'Allemagne', 'Alemania', 'Германия', 'ألمانيا', '德 国', 'DE', 'DEU');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (66, 'Ghana', 'Ghana', 'Ghana', 'Гана', 'غانا', '加 纳', 'GH', 'GHA');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (68, 'Grenada', 'Grenade', 'Granada', 'Гренада', 'غرينادا', '格林纳达', 'GD', 'GRD');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (70, 'Guinea', 'Guinée', 'Guinea', 'Гвинея', 'غينيا', '几内亚', 'GN', 'GIN');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (72, 'Guyana', 'Guyana', 'Guyana', 'Гайана', 'غيانا', '圭亚那', 'GY', 'GUY');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (73, 'Haiti', 'Haïti', 'Haití', 'Гаити', 'هايتي', '海 地', 'HT', 'HTI');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (75, 'Iceland', 'Islande', 'Islandia', 'Исландия', 'آيسلندا', '冰 岛', 'IS', 'ISL');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (79, 'Iraq', 'Iraq', 'Iraq', 'Ирак', 'العراق', '伊拉克', 'IQ', 'IRQ');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (80, 'Ireland', 'Irlande', 'Irlanda', 'Ирландия', 'آيرلندا', '爱尔兰', 'IE', 'IRL');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (81, 'Israel', 'Israël', 'Israel', 'Израиль', 'إسرائيل', '以色列', 'IL', 'ISR');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (83, 'Jamaica', 'Jamaïque', 'Jamaica', 'Ямайка', 'جامايكا', '牙买加', 'JM', 'JAM');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (84, 'Japan', 'Japon', 'Japón', 'Япония', 'اليابان', '日 本', 'JP', 'JPN');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (87, 'Kenya', 'Kenya', 'Kenya', 'Кения', 'كينيا', '肯尼亚', 'KE', 'KEN');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (93, 'Lebanon', 'Liban', 'Líbano', 'Ливан', 'لبنان', '黎巴嫩', 'LB', 'LBN');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (94, 'Lesotho', 'Lesotho', 'Lesotho', 'Лесото', 'ليسوتو', '莱索托', 'LS', 'LSO');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (95, 'Liberia', 'Libéria', 'Liberia', 'Либерия', 'ليبريا', '利比里亚', 'LR', 'LBR');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (98, 'Luxembourg', 'Luxembourg', 'Luxemburgo', 'Люксембург', 'لكسمبرغ', '卢森堡', 'LU', 'LUX');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (100, 'Malawi', 'Malawi', 'Malawi', 'Малави', 'ملاوي', '马拉维', 'MW', 'MWI');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (102, 'Maldives', 'Maldives', 'Maldivas', 'Мальдивы', 'ملديف', '马尔代夫', 'MV', 'MDV');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (104, 'Malta', 'Malte', 'Malta', 'Мальта', 'مالطة', '马耳他', 'MT', 'MLT');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (107, 'Mauritius', 'Maurice', 'Mauricio', 'Маврикий', 'موريشيوس', '毛里求斯', 'MU', 'MUS');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (111, 'Mongolia', 'Mongolie', 'Mongolia', 'Монголия', 'منغوليا', '蒙 古', 'MN', 'MNG');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (114, 'Mozambique', 'Mozambique', 'Mozambique', 'Мозамбик', 'موزامبيق', '莫桑比克', 'MZ', 'MOZ');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (116, 'Namibia', 'Namibie', 'Namibia', 'Намибия', 'ناميبيا', '纳米比亚', 'NA', 'NAM');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (119, 'Netherlands', 'Pays-Bas', 'Países Bajos', 'Нидерланды', 'هولندا', '荷 兰', 'NL', 'NLD');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (121, 'Nicaragua', 'Nicaragua', 'Nicaragua', 'Никарагуа', 'نيكاراغوا', '尼加拉瓜', 'NI', 'NIC');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (123, 'Nigeria', 'Nigéria', 'Nigeria', 'Нигерия', 'نيجيريا', '尼日利亚', 'NG', 'NGA');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (126, 'Oman', 'Oman', 'Omán', 'Оман', 'عمان', '阿 曼', 'OM', 'OMN');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (44, 'Republic of Korea', 'République de Corée', 'República de Corea', 'Республика Корея', 'جمهورية كوريا', '大韩民国', 'KR', 'KOR');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (105, 'Marshall Islands', 'Îles Marshall', 'Islas Marshall', 'Маршалловы Острова', 'جزر مارشال', '马绍尔群岛', 'MH', 'MHL');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (92, 'Latvia', 'Lettonie', 'Letonia', 'Латвия', 'لاتفيا', '拉脱维亚', 'LV', 'LVA');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (55, 'Estonia', 'Estonie', 'Estonia', 'Эстония', 'إستونيا', '爱沙尼亚', 'EE', 'EST');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (3, 'Andorra', 'Andorre', 'Andorra', 'Андорра', 'أندورا', '安道尔', 'AD', 'AND');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (88, 'Kiribati', 'Kiribati', 'Kiribati', 'Кирибати', 'كيريباس', '基里巴斯', 'KI', 'KIR');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (110, 'Monaco', 'Monaco', 'Mónaco', 'Монако', 'موناكو', '摩纳哥', 'MC', 'MCO');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (124, 'Niue', 'Nioué', 'Niue', 'Ниуэ', 'نيوى', '纽 埃', 'NU', 'NIU');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (10, 'Azerbaijan', 'Azerbaïdjan', 'Azerbaiyán', 'Азербайджан', 'أذربيجان', '阿塞拜疆', 'AZ', 'AZE');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (40, 'Croatia', 'Croatie', 'Croacia', 'Хорватия', 'كرواتيا', '克罗地亚', 'HR', 'HRV');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (64, 'Georgia', 'Géorgie', 'Georgia', 'Грузия', 'جورجيا', '格鲁吉亚', 'GE', 'GEO');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (22, 'Brazil', 'Brésil', 'Brasil', 'Бразилия', 'البرازيل', '巴 西', 'BR', 'BRA');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (112, 'Montenegro', 'Monténégro', 'Montenegro', 'Черногория', 'الجبل الأسود', '黑山', 'ME', 'MNE');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (129, 'Panama', 'Panama', 'Panamá', 'Панама', 'بناما', '巴拿馬', 'PA', 'PAN');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (58, 'Faroe Islands (Associate Member)', 'Îles Féroé (Membre associé)', 'Islas Feroe (Miembro Asociado)', 'Фарерские Острова (ассоциированный член)', 'جزر فيرويه', '法罗群岛 (准成员)', 'FO', 'FRO');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (0, 'Afghanistan', 'Afghanistan', 'Afganistán', 'Афганистан', 'أفغانستان', '阿富汗', 'AF', 'AFG');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (4, 'Angola', 'Angola', 'Angola', 'Ангола', 'أنغولا', '安哥拉', 'AO', 'AGO');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (5, 'Antigua and Barbuda', 'Antigua-et-Barbuda', 'Antigua y Barbuda', 'Антигуа и Барбуда', 'أنتيغوا وبربودا', '安提瓜和巴布达', 'AG', 'ATG');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (8, 'Australia', 'Australie', 'Australia', 'Австралия', 'أستراليا', '澳大利亚', 'AU', 'AUS');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (11, 'Bahamas', 'Bahamas', 'Bahamas', 'Багамские Острова', 'جزر البهاما', '巴哈马', 'BS', 'BHS');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (13, 'Bangladesh', 'Bangladesh', 'Bangladesh', 'Бангладеш', 'بنغلاديش', '孟加拉国', 'BD', 'BGD');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (17, 'Belize', 'Belize', 'Belice', 'Белиз', 'بليز', '伯利兹', 'BZ', 'BLZ');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (20, 'Bolivia (Plurinational State of)', 'Bolivie (État plurinational de)', 'Bolivia (Estado Plurinacional de)', 'Боливия (Многонациональное Государство)', 'بوليفيا - دولة .. المتعددة القوميات', '玻利维亚（多民族国）', 'BO', 'BOL');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (25, 'Burkina Faso', 'Burkina Faso', 'Burkina Faso', 'Буркина-Фасо', 'بوركينا فاسو', '布基纳法索', 'BF', 'BFA');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (28, 'Cambodia', 'Cambodge', 'Camboya', 'Камбоджа', 'كمبوديا', '柬埔寨', 'KH', 'KHM');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (30, 'Canada', 'Canada', 'Canadá', 'Канада', 'كندا', '加拿大', 'CA', 'CAN');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (31, 'Central African Republic', 'République centrafricaine', 'República Centroafricana', 'Центральноафриканская Республика', 'جمهورية أفريقيا الوسطى', '中非共和国', 'CF', 'CAF');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (34, 'China', 'Chine', 'China', 'Китай', 'الصين', '中 国', 'CN', 'CHN');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (36, 'Comoros', 'Comores', 'Comoras', 'Коморские Острова', 'جزر القمر', '科摩罗', 'KM', 'COM');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (37, 'Cook Islands', 'Îles Cook', 'Islas Cook', 'Острова Кука', 'جزر كوك', '库克群岛', 'CK', 'COK');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (39, 'Côte d''Ivoire', 'Côte d''Ivoire', 'Côte d''Ivoire', 'Кот-д`Ивуар', 'كوت ديفوار', '科特迪瓦', 'CI', 'CIV');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (42, 'Cyprus', 'Chypre', 'Chipre', 'Кипр', 'قبرص', '塞浦路斯', 'CY', 'CYP');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (47, 'Djibouti', 'Djibouti', 'Djibouti', 'Джибути', 'جيبوتي', '吉布提', 'DJ', 'DJI');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (49, 'Dominican Republic', 'République dominicaine', 'República Dominicana', 'Доминиканская Республика', 'الجمهورية الدومينيكية', '多米尼加共和国', 'DO', 'DOM');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (51, 'Egypt', 'Égypte', 'Egipto', 'Египет', 'مصر', '埃 及', 'EG', 'EGY');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (53, 'Equatorial Guinea', 'Guinée équatoriale', 'Guinea Ecuatorial', 'Экваториальная Гвинея', 'غينيا الاستوائية', '赤道几内亚', 'GQ', 'GNQ');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (59, 'Fiji', 'Fidji', 'Fiji', 'Фиджи', 'فيجي', '斐济', 'FJ', 'FJI');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (61, 'France', 'France', 'Francia', 'Франция', 'فرنسا', '法  国', 'FR', 'FRA');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (63, 'Gambia', 'Gambie', 'Gambia', 'Гамбия', 'غامبيا', '冈比亚', 'GM', 'GMB');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (67, 'Greece', 'Grèce', 'Grecia', 'Греция', 'اليونان', '希 腊', 'GR', 'GRC');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (69, 'Guatemala', 'Guatemala', 'Guatemala', 'Гватемала', 'غواتيمالا', '危地马拉', 'GT', 'GTM');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (71, 'Guinea-Bissau', 'Guinée-Bissau', 'Guinea-Bissau', 'Гвинея-Бисау', 'غينيا - بيساو', '几内亚比绍', 'GW', 'GNB');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (74, 'Hungary', 'Hongrie', 'Hungría', 'Венгрия', 'هنغاريا', '匈牙利', 'HU', 'HUN');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (134, 'Poland', 'Pologne', 'Polonia', 'Польша', 'بولندا', '波 兰', 'PL', 'POL');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (135, 'Portugal', 'Portugal', 'Portugal', 'Португалия', 'البرتغال', '葡萄牙', 'PT', 'PRT');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (139, 'Romania', 'Roumanie', 'Rumania', 'Румыния', 'رومانيا', '罗马尼亚', 'RO', 'ROU');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (143, 'Saint Lucia', 'Sainte-Lucie', 'Santa Lucía', 'Сент-Люсия', 'سانت لوسيا', '圣卢西亚', 'LC', 'LCA');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (145, 'Samoa', 'Samoa', 'Samoa', 'Самоа', 'ساموا', '萨摩亚', 'WS', 'WSM');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (148, 'Saudi Arabia', 'Arabie saoudite', 'Arabia Saudita', 'Саудовская Аравия', 'المملكة العربية السعودية', '沙特阿拉伯', 'SA', 'SAU');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (149, 'Senegal', 'Sénégal', 'Senegal', 'Сенегал', 'السنغال', '塞内加尔', 'SN', 'SEN');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (152, 'Sierra Leone', 'Sierra Leone', 'Sierra Leona', 'Сьерра-Леоне', 'سيراليون', '塞拉利昂', 'SL', 'SLE');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (157, 'Somalia', 'Somalie', 'Somalia', 'Сомали', 'الصومال', '索马里', 'SO', 'SOM');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (161, 'Sri Lanka', 'Sri Lanka', 'Sri Lanka', 'Шри-Ланка', 'سري لانكا', '斯里兰卡', 'LK', 'LKA');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (163, 'Suriname', 'Suriname', 'Suriname', 'Суринам', 'سورينام', '苏里南', 'SR', 'SUR');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (165, 'Sweden', 'Suède', 'Suecia', 'Швеция', 'السويد', '瑞 典', 'SE', 'SWE');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (166, 'Switzerland', 'Suisse', 'Suiza', 'Швейцария', 'سويسرا', '瑞 士', 'CH', 'CHE');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (169, 'Thailand', 'Thaïlande', 'Tailandia', 'Таиланд', 'تايلند', '泰 国', 'TH', 'THA');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (174, 'Tonga', 'Tonga', 'Tonga', 'Тонга', 'تونغا', '汤 加', 'TO', 'TON');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (176, 'Tunisia', 'Tunisie', 'Túnez', 'Тунис', 'تونس', '突尼斯', 'TN', 'TUN');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (177, 'Turkey', 'Turquie', 'Turquía', 'Турция', 'تركيا', '土耳其', 'TR', 'TUR');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (183, 'United Kingdom', 'Royaume-Uni', 'Reino Unido', 'Соединенное Королевство', 'المملكة المتحدة', '联合王国', 'GB', 'GBR');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (186, 'Uruguay', 'Uruguay', 'Uruguay', 'Уругвай', 'أوروغواي', '乌拉圭', 'UY', 'URY');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (188, 'Vanuatu', 'Vanuatu', 'Vanuatu', 'Вануату', 'فانواتو', '瓦努阿图', 'VU', 'VUT');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (190, 'Viet Nam', 'Viet Nam', 'Viet Nam', 'Вьетнам', 'فييت نام', '越 南', 'VN', 'VNM');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (191, 'Yemen', 'Yémen', 'Yemen', 'Йемен', 'اليمن', '也 门', 'YE', 'YEM');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (192, 'Zambia', 'Zambie', 'Zambia', 'Замбия', 'زامبيا', '赞比亚', 'ZM', 'ZMB');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (158, 'South Africa', 'Afrique du Sud', 'Sudáfrica', 'Южная Африка', 'جنوب أفريقيا', '南 非', 'ZA', 'ZAF');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (181, 'Ukraine', 'Ukraine', 'Ucrania', 'Украина', 'أوكرانيا', '乌克兰', 'UA', 'UKR');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (153, 'Singapore', 'Singapour', 'Singapur', 'Сингапур', 'سنغافورة', '新加坡', 'SG', 'SGP');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (179, 'Tuvalu', 'Tuvalu', 'Tuvalu', 'Тувалу', 'توفالو', '图瓦卢', 'TV', 'TUV');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (168, 'Tajikistan', 'Tadjikistan', 'Tayikistán', 'Таджикистан', 'طاجيكستان', '塔吉克斯坦', 'TJ', 'TJK');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (187, 'Uzbekistan', 'Ouzbékistan', 'Uzbekistán', 'Узбекистан', 'أوزبكستان', '乌兹别克斯坦', 'UZ', 'UZB');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (154, 'Slovakia', 'Slovaquie', 'Eslovaquia', 'Словакия', 'سلوفاكيا', '斯洛伐克', 'SK', 'SVK');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (150, 'Serbia', 'Serbie', 'Serbia', 'Сербия', 'صربيا', '塞尔维亚', 'RS', 'SRB');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (159, 'South Sudan', 'Soudan du Sud', 'Sudán del Sur', 'Южный Судан', 'جنوب السودان', '南苏丹', 'SS', 'SSD');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (76, 'India', 'Inde', 'India', 'Индия', 'الهند', '印 度', 'IN', 'IND');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (77, 'Indonesia', 'Indonésie', 'Indonesia', 'Индонезия', 'إندونيسيا', '印度尼西亚', 'ID', 'IDN');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (78, 'Iran (Islamic Republic of)', 'Iran (République islamique d'')', 'Irán (República Islámica del)', 'Иран (Исламская Республика)', 'إيران', '伊 朗(伊斯兰共和国)', 'IR', 'IRN');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (82, 'Italy', 'Italie', 'Italia', 'Италия', 'إيطاليا', '意大利', 'IT', 'ITA');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (85, 'Jordan', 'Jordanie', 'Jordania', 'Иордания', 'الأردن', '约 旦', 'JO', 'JOR');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (89, 'Kuwait', 'Koweït', 'Kuwait', 'Кувейт', 'الكويت', '科威特', 'KW', 'KWT');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (91, 'Lao People''s Democratic Republic', 'République démocratique populaire lao', 'República Democrática Popular Lao', 'Лаосская Народно-Демократическая Республика', 'جمهورية لاو الديمقراطية الشعبية', '老挝人民民主共和国', 'LA', 'LAO');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (96, 'Libya', 'Libye', 'Libia', 'Ливия', 'ليبيا', '利比亚', 'LY', 'LBY');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (99, 'Madagascar', 'Madagascar', 'Madagascar', 'Мадагаскар', 'مدغشقر', '马达加斯加', 'MG', 'MDG');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (101, 'Malaysia', 'Malaisie', 'Malasia', 'Малайзия', 'ماليزيا', '马来西亚', 'MY', 'MYS');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (103, 'Mali', 'Mali', 'Malí', 'Мали', 'مالي', '马 里', 'ML', 'MLI');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (106, 'Mauritania', 'Mauritanie', 'Mauritania', 'Мавритания', 'موريتانيا', '毛里塔尼亚', 'MR', 'MRT');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (108, 'Mexico', 'Mexique', 'México', 'Мексика', 'المكسيك', '墨西哥', 'MX', 'MEX');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (113, 'Morocco', 'Maroc', 'Marruecos', 'Марокко', 'المغرب', '摩洛哥', 'MA', 'MAR');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (115, 'Myanmar', 'Myanmar', 'Myanmar', 'Мьянма', 'ميانمار', '缅 甸', 'MM', 'MMR');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (118, 'Nepal', 'Népal', 'Nepal', 'Непал', 'نيبال', '尼泊尔', 'NP', 'NPL');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (120, 'New Zealand', 'Nouvelle-Zélande', 'Nueva Zelandia', 'Новая Зеландия', 'نيوزيلندا', '新西兰', 'NZ', 'NZL');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (122, 'Niger', 'Niger', 'Níger', 'Нигер', 'النيجر', '尼日尔', 'NE', 'NER');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (125, 'Norway', 'Norvège', 'Noruega', 'Норвегия', 'النرويج', '挪 威', 'NO', 'NOR');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (127, 'Pakistan', 'Pakistan', 'Pakistán', 'Пакистан', 'باكستان', '巴基斯坦', 'PK', 'PAK');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (130, 'Papua New Guinea', 'Papouasie-Nouvelle-Guinée', 'Papua Nueva Guinea', 'Папуа-Новая Гвинея', 'بابوا غينيا الجديدة ', '巴布亚新几内亚', 'PG', 'PNG');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (131, 'Paraguay', 'Paraguay', 'Paraguay', 'Парагвай', 'باراغواي', '巴拉圭', 'PY', 'PRY');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (132, 'Peru', 'Pérou', 'Perú', 'Перу', 'بيرو', '秘 鲁', 'PE', 'PER');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (133, 'Philippines', 'Philippines', 'Filipinas', 'Филиппины', 'الفلبين', '菲律宾', 'PH', 'PHL');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (136, 'Qatar', 'Qatar', 'Qatar', 'Катар', 'قطر', '卡塔尔', 'QA', 'QAT');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (141, 'Rwanda', 'Rwanda', 'Rwanda', 'Руанда', 'رواندا', '卢旺达', 'RW', 'RWA');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (142, 'Saint Kitts and Nevis', 'Saint-Kitts-et-Nevis', 'Saint Kitts y Nevis', 'Сент-Китс и Невис', 'سانت كيتس ونيفيس', '圣基茨和尼维斯', 'KN', 'KNA');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (144, 'Saint Vincent and the Grenadines', 'Saint-Vincent-et-les Grenadines', 'San Vicente y las Granadinas', 'Сент-Винсент и Гренадины', 'سانت فنسنت وجزر غرينادين', '圣文森特和格林纳丁斯', 'VC', 'VCT');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (147, 'Sao Tome and Principe', 'Sao Tomé-et-Principe', 'Santo Tomé y Príncipe', 'Сан-Томе и Принсипи', 'سان تومي وبرنسيبي', '圣多美和普林西比', 'ST', 'STP');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (151, 'Seychelles', 'Seychelles', 'Seychelles', 'Сейшельские Острова', 'سيشيل', '塞舌尔', 'SC', 'SYC');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (156, 'Solomon Islands', 'Îles Salomon', 'Islas Salomón', 'Соломоновы Острова', 'جزر سليمان', '所罗门群岛', 'SB', 'SLB');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (160, 'Spain', 'Espagne', 'España', 'Испания', 'إسبانيا', '西班牙', 'ES', 'ESP');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (162, 'Sudan', 'Soudan', 'Sudán', 'Судан', 'السودان', '苏 丹', 'SD', 'SDN');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (164, 'Swaziland', 'Swaziland', 'Swazilandia', 'Свазиленд', 'سوازيلند', '斯威士兰', 'SZ', 'SWZ');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (167, 'Syrian Arab Republic', 'République arabe syrienne', 'República Árabe Siria', 'Сирийская Арабская Республика', 'الجمهورية العربية السورية', '阿拉伯叙利亚共和国', 'SY', 'SYR');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (172, 'Togo', 'Togo', 'Togo', 'Того', 'توغو', '多 哥', 'TG', 'TGO');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (175, 'Trinidad and Tobago', 'Trinité-et-Tobago', 'Trinidad y Tabago', 'Тринидад и Тобаго', 'ترينيداد وتوباغو', '特立尼达和多巴哥', 'TT', 'TTO');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (180, 'Uganda', 'Ouganda', 'Uganda', 'Уганда', 'أوغندا', '乌干达', 'UG', 'UGA');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (182, 'United Arab Emirates', 'Émirats arabes unis', 'Emiratos Árabes Unidos', 'Объединенные Арабские Эмираты', 'الإمارات العربية المتحدة', '阿拉伯联合酋长国', 'AE', 'ARE');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (184, 'United Republic of Tanzania', 'République-Unie de Tanzanie', 'República Unida de Tanzanía', 'Объединенная Республика Танзания', 'جمهورية تنزانيا المتحدة', '坦桑尼亚联合共和国', 'TZ', 'TZA');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (185, 'United States of America', 'États-Unis d''Amérique', 'Estados Unidos de América', 'Соединенные Штаты Америки', 'الولايات المتحدة الأمريكية', '美 国', 'US', 'USA');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (189, 'Venezuela (Bolivarian Republic of)', 'Venezuela (République bolivarienne du)', 'Venezuela (República Bolivariana de)', 'Венесуэла (Боливарианская Республика)', 'فنزويلا - جمهورية .. البوليفارية', '委内瑞拉 (玻利瓦尔共和国)', 'VE', 'VEN');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (45, 'Democratic Republic of the Congo', 'République démocratique du Congo', 'República Democrática del Congo', 'Демократическая Республика Конго', 'جمهورية الكونغو الديمقراطية', '刚果民主共和国', 'CD', 'COD');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (193, 'Zimbabwe', 'Zimbabwe', 'Zimbabwe', 'Зимбабве', 'زمبابوي', '津巴布韦', 'ZW', 'ZWE');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (137, 'Republic of Korea', 'République de Corée', 'República de Corea', 'Республика Корея', 'جمهورية كوريا', '大韩民国', 'KR', 'KOR');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (109, 'Micronesia (Federated States of)', 'Micronésie (États fédérés de)', 'Micronesia (Estados Federados de)', 'Микронезия (Федеративные Штаты)', 'ميكرونيزيا', '密克罗尼西亚(联邦)', 'FM', 'FSM');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (97, 'Lithuania', 'Lituanie', 'Lituania', 'Литва', 'ليتوانيا', '立陶宛', 'LT', 'LTU');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (15, 'Belarus', 'Bélarus', 'Belarús', 'Беларусь', 'بيلاروس', '白俄罗斯', 'BY', 'BLR');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (23, 'Brunei Darussalam', 'Brunéi Darussalam', 'Brunei Darussalam', 'Бруней-Даруссалам', 'برونى دار السلام', '文莱达鲁萨兰国', 'BN', 'BRN');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (117, 'Nauru', 'Nauru', 'Nauru', 'Науру', 'ناورو', '瑙 鲁', 'NR', 'NRU');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (146, 'San Marino', 'Saint-Marin', 'San Marino', 'Сан-Марино', 'سان مارينو', '圣马力诺', 'SM', 'SMR');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (173, 'Tokelau (Associate Member)', 'Tokélaou (Membre associé)', 'Tokelau (Miembro Asociado)', 'Токелау (ассоциированный член)', 'توكيلاو - عضو منتسب', '托克劳', 'TK', 'TKL');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (140, 'Russian Federation', 'Fédération de Russie', 'Federación de Rusia', 'Российская Федерация', 'الاتحاد الروسي', '俄罗斯联邦', 'RU', 'RUS');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (7, 'Armenia', 'Arménie', 'Armenia', 'Армения', 'أرمينيا', '亚美尼亚', 'AM', 'ARM');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (90, 'Kyrgyzstan', 'Kirghizistan', 'Kirguistán', 'Кыргызстан', 'قيرغيزستان', '吉尔吉斯斯坦', 'KG', 'KGZ');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (178, 'Turkmenistan', 'Turkménistan', 'Turkmenistán', 'Туркменистан', 'تركمانستان', '土库曼斯坦', 'TM', 'TKM');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (86, 'Kazakhstan', 'Kazakhstan', 'Kazajstán', 'Казахстан', 'كازاخستان', '哈萨克斯坦', 'KZ', 'KAZ');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (155, 'Slovenia', 'Slovénie', 'Eslovenia', 'Словения', 'سلوفينيا', '斯洛文尼亚', 'SI', 'SVN');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (21, 'Bosnia and Herzegovina', 'Bosnie-Herzégovine', 'Bosnia y Herzegovina', 'Босния и Герцеговина', 'البوسنة والهرسك', '波斯尼亚和黑塞哥维那', 'BA', 'BIH');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (43, 'Czech Republic', 'République tchèque', 'República Checa', 'Чешская Республика', 'الجمهورية التشيكية', '捷克共和国', 'CZ', 'CZE');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (171, 'Timor-Leste', 'Timor-Leste', 'Timor-Leste', 'Тимор-Лешти', 'تيمور- ليشتى', '东帝汶', 'TL', 'TLS');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (138, 'Republic of Moldova', 'République de Moldova', 'República de Moldova', 'Республика Молдова', 'جمهورية مولدوفا', '摩尔多瓦共和国', 'MD', 'MDA');
INSERT INTO "Countries" ("ID", "NAME_EN", "NAME_FR", "NAME_ES", "NAME_RU", "NAME_AR", "NAME_ZH", "ISO2", "ISO3") VALUES (194, 'The former Yugoslav Republic of Macedonia', 'l''ex-République yougoslave de Macédoine', 'la ex República Yugoslava de Macedonia', 'бывшая югославская Республика Македония', 'السابقة اليوغوسلافية مقدونيا جمهورية', '前南斯拉夫的马其顿共和国', 'MK', 'MKD');


--
-- TOC entry 1968 (class 0 OID 16400)
-- Dependencies: 162
-- Data for Name: QuestionType; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO "QuestionType" ("ID", type) VALUES (1, 'Text');
INSERT INTO "QuestionType" ("ID", type) VALUES (2, 'Radio');
INSERT INTO "QuestionType" ("ID", type) VALUES (3, 'Checkbox');
INSERT INTO "QuestionType" ("ID", type) VALUES (4, 'Date');
INSERT INTO "QuestionType" ("ID", type) VALUES (5, 'Dropdown');
INSERT INTO "QuestionType" ("ID", type) VALUES (6, 'Selectbox');
INSERT INTO "QuestionType" ("ID", type) VALUES (7, 'Subform');
INSERT INTO "QuestionType" ("ID", type) VALUES (8, 'Table');
INSERT INTO "QuestionType" ("ID", type) VALUES (9, 'Autosuggest');
INSERT INTO "QuestionType" ("ID", type) VALUES (0, 'Label');


--
-- TOC entry 1972 (class 0 OID 16510)
-- Dependencies: 166
-- Data for Name: Questions; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO "Questions" ("ID", "order", name_e, name_f, name_s, name_c, name_r, name_a, type, title, deleted) VALUES (3, 3, 'Over the last 10 years, has production been', NULL, NULL, NULL, NULL, NULL, NULL, 'Question 1', 0);
INSERT INTO "Questions" ("ID", "order", name_e, name_f, name_s, name_c, name_r, name_a, type, title, deleted) VALUES (4, 4, 'What is the expected trend over the next 10 years?', NULL, NULL, NULL, NULL, NULL, NULL, 'Question 2', 0);
INSERT INTO "Questions" ("ID", "order", name_e, name_f, name_s, name_c, name_r, name_a, type, title, deleted) VALUES (5, 5, 'Is the identification and naming of farmed species, subspecies, hybrids, crossbreeds, strains, triploids, other distinct types accurate and up- to-date?', NULL, NULL, NULL, NULL, NULL, NULL, 'Question 3', 0);
INSERT INTO "Questions" ("ID", "order", name_e, name_f, name_s, name_c, name_r, name_a, type, title, deleted) VALUES (6, 6, 'To what extent are genetic data for farmed aquatic organisms', NULL, NULL, NULL, NULL, NULL, NULL, 'Question 4', 0);
INSERT INTO "Questions" ("ID", "order", name_e, name_f, name_s, name_c, name_r, name_a, type, title, deleted) VALUES (7, 7, 'To what extent are the aquatic organisms farmed in your country sourced as wild seed or from wild brood stock?', NULL, NULL, NULL, NULL, NULL, NULL, 'Question 5', 0);
INSERT INTO "Questions" ("ID", "order", name_e, name_f, name_s, name_c, name_r, name_a, type, title, deleted) VALUES (8, 8, 'What proportions (%) of breeding programmes and efforts for the genetic improvement of farmed aquatic species in your country are being managed by the public sector (government research, universities etc.), the private sector, and public-private partnerships?', NULL, NULL, NULL, NULL, NULL, NULL, 'Question 6', 0);
INSERT INTO "Questions" ("ID", "order", name_e, name_f, name_s, name_c, name_r, name_a, type, title, deleted) VALUES (23, 23, 'To what extent are existing facilities contributing to in situ conservation of aquatic genetic resources of wild relatives of farmed aquatic species?', NULL, NULL, NULL, NULL, NULL, NULL, 'Question 21', 0);
INSERT INTO "Questions" ("ID", "order", name_e, name_f, name_s, name_c, name_r, name_a, type, title, deleted) VALUES (10, 10, 'Please list most significant examples where genetic improvement contributed to increased production and indicate whether they were developed by public, private or public/private partnerships.', NULL, NULL, NULL, NULL, NULL, NULL, 'Question 8', 0);
INSERT INTO "Questions" ("ID", "order", name_e, name_f, name_s, name_c, name_r, name_a, type, title, deleted) VALUES (11, 11, 'Table 1.1 Aquatic genetic resources (AqGR) of farmed aquatic species in (Country)', NULL, NULL, NULL, NULL, NULL, NULL, 'Question 9', 0);
INSERT INTO "Questions" ("ID", "order", name_e, name_f, name_s, name_c, name_r, name_a, type, title, deleted) VALUES (12, 12, 'Which aquatic species in your country are thought to have potential for domestication and future use in aquaculture?', NULL, NULL, NULL, NULL, NULL, NULL, 'Question 10', 0);
INSERT INTO "Questions" ("ID", "order", name_e, name_f, name_s, name_c, name_r, name_a, type, title, deleted) VALUES (13, 13, 'Please list the aquatic genetic resources of farmed aquatic species your country has transferred or exchanged with other countries over the past 10 years.', NULL, NULL, NULL, NULL, NULL, NULL, 'Question 11', 0);
INSERT INTO "Questions" ("ID", "order", name_e, name_f, name_s, name_c, name_r, name_a, type, title, deleted) VALUES (14, 14, 'Please list any wild relatives presents in your country of species that are farmed in another country and indicate how they are used.', NULL, NULL, NULL, NULL, NULL, NULL, 'Question 12', 0);
INSERT INTO "Questions" ("ID", "order", name_e, name_f, name_s, name_c, name_r, name_a, type, title, deleted) VALUES (15, 15, 'Please list the aquatic genetic resources of wild relatives of farmed aquatic species your country has transferred or exchanged with other countries over the past 10 years.', NULL, NULL, NULL, NULL, NULL, NULL, 'Question 13', 0);
INSERT INTO "Questions" ("ID", "order", name_e, name_f, name_s, name_c, name_r, name_a, type, title, deleted) VALUES (16, 16, 'Table 1.2 Aquatic genetic resources of wild relatives of farmed aquatic species in (Country)', NULL, NULL, NULL, NULL, NULL, NULL, 'Question 14', 0);
INSERT INTO "Questions" ("ID", "order", name_e, name_f, name_s, name_c, name_r, name_a, type, title, deleted) VALUES (17, 17, 'Please indicate the ways the aquatic genetic resources (AqGR) of farmed aquatic species have been impacted by the following drivers. Please give examples of positive and negative impacts for specific drivers.', NULL, NULL, NULL, NULL, NULL, NULL, 'Question 15', 0);
INSERT INTO "Questions" ("ID", "order", name_e, name_f, name_s, name_c, name_r, name_a, type, title, deleted) VALUES (18, 18, 'Please indicate the ways the aquatic genetic resources of wild relatives of farmed aquatic species in nature have been impacted by the following drivers. Please give examples of positive and negative impacts for specific drivers.', NULL, NULL, NULL, NULL, NULL, NULL, 'Question 16', 0);
INSERT INTO "Questions" ("ID", "order", name_e, name_f, name_s, name_c, name_r, name_a, type, title, deleted) VALUES (19, 19, 'What countermeasures might be taken to reduce adverse impacts on the aquatic genetic resources that sustain current aquaculture and/or provide for its future development?', NULL, NULL, NULL, NULL, NULL, NULL, 'Question 17', 0);
INSERT INTO "Questions" ("ID", "order", name_e, name_f, name_s, name_c, name_r, name_a, type, title, deleted) VALUES (20, 20, 'To what extent have the following biotechnologies been used in your country for the genetic improvement of farmed aquatic organisms.', NULL, NULL, NULL, NULL, NULL, NULL, 'Question 18', 0);
INSERT INTO "Questions" ("ID", "order", name_e, name_f, name_s, name_c, name_r, name_a, type, title, deleted) VALUES (21, 21, 'Please indicate the ways aquatic genetic resources of the wild relatives of farmed aquatic species have been impacted by drivers that are changing aquatic ecosystems. Please give countermeasures might be taken to reduce adverse consequences for the aquatic genetic resources that sustain capture fisheries on wild relatives of farmed species.', NULL, NULL, NULL, NULL, NULL, NULL, 'Question 19', 0);
INSERT INTO "Questions" ("ID", "order", name_e, name_f, name_s, name_c, name_r, name_a, type, title, deleted) VALUES (22, 22, 'To what extent are responsible and well managed aquaculture and culture-based fisheries contributing to in situ conservation of the aquatic genetic resources of farmed aquatic species and their wild relatives.', NULL, NULL, NULL, NULL, NULL, NULL, 'Question 20', 0);
INSERT INTO "Questions" ("ID", "order", name_e, name_f, name_s, name_c, name_r, name_a, type, title, deleted) VALUES (24, 24, 'Please provide examples of current or planned activities for the in situ conservation of endangered or threatened farmed species and their wild relatives with demonstrated or potential importance for aquaculture, culture-based fisheries, and capture fisheries.', NULL, NULL, NULL, NULL, NULL, NULL, 'Question 22', 0);
INSERT INTO "Questions" ("ID", "order", name_e, name_f, name_s, name_c, name_r, name_a, type, title, deleted) VALUES (25, 25, 'Please rank (from 1 to 10) the importance of the following objectives for in situ conservation of aquatic genetic resources of farmed aquatic species and their wild relatives in your country.', NULL, NULL, NULL, NULL, NULL, NULL, 'Question 23', 0);
INSERT INTO "Questions" ("ID", "order", name_e, name_f, name_s, name_c, name_r, name_a, type, title, deleted) VALUES (26, 26, 'Is the in situ conservation of aquatic genetic resources included in the policy as an objective in the management of aquaculture and/or culture-based fisheries in your country?', NULL, NULL, NULL, NULL, NULL, NULL, 'Question 24', 0);
INSERT INTO "Questions" ("ID", "order", name_e, name_f, name_s, name_c, name_r, name_a, type, title, deleted) VALUES (27, 27, 'To what extent are collectors of wild seed and brood stock for aquaculture and culture-based fisheries contributing to the conservation of aquatic genetic resources by maintaining habitats and/or limiting the quantities collected?', NULL, NULL, NULL, NULL, NULL, NULL, 'Question 25', 0);
INSERT INTO "Questions" ("ID", "order", name_e, name_f, name_s, name_c, name_r, name_a, type, title, deleted) VALUES (28, 28, 'Is the conservation of aquatic genetic resources of wild relatives of farmed aquatic species included as an objective in the management of any capture fisheries in your country?', NULL, NULL, NULL, NULL, NULL, NULL, 'Question 26', 0);
INSERT INTO "Questions" ("ID", "order", name_e, name_f, name_s, name_c, name_r, name_a, type, title, deleted) VALUES (9, 9, 'To what extent do genetically improved aquatic organisms, including hybrids, crossbreeds, strains, triploids and other distinct types contribute to national aquaculture production in terms of volume?', NULL, NULL, NULL, NULL, NULL, NULL, 'Question 7', 0);
INSERT INTO "Questions" ("ID", "order", name_e, name_f, name_s, name_c, name_r, name_a, type, title, deleted) VALUES (1, 1, 'The Country Report should contain an executive summary of 2-3 pages highlighting the main findings of the analysis and providing an overview of key issues, constraints and existing capacity to address the issues and challenges. The executive summary should indicate trends and driving forces and present an overview of the proposed strategic directions for future actions aimed at the national, regional and global levels.', NULL, NULL, NULL, NULL, NULL, NULL, 'Executive Summary', 0);
INSERT INTO "Questions" ("ID", "order", name_e, name_f, name_s, name_c, name_r, name_a, type, title, deleted) VALUES (30, 30, 'Please list any aquatic protected areas in your country that are contributing to the in situ conservation of aquatic genetic resources of wild relatives of farmed aquatic species and an assessment of effectiveness', NULL, NULL, NULL, NULL, NULL, NULL, 'Question 27', 0);
INSERT INTO "Questions" ("ID", "order", name_e, name_f, name_s, name_c, name_r, name_a, type, title, deleted) VALUES (32, 32, 'Please list your country''s in vitro collections and gene banks of the gametes, embryos, tissues, spores and other quiescent forms of farmed aquatic species and their wild relatives , using cryopreservation or other methods of long-term storage. Describe the major examples, identifying the facilities in which the collections are held and indicate the managers and users. Include examples of any such genetic material from your country that is being kept in in vitro collections outside your country on behalf of beneficiaries in your country.', NULL, NULL, NULL, NULL, NULL, NULL, 'Question 29', 0);
INSERT INTO "Questions" ("ID", "order", name_e, name_f, name_s, name_c, name_r, name_a, type, title, deleted) VALUES (2, 2, 'The main objective of the Introduction is to present an overview that will allow a person who is unfamiliar with the country to appreciate the context for the Country Report. The Introduction should present a broad overview and present background information from your country on farmed aquatic species, their wild relatives and culture based fisheries. Detailed information should be provided in the main body of the Country Report. Countries may wish to consider developing their Introductions after completing the main body of their Country Reports.', NULL, NULL, NULL, NULL, NULL, NULL, 'Introduction', 0);
INSERT INTO "Questions" ("ID", "order", name_e, name_f, name_s, name_c, name_r, name_a, type, title, deleted) VALUES (29, 29, 'Do capture fisheries in your country targeting wild relatives of farmed aquatic genetic resources have a fisheries management plan?', NULL, NULL, NULL, NULL, NULL, NULL, 'Question 27', 1);
INSERT INTO "Questions" ("ID", "order", name_e, name_f, name_s, name_c, name_r, name_a, type, title, deleted) VALUES (35, 35, 'Please list national legislation, policies and/or mechanisms that address aquatic genetic resources of farmed species and their wild relatives (see question 47 regarding international agreements).', NULL, NULL, NULL, NULL, NULL, NULL, 'Question 32', 0);
INSERT INTO "Questions" ("ID", "order", name_e, name_f, name_s, name_c, name_r, name_a, type, title, deleted) VALUES (36, 36, 'Please list any gaps in the coverage or constraints in implementing national legislation, policies and/or mechanisms in regard to aquatic genetic resources.', NULL, NULL, NULL, NULL, NULL, NULL, 'Question 33', 0);
INSERT INTO "Questions" ("ID", "order", name_e, name_f, name_s, name_c, name_r, name_a, type, title, deleted) VALUES (37, 37, 'Please indicate any national aquatic genetic resources of farmed aquatic species and their wild relatives for which your country restricts access.', NULL, NULL, NULL, NULL, NULL, NULL, 'Question 34', 0);
INSERT INTO "Questions" ("ID", "order", name_e, name_f, name_s, name_c, name_r, name_a, type, title, deleted) VALUES (38, 38, 'Over the past 10 years, indicate the actions your country has taken to maintain or enhance access to aquatic genetic resources of farmed aquatic species and their wild relatives located outside your country; for example, by establishing germplasm acquisition agreements or material transfer agreements.', NULL, NULL, NULL, NULL, NULL, NULL, 'Question 35', 0);
INSERT INTO "Questions" ("ID", "order", name_e, name_f, name_s, name_c, name_r, name_a, type, title, deleted) VALUES (39, 39, 'Please indicate any obstacles your country has encountered when try to access aquatic genetic resources of farmed aquatic species and their wild relatives outside of your country (including access for research purposes).', NULL, NULL, NULL, NULL, NULL, NULL, 'Question 36', 0);
INSERT INTO "Questions" ("ID", "order", name_e, name_f, name_s, name_c, name_r, name_a, type, title, deleted) VALUES (40, 40, 'Does your national research programme support the conservation, sustainable use and development of aquatic genetic resources of farmed aquatic species and their wild relatives? If yes, give details of current and/or planned research; if no, explain the main reasons why not in box below.', NULL, NULL, NULL, NULL, NULL, NULL, 'Question 37', 0);
INSERT INTO "Questions" ("ID", "order", name_e, name_f, name_s, name_c, name_r, name_a, type, title, deleted) VALUES (41, 41, 'Please list main institutions, organizations, corporations and other entities in your country that are engaged in field and/or laboratory research related to the conservation, sustainable use and development of aquatic genetic resources of farmed aquatic species and their wild relatives.', NULL, NULL, NULL, NULL, NULL, NULL, 'Question 38', 0);
INSERT INTO "Questions" ("ID", "order", name_e, name_f, name_s, name_c, name_r, name_a, type, title, deleted) VALUES (42, 42, 'What capacity strengthening is needed to improve national research in support of the conservation, sustainable use and development of aquatic genetic resources of farmed aquatic species and their wild relatives?', NULL, NULL, NULL, NULL, NULL, NULL, 'Question 39', 0);
INSERT INTO "Questions" ("ID", "order", name_e, name_f, name_s, name_c, name_r, name_a, type, title, deleted) VALUES (43, 43, 'Please indicate the extent that education, training and extension in your country covers the conservation, sustainable use and development of aquatic genetic resources of farmed aquatic species and their wild relatives? List the main institutions involved and the types of courses offered.', NULL, NULL, NULL, NULL, NULL, NULL, 'Question 40', 0);
INSERT INTO "Questions" ("ID", "order", name_e, name_f, name_s, name_c, name_r, name_a, type, title, deleted) VALUES (44, 44, 'Please list any mechanisms within your country responsible for coordinating the aquaculture, culture-based fisheries and capture fisheries subsectors with the other sectors that use watersheds and coastal ecosystems and have impacts on aquatic genetic resources of wild relatives of farmed aquatic species (e.g., agriculture, forestry, mining, tourism, waste management and water resources).', NULL, NULL, NULL, NULL, NULL, NULL, 'Question 41', 0);
INSERT INTO "Questions" ("ID", "order", name_e, name_f, name_s, name_c, name_r, name_a, type, title, deleted) VALUES (45, 45, 'Please indicate how capacity strengthening can be improved in intersectoral coordination in support of the conservation, sustainable use and development of aquatic genetic resources.', NULL, NULL, NULL, NULL, NULL, NULL, 'Question 42', 0);
INSERT INTO "Questions" ("ID", "order", name_e, name_f, name_s, name_c, name_r, name_a, type, title, deleted) VALUES (46, 46, 'Please list any national networks in your country or any international networks your country belongs to that support the conservation, sustainable use and development of aquatic genetic resources.', NULL, NULL, NULL, NULL, NULL, NULL, 'Question 43', 0);
INSERT INTO "Questions" ("ID", "order", name_e, name_f, name_s, name_c, name_r, name_a, type, title, deleted) VALUES (47, 47, 'Please list any information systems existing in your country for receiving, managing and communicating information about the conservation, sustainable use and development of aquatic genetic resources of farmed aquatic species and their wild relatives.', NULL, NULL, NULL, NULL, NULL, NULL, 'Question 44', 0);
INSERT INTO "Questions" ("ID", "order", name_e, name_f, name_s, name_c, name_r, name_a, type, title, deleted) VALUES (48, 48, 'What capacity strengthening is needed to improve national information systems to support the conservation, sustainable use and development of aquatic genetic resources?', NULL, NULL, NULL, NULL, NULL, NULL, 'Question 45', 0);
INSERT INTO "Questions" ("ID", "order", name_e, name_f, name_s, name_c, name_r, name_a, type, title, deleted) VALUES (50, 50, 'Please list the priority needs regarding collaboration on conservation and sustainable use of aquatic genetic resources of farmed aquatic species and their wild relatives. Are they being addressed, i.e. are there any critical gaps?', NULL, NULL, NULL, NULL, NULL, NULL, 'Question 47', 0);
INSERT INTO "Questions" ("ID", "order", name_e, name_f, name_s, name_c, name_r, name_a, type, title, deleted) VALUES (51, 51, 'Please describe the types of collaboration that have been most beneficial for your country, and why?', NULL, NULL, NULL, NULL, NULL, NULL, 'Question 48', 0);
INSERT INTO "Questions" ("ID", "order", name_e, name_f, name_s, name_c, name_r, name_a, type, title, deleted) VALUES (52, 52, 'Is there a need for your country to expand its collaboration concerning the conservation, sustainable use and development of aquatic genetic resources? If yes, give details, including any requirements for capacity strengthening in box below', NULL, NULL, NULL, NULL, NULL, NULL, 'Question 49', 0);
INSERT INTO "Questions" ("ID", "order", name_e, name_f, name_s, name_c, name_r, name_a, type, title, deleted) VALUES (53, 53, 'Describe important roles that your country performs within its region (and/or sub-region) and globally in terms of being a keeper, user and sharer of aquatic genetic resources.', NULL, NULL, NULL, NULL, NULL, NULL, 'Question 50', 0);
INSERT INTO "Questions" ("ID", "order", name_e, name_f, name_s, name_c, name_r, name_a, type, title, deleted) VALUES (31, 31, 'Please list your country''s existing collections of live breeding aquatic organisms that can be considered as contributing to the ex situ conservation of aquatic genetic resources. This includes not only collections of species farmed directly for human use, but also collections of live feed organisms (e.g., bacterial flocs, yeasts, microalgae, rotifers and brine shrimp (Artemia)).', NULL, NULL, NULL, NULL, NULL, NULL, 'Question 28', 0);
INSERT INTO "Questions" ("ID", "order", name_e, name_f, name_s, name_c, name_r, name_a, type, title, deleted) VALUES (33, 33, 'Please rank (from 1 – 10) the importance of the following objectives for ex situ conservation of aquatic genetic resources of farmed aquatic species and their wild relatives in your country', NULL, NULL, NULL, NULL, NULL, NULL, 'Question 30', 0);
INSERT INTO "Questions" ("ID", "order", name_e, name_f, name_s, name_c, name_r, name_a, type, title, deleted) VALUES (34, 34, 'Please indicate the principal stakeholder groups who have interests in aquatic genetic resources of farmed aquatic species and their wild relatives including, inter alia: fish farmers; fishers in capture fisheries; persons involved in stocking and harvesting in culture-based fisheries; persons employed in postharvest chains; government officials; staff and members of aquaculture associations; managers of aquatic protected areas and others working for the conservation of aquatic ecosystems; researchers; and civil society.', NULL, NULL, NULL, NULL, NULL, NULL, 'Question 31', 0);
INSERT INTO "Questions" ("ID", "order", name_e, name_f, name_s, name_c, name_r, name_a, type, title, deleted) VALUES (49, 49, 'Please list the international, regional or sub-regional agreements your country subscribes to that cover aquatic genetic resources of farmed species and their wild relatives, such as the Nagoya Protocol2 the Convention on Biological Diversity and the Cartagena Protocol and how they have impacted aquatic genetic resources and stakeholders in your country.<br /> Examples could include:<br />· Establishment and management of shared or networked aquatic protected areas as far as wild relatives of farmed aquatic species are concerned<br />· Aquaculture and culture-based fisheries in transboundary or shared water bodies<br />· Sharing aquatic genetic material and related information<br />· Fishing rights, seasons and quotas as far as wild relatives of farmed aquatic species are concerned<br />· Conservation and sustainable use of shared water bodies and watercourses as far as wild relatives of farmed aquatic species are concerned<br />· Quarantine procedures for aquatic organisms and for control and notification of aquatic diseases', NULL, NULL, NULL, NULL, NULL, NULL, 'Question 46', 0);


--
-- TOC entry 1970 (class 0 OID 16477)
-- Dependencies: 164
-- Data for Name: QuestionsFields; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO "QuestionsFields" ("ID", "question_ID", type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list) VALUES (16, 10, 8, NULL, NULL, NULL, NULL, NULL, NULL, 'q8Table', NULL);
INSERT INTO "QuestionsFields" ("ID", "question_ID", type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list) VALUES (17, 11, 8, NULL, NULL, NULL, NULL, NULL, NULL, 'q9Table', NULL);
INSERT INTO "QuestionsFields" ("ID", "question_ID", type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list) VALUES (18, 12, 8, NULL, NULL, NULL, NULL, NULL, NULL, 'q10Table', NULL);
INSERT INTO "QuestionsFields" ("ID", "question_ID", type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list) VALUES (19, 13, 8, NULL, NULL, NULL, NULL, NULL, NULL, 'q11Table', NULL);
INSERT INTO "QuestionsFields" ("ID", "question_ID", type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list) VALUES (20, 14, 8, NULL, NULL, NULL, NULL, NULL, NULL, 'q12Table', NULL);
INSERT INTO "QuestionsFields" ("ID", "question_ID", type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list) VALUES (21, 15, 8, NULL, NULL, NULL, NULL, NULL, NULL, 'q13Table', NULL);
INSERT INTO "QuestionsFields" ("ID", "question_ID", type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list) VALUES (22, 16, 8, NULL, NULL, NULL, NULL, NULL, NULL, 'q14Table', NULL);
INSERT INTO "QuestionsFields" ("ID", "question_ID", type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list) VALUES (23, 17, 8, NULL, NULL, NULL, NULL, NULL, NULL, 'q15Table', NULL);
INSERT INTO "QuestionsFields" ("ID", "question_ID", type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list) VALUES (24, 18, 8, NULL, NULL, NULL, NULL, NULL, NULL, 'q16Table', NULL);
INSERT INTO "QuestionsFields" ("ID", "question_ID", type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list) VALUES (26, 20, 8, NULL, NULL, NULL, NULL, NULL, NULL, 'q18Table', NULL);
INSERT INTO "QuestionsFields" ("ID", "question_ID", type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list) VALUES (27, 21, 8, NULL, NULL, NULL, NULL, NULL, NULL, 'q19Table', NULL);
INSERT INTO "QuestionsFields" ("ID", "question_ID", type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list) VALUES (33, 25, 8, NULL, NULL, NULL, NULL, NULL, NULL, 'q23Table', NULL);
INSERT INTO "QuestionsFields" ("ID", "question_ID", type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list) VALUES (40, 29, 8, NULL, NULL, NULL, NULL, NULL, NULL, 'q27Table', NULL);
INSERT INTO "QuestionsFields" ("ID", "question_ID", type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list) VALUES (0, 1, 1, 'Please include the Executive Summary here.', NULL, NULL, NULL, NULL, NULL, 'executiveSummary', NULL);
INSERT INTO "QuestionsFields" ("ID", "question_ID", type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list) VALUES (1, 2, 1, 'Please write the overview here', NULL, NULL, NULL, NULL, NULL, 'introduction', NULL);
INSERT INTO "QuestionsFields" ("ID", "question_ID", type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list) VALUES (2, 3, 2, 'Please mark appropriate box', NULL, NULL, NULL, NULL, NULL, 'q1_radioList', 1);
INSERT INTO "QuestionsFields" ("ID", "question_ID", type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list) VALUES (3, 4, 2, 'Please mark appropriate box', NULL, NULL, NULL, NULL, NULL, 'q2_radioList', 1);
INSERT INTO "QuestionsFields" ("ID", "question_ID", type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list) VALUES (15, 9, 2, 'Please mark appropriate box.', NULL, NULL, NULL, NULL, NULL, 'q7_radioList', 3);
INSERT INTO "QuestionsFields" ("ID", "question_ID", type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list) VALUES (32, 24, 1, 'Please describe examples', NULL, NULL, NULL, NULL, NULL, 'q22_examples', NULL);
INSERT INTO "QuestionsFields" ("ID", "question_ID", type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list) VALUES (55, 41, 8, NULL, NULL, NULL, NULL, NULL, NULL, 'q38Table', NULL);
INSERT INTO "QuestionsFields" ("ID", "question_ID", type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list) VALUES (67, 49, 8, NULL, NULL, NULL, NULL, NULL, NULL, 'q46Table', NULL);
INSERT INTO "QuestionsFields" ("ID", "question_ID", type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list) VALUES (68, 50, 8, NULL, NULL, NULL, NULL, NULL, NULL, 'q47Table', NULL);
INSERT INTO "QuestionsFields" ("ID", "question_ID", type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list) VALUES (4, 5, 2, 'Please mark appropriate box', NULL, NULL, NULL, NULL, NULL, 'q3_radioList', 2);
INSERT INTO "QuestionsFields" ("ID", "question_ID", type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list) VALUES (5, 5, 1, 'Please include any explanation or additional information here', NULL, NULL, NULL, NULL, NULL, 'q3_txtinfo', NULL);
INSERT INTO "QuestionsFields" ("ID", "question_ID", type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list) VALUES (6, 6, 2, 'a) Available? Please mark appropriate box.', NULL, NULL, NULL, NULL, NULL, 'q4a_radioList', 3);
INSERT INTO "QuestionsFields" ("ID", "question_ID", type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list) VALUES (7, 6, 2, 'b) Used in management? Please mark appropriate box.', NULL, NULL, NULL, NULL, NULL, 'q4b_radioList', 3);
INSERT INTO "QuestionsFields" ("ID", "question_ID", type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list) VALUES (8, 6, 1, 'Please add any explanation here.', NULL, NULL, NULL, NULL, NULL, 'q4_txtinfo', NULL);
INSERT INTO "QuestionsFields" ("ID", "question_ID", type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list) VALUES (9, 7, 2, 'Please mark appropriate box.', NULL, NULL, NULL, NULL, NULL, 'q5_radioList', 3);
INSERT INTO "QuestionsFields" ("ID", "question_ID", type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list) VALUES (10, 7, 1, 'Please add any explanation here.', NULL, NULL, NULL, NULL, NULL, 'q5_txtinfo', NULL);
INSERT INTO "QuestionsFields" ("ID", "question_ID", type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list) VALUES (11, 8, 1, 'Percent managed by public sector. Please Enter Percentage Here', NULL, NULL, NULL, NULL, NULL, 'q6_txtperc1', NULL);
INSERT INTO "QuestionsFields" ("ID", "question_ID", type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list) VALUES (12, 8, 1, 'Percent managed by public sector. Please Enter Percentage Here', NULL, NULL, NULL, NULL, NULL, 'q6_txtperc2', NULL);
INSERT INTO "QuestionsFields" ("ID", "question_ID", type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list) VALUES (13, 8, 1, 'Percent managed by private /public partnership. Please Enter Percentage Here', NULL, NULL, NULL, NULL, NULL, 'q6_txtperc3', NULL);
INSERT INTO "QuestionsFields" ("ID", "question_ID", type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list) VALUES (14, 8, 1, 'Please add any explanation here.', NULL, NULL, NULL, NULL, NULL, 'q6_txtinfo', NULL);
INSERT INTO "QuestionsFields" ("ID", "question_ID", type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list) VALUES (28, 22, 2, 'Please mark appropriate box.', NULL, NULL, NULL, NULL, NULL, 'q20_radio', 27);
INSERT INTO "QuestionsFields" ("ID", "question_ID", type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list) VALUES (29, 22, 1, 'Please include any additional information', NULL, NULL, NULL, NULL, NULL, 'q20_additionalInformation', NULL);
INSERT INTO "QuestionsFields" ("ID", "question_ID", type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list) VALUES (30, 23, 2, 'Please mark appropriate box.', NULL, NULL, NULL, NULL, NULL, 'q21_radio', 27);
INSERT INTO "QuestionsFields" ("ID", "question_ID", type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list) VALUES (31, 23, 1, 'Please include any additional information', NULL, NULL, NULL, NULL, NULL, 'q21_additionalInformation', NULL);
INSERT INTO "QuestionsFields" ("ID", "question_ID", type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list) VALUES (34, 26, 2, 'Please mark appropriate box.', NULL, NULL, NULL, NULL, NULL, 'q24_radio', 29);
INSERT INTO "QuestionsFields" ("ID", "question_ID", type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list) VALUES (35, 26, 1, 'If yes, please give examples', NULL, NULL, NULL, NULL, NULL, 'q24_examples', NULL);
INSERT INTO "QuestionsFields" ("ID", "question_ID", type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list) VALUES (36, 27, 2, 'Please mark appropriate box.', NULL, NULL, NULL, NULL, NULL, 'q25_radio', 27);
INSERT INTO "QuestionsFields" ("ID", "question_ID", type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list) VALUES (37, 27, 1, 'Please include any additional details', NULL, NULL, NULL, NULL, NULL, 'q25_examples', NULL);
INSERT INTO "QuestionsFields" ("ID", "question_ID", type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list) VALUES (38, 28, 2, 'Please mark appropriate box.', NULL, NULL, NULL, NULL, NULL, 'q26_radio', 30);
INSERT INTO "QuestionsFields" ("ID", "question_ID", type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list) VALUES (39, 28, 1, 'If yes, please give examples', NULL, NULL, NULL, NULL, NULL, 'q26_examples', NULL);
INSERT INTO "QuestionsFields" ("ID", "question_ID", type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list) VALUES (56, 42, 8, NULL, NULL, NULL, NULL, NULL, NULL, 'q39Table', NULL);
INSERT INTO "QuestionsFields" ("ID", "question_ID", type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list) VALUES (57, 42, 1, 'Please describe any other capacity building needs in regards to aquatic genetic resources', NULL, NULL, NULL, NULL, NULL, 'q39_comments', NULL);
INSERT INTO "QuestionsFields" ("ID", "question_ID", type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list) VALUES (43, 32, 8, NULL, NULL, NULL, NULL, NULL, NULL, 'q29Table', NULL);
INSERT INTO "QuestionsFields" ("ID", "question_ID", type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list) VALUES (58, 43, 8, NULL, NULL, NULL, NULL, NULL, NULL, 'q40Table', NULL);
INSERT INTO "QuestionsFields" ("ID", "question_ID", type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list) VALUES (69, 51, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q48_txt', NULL);
INSERT INTO "QuestionsFields" ("ID", "question_ID", type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list) VALUES (70, 52, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'q49_radio', 31);
INSERT INTO "QuestionsFields" ("ID", "question_ID", type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list) VALUES (44, 33, 8, NULL, NULL, NULL, NULL, NULL, NULL, 'q30Table', NULL);
INSERT INTO "QuestionsFields" ("ID", "question_ID", type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list) VALUES (25, 19, 1, 'Describe countermeasures', NULL, NULL, NULL, NULL, NULL, 'q17_txtInfo', NULL);
INSERT INTO "QuestionsFields" ("ID", "question_ID", type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list) VALUES (59, 44, 3, 'If no mechanism exists check here', NULL, NULL, NULL, NULL, NULL, 'q41_chk_01', NULL);
INSERT INTO "QuestionsFields" ("ID", "question_ID", type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list) VALUES (41, 30, 8, NULL, NULL, NULL, NULL, NULL, NULL, 'q27Table', NULL);
INSERT INTO "QuestionsFields" ("ID", "question_ID", type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list) VALUES (42, 31, 8, NULL, NULL, NULL, NULL, NULL, NULL, 'q28Table', NULL);
INSERT INTO "QuestionsFields" ("ID", "question_ID", type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list) VALUES (45, 34, 8, NULL, NULL, NULL, NULL, NULL, NULL, 'q31Table', NULL);
INSERT INTO "QuestionsFields" ("ID", "question_ID", type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list) VALUES (46, 34, 1, 'a) Please indicate the most important role of women in regards to AqGR', NULL, NULL, NULL, NULL, NULL, 'q31_more_a', NULL);
INSERT INTO "QuestionsFields" ("ID", "question_ID", type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list) VALUES (47, 34, 1, 'b) Please indicate the most important role of indigenous and local communities in regards to AqGR', NULL, NULL, NULL, NULL, NULL, 'q31_more_b', NULL);
INSERT INTO "QuestionsFields" ("ID", "question_ID", type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list) VALUES (48, 35, 8, NULL, NULL, NULL, NULL, NULL, NULL, 'q32Table', NULL);
INSERT INTO "QuestionsFields" ("ID", "question_ID", type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list) VALUES (49, 36, 1, '', NULL, NULL, NULL, NULL, NULL, 'q33_txtinfo', NULL);
INSERT INTO "QuestionsFields" ("ID", "question_ID", type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list) VALUES (50, 37, 8, NULL, NULL, NULL, NULL, NULL, NULL, 'q34Table', NULL);
INSERT INTO "QuestionsFields" ("ID", "question_ID", type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list) VALUES (51, 38, 8, NULL, NULL, NULL, NULL, NULL, NULL, 'q35Table', NULL);
INSERT INTO "QuestionsFields" ("ID", "question_ID", type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list) VALUES (52, 39, 8, NULL, NULL, NULL, NULL, NULL, NULL, 'q36Table', NULL);
INSERT INTO "QuestionsFields" ("ID", "question_ID", type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list) VALUES (53, 40, 2, 'Please mark appropriate box.', NULL, NULL, NULL, NULL, NULL, 'q37_radio', 12);
INSERT INTO "QuestionsFields" ("ID", "question_ID", type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list) VALUES (54, 40, 1, 'Please provide details', NULL, NULL, NULL, NULL, NULL, 'q37_txt_details', NULL);
INSERT INTO "QuestionsFields" ("ID", "question_ID", type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list) VALUES (60, 44, 8, NULL, NULL, NULL, NULL, NULL, NULL, 'q41Table', NULL);
INSERT INTO "QuestionsFields" ("ID", "question_ID", type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list) VALUES (61, 45, 8, NULL, NULL, NULL, NULL, NULL, NULL, 'q42Table', NULL);
INSERT INTO "QuestionsFields" ("ID", "question_ID", type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list) VALUES (62, 45, 1, 'Please specify in box below', NULL, NULL, NULL, NULL, NULL, 'q42_comments', NULL);
INSERT INTO "QuestionsFields" ("ID", "question_ID", type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list) VALUES (63, 46, 8, NULL, NULL, NULL, NULL, NULL, NULL, 'q43Table', NULL);
INSERT INTO "QuestionsFields" ("ID", "question_ID", type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list) VALUES (64, 47, 8, NULL, NULL, NULL, NULL, NULL, NULL, 'q44Table', NULL);
INSERT INTO "QuestionsFields" ("ID", "question_ID", type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list) VALUES (65, 48, 1, 'Please describe what capacities need to be strengthened', NULL, NULL, NULL, NULL, NULL, 'q45_txt_answer_1', NULL);
INSERT INTO "QuestionsFields" ("ID", "question_ID", type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list) VALUES (66, 48, 1, 'Please describe any other capacity building needs in regards to information systems for aquatic genetic resources', NULL, NULL, NULL, NULL, NULL, 'q45_txt_answer_2', NULL);
INSERT INTO "QuestionsFields" ("ID", "question_ID", type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list) VALUES (71, 52, 1, 'If yes, please give details', NULL, NULL, NULL, NULL, NULL, 'q49_txt', NULL);
INSERT INTO "QuestionsFields" ("ID", "question_ID", type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list) VALUES (72, 53, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q50_txt', NULL);


--
-- TOC entry 1973 (class 0 OID 16525)
-- Dependencies: 167
-- Data for Name: QuestionsTables; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO "QuestionsTables" ("ID", name, columns, rows, deleted) VALUES (0, 'q8Table', 3, 1, 0);
INSERT INTO "QuestionsTables" ("ID", name, columns, rows, deleted) VALUES (1, 'q9Table', 8, 1, 0);
INSERT INTO "QuestionsTables" ("ID", name, columns, rows, deleted) VALUES (2, 'q10Table', 3, 1, 0);
INSERT INTO "QuestionsTables" ("ID", name, columns, rows, deleted) VALUES (3, 'q11Table', 6, 1, 0);
INSERT INTO "QuestionsTables" ("ID", name, columns, rows, deleted) VALUES (4, 'q12Table', 3, 1, 0);
INSERT INTO "QuestionsTables" ("ID", name, columns, rows, deleted) VALUES (5, 'q13Table', 5, 1, 0);
INSERT INTO "QuestionsTables" ("ID", name, columns, rows, deleted) VALUES (6, 'q14Table', 11, 1, 0);
INSERT INTO "QuestionsTables" ("ID", name, columns, rows, deleted) VALUES (7, 'q15Table', 3, 7, 0);
INSERT INTO "QuestionsTables" ("ID", name, columns, rows, deleted) VALUES (8, 'q16Table', 3, 7, 0);
INSERT INTO "QuestionsTables" ("ID", name, columns, rows, deleted) VALUES (9, 'q18Table', 3, 7, 0);
INSERT INTO "QuestionsTables" ("ID", name, columns, rows, deleted) VALUES (10, 'q19Table', 3, 8, 0);
INSERT INTO "QuestionsTables" ("ID", name, columns, rows, deleted) VALUES (11, 'q23Table', 2, 6, 0);
INSERT INTO "QuestionsTables" ("ID", name, columns, rows, deleted) VALUES (13, 'q27Table', 3, 1, 0);
INSERT INTO "QuestionsTables" ("ID", name, columns, rows, deleted) VALUES (14, 'q28Table', 4, 1, 0);
INSERT INTO "QuestionsTables" ("ID", name, columns, rows, deleted) VALUES (15, 'q29Table', 5, 1, 0);
INSERT INTO "QuestionsTables" ("ID", name, columns, rows, deleted) VALUES (16, 'q30Table', 2, 6, 0);
INSERT INTO "QuestionsTables" ("ID", name, columns, rows, deleted) VALUES (17, 'q31Table', 4, 12, 0);
INSERT INTO "QuestionsTables" ("ID", name, columns, rows, deleted) VALUES (18, 'q32Table', 4, 1, 0);
INSERT INTO "QuestionsTables" ("ID", name, columns, rows, deleted) VALUES (19, 'q34Table', 2, 4, 0);
INSERT INTO "QuestionsTables" ("ID", name, columns, rows, deleted) VALUES (20, 'q35Table', 3, 1, 0);
INSERT INTO "QuestionsTables" ("ID", name, columns, rows, deleted) VALUES (21, 'q36Table', 3, 9, 0);
INSERT INTO "QuestionsTables" ("ID", name, columns, rows, deleted) VALUES (22, 'q38Table', 3, 1, 0);
INSERT INTO "QuestionsTables" ("ID", name, columns, rows, deleted) VALUES (23, 'q39Table', 2, 9, 0);
INSERT INTO "QuestionsTables" ("ID", name, columns, rows, deleted) VALUES (24, 'q40Table', 4, 6, 0);
INSERT INTO "QuestionsTables" ("ID", name, columns, rows, deleted) VALUES (25, 'q41Table', 2, 1, 0);
INSERT INTO "QuestionsTables" ("ID", name, columns, rows, deleted) VALUES (26, 'q42Table', 2, 4, 0);
INSERT INTO "QuestionsTables" ("ID", name, columns, rows, deleted) VALUES (27, 'q43Table', 3, 1, 0);
INSERT INTO "QuestionsTables" ("ID", name, columns, rows, deleted) VALUES (28, 'q44Table', 3, 1, 0);
INSERT INTO "QuestionsTables" ("ID", name, columns, rows, deleted) VALUES (29, 'q46Table', 5, 1, 0);
INSERT INTO "QuestionsTables" ("ID", name, columns, rows, deleted) VALUES (30, 'q47Table', 4, 9, 0);
INSERT INTO "QuestionsTables" ("ID", name, columns, rows, deleted) VALUES (12, 'q27Table', 3, 1, 1);


--
-- TOC entry 1976 (class 0 OID 16671)
-- Dependencies: 170
-- Data for Name: QuestionsTablesColumns; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (0, 0, 1, 'Species', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (12, 2, 2, 'Is the species native to your country?', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (14, 3, 1, 'Species', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (16, 3, 3, 'Details of transfer or exchange', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (17, 3, 4, 'Type of genetic material exchanged', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (18, 3, 5, 'Country or countries involved with exchange', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (20, 4, 1, 'Species ', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (22, 4, 3, 'Comments', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (23, 5, 1, 'Species ', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (25, 5, 3, 'Type of genetic material exchanged', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (26, 5, 4, 'Country', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (40, 7, 1, 'Driver impacting aquaculture', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (43, 8, 1, 'Driver impacting aquaculture', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (46, 9, 1, 'Biotechnology', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (47, 9, 2, 'Extent of use', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (49, 10, 1, 'Driver impacting aquaculture', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (51, 10, 3, 'Countermeasures and effects', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (52, 11, 1, 'Objectives of in situ conservation', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (54, 12, 1, 'Species being fished', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (55, 12, 2, 'For each fishery is a management plan in place?', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (57, 13, 1, 'Aquatic protected area', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (58, 13, 2, 'Effectiveness of conserving Aquatic Genetic Resources', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (2, 0, 3, 'Developed by<br /><strong><small>Mark all that apply</small></strong>', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (4, 1, 2, 'Genetic type <br /><strong><small>Indicate all genetic types that apply to the species</small></strong>', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (6, 1, 4, 'Trends in production <br /><strong><small>Over the last 10 years, production has been (mark one) </small></strong>', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (5, 1, 3, 'Availability of genetic data <br /><strong><small>Are genetic data available for farmed populations?  If yes, give summary details in comments</small></strong>', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (7, 1, 5, 'Future trends in production <br /><strong><small>Expected trend over the next 10 years is that production will  (mark one)</small></strong>', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (8, 1, 6, 'Genetic improvement <br /><strong><small>Which genetic technologies are currently being used on the species  (mark all that apply)</small></strong>', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (13, 2, 3, 'Comments <br/><strong><small> For example main sources of information</small></strong>', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (9, 1, 7, 'Future genetic improvement <br/><strong><small>Which genetic technologies are most likely to be used for genetic improvement over the next 10 years?  (mark all that apply)</small></strong>', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (10, 1, 8, 'Comments <br/><strong><small>For example important traits improved, how data are used in management or name of breed, source of information, etc.</small></strong>', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (19, 3, 6, 'Comments <br/><small><strong> Please add main purpose or objective of the exchange and main sources of information</strong></small>', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (29, 6, 2, 'Characteristics of species <br/><strong><small>Is the species (mark as appropriate)</small></strong>', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (27, 5, 5, 'Comments <br/><strong><small>main sources of information, if the transfer was legal or not</small></strong>', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (31, 6, 4, 'Management measures <br/><strong><small>Are there any management measures in place? </small></strong>', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (30, 6, 3, 'Capture fisheries <br/><strong><small>Is this species targeted by capture fisheries?</small></strong>', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (60, 14, 1, 'Species <br/><strong><small>Include information on subspecies or strain in comments if available</strong></small>', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (32, 6, 5, 'Availability of genetic data <br/><strong><small>Are genetic data available for the fishery? </small></strong>', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (33, 6, 6, 'Use of genetic data in management <br/><strong><small>Are genetic data used in management? </small></strong>', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (36, 6, 8, 'Future trends in catches <br/><strong><small>Expected trend over the next 10 years. </small></strong>', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (37, 6, 9, 'Ecosystem(s) where the fishery is located <br/><strong><small>Indicate the ecosystem where the fishery is located (mark all that apply)</small></strong>', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (38, 6, 10, 'Changes in ranges and habitats <br/><strong><small>The habitat or range is</small></strong>', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (39, 6, 11, 'Reasons for change in ranges and habitat <br/><strong><small>What are likely reasons for changes? (mark all that apply)</small></strong>', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (24, 5, 2, 'Details of transfer or exchange  <br/><strong><small>mark all that apply</small></strong>', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (65, 15, 2, 'Users and managers <br/><strong><small> List all that apply</small></strong>', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (66, 15, 3, 'Type of ex-situ conservation collection in vitro  <br/><strong><small>Mark all that apply</small></strong> ', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (1, 0, 2, 'Type of genetic improvement <br /><strong><small>Mark all that apply</small></strong>', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (11, 2, 1, 'Species  <br/><strong><small>Type and select a species</small></strong>', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (21, 4, 2, 'Use  <br/><strong><small>Mark all that apply</small></strong>', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (34, 6, 7, 'Trends in catches  <br/><strong><small>Over the last 10 years, catches have been</small></strong>', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (41, 7, 2, 'Effect on AqGR  <br/><strong><small>Mark appropriate box</small></strong>', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (44, 8, 2, 'Effect on AqGR  <br/><strong><small>Mark appropriate box</small></strong>', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (42, 7, 3, 'Comments  <br/><strong><small>List examples or other relevant information</small></strong>', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (45, 8, 3, 'Comments  <br/><strong><small>List examples or other relevant information</small></strong>', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (59, 13, 3, 'Comments  <br/><strong><small>provide any additional information</small></strong>', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (48, 9, 3, 'Comments  <br/><strong><small>main sources of information, important species for which the biotechnology is applied</small></strong>', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (50, 10, 2, 'Effect on AqGR  <br/><strong><small>Mark appropriate box</small></strong>', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (56, 12, 3, 'Comments  <br/><strong><small>include any additional details</small></strong>', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (63, 14, 4, 'Comments  <br/><strong><small>Please list any additional information</small></strong>', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (61, 14, 2, 'Type of use <br/><strong><small> Please mark all that apply</small></strong>', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (69, 16, 1, 'Objectives of in situ conservation', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (71, 17, 1, 'Stakeholders', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (75, 18, 1, 'National legislation, policy and/or mechanism', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (76, 18, 2, 'Date established', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (81, 20, 1, 'Action taken to enhance access to aquatic genetic resources outside your country', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (84, 21, 1, 'Obstacles to accessing aquatic genetic resources', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (87, 22, 1, 'Main institutions, organizations, corporations and other entities', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (90, 23, 1, 'Capacities', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (92, 24, 1, 'Institution', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (93, 24, 2, 'Thematic Areas', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (95, 24, 4, 'Comment', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (96, 25, 1, 'Name of mechanism', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (97, 25, 2, 'Description of how mechanism operates', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (98, 26, 1, 'Capacities', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (100, 27, 1, 'Network', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (103, 28, 1, 'Name of information system', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (106, 29, 1, 'International, Regional, bilateral or Sub-Regional agreement', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (107, 29, 2, 'Year your country ratified or subscribed to the agreement', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (108, 29, 3, 'Impact on aquatic genetic resources', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (109, 29, 4, 'Impact on stakeholders', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (110, 29, 5, 'Comments', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (111, 30, 1, 'Collaboration is needed in order to ...', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (113, 30, 3, 'To what extent are the needs being met', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (15, 3, 2, 'Genetic alteration of exchanged material <br /> <strong><small>Mark all that apply</small></strong>', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (3, 1, 1, 'Farmed species <br /><strong><small>List species (scientific names), strains and varieties as scientific names (put in brackets the most widely used national common name or names) and indicate whether native or introduced</small></strong>', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (28, 6, 1, 'Target species, stocks or other management units <br/><strong><small>For each row, list the species as scientific names (put in brackets the most widely used national common For each species, include the named stocks and name of other management units if known)</small></strong>', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (68, 15, 5, 'Comments  <br/><strong><small>list all breeds, subspecies of the species and any additional information</small></strong>', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (73, 17, 3, 'Genetic resource of main interest <br/><strong><small>Mark all that apply</small></strong>', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (53, 11, 2, 'Rank  <br/><strong><small>1=Very Important <br/>10=No importance</small></strong>', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (82, 20, 2, 'Type of genetic resource  <br/><strong><small>Mark all that apply</small></strong>', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (83, 20, 3, 'Comment <br/><strong><small>for example other types of genetic resources</small></strong>', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (112, 30, 2, 'Rank  <br/><strong><small>1=Very Important <br/>10=No importance</small></strong>', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (86, 21, 3, 'Comment <br/><strong><small>please include additional information as needed</small></strong>', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (99, 26, 2, 'Rank  <br/><strong><small>1=Very Important <br/>10=No importance</small></strong>', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (89, 22, 3, 'Comment <br/><strong><small>Please provide any additional information</small></strong>', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (64, 15, 1, 'Species <br/><strong><small>(include information on subspecies or strain if available in comments)</small></strong>', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (91, 23, 2, 'Rank  <br/><strong><small>1=Very Important <br/>10=No importance</small></strong>', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (67, 15, 4, 'Facilities where collection is located  <br/><strong><small>Mark all that apply</small></strong> ', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (94, 24, 3, 'Types of courses  <br/><strong><small>Mark all that apply</small></strong>', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (62, 14, 3, 'Is the species (or subspecies) threatened or endangered for example in the IUCN Red List, CITES Appendices or national lists?  <br/><strong><small>Please mark appropriate box</small></strong>', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (102, 27, 3, 'Comments', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (114, 30, 4, 'Comments   <br/><strong><small>For example any critical gaps</small></strong>', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (70, 16, 2, 'Rank  <br/><strong><small>1=Very Important <br/>10=No importance</small></strong>', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (72, 17, 2, 'Role of stakeholder in regards og AqGR  <br/><strong><small>Mark all that apply</small></strong>', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (74, 17, 4, 'Comments  <br/><strong><small>Please provide any information or explanation of stakeholders'' role</small></strong>', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (77, 18, 3, 'Scope  <br/><strong><small>Select all that apply</small></strong>', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (80, 19, 2, 'Comments  <br/><strong><small>For example, Please, provide verifiable main sources of information, effectiveness of the restriction, description of type of restriction and for whom does the restriction apply</small></strong>', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (88, 22, 2, 'Area of research  <br/><strong><small>Mark all that apply</small></strong>', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (79, 19, 1, 'Type of genetic resource <br/><strong><small>Can be species name, DNA, gametes or other descriptor</small></strong>', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (85, 21, 2, 'Please describe type of genetic resource  <br/><strong><small>Mark all that apply</small></strong>', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (104, 28, 2, 'Type of information stored  <br/><strong><small>Mark all that apply</small></strong>', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (101, 27, 2, 'Objectives of the network   <br/><strong><small>Please mark all that apply to your country</small></strong>', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (105, 28, 3, 'Main stakeholders  <br/><strong><small>Mark all that apply</small></strong>', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesColumns" ("ID", table_id, "order", header_e, header_f, header_s, header_c, header_r, header_a, deleted) VALUES (78, 18, 4, 'Comments  <br/><strong><small>Please provide any additional information, for example, whether it has been effective or not; and main sources of information</small></strong>', NULL, NULL, NULL, NULL, NULL, 0);


--
-- TOC entry 1975 (class 0 OID 16593)
-- Dependencies: 169
-- Data for Name: QuestionsTablesFields; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (0, 0, 0, 0, 9, NULL, NULL, NULL, NULL, NULL, NULL, 'q8_species', 15, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (6, 0, 2, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'q8_sf1', 9, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (7, 0, 2, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'q8_sf2', 9, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (8, 0, 2, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'q8_sf3', 9, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (9, 0, 2, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'q8_sf4', 9, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (10, 0, 2, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'q8_sf5', 9, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (13, 1, 4, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'q9_chk2', 11, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (14, 1, 5, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'q9_radio3', 12, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (15, 1, 6, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'q9_radio4', 13, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (16, 1, 7, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'q9_radio5', 13, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (17, 1, 8, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'q9_chk6', 14, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (18, 1, 9, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'q9_chk7', 14, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (19, 1, 10, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q9_txtComments', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (20, 2, 11, 2, 9, NULL, NULL, NULL, NULL, NULL, NULL, 'q10_species', 15, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (21, 2, 12, 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'q10_radio2', 12, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (22, 2, 13, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q10_comments', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (23, 3, 14, 3, 9, NULL, NULL, NULL, NULL, NULL, NULL, 'q11_species', 15, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (25, 3, 16, 3, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'q11_03', 18, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (26, 3, 17, 3, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'q11_04', 19, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (27, 3, 18, 3, 6, NULL, NULL, NULL, NULL, NULL, NULL, 'q11_05', 16, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (28, 3, 19, 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q11_comments', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (29, 4, 20, 4, 9, NULL, NULL, NULL, NULL, NULL, NULL, 'q12_species', 15, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (31, 4, 22, 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q12_comments', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (32, 5, 23, 5, 9, NULL, NULL, NULL, NULL, NULL, NULL, 'q13_species', 15, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (33, 5, 24, 5, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'q13_02', 18, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (34, 5, 25, 5, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'q13_03', 19, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (35, 5, 26, 5, 6, NULL, NULL, NULL, NULL, NULL, NULL, 'q13_04', 16, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (36, 5, 27, 5, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q13_comments', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (38, 6, 29, 6, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'q14_02', 21, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (39, 6, 30, 6, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'q14_radio3', 12, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (40, 6, 31, 6, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'q14_radio4', 12, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (41, 6, 32, 6, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'q14_radio5', 12, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (42, 6, 33, 6, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'q14_radio6', 12, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (43, 6, 34, 6, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'q14_radio7', 22, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (44, 6, 36, 6, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'q14_radio8', 22, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (45, 6, 37, 6, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'q14_09', 23, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (46, 6, 37, 6, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q14_09_custom', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (47, 6, 38, 6, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'q14_radio10', 24, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (49, 7, 40, 7, 0, 'Human population increase', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (50, 7, 41, 7, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'q15_02_radio', 26, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (51, 7, 42, 7, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q15_comment', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (52, 7, 40, 8, 0, 'Increased wealth and demand for fish', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (53, 7, 41, 8, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'q15_02_radio', 26, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (54, 7, 42, 8, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q15_comment', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (55, 7, 40, 9, 0, 'Governance (ability of government, industry and the public to work together in managing resources)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (56, 7, 41, 9, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'q15_02_radio', 26, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (57, 7, 42, 9, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q15_comment', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (58, 7, 40, 10, 0, 'Climate change', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (59, 7, 41, 10, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'q15_02_radio', 26, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (60, 7, 42, 10, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q15_comment', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (61, 7, 40, 11, 0, 'Competition for resources, especially freshwater', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (62, 7, 41, 11, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'q15_02_radio', 26, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (63, 7, 42, 11, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q15_comment', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (64, 7, 40, 12, 0, 'Changes in values and ethics of consumers', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (65, 7, 41, 12, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'q15_02_radio', 26, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (66, 7, 42, 12, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q15_comment', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (67, 7, 40, 13, 1, 'Other - Add other drivers as necessary', NULL, NULL, NULL, NULL, NULL, 'txt_q15_other', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (68, 7, 41, 13, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'q15_02_radio', 26, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (69, 7, 42, 13, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q15_comment', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (70, 8, 43, 14, 0, 'Human population increase', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (71, 8, 44, 14, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'q16_02_radio', 26, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (72, 8, 45, 14, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q16_comment', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (73, 8, 43, 15, 0, 'Increased wealth and demand for fish', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (74, 8, 44, 15, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'q16_02_radio', 26, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (75, 8, 45, 15, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q16_comment', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (76, 8, 43, 16, 0, 'Governance (ability of government, industry and the public to work together in managing resources)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (77, 8, 44, 16, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'q16_02_radio', 26, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (78, 8, 45, 16, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q16_comment', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (79, 8, 43, 17, 0, 'Climate change', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (80, 8, 44, 17, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'q16_02_radio', 26, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (81, 8, 45, 17, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q16_comment', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (82, 8, 43, 18, 0, 'Competition for resources, especially freshwater', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (83, 8, 44, 18, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'q16_02_radio', 26, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (84, 8, 45, 18, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q16_comment', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (85, 8, 43, 19, 0, 'Changes in values and ethics of consumers', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (86, 8, 44, 19, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'q16_02_radio', 26, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (87, 8, 45, 19, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q16_comment', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (88, 8, 43, 20, 1, 'Other - Add other drivers as necessary', NULL, NULL, NULL, NULL, NULL, 'txt_q16_other', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (89, 8, 44, 20, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'q16_02_radio', 26, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (90, 8, 45, 20, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q16_comment', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (91, 9, 46, 21, 0, 'Selective breeding ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (92, 9, 47, 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'q18_radio1', 3, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (93, 9, 48, 21, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q18_comments', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (94, 9, 46, 22, 0, 'Hybridization ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (95, 9, 47, 22, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'q18_radio1', 3, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (96, 9, 48, 22, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q18_comments', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (97, 9, 46, 23, 0, 'Polyploidy (chromosome set manipulation) ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (98, 9, 47, 23, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'q18_radio1', 3, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (99, 9, 48, 23, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q18_comments', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (100, 9, 46, 24, 0, 'Monosex production ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (101, 9, 47, 24, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'q18_radio1', 3, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (102, 9, 48, 24, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q18_comments', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (30, 4, 21, 4, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'q12_02', 20, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (48, 6, 39, 6, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'q14_11', 25, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (1, 0, 1, 0, 3, 'Traditional selective breeding', NULL, NULL, NULL, NULL, NULL, 'q8_chk1', NULL, '1', 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (2, 0, 1, 0, 3, 'Hybrids', NULL, NULL, NULL, NULL, NULL, 'q8_chk2', NULL, '2', 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (3, 0, 1, 0, 3, 'Triploids and other polyploids', NULL, NULL, NULL, NULL, NULL, 'q8_chk3', NULL, '3', 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (4, 0, 1, 0, 3, 'Mono-sex production', NULL, NULL, NULL, NULL, NULL, 'q8_chk4', NULL, '4', 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (5, 0, 1, 0, 3, 'Other', NULL, NULL, NULL, NULL, NULL, 'q8_chk5', NULL, '5', 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (37, 6, 28, 6, 9, NULL, NULL, NULL, NULL, NULL, NULL, 'q14_species', 15, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (12, 1, 3, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, 'q9_species', 15, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (24, 3, 15, 3, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'q11_02', 17, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (103, 9, 46, 25, 0, 'Marker assisted selection ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (104, 9, 47, 25, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'q18_radio1', 3, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (105, 9, 48, 25, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q18_comments', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (106, 9, 46, 26, 0, 'Gynogenesis/androgenesis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (111, 9, 48, 27, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q18_commentsOther', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (112, 10, 49, 28, 0, 'Habitat loss and degradation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (114, 10, 51, 28, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q19_comment', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (115, 10, 49, 29, 0, 'Pollution of waters', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (117, 10, 51, 29, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q19_comment', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (118, 10, 49, 30, 0, 'Increased frequency of extreme climatic events and long-term climate change', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (120, 10, 51, 30, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q19_comment', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (121, 10, 49, 31, 0, 'Establishment of invasive species', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (123, 10, 51, 31, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q19_comment', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (124, 10, 49, 32, 0, 'Introductions of parasites and pathogens', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (126, 10, 51, 32, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q19_comment', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (127, 10, 49, 33, 0, 'Impacts of purposeful stocking and escapes from aquaculture', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (129, 10, 51, 33, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q19_comment', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (130, 10, 49, 34, 0, 'Capture fisheries', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (132, 10, 51, 34, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q19_comment', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (136, 11, 52, 36, 0, 'Preservation of aquatic genetic diversity', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (137, 11, 53, 36, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'q23_rank', 28, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (138, 11, 52, 37, 0, 'Maintain good strains for aquaculture production', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (139, 11, 53, 37, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'q23_rank', 28, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (140, 11, 52, 38, 0, 'Meet consumer and market demands', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (141, 11, 53, 38, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'q23_rank', 28, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (142, 11, 52, 39, 0, 'To help adapt to impacts of climate change', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (143, 11, 53, 39, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'q23_rank', 28, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (144, 11, 52, 40, 0, 'Future breed improvement in aquaculture', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (145, 11, 53, 40, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'q23_rank', 28, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (146, 11, 52, 41, 1, 'Please continue listing any other objectives as needed', NULL, NULL, NULL, NULL, NULL, 'q23_name_other', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (147, 11, 53, 41, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'q23_rank_other', 28, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (149, 12, 55, 42, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'q27_radio02', 31, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (150, 12, 56, 42, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q27_comments', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (163, 16, 69, 46, 0, 'Preservation of aquatic genetic diversity', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (165, 16, 69, 47, 0, 'Maintain good strains for aquaculture production', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (167, 16, 69, 48, 0, 'Meet consumer and market demands', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (169, 16, 69, 49, 0, 'To help adapt to impacts of climate change', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (171, 16, 69, 50, 0, 'Future breed improvement in aquaculture', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (175, 17, 71, 52, 0, 'Fish Farmers', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (180, 17, 71, 53, 0, ' Fishers', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (185, 17, 71, 54, 0, 'Fish hatchery people', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (190, 17, 71, 55, 0, 'People involved in marketing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (195, 17, 71, 56, 0, 'Government resource managers', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (200, 17, 71, 57, 0, 'Fishing or aquaculture associations', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (148, 12, 54, 42, 9, NULL, NULL, NULL, NULL, NULL, NULL, 'q27_species', 15, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (135, 10, 51, 35, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q19_comment', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (113, 10, 50, 28, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'q19_02_radio', 26, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (108, 9, 48, 26, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q18_comments', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (107, 9, 47, 26, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'q18_radio1', 3, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (110, 9, 47, 27, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'q18_radioOther', 3, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (116, 10, 50, 29, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'q19_02_radio', 26, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (119, 10, 50, 30, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'q19_02_radio', 26, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (122, 10, 50, 31, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'q19_02_radio', 26, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (125, 10, 50, 32, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'q19_02_radio', 26, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (128, 10, 50, 33, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'q19_02_radio', 26, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (131, 10, 50, 34, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'q19_02_radio', 26, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (134, 10, 50, 35, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'q19_02_radio', 26, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (151, 13, 57, 43, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q27_txtSpecies', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (152, 13, 58, 43, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'q27_radio02', 32, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (153, 13, 59, 43, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q27_comments', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (154, 14, 60, 44, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q28_txt_species', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (155, 14, 61, 44, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'q28_sf_02', 33, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (156, 14, 62, 44, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'q28_radio_03', 12, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (157, 14, 63, 44, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q28_txt_comments', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (158, 15, 64, 45, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q29_txt_species', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (159, 15, 65, 45, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q29_txt_users', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (160, 15, 66, 45, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'q29_sf_03', 34, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (161, 15, 67, 45, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'q29_sf_04', 35, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (162, 15, 68, 45, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q29_txt_comments', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (164, 16, 70, 46, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'q30_rank', 28, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (166, 16, 70, 47, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'q30_rank', 28, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (168, 16, 70, 48, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'q30_rank', 28, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (170, 16, 70, 49, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'q30_rank', 28, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (172, 16, 70, 50, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'q30_rank', 28, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (174, 16, 70, 51, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'q30_rank', 28, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (176, 17, 72, 52, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'q31_sf_02', 36, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (177, 17, 72, 52, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q31_other', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (178, 17, 73, 52, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'q31_sf_03', 37, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (179, 17, 74, 52, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q31_txt_comments', 37, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (181, 17, 72, 53, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'q31_sf_02', 36, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (182, 17, 72, 53, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q31_other', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (183, 17, 73, 53, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'q31_sf_03', 37, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (184, 17, 74, 53, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q31_txt_comments', 37, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (186, 17, 72, 54, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'q31_sf_02', 36, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (187, 17, 72, 54, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q31_other', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (188, 17, 73, 54, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'q31_sf_03', 37, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (189, 17, 74, 54, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q31_txt_comments', 37, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (191, 17, 72, 55, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'q31_sf_02', 36, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (192, 17, 72, 55, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q31_other', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (193, 17, 73, 55, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'q31_sf_03', 37, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (194, 17, 74, 55, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q31_txt_comments', 37, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (196, 17, 72, 56, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'q31_sf_02', 36, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (197, 17, 72, 56, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q31_other', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (198, 17, 73, 56, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'q31_sf_03', 37, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (199, 17, 74, 56, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q31_txt_comments', 37, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (201, 17, 72, 57, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'q31_sf_02', 36, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (202, 17, 72, 57, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q31_other', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (205, 17, 71, 58, 0, 'Aquatic protected area managers', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (210, 17, 71, 59, 0, 'Policy Makers', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (215, 17, 71, 60, 0, 'Non-Governmental Organizations', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (220, 17, 71, 61, 0, 'Intergovernmental Organizations', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (225, 17, 71, 62, 0, 'Donors', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (230, 17, 71, 63, 0, 'Consumers', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (239, 19, 79, 65, 0, 'DNA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (241, 19, 79, 66, 0, 'Stock, breed or variety', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (243, 19, 79, 67, 0, 'Species', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (250, 21, 84, 70, 0, 'Intellectual property protection', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (253, 21, 84, 71, 0, 'National laws of your country', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (256, 21, 84, 72, 0, 'National laws of donor country', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (259, 21, 84, 73, 0, 'Internationl laws or protocols', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (262, 21, 84, 74, 0, 'Too expensive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (265, 21, 84, 75, 0, 'Material transfer agreements required', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (268, 21, 84, 76, 0, 'Knowledge gaps', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (271, 21, 84, 77, 0, 'Public perception', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (280, 23, 90, 80, 0, 'Improve basic knowledge on aquatic genetic resources', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (282, 23, 90, 81, 0, 'Improve capacities for characterization and monitoring of aquatic genetic resources', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (284, 23, 90, 82, 0, 'Improve capacities for genetic improvement', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (286, 23, 90, 83, 0, 'Improve capacities for genetic resource management', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (288, 23, 90, 84, 0, 'Improve capacities for economic valuation of aquatic genetic resources', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (290, 23, 90, 85, 0, 'Improve capacities for conservation of aquatic genetic resources', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (292, 23, 90, 86, 0, 'Improve communication on aquatic genetic resources', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (294, 23, 90, 87, 0, 'Improve access to and distribution of aquatic genetic resources', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (203, 17, 73, 57, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'q31_sf_03', 37, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (204, 17, 74, 57, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q31_txt_comments', 37, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (206, 17, 72, 58, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'q31_sf_02', 36, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (207, 17, 72, 58, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q31_other', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (208, 17, 73, 58, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'q31_sf_03', 37, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (209, 17, 74, 58, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q31_txt_comments', 37, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (211, 17, 72, 59, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'q31_sf_02', 36, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (212, 17, 72, 59, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q31_other', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (213, 17, 73, 59, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'q31_sf_03', 37, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (214, 17, 74, 59, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q31_txt_comments', 37, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (216, 17, 72, 60, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'q31_sf_02', 36, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (217, 17, 72, 60, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q31_other', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (218, 17, 73, 60, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'q31_sf_03', 37, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (219, 17, 74, 60, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q31_txt_comments', 37, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (221, 17, 72, 61, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'q31_sf_02', 36, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (222, 17, 72, 61, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q31_other', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (223, 17, 73, 61, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'q31_sf_03', 37, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (224, 17, 74, 61, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q31_txt_comments', 37, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (226, 17, 72, 62, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'q31_sf_02', 36, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (227, 17, 72, 62, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q31_other', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (228, 17, 73, 62, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'q31_sf_03', 37, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (229, 17, 74, 62, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q31_txt_comments', 37, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (231, 17, 72, 63, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'q31_sf_02', 36, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (232, 17, 72, 63, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q31_other', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (233, 17, 73, 63, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'q31_sf_03', 37, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (234, 17, 74, 63, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q31_txt_comments', 37, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (235, 18, 75, 64, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q32_txt_legislation', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (236, 18, 76, 64, 4, NULL, NULL, NULL, NULL, NULL, NULL, 'q32_date', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (237, 18, 77, 64, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'q32_03', 38, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (238, 18, 78, 64, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q32_comments', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (240, 19, 80, 65, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q34_txt_comments', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (242, 19, 80, 66, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q34_txt_comments', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (244, 19, 80, 67, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q34_txt_comments', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (246, 19, 80, 68, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q34_txt_comments', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (247, 20, 81, 69, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q35_txt_action', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (248, 20, 82, 69, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'q35_sf', 45, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (249, 20, 83, 69, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q35_txt_comments', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (251, 21, 85, 70, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'q36_sf', 37, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (252, 21, 86, 70, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q36_txt_comments', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (254, 21, 85, 71, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'q36_sf', 37, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (255, 21, 86, 71, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q36_txt_comments', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (257, 21, 85, 72, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'q36_sf', 37, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (258, 21, 86, 72, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q36_txt_comments', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (260, 21, 85, 73, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'q36_sf', 37, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (261, 21, 86, 73, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q36_txt_comments', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (263, 21, 85, 74, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'q36_sf', 37, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (264, 21, 86, 74, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q36_txt_comments', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (266, 21, 85, 75, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'q36_sf', 37, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (267, 21, 86, 75, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q36_txt_comments', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (269, 21, 85, 76, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'q36_sf', 37, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (270, 21, 86, 76, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q36_txt_comments', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (272, 21, 85, 77, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'q36_sf', 37, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (273, 21, 86, 77, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q36_txt_comments', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (275, 21, 85, 78, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'q36_sf', 37, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (276, 21, 86, 78, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q36_txt_comments', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (277, 22, 87, 79, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q38_txt_institution', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (278, 22, 88, 79, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'q38_sf', 39, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (279, 22, 89, 79, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q38_comment', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (281, 23, 91, 80, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'q39_rank', 28, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (283, 23, 91, 81, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'q39_rank', 28, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (285, 23, 91, 82, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'q39_rank', 28, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (287, 23, 91, 83, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'q39_rank', 28, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (289, 23, 91, 84, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'q39_rank', 28, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (291, 23, 91, 85, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'q39_rank', 28, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (299, 24, 93, 89, 0, 'Genetic resource management', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (293, 23, 91, 86, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'q39_rank', 28, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (295, 23, 91, 87, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'q39_rank', 28, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (297, 23, 91, 88, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'q39_rank', 28, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (324, 26, 98, 96, 0, 'Increase awareness in institutions', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (326, 26, 98, 97, 0, 'Increase technical capacities of institutions', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (328, 26, 98, 98, 0, 'Increase information sharing between institutions', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (344, 30, 111, 103, 0, 'Improve information technology and database management', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (348, 30, 111, 104, 0, 'Improve basic knowledge on aquatic genetic resources', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (352, 30, 111, 105, 0, 'Improve capacities for characterization and monitoring of aquatic genetic resources', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (356, 30, 111, 106, 0, 'Improve capacities for genetic improvement', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (360, 30, 111, 107, 0, 'Improve capacities for economic valuation of aquatic genetic resources', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (364, 30, 111, 108, 0, 'Improve capacities for conservation of aquatic genetic resources', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (368, 30, 111, 109, 0, 'Improve communication on aquatic genetic resources', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (372, 30, 111, 110, 0, 'To improve access to and distribution of aquatic genetic resources', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (133, 10, 49, 35, 1, 'Other - Continue listing other driverst', NULL, NULL, NULL, NULL, NULL, 'txt_q19_other', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (11, 1, 3, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'q9_radio_native_introduced', 10, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (109, 9, 46, 27, 1, 'Other - Continue adding row as necessary', NULL, NULL, NULL, NULL, NULL, 'q18_01_other', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (345, 30, 112, 103, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'q47_rank', 28, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (173, 16, 69, 51, 1, 'Other - Continue adding row as necessary', NULL, NULL, NULL, NULL, NULL, 'q30_txt_other', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (245, 19, 79, 68, 1, 'Other - Continue adding row as necessary', NULL, NULL, NULL, NULL, NULL, 'q34_txt_genetic', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (274, 21, 84, 78, 1, 'Other - Continue adding row as necessary', NULL, NULL, NULL, NULL, NULL, 'q36_txt_obstacles', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (296, 23, 90, 88, 1, 'Add other rows as appropriate and rank', NULL, NULL, NULL, NULL, NULL, 'q39_other', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (322, 25, 96, 95, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q41_txt_mechanism', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (323, 25, 97, 95, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q41_txt_description', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (325, 26, 99, 96, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'q42_rank', 28, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (327, 26, 99, 97, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'q42_rank', 28, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (329, 26, 99, 98, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'q42_rank', 28, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (330, 26, 98, 99, 1, 'Add other rows as appropriate and rank', NULL, NULL, NULL, NULL, NULL, 'q42_other', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (331, 26, 99, 99, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'q42_rank', 28, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (332, 27, 100, 100, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q43_txt_network', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (333, 27, 101, 100, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'q43_sf', 41, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (334, 27, 102, 100, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q43_txt_comments', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (335, 28, 103, 101, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q44_txt_information_system', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (336, 28, 104, 101, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'q44_sf_01', 42, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (337, 28, 105, 101, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'q44_sf_02', 43, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (338, 28, 105, 101, 1, 'Please list other stakeholders as necessary ', NULL, NULL, NULL, NULL, NULL, 'q44_txt_other_stackholders', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (339, 29, 106, 102, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q46_txt_01', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (340, 29, 107, 102, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q46_txt_02', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (341, 29, 108, 102, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'q46_radio_03', 26, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (342, 29, 109, 102, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'q46_radio_04', 26, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (343, 29, 110, 102, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q46_txt_comments', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (346, 30, 113, 103, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'q47_radio03', 44, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (347, 30, 114, 103, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q47_comments', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (349, 30, 112, 104, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'q47_rank', 28, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (350, 30, 113, 104, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'q47_radio03', 44, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (351, 30, 114, 104, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q47_comments', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (353, 30, 112, 105, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'q47_rank', 28, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (354, 30, 113, 105, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'q47_radio03', 44, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (355, 30, 114, 105, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q47_comments', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (357, 30, 112, 106, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'q47_rank', 28, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (358, 30, 113, 106, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'q47_radio03', 44, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (359, 30, 114, 106, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q47_comments', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (361, 30, 112, 107, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'q47_rank', 28, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (362, 30, 113, 107, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'q47_radio03', 44, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (363, 30, 114, 107, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q47_comments', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (365, 30, 112, 108, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'q47_rank', 28, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (366, 30, 113, 108, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'q47_radio03', 44, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (367, 30, 114, 108, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q47_comments', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (369, 30, 112, 109, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'q47_rank', 28, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (370, 30, 113, 109, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'q47_radio03', 44, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (371, 30, 114, 109, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q47_comments', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (373, 30, 112, 110, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'q47_rank', 28, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (374, 30, 113, 110, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'q47_radio03', 44, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (375, 30, 114, 110, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q47_comments', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (376, 30, 111, 111, 1, 'Other - Continue adding row as necessary', NULL, NULL, NULL, NULL, NULL, 'q47_txt_other', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (377, 30, 112, 111, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'q47_rank', 28, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (378, 30, 113, 111, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'q47_radio03', 44, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (379, 30, 114, 111, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q47_comments', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (380, 0, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q8_hybrids', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (300, 24, 94, 89, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'q40_sf_03', 40, NULL, 1);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (302, 24, 92, 90, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q40_txt_institution', NULL, NULL, 1);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (304, 24, 94, 90, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'q40_sf_03', 40, NULL, 1);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (305, 24, 95, 90, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q40_txt_comments', NULL, NULL, 1);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (306, 24, 92, 91, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q40_txt_institution', NULL, NULL, 1);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (307, 24, 93, 91, 0, 'Genetic improvement', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (308, 24, 94, 91, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'q40_sf_03', 40, NULL, 1);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (309, 24, 95, 91, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q40_txt_comments', NULL, NULL, 1);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (310, 24, 92, 92, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q40_txt_institution', NULL, NULL, 1);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (311, 24, 93, 92, 0, 'Economic valuation of aquatic genetic resources', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (312, 24, 94, 92, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'q40_sf_03', 40, NULL, 1);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (313, 24, 95, 92, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q40_txt_comments', NULL, NULL, 1);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (314, 24, 92, 93, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q40_txt_institution', NULL, NULL, 1);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (315, 24, 93, 93, 0, 'Conservation of aquatic genetic resources', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (316, 24, 94, 93, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'q40_sf_03', 40, NULL, 1);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (317, 24, 95, 93, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q40_txt_comments', NULL, NULL, 1);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (318, 24, 92, 94, 1, 'Other - Continue adding row as necessary', NULL, NULL, NULL, NULL, NULL, 'q40_txt_thematic', NULL, NULL, 1);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (319, 24, 93, 94, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q40_thematic_area', NULL, NULL, 1);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (320, 24, 94, 94, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'q40_sf_03', 40, NULL, 1);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (301, 24, 95, 89, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q40_txt_comments', NULL, NULL, 1);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (321, 24, 95, 94, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q40_txt_comments', NULL, NULL, 1);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (298, 24, 92, 89, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q40_txt_institution', NULL, NULL, 1);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (303, 24, 93, 90, 0, 'Characterization and monitoring of aquatic genetic resources', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (382, 24, 93, 112, 0, 'Genetic Resource Management', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (385, 24, 93, 112, 0, 'Characterization and monitoring of aquatic genetic resources', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (381, 24, 92, 112, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'txt_institution', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (383, 24, 94, 112, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'q40_sf_03_01', 40, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (386, 24, 94, 112, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'q40_sf_03_02', 40, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (389, 24, 94, 112, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'q40_sf_03_03', 40, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (388, 24, 93, 112, 0, 'Economic valuation of aquatic genetic resources', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (392, 24, 94, 112, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'q40_sf_03_04', 40, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (395, 24, 94, 112, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'q40_sf_03_05', 40, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (391, 24, 93, 112, 0, 'Conservation of aquatic genetic resources', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (394, 24, 93, 112, 0, 'Other - Continue adding row as necessary', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (384, 24, 95, 112, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q40_comments_01', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (387, 24, 95, 112, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q40_comments_02', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (390, 24, 95, 112, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q40_comments_03', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (393, 24, 95, 112, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q40_comments_04', NULL, NULL, 0);
INSERT INTO "QuestionsTablesFields" ("ID", table_id, column_id, row_id, type, text_e, text_f, text_s, text_c, text_r, text_a, name, controlled_list, default_value, deleted) VALUES (396, 24, 95, 112, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'q40_comments_05', NULL, NULL, 0);


--
-- TOC entry 1974 (class 0 OID 16554)
-- Dependencies: 168
-- Data for Name: QuestionsTablesRows; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (0, 1, 0, 1, 'Item', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (1, 1, 1, 1, 'Item', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (2, 1, 2, 1, 'Item', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (3, 1, 3, 1, 'Item', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (4, 1, 4, 1, 'Item', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (5, 1, 5, 1, 'Item', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (6, 1, 6, 1, 'Item', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (7, 0, 7, 1, 'Row1', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (8, 0, 7, 2, 'Row2', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (9, 0, 7, 3, 'Row3', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (10, 0, 7, 4, 'Row4', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (11, 0, 7, 5, 'Row5', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (12, 0, 7, 6, 'Row6', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (13, 1, 7, 7, 'Item', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (14, 0, 8, 1, 'Row1', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (15, 0, 8, 2, 'Row2', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (16, 0, 8, 3, 'Row3', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (17, 0, 8, 4, 'Row4', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (18, 0, 8, 5, 'Row5', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (19, 0, 8, 6, 'Row6', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (20, 1, 8, 7, 'Item', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (21, 0, 9, 1, 'Row1', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (22, 0, 9, 2, 'Row2', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (23, 0, 9, 3, 'Row3', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (24, 0, 9, 4, 'Row4', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (25, 0, 9, 5, 'Row5', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (26, 0, 9, 6, 'Row6', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (27, 1, 9, 7, 'Item', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (28, 0, 10, 1, 'Row1', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (29, 0, 10, 2, 'Row2', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (30, 0, 10, 3, 'Row3', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (31, 0, 10, 4, 'Row4', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (32, 0, 10, 5, 'Row5', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (33, 0, 10, 6, 'Row6', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (34, 0, 10, 7, 'Row7', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (35, 1, 10, 8, 'Item', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (36, 0, 11, 1, 'Row1', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (37, 0, 11, 2, 'Row2', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (38, 0, 11, 3, 'Row3', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (39, 0, 11, 4, 'Row4', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (40, 0, 11, 5, 'Row5', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (42, 1, 12, 1, 'Item', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (43, 1, 13, 1, 'Item', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (44, 1, 14, 1, 'Item', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (45, 1, 15, 1, 'Item', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (46, 0, 16, 1, 'Row1', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (47, 0, 16, 2, 'Row2', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (48, 0, 16, 3, 'Row3', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (49, 0, 16, 4, 'Row4', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (50, 0, 16, 5, 'Row5', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (51, 1, 16, 6, 'Item', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (52, 0, 17, 1, 'Row1', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (53, 0, 17, 2, 'Row2', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (54, 0, 17, 3, 'Row3', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (55, 0, 17, 4, 'Row4', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (56, 0, 17, 5, 'Row5', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (57, 0, 17, 6, 'Row6', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (58, 0, 17, 7, 'Row7', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (59, 0, 17, 8, 'Row8', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (60, 0, 17, 9, 'Row9', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (61, 0, 17, 10, 'Row10', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (62, 0, 17, 11, 'Row11', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (63, 0, 17, 12, 'Row12', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (64, 1, 18, 1, 'Item', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (65, 0, 19, 1, 'Row1', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (66, 0, 19, 2, 'Row2', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (67, 0, 19, 3, 'Row3', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (68, 1, 19, 4, 'Item', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (69, 1, 20, 1, 'Item', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (70, 0, 21, 1, 'Row1', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (71, 0, 21, 2, 'Row2', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (72, 0, 21, 3, 'Row3', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (73, 0, 21, 4, 'Row4', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (74, 0, 21, 5, 'Row5', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (75, 0, 21, 6, 'Row6', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (76, 0, 21, 7, 'Row7', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (77, 0, 21, 8, 'Row8', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (78, 1, 21, 9, 'Item', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (79, 1, 22, 1, 'Item', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (80, 0, 23, 1, 'Row1', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (81, 0, 23, 2, 'Row2', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (82, 0, 23, 3, 'Row3', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (83, 0, 23, 4, 'Row4', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (84, 0, 23, 5, 'Row5', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (85, 0, 23, 6, 'Row6', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (86, 0, 23, 7, 'Row7', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (87, 0, 23, 8, 'Row8', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (88, 1, 23, 9, 'Item', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (95, 1, 25, 1, 'Item', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (96, 0, 26, 1, 'Row1', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (97, 0, 26, 2, 'Row2', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (98, 0, 26, 3, 'Row3', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (99, 1, 26, 4, 'Item', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (100, 1, 27, 1, 'Item', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (101, 1, 28, 1, 'Item', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (102, 1, 29, 1, 'Item', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (103, 0, 30, 1, 'Row1', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (104, 0, 30, 2, 'Row2', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (105, 0, 30, 3, 'Row3', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (106, 0, 30, 4, 'Row4', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (107, 0, 30, 5, 'Row5', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (108, 0, 30, 6, 'Row6', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (109, 0, 30, 7, 'Row7', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (110, 0, 30, 8, 'Row8', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (111, 1, 30, 9, 'Item', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (41, 1, 11, 6, 'Item', 0);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (89, 0, 24, 1, 'Row1', 1);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (90, 0, 24, 2, 'Row2', 1);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (91, 0, 24, 3, 'Row3', 1);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (92, 0, 24, 4, 'Row4', 1);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (93, 0, 24, 5, 'Row5', 1);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (94, 1, 24, 6, 'Item', 1);
INSERT INTO "QuestionsTablesRows" ("ID", multi, "table_ID", "order", name, deleted) VALUES (112, 1, 24, 1, 'Item', 0);


--
-- TOC entry 1969 (class 0 OID 16445)
-- Dependencies: 163
-- Data for Name: Species; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (0, 'FGI', 'European green frog', 'Rana ridibunda', 'Rana ridibunda ', NULL, NULL, NULL, 'Rana ridibunda');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (1, 'FOK', 'American bull frog', 'Grenouille-taureau américaine', 'Rana toro americana ', NULL, NULL, NULL, 'Rana catesbeiana');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (2, 'FRG', 'Frogs', 'Grenouilles', 'Ranas ', NULL, NULL, NULL, 'Rana spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (3, 'TTS', 'Chinese softshell turtle', 'Trionyx sinensis', 'Trionyx sinensis ', NULL, NULL, NULL, 'Trionyx sinensis');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (4, 'TUG', 'Green turtle', 'Tortue verte', 'Tortuga verde ', NULL, NULL, NULL, 'Chelonia mydas');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (5, 'TUL', 'River and lake turtles nei', 'Tortues d''eau douce nca', 'Galápagos nep ', NULL, NULL, NULL, 'Testudinata');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (6, 'AAS', 'Noble crayfish', 'Écrevisse à pieds rouges', 'Cangrejo de río de patas rojas ', NULL, NULL, NULL, 'Astacus astacus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (7, 'AKS', 'Akiami paste shrimp', 'Chevrette akiami', 'Camaroncillo akiami ', NULL, NULL, NULL, 'Acetes japonicus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (8, 'AMS', 'Brine shrimp', 'Crevette de salines', 'Artemia ', NULL, NULL, NULL, 'Artemia salina');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (9, 'AYS', 'Euro-American crayfishes nei', 'Écrevisses euro-américain. nca', 'Cangrejos de río nep ', NULL, NULL, NULL, 'Astacidae, Cambaridae');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (10, 'BKR', 'Monkey river prawn', 'Bouquet singe', 'Camarón mono ', NULL, NULL, NULL, 'Macrobrachium lar');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (11, 'CAL', 'Callinectes swimcrabs nei', 'Crabes Callinectes nca', 'Jaibas Callinectes nep ', NULL, NULL, NULL, 'Callinectes spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (12, 'CDT', 'Yabby crayfish', 'Cherax destructor', 'Cherax destructor ', NULL, NULL, NULL, 'Cherax destructor');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (13, 'CID', 'Sawtooth caridina', 'Saltarelle scie', 'Caridina sierra ', NULL, NULL, NULL, 'Caridina denticulata');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (14, 'CPR', 'Common prawn', 'Bouquet commun', 'Camarón común ', NULL, NULL, NULL, 'Palaemon serratus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (15, 'CRA', 'Marine crabs nei', 'Crabes de mer nca', 'Cangrejos de mar nep ', NULL, NULL, NULL, 'Brachyura');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (16, 'CRB', 'Blue crab', 'Crabe bleu', 'Cangrejo azul ', NULL, NULL, NULL, 'Callinectes sapidus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (17, 'CRD', 'Danube crayfish', 'Écrevisse à pattes grêles', 'Cangrejo de patas punteadas ', NULL, NULL, NULL, 'Astacus leptodactylus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (18, 'CRG', 'Green crab', 'Crabe vert', 'Cangrejo verde ', NULL, NULL, NULL, 'Carcinus maenas');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (19, 'CRP', 'Red claw crayfish', 'Cherax quadricarinatus', 'Cherax quadricarinatus ', NULL, NULL, NULL, 'Cherax quadricarinatus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (20, 'CRS', 'Portunus swimcrabs nei', 'Étrilles Portunus nca', 'Jaibas Portunus nep ', NULL, NULL, NULL, 'Portunus spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (21, 'CRT', 'Marron crayfish', 'Cherax tenuimanus', 'Cherax tenuimanus ', NULL, NULL, NULL, 'Cherax tenuimanus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (22, 'CRU', 'Marine crustaceans nei', 'Crustacés marins nca', 'Crustáceos marinos nep ', NULL, NULL, NULL, 'Crustacea');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (23, 'CRW', 'Palinurid spiny lobsters nei', 'Langoustes Palinurus nca', 'Langostas Palinurus nep ', NULL, NULL, NULL, 'Palinurus spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (24, 'DCP', 'Natantian decapods nei', 'Décapodes natantia nca', 'Decápodos natantia nep ', NULL, NULL, NULL, 'Natantia');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (25, 'ERS', 'Chinese mitten crab', 'Crabe chinois', 'Cangrejo chino ', NULL, NULL, NULL, 'Eriocheir sinensis');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (26, 'FCX', 'Freshwater crustaceans nei', 'Crustacés d''eau douce nca', 'Crustáceos de agua dulce nep ', NULL, NULL, NULL, 'Crustacea');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (27, 'FLP', 'Fleshy prawn', 'Crevette charnue', 'Langostino carnoso ', NULL, NULL, NULL, 'Penaeus chinensis');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (28, 'GAZ', 'Gazami crab', 'Crabe gazami', 'Jaiba gazami ', NULL, NULL, NULL, 'Portunus trituberculatus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (29, 'GIT', 'Giant tiger prawn', 'Crevette géante tigrée', 'Langostino jumbo ', NULL, NULL, NULL, 'Penaeus monodon');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (30, 'KUP', 'Kuruma prawn', 'Crevette kuruma', 'Langostino japonés ', NULL, NULL, NULL, 'Penaeus japonicus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (31, 'LMS', 'Mud spiny lobster', 'Langouste de vase', 'Langosta fanguera ', NULL, NULL, NULL, 'Panulirus polyphagus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (32, 'MBM', 'Monsoon river prawn', 'Bouquet mousson', 'Camarón monzón ', NULL, NULL, NULL, 'Macrobrachium malcolmsonii');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (33, 'MET', 'Metapenaeus shrimps nei', 'Crevettes Metapenaeus nca', 'Camarones Metapenaeus nep ', NULL, NULL, NULL, 'Metapenaeus spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (34, 'MNX', 'Oriental river prawn', 'Bouquet nippon', 'Camarón nipón ', NULL, NULL, NULL, 'Macrobrachium nipponense');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (35, 'MPE', 'Greasyback shrimp', 'Crevette glissante', 'Camarón resbaloso ', NULL, NULL, NULL, 'Metapenaeus ensis');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (36, 'MPM', 'Eastern school shrimp', 'Crevette de maclay', 'Camarón maclayo ', NULL, NULL, NULL, 'Metapenaeus macleayi');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (37, 'MPN', 'Speckled shrimp', 'Crevette mouchetée', 'Gamba moteada ', NULL, NULL, NULL, 'Metapenaeus monoceros');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (38, 'MUD', 'Indo-Pacific swamp crab', 'Crabe de palétuviers', 'Cangrejo de manglares ', NULL, NULL, NULL, 'Scylla serrata');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (39, 'NUJ', 'Japanese spiny lobster', 'Langouste japonaise', 'Langosta japonesa ', NULL, NULL, NULL, 'Panulirus japonicus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (40, 'PAA', 'Baltic prawn', 'Bouquet balte', 'Camarón báltico ', NULL, NULL, NULL, 'Palaemon adspersus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (41, 'PAL', 'Palaemonid shrimps nei', 'Crevettes palémonides nca', 'Camarones palemónidos nep ', NULL, NULL, NULL, 'Palaemonidae');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (42, 'PBA', 'Banana prawn', 'Crevette banane', 'Langostino banana ', NULL, NULL, NULL, 'Penaeus merguiensis');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (43, 'PCL', 'Signal crayfish', 'Écrevisse signal', 'Pacifastacus leniusculus ', NULL, NULL, NULL, 'Pacifastacus leniusculus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (44, 'PEN', 'Penaeus shrimps nei', 'Crevettes Penaeus nca', 'Langostinos Penaeus nep ', NULL, NULL, NULL, 'Penaeus spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (45, 'PNI', 'Indian white prawn', 'Crevette blanche des Indes', 'Langostino blanco de la India ', NULL, NULL, NULL, 'Penaeus indicus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (46, 'PNP', 'Eastern king prawn', 'Crevette royale orientale', 'Langostino real oriental ', NULL, NULL, NULL, 'Penaeus plebejus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (47, 'PNS', 'Blue shrimp', 'Crevette bleue', 'Camarón azul ', NULL, NULL, NULL, 'Penaeus stylirostris');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (48, 'PNT', 'Southern white shrimp', 'Crevette ligubam du Sud', 'Langostino blanco sureño ', NULL, NULL, NULL, 'Penaeus schmitti');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (49, 'PNV', 'Whiteleg shrimp', 'Crevette pattes blanches', 'Camarón patiblanco ', NULL, NULL, NULL, 'Penaeus vannamei');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (50, 'PPF', 'River prawns nei', 'Bouquets d''eau douce nca', 'Camarones de agua dulce nep ', NULL, NULL, NULL, 'Macrobrachium spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (51, 'PPZ', 'Freshwater prawns, shrimps nei', 'Crevettes d''eau douce nca', 'Gambas,camaron.(agua dulce)nep ', NULL, NULL, NULL, 'Palaemonidae');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (52, 'PRB', 'Brown tiger prawn', 'Crevette tigrée sombre', 'Langostino tigre marrón ', NULL, NULL, NULL, 'Penaeus esculentus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (53, 'PRF', 'Giant river prawn', 'Bouquet géant', 'Langostino de río ', NULL, NULL, NULL, 'Macrobrachium rosenbergii');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (54, 'PST', 'Northern white shrimp', 'Crevette ligubam du Nord', 'Camarón blanco norteño ', NULL, NULL, NULL, 'Penaeus setiferus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (55, 'PVR', 'Atlantic ditch shrimp', 'Bouquet atlantique des canaux', 'Camarón de acequia atlántico ', NULL, NULL, NULL, 'Palaemonetes varians');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (56, 'RCW', 'Red swamp crawfish', 'Écrevisse rouge de marais', 'Cangrejo de las marismas ', NULL, NULL, NULL, 'Procambarus clarkii');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (57, 'REP', 'Redtail prawn', 'Crevette queue rouge', 'Camarón rabo colorado ', NULL, NULL, NULL, 'Penaeus penicillatus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (58, 'SCD', 'Blue swimming crab', 'Étrille bleue', 'Jaiba azul ', NULL, NULL, NULL, 'Portunus pelagicus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (59, 'SCR', 'Spinous spider crab', 'Araignée européenne', 'Centolla europea ', NULL, NULL, NULL, 'Maja squinado');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (60, 'SLV', 'Tropical spiny lobsters nei', 'Langoustes tropicales nca', 'Langostas tropicales nep ', NULL, NULL, NULL, 'Panulirus spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (61, 'SWM', 'Swimming crabs, etc. nei', 'Crabes, étrilles nca', 'Jaibas, cangrejos etc. nep ', NULL, NULL, NULL, 'Portunidae');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (62, 'TGS', 'Caramote prawn', 'Caramote', 'Langostino ', NULL, NULL, NULL, 'Penaeus kerathurus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (63, 'THQ', 'Flathead lobster', 'Cigale raquette', 'Cigarra chata ', NULL, NULL, NULL, 'Thenus orientalis');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (64, 'TIP', 'Green tiger prawn', 'Crevette tigrée verte', 'Langostino tigre verde ', NULL, NULL, NULL, 'Penaeus semisulcatus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (65, 'VLO', 'Spiny lobsters nei', 'Langoustes diverses nca', 'Langostas diversas nep ', NULL, NULL, NULL, 'Palinuridae');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (66, 'YLW', 'Orange mud crab', 'Scylla olivacea', 'Scylla olivacea ', NULL, NULL, NULL, 'Scylla olivacea');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (67, 'CUJ', 'Japanese sea cucumber', 'Bèche-de-mer japonaise', 'Cohombro de mar japonés ', NULL, NULL, NULL, 'Apostichopus japonicus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (68, 'CUX', 'Sea cucumbers nei', 'Bèches-de-mer nca', 'Cohombros de mar nep ', NULL, NULL, NULL, 'Holothuroidea');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (69, 'HFC', 'Sandfish', 'Holothuria scabra', 'Holothuria scabra ', NULL, NULL, NULL, 'Holothuria scabra');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (70, 'INV', 'Aquatic invertebrates nei', 'Invertébrés aquatiques nca', 'Invertebrados acuáticos nep ', NULL, NULL, NULL, 'Invertebrata');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (71, 'JEL', 'Jellyfishes nei', 'Méduses nca', 'Medusas nep ', NULL, NULL, NULL, 'Rhopilema spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (72, 'SSR', 'Red bait', 'Pyura stolonifera', 'Pyura stolonifera ', NULL, NULL, NULL, 'Pyura stolonifera');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (73, 'SSX', 'Sea squirts nei', 'Ascidiens nca', 'Ascidias nep ', NULL, NULL, NULL, 'Ascidiacea');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (74, 'URC', 'Sea urchins nei', 'Oursins nca', 'Erizos nep ', NULL, NULL, NULL, 'Strongylocentrotus spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (75, 'URM', 'Stony sea urchin', 'Oursin-pierre', 'Erizo de mar ', NULL, NULL, NULL, 'Paracentrotus lividus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (76, 'ABF', 'Red abalone', 'Ormeau rouge', 'Abulón colorado ', NULL, NULL, NULL, 'Haliotis rufescens');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (77, 'ABJ', 'Japanese abalone', 'Ormeau japonais', 'Abulón japonés ', NULL, NULL, NULL, 'Haliotis discus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (78, 'ABP', 'Perlemoen abalone', 'Ormeau de Mida', 'Oreja de mar ', NULL, NULL, NULL, 'Haliotis midae');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (79, 'ABX', 'Abalones nei', 'Ormeaux nca', 'Orejas de mar nep ', NULL, NULL, NULL, 'Haliotis spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (80, 'ACB', 'Inflated ark', 'Scapharca broughtonii', 'Scapharca broughtonii ', NULL, NULL, NULL, 'Scapharca broughtonii');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (81, 'BCL', 'Butter clam', 'Coque jaune', 'Almeja amarilla ', NULL, NULL, NULL, 'Saxidomus giganteus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (82, 'BLC', 'Blood cockle', 'Arche granuleuse', 'Arca del Pacífico occidental ', NULL, NULL, NULL, 'Anadara granosa');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (83, 'BLS', 'Anadara clams nei', 'Arches Anadara nca', 'Arcas Anadara nep ', NULL, NULL, NULL, 'Anadara spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (84, 'CHC', 'Choro mussel', 'Moule choro', 'Choro ', NULL, NULL, NULL, 'Choromytilus chorus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (85, 'CLH', 'Northern quahog(=Hard clam)', 'Praire', 'Chirla mercenaria ', NULL, NULL, NULL, 'Mercenaria mercenaria');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (86, 'CLJ', 'Japanese carpet shell', 'Palourde japonaise', 'Almeja japonesa ', NULL, NULL, NULL, 'Ruditapes philippinarum');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (87, 'CLS', 'Sand gaper', 'Mye des sables', 'Almeja de can ', NULL, NULL, NULL, 'Mya arenaria');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (88, 'CLV', 'Venus clams nei', 'Petites praires nca', 'Almejas(=Veneridos) nep ', NULL, NULL, NULL, 'Veneridae');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (89, 'CLX', 'Clams, etc. nei', 'Clams, etc. nca', 'Almejas, etc. nep ', NULL, NULL, NULL, 'Bivalvia');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (90, 'CMA', 'Asian clam', 'Clam d''Asie', 'Almeja de Asia ', NULL, NULL, NULL, 'Corbicula fluminea');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (91, 'COC', 'Common edible cockle', 'Coque commune', 'Berberecho común ', NULL, NULL, NULL, 'Cerastoderma edule');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (92, 'CON', 'Stromboid conchs nei', 'Strombes nca', 'Cobos nep ', NULL, NULL, NULL, 'Strombus spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (93, 'COO', 'Queen conch', 'Lambi', 'Caracol reina ', NULL, NULL, NULL, 'Strombus gigas');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (94, 'COZ', 'Cockles nei', 'Coques nca', 'Berberechos(=Cárdidos) nep ', NULL, NULL, NULL, 'Cardiidae');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (95, 'CSC', 'Hooded oyster', 'Huître-capuchon', 'Ostión capuchón ', NULL, NULL, NULL, 'Saccostrea cuccullata');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (96, 'CSI', 'Slipper cupped oyster', 'Huître creuse chausson', 'Crassostrea iredalei ', NULL, NULL, NULL, 'Crassostrea iredalei');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (97, 'CTC', 'Common cuttlefish', 'Seiche commune', 'Sepia común ', NULL, NULL, NULL, 'Sepia officinalis');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (98, 'CTG', 'Grooved carpet shell', 'Palourde croisée d''Europe', 'Almeja fina ', NULL, NULL, NULL, 'Ruditapes decussatus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (99, 'CTS', 'Pullet carpet shell', 'Palourde bleue', 'Almeja babosa ', NULL, NULL, NULL, 'Venerupis pullastra');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (100, 'DKC', 'Crocus giant clam', 'Bénitier crocus', 'Tridacna crocea ', NULL, NULL, NULL, 'Tridacna crocea');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (101, 'DKX', 'Elongate giant clam', 'Bénitier allongé', 'Tridacna maxima ', NULL, NULL, NULL, 'Tridacna maxima');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (102, 'DON', 'Donax clams', 'Olives de mer', 'Coquinas ', NULL, NULL, NULL, 'Donax spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (103, 'EQE', 'Pod razor shell', 'Couteau-sabre', 'Navaja ', NULL, NULL, NULL, 'Ensis ensis');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (104, 'FAG', 'Rooster venus', 'Palourde coq', 'Paphia gallus ', NULL, NULL, NULL, 'Paphia gallus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (105, 'FSH', 'Freshwater mussel shells', 'Coquilles des moules eau douce', 'Conchas de mejillón agua dulce ', NULL, NULL, NULL, 'Ex Unionidae');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (106, 'GAS', 'Gastropods nei', 'Gastropodes nca', 'Gasterópodos nep ', NULL, NULL, NULL, 'Gastropoda');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (107, 'GEC', 'Pacific geoduck', 'Panopée du Pacifique', 'Panopea del Pacífico ', NULL, NULL, NULL, 'Panopea abrupta');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (108, 'GFZ', 'Chinese mystery snail', 'Cipangopaludina chinensis', 'Cipangopaludina chinensis ', NULL, NULL, NULL, 'Cipangopaludina chinensis');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (109, 'HCJ', 'Japanese hard clam', 'Cythérée du Japon', 'Mercenaria japonesa ', NULL, NULL, NULL, 'Meretrix lusoria');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (110, 'HIP', 'Bear paw clam', 'Bénitier tacheté', 'Hippopus hippopus ', NULL, NULL, NULL, 'Hippopus hippopus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (111, 'HLT', 'Tuberculate abalone', 'Ormeau tuberculeux', 'Oreja marina tuberculosa ', NULL, NULL, NULL, 'Haliotis tuberculata');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (112, 'JSC', 'Yesso scallop', 'Pétoncle du Japon', 'Vieira japonesa ', NULL, NULL, NULL, 'Patinopecten yessoensis');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (113, 'KNJ', 'Oriental cyclina', 'Cycline orientale', 'Cyclina sinensis ', NULL, NULL, NULL, 'Cyclina sinensis');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (114, 'MAG', 'Smooth mactra', 'Mactre lisse', 'Mactra lisa ', NULL, NULL, NULL, 'Mactra glabrata');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (115, 'MOD', 'Horse mussels nei', 'Modioles nca', 'Mejillónes Modiolus nep ', NULL, NULL, NULL, 'Modiolus spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (116, 'MOF', 'Freshwater molluscs nei', 'Mollusques d''eau douce nca', 'Moluscos de agua dulce nep ', NULL, NULL, NULL, 'Mollusca');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (117, 'MOL', 'Marine molluscs nei', 'Mollusques marins nca', 'Moluscos marinos nep ', NULL, NULL, NULL, 'Mollusca');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (118, 'MSC', 'Cholga mussel', 'Moule cholga', 'Cholga ', NULL, NULL, NULL, 'Aulacomya ater');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (119, 'MSL', 'South American rock mussel', 'Moule de roche sudaméricaine', 'Mejillón de roca sudamericano ', NULL, NULL, NULL, 'Perna perna');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (120, 'MSM', 'Mediterranean mussel', 'Moule méditerranéenne', 'Mejillón mediterráneo ', NULL, NULL, NULL, 'Mytilus galloprovincialis');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (121, 'MSR', 'River Plata mussel', 'Moule de la Plata', 'Mejillón del Plata ', NULL, NULL, NULL, 'Mytilus platensis');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (122, 'MSV', 'Green mussel', 'Moule verte asiatique', 'Mejillón verde ', NULL, NULL, NULL, 'Perna viridis');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (123, 'MSX', 'Sea mussels nei', 'Moules nca', 'Mejillones nep ', NULL, NULL, NULL, 'Mytilidae');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (124, 'MTV', 'Globose clam', 'Clam sphérique', 'Mactra redonda ', NULL, NULL, NULL, 'Mactra veneriformis');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (125, 'MUK', 'Korean mussel', 'Moule coréenne', 'Mejillón coreano ', NULL, NULL, NULL, 'Mytilus coruscus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (126, 'MUS', 'Blue mussel', 'Moule commune', 'Mejillón común ', NULL, NULL, NULL, 'Mytilus edulis');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (127, 'MUZ', 'New Zealand mussel', 'Moule de Nouvelle-Zélande', 'Mejillón de Nueva Zelandia ', NULL, NULL, NULL, 'Perna canaliculus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (128, 'MYA', 'Australian mussel', 'Moule d''Australie', 'Mejillón de Australia ', NULL, NULL, NULL, 'Mytilus planulatus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (129, 'MYC', 'Chilean mussel', 'Moule chilienne', 'Chorito ', NULL, NULL, NULL, 'Mytilus chilensis');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (130, 'NDN', 'Grand ark', 'Arche pied d''âne', 'Arca casco de burro ', NULL, NULL, NULL, 'Anadara grandis');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (131, 'NQT', 'Black ark', 'Arche noire', 'Arca negra ', NULL, NULL, NULL, 'Anadara tuberculosa');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (132, 'OBN', 'Peppery furrow', 'Lavignon poivre', 'Almeja de perro ', NULL, NULL, NULL, 'Scrobicularia plana');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (133, 'OCH', 'Chilean flat oyster', 'Huître plate chilienne', 'Ostra chilena ', NULL, NULL, NULL, 'Ostrea chilensis');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (134, 'OCT', 'Octopuses, etc. nei', 'Pieuvres, poulpes nca', 'Pulpitos, pulpos nep ', NULL, NULL, NULL, 'Octopodidae');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (135, 'OCZ', 'Octopuses nei', 'Poulpes nca', 'Pulpos nep ', NULL, NULL, NULL, 'Octopus spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (136, 'OGZ', 'Gasar cupped oyster', 'Huître creuse gasar', 'Ostión gasar ', NULL, NULL, NULL, 'Crassostrea gasar');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (137, 'OIF', 'Diphos sanguin', 'Sanguinolaire diphos', 'Soletellina diphos ', NULL, NULL, NULL, 'Soletellina diphos');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (138, 'OSH', 'Pearl oyster shells nei', 'Coquilles d''huîtres perl. nca', 'Conchas de ostras perleras nep ', NULL, NULL, NULL, 'Ex Pinctada spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (139, 'OST', 'Flat and cupped oysters nei', 'Huîtres plates et creuses nca', 'Ostras y ostiones nep ', NULL, NULL, NULL, 'Ostreidae');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (140, 'OYA', 'American cupped oyster', 'Huître creuse américaine', 'Ostión virgínico ', NULL, NULL, NULL, 'Crassostrea virginica');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (141, 'OYC', 'Cupped oysters nei', 'Huîtres creuses nca', 'Ostiones nep ', NULL, NULL, NULL, 'Crassostrea spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (142, 'OYF', 'European flat oyster', 'Huître plate européenne', 'Ostra europea ', NULL, NULL, NULL, 'Ostrea edulis');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (143, 'OYG', 'Pacific cupped oyster', 'Huître creuse du Pacifique', 'Ostión japonés ', NULL, NULL, NULL, 'Crassostrea gigas');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (144, 'OYH', 'Olympia oyster', 'Huître plate Olympie', 'Ostra Olimpia ', NULL, NULL, NULL, 'Ostreola conchaphila');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (145, 'OYI', 'Indian backwater oyster', 'Crassostrea madrasensis', 'Crassostrea madrasensis ', NULL, NULL, NULL, 'Crassostrea madrasensis');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (146, 'OYM', 'Mangrove cupped oyster', 'Huître creuse des Caraïbes', 'Ostión de mangle ', NULL, NULL, NULL, 'Crassostrea rhizophorae');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (147, 'OYR', 'Cortez oyster', 'Huître creuse de Cortez', 'Ostra de Cortez ', NULL, NULL, NULL, 'Crassostrea corteziensis');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (148, 'OYS', 'Sydney cupped oyster', 'Huître creuse d''Australie', 'Ostra australiana ', NULL, NULL, NULL, 'Saccostrea commercialis');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (149, 'OYX', 'Flat oysters nei', 'Huîtres plates nca', 'Ostras nep ', NULL, NULL, NULL, 'Ostrea spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (150, 'PER', 'Periwinkles nei', 'Bigorneaux nca', 'Bígaros nep ', NULL, NULL, NULL, 'Littorina spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (151, 'PNM', 'Blacklip pearl oyster', 'Pintadine à lèvre noire', 'Pinctada margaritifera ', NULL, NULL, NULL, 'Pinctada margaritifera');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (152, 'PTE', 'Penguin wing oyster', 'Huître perlière ailée', 'Ostra perlera viuda ', NULL, NULL, NULL, 'Pteria penguin');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (153, 'PTS', 'Pacific littleneck clam', 'Palourde commune', 'Almejuela común ', NULL, NULL, NULL, 'Protothaca staminea');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (154, 'QQX', 'Giant clams nei', 'Tridacnes nca', 'Almeja gigantes nep ', NULL, NULL, NULL, 'Tridacna spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (155, 'QSC', 'Queen scallop', 'Vanneau', 'Volandeira ', NULL, NULL, NULL, 'Aequipecten opercularis');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (156, 'RAZ', 'Solen razor clams nei', 'Couteaux Solen nca', 'Navajas Solen nep ', NULL, NULL, NULL, 'Solen spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (157, 'RPN', 'Sea snails', 'Escargots de mer', 'Caracoles de mar ', NULL, NULL, NULL, 'Rapana spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (158, 'SCE', 'Great Atlantic scallop', 'Coquille St-Jacques atlantique', 'Vieira(=Concha de Santiago) ', NULL, NULL, NULL, 'Pecten maximus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (159, 'SCH', 'Pacific calico scallop', 'Pétoncle volant', 'Peine volador ', NULL, NULL, NULL, 'Argopecten ventricosus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (160, 'SCQ', 'Peruvian calico scallop', 'Pétoncle éventail', 'Ostión abanico ', NULL, NULL, NULL, 'Argopecten purpuratus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (161, 'SCX', 'Scallops nei', 'Peignes nca', 'Peines nep ', NULL, NULL, NULL, 'Pectinidae');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (162, 'SNE', 'False abalone', 'Rocher loco', 'Loco ', NULL, NULL, NULL, 'Concholepas concholepas');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (163, 'SSC', 'Southern Australia scallop', 'Pecten d''Australie du Sud', 'Vieira australiana del Sur ', NULL, NULL, NULL, 'Pecten fumatus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (164, 'SVE', 'Striped venus', 'Petite praire', 'Chirla ', NULL, NULL, NULL, 'Chamelea gallina');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (165, 'SVT', 'Constricted tagelus', 'Sinonovacula constricta', 'Sinonovacula constricta ', NULL, NULL, NULL, 'Sinonovacula constricta');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (166, 'SWT', 'Swan mussel', 'Anodonta cygnea', 'Anodonta cygnea ', NULL, NULL, NULL, 'Anodonta cygnea');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (167, 'TDD', 'Smooth giant clam', 'Grande tridacne brillante', 'Tridacna derasa ', NULL, NULL, NULL, 'Tridacna derasa');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (168, 'TDG', 'Giant clam', 'Tridacne géante', 'Almeja gigante ', NULL, NULL, NULL, 'Tridacna gigas');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (169, 'TDS', 'Fluted giant clam', 'Grande tridacne gaufrée', 'Tridacna squamosa ', NULL, NULL, NULL, 'Tridacna squamosa');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (170, 'TOS', 'Horned turban', 'Troque', 'Peonza cornuda ', NULL, NULL, NULL, 'Turbo cornutus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (171, 'TPS', 'Carpet shells nei', 'Clovisses nca', 'Almejas nep ', NULL, NULL, NULL, 'Ruditapes spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (172, 'TQU', 'Pacific horse clam', 'Tresus nuttallii', 'Tresus nuttallii ', NULL, NULL, NULL, 'Tresus nuttallii');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (173, 'TQY', 'Pen shells nei', 'Jambonneaux nca', 'Pinas nep ', NULL, NULL, NULL, 'Atrina spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (174, 'VEV', 'Warty venus', 'Praire commune', 'Escupina grabada ', NULL, NULL, NULL, 'Venus verrucosa');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (175, 'VNA', 'Golden carpet shell', 'Palourde jaune', 'Almeja dorada ', NULL, NULL, NULL, 'Venerupis aurea');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (176, 'VNR', 'Banded carpet shell', 'Palourde rose', 'Almeja rubia ', NULL, NULL, NULL, 'Venerupis rhomboides');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (177, 'VSC', 'Variegated scallop', 'Pétoncle', 'Zamburiña ', NULL, NULL, NULL, 'Chlamys varia');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (178, 'YKD', 'Pacific lion''s paw', 'Pétoncle patte de lion du Pac.', 'Peine catalina ', NULL, NULL, NULL, 'Lyropecten subnodosus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (179, 'AAA', 'Adriatic sturgeon', 'Esturgeon de l''Adriatique', 'Esturión del Adriático ', NULL, NULL, NULL, 'Acipenser naccarii');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (180, 'ABK', 'White bream', 'Blicca bjoerkna', 'Blicca bjoerkna ', NULL, NULL, NULL, 'Blicca bjoerkna');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (181, 'ACH', 'Arctic char', 'Omble-chevalier', 'Trucha alpina ', NULL, NULL, NULL, 'Salvelinus alpinus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (182, 'AER', 'Green terror', 'Aequidens rivulatus', 'Vieja azul ', NULL, NULL, NULL, 'Aequidens rivulatus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (183, 'AGR', 'Freshwater drum', 'Malachigan', 'Roncador de agua dulce ', NULL, NULL, NULL, 'Aplodinotus grunniens');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (184, 'ALR', 'Bleak', 'Ablette', 'Alburno ', NULL, NULL, NULL, 'Alburnus alburnus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (185, 'AMB', 'Greater amberjack', 'Sériole couronnée', 'Pez de limón ', NULL, NULL, NULL, 'Seriola dumerili');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (186, 'AMJ', 'Japanese amberjack', 'Sériole du Japon', 'Medregal del Japón ', NULL, NULL, NULL, 'Seriola quinqueradiata');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (187, 'AMX', 'Amberjacks nei', 'Sérioles nca', 'Medregales nep ', NULL, NULL, NULL, 'Seriola spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (188, 'APB', 'Siberian sturgeon', 'Esturgeon de Sibérie', 'Esturión de Siberia ', NULL, NULL, NULL, 'Acipenser baerii');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (189, 'APE', 'Starry sturgeon', 'Esturgeon étoilé', 'Esturión estrellado ', NULL, NULL, NULL, 'Acipenser stellatus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (190, 'APG', 'Danube sturgeon(=Osetr)', 'Esturgeon du Danube', 'Esturión del Danube ', NULL, NULL, NULL, 'Acipenser gueldenstaedtii');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (191, 'APN', 'White sturgeon', 'Esturgeon blanc', 'Esturión blanco ', NULL, NULL, NULL, 'Acipenser transmontanus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (192, 'APR', 'Sterlet sturgeon', 'Sterlet', 'Esterlete ', NULL, NULL, NULL, 'Acipenser ruthenus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (193, 'ARP', 'Arapaima', 'Pirarucu', 'Paiche ', NULL, NULL, NULL, 'Arapaima gigas');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (194, 'AST', 'Velvety cichlids', 'Astronotus spp', 'Acarahuazu ', NULL, NULL, NULL, 'Astronotus spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (195, 'ASU', 'Asp', 'Aspe', 'Aspio ', NULL, NULL, NULL, 'Aspius aspius');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (196, 'ATB', 'Big-scale sand smelt', 'Joël', 'Pejerrey mediterráneo ', NULL, NULL, NULL, 'Atherina boyeri');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (197, 'ATK', 'Okhotsk atka mackerel', 'Terpuga arabesque de Okhotsk', 'Lorcha de Okhotsk ', NULL, NULL, NULL, 'Pleurogrammus azonus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (198, 'AXF', 'Banded astyanax', 'Astyanax fasciatus', 'Colirroja ', NULL, NULL, NULL, 'Astyanax fasciatus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (199, 'BAH', 'Bastard halibut', 'Cardeau hirame', 'Falso halibut del Japón ', NULL, NULL, NULL, 'Paralichthys olivaceus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (200, 'BAJ', 'Japanese seabass', 'Bar du Japon', 'Serránido japonés ', NULL, NULL, NULL, 'Lateolabrax japonicus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (201, 'BAX', 'Bastard halibuts nei', 'Cardeaux nca', 'Falsos halibuts nep ', NULL, NULL, NULL, 'Paralichthys spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (202, 'BBK', 'Algerian barb', 'Barbus callensis', 'Barbus callensis ', NULL, NULL, NULL, 'Barbus callensis');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (203, 'BBU', 'Ripon barbel', 'Barbus altianalis', 'Barbus altianalis ', NULL, NULL, NULL, 'Barbus altianalis');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (204, 'BCB', 'Argentinian silverside', 'Athérine d''Argentine', 'Pejerrey de Argentina ', NULL, NULL, NULL, 'Odontesthes bonariensis');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (205, 'BCM', 'Dorada', 'Brycon moorei', 'Brycon moorei ', NULL, NULL, NULL, 'Brycon moorei');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (206, 'BFP', 'Great blue spotted mudskipper', 'Boleophthalmus pectinirostris', 'Boleophthalmus pectinirostris ', NULL, NULL, NULL, 'Boleophthalmus pectinirostris');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (207, 'BFS', 'Tinfoil barb', 'Barbonymus schwanenfeldii', 'Barbonymus schwanenfeldii ', NULL, NULL, NULL, 'Barbonymus schwanenfeldii');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (208, 'BFT', 'Atlantic bluefin tuna', 'Thon rouge de l''Atlantique', 'Atún rojo del Atlántico ', NULL, NULL, NULL, 'Thunnus thynnus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (209, 'BGJ', 'Bayad', 'Bagrus bajad', 'Bagrus bajad ', NULL, NULL, NULL, 'Bagrus bajad');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (210, 'BIC', 'Bighead carp', 'Carpe à grosse tête', 'Carpa cabezona ', NULL, NULL, NULL, 'Hypophthalmichthys nobilis');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (211, 'BKC', 'Black carp', 'Carpe noire', 'Carpa negra ', NULL, NULL, NULL, 'Mylopharyngodon piceus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (212, 'BLL', 'Brill', 'Barbue', 'Rémol ', NULL, NULL, NULL, 'Scophthalmus rhombus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (213, 'BLU', 'Bluefish', 'Tassergal', 'Anjova ', NULL, NULL, NULL, 'Pomatomus saltatrix');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (214, 'BMK', 'Green humphead parrotfish', 'Perroquet bossu vert', 'Loro cototo verde ', NULL, NULL, NULL, 'Bolbometopon muricatum');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (215, 'BNC', 'Brycon cephalus', 'Brycon cephalus', 'Sábalo cola roja ', NULL, NULL, NULL, 'Brycon cephalus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (216, 'BNO', 'Brycon orbignyanus', 'Brycon orbignyanus', 'Brycon orbignyanus ', NULL, NULL, NULL, 'Brycon orbignyanus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (217, 'BSB', 'Black seabass', 'Fanfre noir', 'Serrano estriado ', NULL, NULL, NULL, 'Centropristis striata');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (218, 'BSE', 'Seabasses nei', 'Bars nca', 'Lubinas nep ', NULL, NULL, NULL, 'Dicentrarchus spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (219, 'BSS', 'European seabass', 'Bar européen', 'Lubina ', NULL, NULL, NULL, 'Dicentrarchus labrax');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (220, 'BSX', 'Groupers, seabasses nei', 'Serranidés nca', 'Meros, chernas, nep ', NULL, NULL, NULL, 'Serranidae');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (221, 'BUF', 'Buffalofishes nei', 'Poissons-taureaux nca', 'Ictiobus spp ', NULL, NULL, NULL, 'Ictiobus spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (222, 'BXH', 'Brycon spp', 'Brycon spp', 'Brycon spp ', NULL, NULL, NULL, 'Brycon spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (223, 'BXN', 'Brycon hilarii', 'Brycon hilarii', 'Brycon hilarii ', NULL, NULL, NULL, 'Brycon hilarii');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (224, 'BYB', 'Silver perch', 'Bidyanus bidyanus', 'Bidyanus bidyanus ', NULL, NULL, NULL, 'Bidyanus bidyanus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (225, 'BZH', 'Brycon amazonicus', 'Brycon amazonicus', 'Bocón ', NULL, NULL, NULL, 'Brycon amazonicus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (226, 'CAA', 'Atlantic wolffish', 'Loup atlantique', 'Perro del Norte ', NULL, NULL, NULL, 'Anarhichas lupus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (227, 'CAF', 'Catfishes nei', 'Barbottes nca', 'Bagres nep ', NULL, NULL, NULL, 'Ictalurus spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (228, 'CAN', 'Naked catfishes', 'Bagrus spp', 'Bagrus spp ', NULL, NULL, NULL, 'Bagrus spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (229, 'CAS', 'Spotted wolffish', 'Loup tacheté', 'Perro pintado ', NULL, NULL, NULL, 'Anarhichas minor');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (230, 'CBA', 'Cobia', 'Mafou', 'Cobia ', NULL, NULL, NULL, 'Rachycentron canadum');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (231, 'CBM', 'Brown meagre', 'Corb commun', 'Corvallo ', NULL, NULL, NULL, 'Sciaena umbra');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (232, 'CBT', 'Philippine catfish', 'Clarias batrachus', 'Clarias batrachus ', NULL, NULL, NULL, 'Clarias batrachus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (233, 'CDX', 'Croakers, drums nei', 'Sciaenidés nca', 'Esciénidos nep ', NULL, NULL, NULL, 'Sciaenidae');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (234, 'CFS', 'Hong Kong catfish', 'Clarias fuscus', 'Clarias fuscus ', NULL, NULL, NULL, 'Clarias fuscus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (235, 'CGM', 'Africa-bighead catfish, hybrid', 'Poisson-chat, hybride', 'Pez-gato, híbrido ', NULL, NULL, NULL, 'Clarias gariepinus x C. macrocephalus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (236, 'CGO', 'Goldfish', 'Poisson rouge(=Cyprin doré)', 'Pez rojo ', NULL, NULL, NULL, 'Carassius auratus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (237, 'CHA', 'Characins nei', 'Characinidés nca', 'Carácidos nep ', NULL, NULL, NULL, 'Characidae');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (238, 'CHE', 'Masu(=Cherry) salmon', 'Saumon du Japon', 'Salmón japonés ', NULL, NULL, NULL, 'Oncorhynchus masou');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (239, 'CHI', 'Chinook(=Spring=King) salmon', 'Saumon royal', 'Salmón real ', NULL, NULL, NULL, 'Oncorhynchus tshawytscha');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (240, 'CHK', 'Blackbelt cichlid', 'Cichlasoma maculicauda', 'Cichlasoma maculicauda ', NULL, NULL, NULL, 'Cichlasoma maculicauda');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (241, 'CHL', 'Jaguar guapote', 'Cichlasoma managuense', 'Guapote tigre ', NULL, NULL, NULL, 'Cichlasoma managuense');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (242, 'CHR', 'Chars nei', 'Ombles nca', 'Salvelinos nep ', NULL, NULL, NULL, 'Salvelinus spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (243, 'CHU', 'Chum(=Keta=Dog) salmon', 'Saumon chien', 'Keta ', NULL, NULL, NULL, 'Oncorhynchus keta');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (244, 'CHX', 'Cichlasoma nei', 'Cichlasoma nca', 'Cichlasoma nep ', NULL, NULL, NULL, 'Cichlasoma spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (245, 'CIJ', 'Peled', 'Coregonus peled', 'Coregonus peled ', NULL, NULL, NULL, 'Coregonus peled');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (246, 'CIV', 'Citharinus nei', 'Citharinus nep', 'Citharinus nca ', NULL, NULL, NULL, 'Citharinus spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (247, 'CKM', 'Whitemouth croaker', 'Tambour rayé', 'Corvinón rayado ', NULL, NULL, NULL, 'Micropogonias furnieri');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (248, 'CLN', 'Mudfish', 'Clarias anguillaris', 'Clarias anguillaris ', NULL, NULL, NULL, 'Clarias anguillaris');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (249, 'CLZ', 'North African catfish', 'Poisson-chat nord-africain', 'Pez-gato ', NULL, NULL, NULL, 'Clarias gariepinus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (250, 'CMG', 'Mrigal carp', 'Cirrhinus mrigala', 'Cirrhinus mrigala ', NULL, NULL, NULL, 'Cirrhinus mrigala');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (251, 'CNA', 'Snakehead', 'Poisson tête de serpent', 'Cabeza de serpiente ', NULL, NULL, NULL, 'Channa argus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (252, 'CNP', 'Spotted snakehead', 'Tête de serpent tachetée', 'Cabeza de serpiente moteada ', NULL, NULL, NULL, 'Channa punctata');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (253, 'COB', 'Shi drum', 'Ombrine côtière', 'Verrugato fusco ', NULL, NULL, NULL, 'Umbrina cirrosa');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (254, 'COD', 'Atlantic cod', 'Morue de l''Atlantique', 'Bacalao del Atlántico ', NULL, NULL, NULL, 'Gadus morhua');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (255, 'COH', 'Coho(=Silver) salmon', 'Saumon argenté', 'Salmón plateado ', NULL, NULL, NULL, 'Oncorhynchus kisutch');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (256, 'CSD', 'Pirapatinga', 'Piaractus brachypomus', 'Cachama blanca ', NULL, NULL, NULL, 'Piaractus brachypomus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (257, 'CSM', 'Cachama', 'Colossoma macropomum', 'Cachama ', NULL, NULL, NULL, 'Colossoma macropomum');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (258, 'CSO', 'Pacu', 'Piaractus mesopotamicus', 'Paco ', NULL, NULL, NULL, 'Piaractus mesopotamicus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (259, 'CSR', 'Bagrid catfish', 'Chrysichthys nigrodigitatus', 'Chrysichthys nigrodigitatus ', NULL, NULL, NULL, 'Chrysichthys nigrodigitatus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (260, 'CST', 'Black catfishes nei', 'Chrysichthys spp', 'Chrysichthys spp ', NULL, NULL, NULL, 'Chrysichthys spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (261, 'CSY', 'Upsidedown catfishes', 'Synodontis spp', 'Synodontis spp ', NULL, NULL, NULL, 'Synodontis spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (262, 'CTB', 'Common two-banded seabream', 'Sar à tête noire', 'Sargo mojarra ', NULL, NULL, NULL, 'Diplodus vulgaris');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (263, 'CTO', 'Torpedo-shaped catfishes nei', 'Clarias spp', 'Clarias spp ', NULL, NULL, NULL, 'Clarias spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (264, 'CTT', 'Catla', 'Catla catla', 'Catla catla ', NULL, NULL, NULL, 'Catla catla');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (265, 'CVJ', 'Crevalle jack', 'Carangue crevalle', 'Jurel común ', NULL, NULL, NULL, 'Caranx hippos');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (266, 'CXS', 'Bigeye trevally', 'Carangue vorace', 'Jurel voráz ', NULL, NULL, NULL, 'Caranx sexfasciatus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (267, 'DEC', 'Common dentex', 'Denté commun', 'Dentón ', NULL, NULL, NULL, 'Dentex dentex');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (268, 'DOD', 'Dotted gizzard shad', 'Alose tachetée', 'Alosa manchada ', NULL, NULL, NULL, 'Konosirus punctatus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (269, 'DOM', 'Pacific fat sleeper', 'Dormitator latifrons', 'Camote del Pacífico ', NULL, NULL, NULL, 'Dormitator latifrons');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (270, 'DPC', 'Daggertooth pike conger', 'Murénésoce-dague', 'Morenocio dentón ', NULL, NULL, NULL, 'Muraenesox cinereus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (271, 'DRU', 'Sciaenas nei', 'Sciaenas nca', 'Sciaenas nep ', NULL, NULL, NULL, 'Sciaena spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (272, 'DSE', 'Grass-eaters nei', 'Distichodus spp', 'Distichodus spp ', NULL, NULL, NULL, 'Distichodus spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (273, 'DTT', 'Yellowback seabream', 'Dentex tumifrons', 'Dentex tumifrons ', NULL, NULL, NULL, 'Dentex tumifrons');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (274, 'EEN', 'Giant grouper', 'Mérou lancéolé', 'Mero lanceolado ', NULL, NULL, NULL, 'Epinephelus lanceolatus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (275, 'ELA', 'American eel', 'Anguille d''Amérique', 'Anguila americana ', NULL, NULL, NULL, 'Anguilla rostrata');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (276, 'ELE', 'European eel', 'Anguille d''Europe', 'Anguila europea ', NULL, NULL, NULL, 'Anguilla anguilla');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (277, 'ELJ', 'Japanese eel', 'Anguille du Japon', 'Anguila japonesa ', NULL, NULL, NULL, 'Anguilla japonica');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (278, 'ELU', 'Short-finned eel', 'Anguille d''Australie', 'Anguila australiana ', NULL, NULL, NULL, 'Anguilla australis');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (279, 'ELX', 'River eels nei', 'Anguilles nca', 'Anguilas nep ', NULL, NULL, NULL, 'Anguilla spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (280, 'ENI', 'Orange-spotted grouper', 'Mérou taches oranges', 'Mero de pintas naranjas ', NULL, NULL, NULL, 'Epinephelus coioides');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (281, 'ENJ', 'Crimson seabream', 'Pagre cramoisi', 'Sargo púrpura ', NULL, NULL, NULL, 'Evynnis japonica');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (282, 'EPA', 'Hong Kong grouper', 'Mérou rouge tacheté', 'Mero de pintas rojas ', NULL, NULL, NULL, 'Epinephelus akaara');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (283, 'EPR', 'Areolate grouper', 'Mérou aréolé', 'Mero areolado ', NULL, NULL, NULL, 'Epinephelus areolatus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (284, 'EPT', 'Greasy grouper', 'Mérou loutre', 'Mero lutria ', NULL, NULL, NULL, 'Epinephelus tauvina');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (285, 'EWF', 'Brown-marbled grouper', 'Mérou marron', 'Mero manchado ', NULL, NULL, NULL, 'Epinephelus fuscoguttatus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (286, 'FAB', 'Asian barbs nei', 'Barbeaux d''Asie nca', 'Barbos de Asia nep ', NULL, NULL, NULL, 'Puntius spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (287, 'FBM', 'Freshwater bream', 'Brème d''eau douce', 'Brema común ', NULL, NULL, NULL, 'Abramis brama');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (288, 'FBR', 'Freshwater breams nei', 'Brèmes d''eau douce nca', 'Bremas nep ', NULL, NULL, NULL, 'Abramis spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (289, 'FBU', 'Burbot', 'Lotte de rivière', 'Lota ', NULL, NULL, NULL, 'Lota lota');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (290, 'FCC', 'Crucian carp', 'Carassin(=Cyprin)', 'Carpín ', NULL, NULL, NULL, 'Carassius carassius');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (291, 'FCG', 'Grass carp(=White amur)', 'Carpe herbivore(=chinoise)', 'Carpa china ', NULL, NULL, NULL, 'Ctenopharyngodon idellus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (292, 'FCH', 'Hoven''s carp', 'Barbus d''Hoven', 'Barbo de Hoven ', NULL, NULL, NULL, 'Leptobarbus hoeveni');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (293, 'FCN', 'Nilem carp', 'Osteochilus hasselti', 'Osteochilus hasselti ', NULL, NULL, NULL, 'Osteochilus hasselti');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (294, 'FCP', 'Common carp', 'Carpe commune', 'Carpa común ', NULL, NULL, NULL, 'Cyprinus carpio');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (295, 'FCY', 'Cyprinids nei', 'Cyprinidés nca', 'Ciprínidos nep ', NULL, NULL, NULL, 'Cyprinidae');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (296, 'FFX', 'Filefishes, leatherjackets nei', 'Poissons-bourses nca', 'Cachúas, lijas nep ', NULL, NULL, NULL, 'Monacanthidae');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (297, 'FGB', 'Gudgeons, sleepers nei', 'Gudgeons, dormeurs nca', 'Durmientes nep ', NULL, NULL, NULL, 'Eleotridae');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (298, 'FGG', 'Giant gourami', 'Gourami géant', 'Gurami gigante ', NULL, NULL, NULL, 'Osphronemus goramy');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (299, 'FGO', 'Kissing gourami', 'Gourami embrasseur', 'Gurami besador ', NULL, NULL, NULL, 'Helostoma temminckii');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (300, 'FGS', 'Snakeskin gourami', 'Gourami peau de serpent', 'Gurami piel de serpiente ', NULL, NULL, NULL, 'Trichogaster pectoralis');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (301, 'FGX', 'Freshwater gobies nei', 'Gobies d''eau douce nca', 'Góbidos de agua dulce nep ', NULL, NULL, NULL, 'Gobiidae');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (302, 'FID', 'Orfe(=Ide)', 'Ide mélanote', 'Cachuelo ', NULL, NULL, NULL, 'Leuciscus idus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (303, 'FIN', 'Finfishes nei', 'Poissons téléostéens nca', 'Peces de escama nep ', NULL, NULL, NULL, 'Osteichthyes');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (304, 'FIS', 'Indonesian snakehead', 'Tête de serpent d''Indonésie', 'Cabeza de serpiente rojo ', NULL, NULL, NULL, 'Channa micropeltes');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (305, 'FKN', 'Knifefishes', 'Notopterus spp', 'Notopterus spp ', NULL, NULL, NULL, 'Notopterus spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (306, 'FLE', 'European flounder', 'Flet d''Europe', 'Platija europea ', NULL, NULL, NULL, 'Platichthys flesus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (307, 'FLF', 'Filefishes nei', 'Bourses nca', 'Cachúas nep ', NULL, NULL, NULL, 'Cantherhines (=Navodon) spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (308, 'FLT', 'Asian swamp eel', 'Monopterus albus', 'Monopterus albus ', NULL, NULL, NULL, 'Monopterus albus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (309, 'FLX', 'Flatfishes nei', 'Poissons plats nca', 'Peces planos nep ', NULL, NULL, NULL, 'Pleuronectiformes');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (310, 'FOT', 'Fourfinger threadfin', 'Barbure à quatre doigts', 'Barbudo de cuatro dedos ', NULL, NULL, NULL, 'Eleutheronema tetradactylum');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (311, 'FPC', 'Climbing perch', 'Anabas', 'Perca trepadora ', NULL, NULL, NULL, 'Anabas testudineus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (312, 'FPE', 'European perch', 'Perche européenne', 'Perca ', NULL, NULL, NULL, 'Perca fluviatilis');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (313, 'FPI', 'Northern pike', 'Brochet du Nord', 'Lucio ', NULL, NULL, NULL, 'Esox lucius');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (314, 'FPP', 'Pike-perch', 'Sandre', 'Lucioperca ', NULL, NULL, NULL, 'Sander lucioperca');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (315, 'FPY', 'American yellow perch', 'Perchaude', 'Perca canadiense ', NULL, NULL, NULL, 'Perca flavescens');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (316, 'FRF', 'Freshwater fishes nei', 'Poissons d''eau douce nca', 'Peces de agua dulce nep ', NULL, NULL, NULL, 'Osteichthyes');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (317, 'FRO', 'Roach', 'Gardon', 'Rutilo ', NULL, NULL, NULL, 'Rutilus rutilus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (318, 'FRX', 'Roaches nei', 'Gardons nca', 'Rutilos nep ', NULL, NULL, NULL, 'Rutilus spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (319, 'FSC', 'Sichel', 'Pelecus cultratus', 'Peleco ', NULL, NULL, NULL, 'Pelecus cultratus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (320, 'FSI', 'Freshwater siluroids nei', 'Silurides d''eau douce nca', 'Siluroideos de agua dulce nep ', NULL, NULL, NULL, 'Siluroidei');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (321, 'FSN', 'Snakeheads(=Murrels) nei', 'Poissons tête de serpent nca', 'Cabezas de serpiente nep ', NULL, NULL, NULL, 'Channa spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (322, 'FSS', 'Striped snakehead', 'Tête de serpent strié', 'Cabeza de serpiente cabrío ', NULL, NULL, NULL, 'Channa striata');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (323, 'FTE', 'Tench', 'Tanche', 'Tenca ', NULL, NULL, NULL, 'Tinca tinca');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (324, 'GBM', 'Marble goby', 'Oxyeleotris marmorata', 'Oxyeleotris marmorata ', NULL, NULL, NULL, 'Oxyeleotris marmorata');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (325, 'GIP', 'Barramundi(=Giant seaperch)', 'Perche barramundi', 'Perca gigante ', NULL, NULL, NULL, 'Lates calcarifer');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (326, 'GLT', 'Golden trevally', 'Carangue royale', 'Jurel dorado ', NULL, NULL, NULL, 'Gnathanodon speciosus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (327, 'GOM', 'Gouramis nei', 'Gouramis nca', 'Guramis nep ', NULL, NULL, NULL, 'Trichogaster spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (328, 'GPA', 'Gobies nei', 'Gobies nca', 'Góbidos nep ', NULL, NULL, NULL, 'Gobiidae');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (329, 'GPX', 'Groupers nei', 'Mérous nca', 'Meros nep ', NULL, NULL, NULL, 'Epinephelus spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (330, 'GRO', 'Groundfishes nei', 'Poissons de fond nca', 'Peces de fondo nep ', NULL, NULL, NULL, 'Osteichthyes');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (331, 'GSU', 'Silver seabream', 'Dorade', 'Dorada del Pacífico ', NULL, NULL, NULL, 'Pagrus auratus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (332, 'GTA', 'Three-spined stickleback', 'Épinoche à trois épines', 'Espinoso ', NULL, NULL, NULL, 'Gasterosteus aculeatus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (333, 'HAD', 'Haddock', 'Églefin', 'Eglefino ', NULL, NULL, NULL, 'Melanogrammus aeglefinus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (334, 'HAL', 'Atlantic halibut', 'Flétan de l''Atlantique', 'Fletán del Atlántico ', NULL, NULL, NULL, 'Hippoglossus hippoglossus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (335, 'HEB', 'African catfish', 'Poisson-chat africain', 'Pez-gato africano ', NULL, NULL, NULL, 'Heterobranchus bidorsalis');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (336, 'HED', 'Kafue pike', 'Hepsetus odoe', 'Hepsetus odoe ', NULL, NULL, NULL, 'Hepsetus odoe');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (337, 'HEL', 'Sampa', 'Heterobranchus longifilis', 'Heterobranchus longifilis ', NULL, NULL, NULL, 'Heterobranchus longifilis');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (338, 'HIX', 'Kelee shad', 'Alose palli', 'Sábalo chandano ', NULL, NULL, NULL, 'Hilsa kelee');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (339, 'HJF', 'Banded jewelfish', 'Hémichromis rayé', 'Hemichromis fasciatus ', NULL, NULL, NULL, 'Hemichromis fasciatus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (340, 'HON', 'Common nase', 'Nase commun', 'Condrostoma común ', NULL, NULL, NULL, 'Chondrostoma nasus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (341, 'HRF', 'Atlantic spadefish', 'Chaetodipterus faber', 'Chaetodipterus faber ', NULL, NULL, NULL, 'Chaetodipterus faber');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (342, 'HSL', 'Suckermouth catfish', 'Hypostomus plecostomus', 'Hypostomus plecostomus ', NULL, NULL, NULL, 'Hypostomus plecostomus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (343, 'HSR', 'Atipa', 'Hoplosternum littorale', 'Hoplosternum littorale ', NULL, NULL, NULL, 'Hoplosternum littorale');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (344, 'HTF', 'Stinging catfish', 'Heteropneustes fossilis', 'Heteropneustes fossilis ', NULL, NULL, NULL, 'Heteropneustes fossilis');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (345, 'HTN', 'African bonytongue', 'Heterotis niloticus', 'Heterotis niloticus ', NULL, NULL, NULL, 'Heterotis niloticus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (346, 'HUC', 'Huchen', 'Huchon', 'Salmón del Danubio ', NULL, NULL, NULL, 'Hucho hucho');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (347, 'HUH', 'Beluga', 'Béluga', 'Esturión beluga ', NULL, NULL, NULL, 'Huso huso');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (348, 'HVW', 'Hoplias spp', 'Hoplias spp', 'Hoplias spp ', NULL, NULL, NULL, 'Hoplias spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (349, 'HWU', 'Trahira', 'Hoplias malabaricus', 'Tararira ', NULL, NULL, NULL, 'Hoplias malabaricus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (350, 'ICH', 'Ichthyoelephas humeralis', 'Ichthyoelephas humeralis', 'Bocachico ', NULL, NULL, NULL, 'Ichthyoelephas humeralis');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (351, 'IGV', 'Streaked spinefoot', 'Siganus javus', 'Siganus javus ', NULL, NULL, NULL, 'Siganus javus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (352, 'IGX', 'Cichla spp', 'Cichla spp', 'Cichla spp ', NULL, NULL, NULL, 'Cichla spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (353, 'ITM', 'Black bullhead', 'Poisson-chat', 'Bagre torito negro ', NULL, NULL, NULL, 'Ameiurus melas');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (354, 'ITP', 'Channel catfish', 'Barbue de rivière', 'Bagre de canal ', NULL, NULL, NULL, 'Ictalurus punctatus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (355, 'JJM', 'Japanese jack mackerel', 'Chinchard du Japon', 'Jurel japonés ', NULL, NULL, NULL, 'Trachurus japonicus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (356, 'KNA', 'Channa marulius', 'Channa marulius', 'Channa marulius ', NULL, NULL, NULL, 'Channa marulius');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (357, 'KUR', 'Pond loach', 'Loche asiatique', 'Misgurno de Asia ', NULL, NULL, NULL, 'Misgurnus anguillicaudatus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (358, 'LBM', 'Labeo dussumieri', 'Labeo dussumieri', 'Labeo dussumieri ', NULL, NULL, NULL, 'Labeo dussumieri');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (359, 'LCB', 'Orangefin labeo', 'Labéo', 'Labeo ', NULL, NULL, NULL, 'Labeo calbasu');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (360, 'LEF', 'Lefteye flounders nei', 'Arnoglosses, rombous nca', 'Rodaballos, rombos, etc. nep ', NULL, NULL, NULL, 'Bothidae');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (361, 'LEW', 'Chubs nei', 'Leuciscus spp', 'Leuciscus spp ', NULL, NULL, NULL, 'Leuciscus spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (362, 'LHI', 'Trumpet emperor', 'Gueule rouge', 'Lethrinus miniatus ', NULL, NULL, NULL, 'Lethrinus miniatus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (363, 'LJB', 'Two-spot red snapper', 'Vivaneau chien rouge', 'Pargo de dos manchas ', NULL, NULL, NULL, 'Lutjanus bohar');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (364, 'LJH', 'John''s snapper', 'Vivaneau ziebelo', 'Pargo jaspeado ', NULL, NULL, NULL, 'Lutjanus johnii');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (365, 'LJS', 'Spotted rose snapper', 'Vivaneau rose', 'Pargo lunarejo ', NULL, NULL, NULL, 'Lutjanus guttatus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (366, 'LLZ', 'Chinese longsnout catfish', 'Leiocassis longirostris', 'Leiocassis longirostris ', NULL, NULL, NULL, 'Leiocassis longirostris');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (367, 'LMM', 'Bluegill', 'Crapet arlequin', 'Mojarra oreja azul ', NULL, NULL, NULL, 'Lepomis macrochirus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (368, 'LOC', 'Ningu', 'Labeo victorianus', 'Labeo victorianus ', NULL, NULL, NULL, 'Labeo victorianus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (369, 'LPB', 'Leporinus obtusidens', 'Leporinus obtusidens', 'Bogón ', NULL, NULL, NULL, 'Leporinus obtusidens');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (370, 'LRH', 'Roho labeo', 'Labéo Roho', 'Labeo Roho ', NULL, NULL, NULL, 'Labeo rohita');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (371, 'LUH', 'Chub', 'Leuciscus cephalus', 'Leuciscus cephalus ', NULL, NULL, NULL, 'Leuciscus cephalus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (372, 'LVG', 'Papuan black snapper', 'Vivaneau de Papua', 'Pargo de Papua ', NULL, NULL, NULL, 'Lutjanus goldiei');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (373, 'LXR', 'Orbicular batfish', 'Platax orbicularis', 'Platax orbicularis ', NULL, NULL, NULL, 'Platax orbicularis');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (374, 'LXZ', 'Leporinus spp', 'Leporinus spp', 'Leporinus spp ', NULL, NULL, NULL, 'Leporinus spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (375, 'LYC', 'Large yellow croaker', 'Tambour à gros yeux', 'Corvina japonesa ', NULL, NULL, NULL, 'Larimichthys croceus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (376, 'LZV', 'Squaretail mullet', 'Mulet mopiro', 'Lisa mopiro ', NULL, NULL, NULL, 'Liza vaigiensis');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (377, 'MAB', 'Black grouper', 'Badèche bonaci', 'Cuna bonací ', NULL, NULL, NULL, 'Mycteroperca bonaci');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (378, 'MAR', 'Malabar grouper', 'Mérou malabar', 'Mero malabárico ', NULL, NULL, NULL, 'Epinephelus malabaricus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (379, 'MAX', 'Mackerels nei', 'Maquereaux nca', 'Caballas nep ', NULL, NULL, NULL, 'Scombridae');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (380, 'MCA', 'Golden perch', 'Macquaria ambigua', 'Macquaria ambigua ', NULL, NULL, NULL, 'Macquaria ambigua');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (381, 'MCP', 'Murray cod', 'Maccullochella peelii', 'Maccullochella peelii ', NULL, NULL, NULL, 'Maccullochella peelii');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (382, 'MGC', 'Thinlip grey mullet', 'Mulet porc', 'Morragute ', NULL, NULL, NULL, 'Liza ramada');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (383, 'MGR', 'Meagre', 'Maigre commun', 'Corvina ', NULL, NULL, NULL, 'Argyrosomus regius');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (384, 'MIH', 'Mi-iuy (brown) croaker', 'Miichthys miiuy', 'Miichthys miiuy ', NULL, NULL, NULL, 'Miichthys miiuy');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (385, 'MIL', 'Milkfish', 'Chano', 'Chano ', NULL, NULL, NULL, 'Chanos chanos');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (386, 'MLB', 'Goldsilk seabream', 'Pagre berda', 'Sargo picnic ', NULL, NULL, NULL, 'Acanthopagrus berda');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (387, 'MLM', 'Blackhead seabream', 'Pagre tête noire', 'Acanthopagrus schlegeli ', NULL, NULL, NULL, 'Acanthopagrus schlegeli');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (388, 'MOJ', 'Mojarras(=Silver-biddies) nei', 'Blanches nca', 'Mojarras nep ', NULL, NULL, NULL, 'Gerres spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (389, 'MPS', 'Largemouth black bass', 'Achigan à grande bouche', 'Perca atruchada ', NULL, NULL, NULL, 'Micropterus salmoides');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (390, 'MPV', 'Humpback grouper', 'Mérou bossu', 'Mero jorobado ', NULL, NULL, NULL, 'Cromileptes altivelis');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (391, 'MUB', 'Lebranche mullet', 'Mulet lebranche', 'Lebranche ', NULL, NULL, NULL, 'Mugil liza');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (392, 'MUC', 'Mud carp', 'Carpe de vase', 'Carpa de fango ', NULL, NULL, NULL, 'Cirrhinus molitorella');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (393, 'MUF', 'Flathead grey mullet', 'Mulet à grosse tête', 'Pardete ', NULL, NULL, NULL, 'Mugil cephalus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (394, 'MUL', 'Mullets nei', 'Mulets nca', 'Lizas nep ', NULL, NULL, NULL, 'Mugilidae');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (395, 'MXW', 'Pimelodus spp', 'Pimelodus spp', 'Pimelodus spp ', NULL, NULL, NULL, 'Pimelodus spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (396, 'MYN', 'Asian redtail catfish', 'Hemibagrus nemurus', 'Hemibagrus nemurus ', NULL, NULL, NULL, 'Hemibagrus nemurus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (397, 'MYZ', 'So-iuy mullet', 'Mulet so-iuy', 'Lisa so-iuy ', NULL, NULL, NULL, 'Mugil soiuy');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (398, 'MZZ', 'Marine fishes nei', 'Poissons marins nca', 'Peces marinos nep ', NULL, NULL, NULL, 'Osteichthyes');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (399, 'NCC', 'Clown knifefish', 'Chitala chitala', 'Chitala chitala ', NULL, NULL, NULL, 'Chitala chitala');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (400, 'NGS', 'Malabar trevally', 'Carangue monique', 'Jurel malabárico ', NULL, NULL, NULL, 'Carangoides malabaricus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (401, 'NIP', 'Nile perch', 'Perche du Nil', 'Perca del Nilo ', NULL, NULL, NULL, 'Lates niloticus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (402, 'NUC', 'Danube bleak', 'Chalcalburnus chalcoides', 'Chalcalburnus chalcoides ', NULL, NULL, NULL, 'Chalcalburnus chalcoides');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (403, 'OAL', 'Senegalese sole', 'Sole du Sénégal', 'Lenguado senegalés ', NULL, NULL, NULL, 'Solea senegalensis');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (404, 'OBL', 'Osteobrama belangeri', 'Osteobrama belangeri', 'Osteobrama belangeri ', NULL, NULL, NULL, 'Osteobrama belangeri');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (405, 'OEA', 'Blue tilapia', 'Oreochromis aureus', 'Tilapia azul ', NULL, NULL, NULL, 'Oreochromis aureus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (406, 'OGN', 'Aba', 'Gymnarchus niloticus', 'Gymnarchus niloticus ', NULL, NULL, NULL, 'Gymnarchus niloticus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (407, 'OIA', 'Anostomoides laticeps', 'Anostomoides laticeps', 'Anostomoides laticeps ', NULL, NULL, NULL, 'Anostomoides laticeps');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (408, 'OIH', 'Tilapia shiranus', 'Oreochromis shiranus', 'Oreochromis shiranus ', NULL, NULL, NULL, 'Oreochromis shiranus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (409, 'OIT', 'Oreochromis tanganicae', 'Oreochromis tanganicae', 'Oreochromis tanganicae ', NULL, NULL, NULL, 'Oreochromis tanganicae');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (410, 'OLX', 'Sixfinger threadfin', 'Barbure à six doigts', 'Barbudo de seis dedos ', NULL, NULL, NULL, 'Polydactylus sexfilis');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (411, 'ONA', 'Golden trout', 'Truite dorée', 'Oncorhynchus aguabonita ', NULL, NULL, NULL, 'Oncorhynchus aguabonita');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (412, 'ONN', 'Bronze featherback', 'Notopterus notopterus', 'Notopterus notopterus ', NULL, NULL, NULL, 'Notopterus notopterus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (413, 'ONP', 'Reticulate knifefish', 'Papyrocranus afer', 'Papyrocranus afer ', NULL, NULL, NULL, 'Papyrocranus afer');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (414, 'ORC', 'Pacific salmons nei', 'Saumons du Pacifique nca', 'Salmones del Pacífico nep ', NULL, NULL, NULL, 'Oncorhynchus spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (415, 'ORM', 'Longfin tilapia', 'Oreochromis macrochir', 'Oreochromis macrochir ', NULL, NULL, NULL, 'Oreochromis macrochir');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (416, 'OXW', 'Blue-Nile tilapia, hybrid', 'Oreochromis aureus x O. niloticus', 'Tilapia azul-del Nilo, híbrido ', NULL, NULL, NULL, 'Oreochromis aureus x O. niloticus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (417, 'PAC', 'Common pandora', 'Pageot commun', 'Breca ', NULL, NULL, NULL, 'Pagellus erythrinus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (418, 'PAM', 'Mississippi paddlefish', 'Spatule d''Amérique', 'Espátula ', NULL, NULL, NULL, 'Polyodon spathula');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (419, 'PBF', 'Pacific bluefin tuna', 'Thon bleu du Pacifique', 'Atún aleta azul del Pacífico ', NULL, NULL, NULL, 'Thunnus orientalis');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (420, 'PCA', 'Ayu sweetfish', 'Ayu', 'Ayu ', NULL, NULL, NULL, 'Plecoglossus altivelis');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (421, 'PGP', 'Pangas catfish', 'Pangasius pangasius', 'Pangasius pangasius ', NULL, NULL, NULL, 'Pangasius pangasius');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (422, 'PGS', 'Striped catfish', 'Silure requin', 'Panga ', NULL, NULL, NULL, 'Pangasius hypophthalmus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (423, 'PGZ', 'Pangas catfishes nei', 'Pangasius spp', 'Pangasius spp ', NULL, NULL, NULL, 'Pangasius spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (424, 'PLL', 'Streaked prochilod', 'Prochilode rayé', 'Sábalo rayado ', NULL, NULL, NULL, 'Prochilodus lineatus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (425, 'PLM', 'Spotted coralgrouper', 'Vieille Saint-Silac', 'Mero con pintas ', NULL, NULL, NULL, 'Plectropomus maculatus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (426, 'PLN', 'European whitefish', 'Corégone lavaret', 'Lavareto ', NULL, NULL, NULL, 'Coregonus lavaretus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (427, 'PLR', 'Netted prochilod', 'Prochilode réticulé', 'Boquichico reticulado ', NULL, NULL, NULL, 'Prochilodus reticulatus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (428, 'PLZ', 'Righteye flounders nei', 'Plies nca', 'Platijas nep ', NULL, NULL, NULL, 'Pleuronectidae');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (429, 'POL', 'Pollack', 'Lieu jaune', 'Abadejo ', NULL, NULL, NULL, 'Pollachius pollachius');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (430, 'POM', 'Florida pompano', 'Pompaneau sole', 'Pámpano amarillo ', NULL, NULL, NULL, 'Trachinotus carolinus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (431, 'POO', 'Snubnose pompano', 'Pompaneau lune', 'Pámpano lunero ', NULL, NULL, NULL, 'Trachinotus blochii');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (432, 'PRC', 'Percoids nei', 'Percoides nca', 'Percoideos nep ', NULL, NULL, NULL, 'Percoidei');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (433, 'PRJ', 'Isok barb', 'Probarbus jullieni', 'Probarbus jullieni ', NULL, NULL, NULL, 'Probarbus jullieni');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (434, 'PRL', 'Prochilods nei', 'Prochilodes nca', 'Sábalos sudamericanos nep ', NULL, NULL, NULL, 'Prochilodus spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (435, 'PRS', 'Clearhead icefish', 'Protosalanx hyalocranius', 'Protosalanx hyalocranius ', NULL, NULL, NULL, 'Protosalanx hyalocranius');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (436, 'PSM', 'Pond smelt', 'Éperlan à petite bouche', 'Eperlano de estanque ', NULL, NULL, NULL, 'Hypomesus olidus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (437, 'PTB', 'Barbel', 'Barbeau fluviatile', 'Barbo común ', NULL, NULL, NULL, 'Barbus barbus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (438, 'PTG', 'Silver barb', 'Barbeau argenté', 'Barbo plateado ', NULL, NULL, NULL, 'Barbonymus gonionotus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (439, 'PUS', 'Olive barb', 'Systomus sarana', 'Systomus sarana ', NULL, NULL, NULL, 'Systomus sarana');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (440, 'PWG', 'Waigieu seaperch', 'Psammoperca waigiensis', 'Psammoperca waigiensis ', NULL, NULL, NULL, 'Psammoperca waigiensis');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (441, 'PXR', 'White crappie', 'Crapet calicot', 'Crapet ', NULL, NULL, NULL, 'Pomoxis annularis');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (442, 'QMR', 'Prochilodus mariae', 'Prochilodus mariae', 'Coporo ', NULL, NULL, NULL, 'Prochilodus mariae');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (443, 'QOF', 'Barcoo grunter', 'Scortum barcoo', 'Scortum barcoo ', NULL, NULL, NULL, 'Scortum barcoo');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (444, 'QPN', 'Black prochilodus', 'Prochilodus nigricans', 'Prochilodus nigricans ', NULL, NULL, NULL, 'Prochilodus nigricans');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (445, 'QRX', 'Parachanna snakeheads nei', 'Parachanna spp', 'Parachanna spp ', NULL, NULL, NULL, 'Parachanna spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (446, 'QYP', 'Amazon sailfin catfish', 'Pterygoplichthys pardalis', 'Pterygoplichthys pardalis ', NULL, NULL, NULL, 'Pterygoplichthys pardalis');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (447, 'RDM', 'Red drum', 'Tambour rouge', 'Corvinón ocelado ', NULL, NULL, NULL, 'Sciaenops ocellatus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (448, 'RES', 'Mangrove red snapper', 'Vivaneau des mangroves', 'Pargo de manglar ', NULL, NULL, NULL, 'Lutjanus argentimaculatus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (449, 'REV', 'Japanese seabream', 'Dorade japonaise', 'Dorada del Japón ', NULL, NULL, NULL, 'Pagrus major');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (450, 'RFR', 'Kutum', 'Rutilus frisii', 'Rutilus frisii ', NULL, NULL, NULL, 'Rutilus frisii');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (451, 'RHI', 'Rhinofishes nei', 'Labéos nca', 'Labeos nep ', NULL, NULL, NULL, 'Labeo spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (452, 'RMQ', 'South American catfish', 'Rhamdia quelen', 'Juil descolorido ', NULL, NULL, NULL, 'Rhamdia quelen');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (453, 'RNM', 'Small scale mud carp', 'Cirrhinus microlepis', 'Cirrhinus microlepis ', NULL, NULL, NULL, 'Cirrhinus microlepis');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (454, 'ROB', 'Snooks(=Robalos) nei', 'Crossies nca', 'Róbalos nep ', NULL, NULL, NULL, 'Centropomus spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (455, 'ROG', 'Vatani rohtee', 'Rohtee ogilbii', 'Rohtee ogilbii ', NULL, NULL, NULL, 'Rohtee ogilbii');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (456, 'RPG', 'Red porgy', 'Pagre rouge', 'Pargo ', NULL, NULL, NULL, 'Pagrus pagrus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (457, 'RSS', 'Goldlined seabream', 'Sargue doré', 'Sargo dorado ', NULL, NULL, NULL, 'Rhabdosargus sarba');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (458, 'RYJ', 'Japanese meagre', 'Argyrosomus japonicus', 'Argyrosomus japonicus ', NULL, NULL, NULL, 'Argyrosomus japonicus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (459, 'SAH', 'Blackchin tilapia', 'Sarotherodon melanotheron', 'Sarotherodon melanotheron ', NULL, NULL, NULL, 'Sarotherodon melanotheron');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (460, 'SAL', 'Atlantic salmon', 'Saumon de l''Atlantique', 'Salmón del Atlántico ', NULL, NULL, NULL, 'Salmo salar');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (461, 'SAR', 'Mango tilapia', 'Sarotherodon galilaeus', 'Sarotherodon galilaeus ', NULL, NULL, NULL, 'Sarotherodon galilaeus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (462, 'SBF', 'Southern bluefin tuna', 'Thon rouge du Sud', 'Atún rojo del Sur ', NULL, NULL, NULL, 'Thunnus maccoyii');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (463, 'SBG', 'Gilthead seabream', 'Dorade royale', 'Dorada ', NULL, NULL, NULL, 'Sparus aurata');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (464, 'SBH', 'Striped bass, hybrid', 'Bar d''Amérique, hybride', 'Lubina estriada, híbrida ', NULL, NULL, NULL, 'Morone chrysops x M. saxatilis');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (465, 'SBM', 'Duckbill catfish', 'Sorubim lima', 'Sorubim lima ', NULL, NULL, NULL, 'Sorubim lima');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (466, 'SBP', 'Pargo breams nei', 'Dorades nca', 'Pargos nep ', NULL, NULL, NULL, 'Pagrus spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (467, 'SBR', 'Blackspot(=red) seabream', 'Dorade rose', 'Besugo ', NULL, NULL, NULL, 'Pagellus bogaraveo');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (468, 'SBX', 'Porgies, seabreams nei', 'Dentés, spares nca', 'Dentones, sargos nep ', NULL, NULL, NULL, 'Sparidae');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (469, 'SCN', 'White-spotted spinefoot', 'Sigan pintade', 'Sigano pintado ', NULL, NULL, NULL, 'Siganus canaliculatus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (470, 'SCO', 'Scorpionfishes nei', 'Rascasses, etc. nca', 'Rascacios, gallinetas nep ', NULL, NULL, NULL, 'Scorpaenidae');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (471, 'SCT', 'Scats', 'Pavillons', 'Pingos ', NULL, NULL, NULL, 'Scatophagus spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (472, 'SFI', 'Sevan trout', 'Salmo ischchan', 'Salmo ischchan ', NULL, NULL, NULL, 'Salmo ischchan');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (473, 'SFL', 'Korean rockfish', 'Sebastes schlegeli', 'Sebastes schlegeli ', NULL, NULL, NULL, 'Sebastes schlegeli');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (474, 'SHR', 'Sharpsnout seabream', 'Sar à museau pointu', 'Sargo picudo ', NULL, NULL, NULL, 'Diplodus puntazzo');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (475, 'SIL', 'Silversides(=Sand smelts) nei', 'Athérinidés nca', 'Pejerreyes nep ', NULL, NULL, NULL, 'Atherinidae');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (476, 'SIN', 'Mandarin fish', 'Siniperca chuatsi', 'Siniperca chuatsi ', NULL, NULL, NULL, 'Siniperca chuatsi');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (477, 'SLX', 'Salmonoids nei', 'Salmonoidés nca', 'Salmonoideos nep ', NULL, NULL, NULL, 'Salmonoidei');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (478, 'SLZ', 'Salmonids nei', 'Salmonidae', 'Salmonidae ', NULL, NULL, NULL, 'Salmonidae');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (479, 'SNA', 'Snappers nei', 'Vivaneaux nca', 'Pargos tropicales nep ', NULL, NULL, NULL, 'Lutjanus spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (480, 'SNO', 'Common snook', 'Crossie blanc', 'Róbalo blanco ', NULL, NULL, NULL, 'Centropomus undecimalis');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (481, 'SNU', 'Russell''s snapper', 'Vivaneau hublot', 'Pargo ojo de buey ', NULL, NULL, NULL, 'Lutjanus russelli');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (482, 'SNX', 'Snappers, jobfishes nei', 'Lutianidés nca', 'Lutjánidos nep ', NULL, NULL, NULL, 'Lutjanidae');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (483, 'SOC', 'Sockeye(=Red) salmon', 'Saumon rouge', 'Salmón rojo ', NULL, NULL, NULL, 'Oncorhynchus nerka');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (484, 'SOL', 'Common sole', 'Sole commune', 'Lenguado común ', NULL, NULL, NULL, 'Solea solea');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (485, 'SOM', 'Wels(=Som) catfish', 'Silure glane', 'Siluro ', NULL, NULL, NULL, 'Silurus glanis');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (486, 'SOO', 'Solea spp', 'Solea spp', 'Solea spp ', NULL, NULL, NULL, 'Solea spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (487, 'SOX', 'Soles nei', 'Soles nca', 'Lenguados nep ', NULL, NULL, NULL, 'Soleidae');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (488, 'SPI', 'Spinefeet(=Rabbitfishes) nei', 'Sigans nca', 'Síganos nep ', NULL, NULL, NULL, 'Siganus spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (489, 'SPU', 'Spotted seabass', 'Bar tacheté', 'Baila ', NULL, NULL, NULL, 'Dicentrarchus punctatus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (490, 'SRE', 'Rudd', 'Rotengle', 'Escardinio ', NULL, NULL, NULL, 'Scardinius erythrophthalmus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (491, 'SRG', 'Sargo breams nei', 'Sars, sparaillons nca', 'Sargos, raspallones nep ', NULL, NULL, NULL, 'Diplodus spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (492, 'SRI', 'Marbled spinefoot', 'Poisson-lapin', 'Siguro ', NULL, NULL, NULL, 'Siganus rivulatus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (493, 'SRO', 'Amur catfish', 'Silurus asotus', 'Silurus asotus ', NULL, NULL, NULL, 'Silurus asotus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (494, 'STA', 'Three spotted tilapia', 'Oreochromis andersonii', 'Oreochromis andersonii ', NULL, NULL, NULL, 'Oreochromis andersonii');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (495, 'STB', 'Striped bass', 'Bar d''Amérique', 'Lubina estriada ', NULL, NULL, NULL, 'Morone saxatilis');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (496, 'STU', 'Sturgeons nei', 'Esturgeons nca', 'Esturiones nep ', NULL, NULL, NULL, 'Acipenseridae');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (497, 'SVC', 'Silver carp', 'Carpe argentée', 'Carpa plateada ', NULL, NULL, NULL, 'Hypophthalmichthys molitrix');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (498, 'SVF', 'Brook trout', 'Saumon de fontaine', 'Trucha de arroyo ', NULL, NULL, NULL, 'Salvelinus fontinalis');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (499, 'SWA', 'White seabream', 'Sar commun', 'Sargo ', NULL, NULL, NULL, 'Diplodus sargus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (500, 'SXU', 'Dorado', 'Salminus brasiliensis', 'Pirayú ', NULL, NULL, NULL, 'Salminus brasiliensis');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (501, 'SZH', 'Sobaity seabream', 'Spare sobaity', 'Sargo sobaito ', NULL, NULL, NULL, 'Sparidentex hasta');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (502, 'TAR', 'Tarpon', 'Tarpon argenté', 'Tarpón ', NULL, NULL, NULL, 'Megalops atlanticus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (503, 'TLL', 'Sabaki tilapia', 'Oreochromis spilurus', 'Oreochromis spilurus ', NULL, NULL, NULL, 'Oreochromis spilurus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (504, 'TLM', 'Mozambique tilapia', 'Tilapia du Mozambique', 'Tilapia del Mozambique ', NULL, NULL, NULL, 'Oreochromis mossambicus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (505, 'TLN', 'Nile tilapia', 'Tilapia du Nil', 'Tilapia del Nilo ', NULL, NULL, NULL, 'Oreochromis niloticus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (506, 'TLP', 'Tilapias nei', 'Tilapias nca', 'Tilapias nep ', NULL, NULL, NULL, 'Oreochromis (=Tilapia) spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (507, 'TLR', 'Redbreast tilapia', 'Tilapia rendalli', 'Tilapia rendalli ', NULL, NULL, NULL, 'Tilapia rendalli');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (508, 'TLV', 'Grayling', 'Ombre commun', 'Tímalo ', NULL, NULL, NULL, 'Thymallus thymallus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (509, 'TLZ', 'Redbelly tilapia', 'Tilapia zillii', 'Tilapia zillii ', NULL, NULL, NULL, 'Tilapia zillii');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (510, 'TOB', 'Thai mahseer', 'Tor tambroides', 'Tor tambroides ', NULL, NULL, NULL, 'Tor tambroides');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (511, 'TRE', 'Jacks, crevalles nei', 'Chinchards, carangues nca', 'Jureles, pámpanos nep ', NULL, NULL, NULL, 'Caranx spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (512, 'TRO', 'Trouts nei', 'Truites nca', 'Truchas nep ', NULL, NULL, NULL, 'Salmo spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (513, 'TRR', 'Rainbow trout', 'Truite arc-en-ciel', 'Trucha arco iris ', NULL, NULL, NULL, 'Oncorhynchus mykiss');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (514, 'TRS', 'Sea trout', 'Truite de mer', 'Trucha marina ', NULL, NULL, NULL, 'Salmo trutta');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (515, 'TRZ', 'White trevally', 'Carangue dentue', 'Jurel dentón ', NULL, NULL, NULL, 'Pseudocaranx dentex');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (516, 'TUR', 'Turbot', 'Turbot', 'Rodaballo ', NULL, NULL, NULL, 'Psetta maxima');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (517, 'TXK', 'Tiger pufferfish', 'Takifugu rubripes', 'Takifugu rubripes ', NULL, NULL, NULL, 'Takifugu rubripes');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (518, 'TXY', 'Tambacu, hybrid', 'P. mesopotamicus x C. macropomum', 'Pacotana, híbrido ', NULL, NULL, NULL, 'P. mesopotamicus x C. macropomum');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (519, 'TXZ', 'Tambatinga, hybrid', 'C. macropomum x P. brachypomus', 'C. macropomum x P. brachypomus ', NULL, NULL, NULL, 'C. macropomum x P. brachypomus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (520, 'TZO', 'Obscure pufferfish', 'Takifugu obscurus', 'Takifugu obscurus ', NULL, NULL, NULL, 'Takifugu obscurus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (521, 'UBS', 'Drums nei', 'Ombrines nca', 'Verrugatos nep ', NULL, NULL, NULL, 'Umbrina spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (522, 'UDC', 'Spotted sorubim', 'Pseudoplatystoma corruscans', 'Surubí ', NULL, NULL, NULL, 'Pseudoplatystoma corruscans');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (523, 'UDF', 'Barred sorubim', 'Pseudoplatystoma fasciatum', 'Pseudoplatystoma fasciatum ', NULL, NULL, NULL, 'Pseudoplatystoma fasciatum');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (524, 'UPY', 'Sorubims nei', 'Pseudoplatystoma spp', 'Surubíes nep ', NULL, NULL, NULL, 'Pseudoplatystoma spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (525, 'USB', 'Ballan wrasse', 'Vieille commune', 'Maragota ', NULL, NULL, NULL, 'Labrus bergylta');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (526, 'VIV', 'Vimba bream', 'Vimba vimba', 'Vimba vimba ', NULL, NULL, NULL, 'Vimba vimba');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (527, 'VMH', 'Bluespot mullet', 'Mulet à tache bleue', 'Lisa de mancha azul ', NULL, NULL, NULL, 'Valamugil seheli');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (528, 'WAA', 'Wallago', 'Wallago attu', 'Wallago attu ', NULL, NULL, NULL, 'Wallago attu');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (529, 'WAX', 'Wallago spp', 'Wallago spp', 'Wallago spp ', NULL, NULL, NULL, 'Wallago spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (530, 'WHF', 'Whitefishes nei', 'Corégones nca', 'Coregonos nep ', NULL, NULL, NULL, 'Coregonus spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (531, 'WUB', 'Wuchang bream', 'Carpe de Wuchang', 'Carpa de Wuchang ', NULL, NULL, NULL, 'Megalobrama amblycephala');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (532, 'YBB', 'Yellow-belly bream', 'Serranochromis robustus', 'Serranochromis robustus ', NULL, NULL, NULL, 'Serranochromis robustus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (533, 'YCH', 'Yellow catfish', 'Pelteobagrus fulvidraco', 'Pelteobagrus fulvidraco ', NULL, NULL, NULL, 'Pelteobagrus fulvidraco');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (534, 'YFT', 'Yellowfin tuna', 'Albacore', 'Rabil ', NULL, NULL, NULL, 'Thunnus albacares');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (535, 'YHX', 'Hypsibarbus spp', 'Hypsibarbus spp', 'Hypsibarbus spp ', NULL, NULL, NULL, 'Hypsibarbus spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (536, 'YTL', 'Longfin yellowtail', 'Sériole limon', 'Medregal limón ', NULL, NULL, NULL, 'Seriola rivoliana');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (537, 'YWF', 'Yellowfin seabream', 'Pagre à nageoires jaunes', 'Sargo aleta amarilla ', NULL, NULL, NULL, 'Acanthopagrus latus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (538, 'AJC', 'Babberlocks', 'Alimentaire varech', 'Alaria esculenta ', NULL, NULL, NULL, 'Alaria esculenta');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (539, 'APL', 'Aquatic plants nei', 'Plantes aquatiques nca', 'Plantas acuáticas nep ', NULL, NULL, NULL, 'Plantae aquaticae');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (540, 'ASR', 'Harpoon seaweeds', 'Algues harpon', 'Algas espárrago ', NULL, NULL, NULL, 'Asparagopsis spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (541, 'CAU', 'Caulerpa seaweeds', 'Algues caulerpes', 'Algas caulerpa ', NULL, NULL, NULL, 'Caulerpa spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (542, 'EMA', 'Elkhorn sea moss', 'Kappaphycus alvarezii', 'Kappaphycus alvarezii ', NULL, NULL, NULL, 'Kappaphycus alvarezii');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (543, 'EMI', 'Spiny eucheuma', 'Eucheuma épineuse', 'Eucheuma espinosa ', NULL, NULL, NULL, 'Eucheuma denticulatum');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (544, 'EMX', 'Eucheuma seaweeds nei', 'Eucheuma spp', 'Eucheuma spp ', NULL, NULL, NULL, 'Eucheuma spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (545, 'EOW', 'Bright green nori', 'Entéromorphe vert claire', 'Pelo de piedra verde claro ', NULL, NULL, NULL, 'Enteromorpha clathrata');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (546, 'FYS', 'Nori nei', 'Nori nca', 'Luche ', NULL, NULL, NULL, 'Porphyra spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (547, 'GDY', 'Japanese isinglass', 'Gelidium amansii', 'Gelidium amansii ', NULL, NULL, NULL, 'Gelidium amansii');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (548, 'GEL', 'Gelidium seaweeds', 'Algues gélidium', 'Gelidios ', NULL, NULL, NULL, 'Gelidium spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (549, 'GJW', 'Warty gracilaria', 'Gracilaire commune', 'Gracilaria común ', NULL, NULL, NULL, 'Gracilaria verrucosa');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (550, 'GLS', 'Gracilaria seaweeds', 'Algues gracilaires', 'Gracilarias ', NULL, NULL, NULL, 'Gracilaria spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (551, 'GQB', 'Fusiform sargassum', 'Sargassum fusiforme', 'Sargassum fusiforme ', NULL, NULL, NULL, 'Sargassum fusiforme');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (552, 'GQO', 'Kelp nei', 'Kelps nca', 'Huiros nep ', NULL, NULL, NULL, 'Macrocystis spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (553, 'HQW', 'Unicell. Chlorella green alga', 'Chlorella vulgaris', 'Chlorella vulgaris ', NULL, NULL, NULL, 'Chlorella vulgaris');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (554, 'HZP', 'Haematococcus pluvialis', 'Haematococcus pluvialis', 'Haematococcus pluvialis ', NULL, NULL, NULL, 'Haematococcus pluvialis');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (555, 'KDM', 'Chondracanthus chamissoi', 'Chondracanthus chamissoi', 'Chicorea de mar ', NULL, NULL, NULL, 'Chondracanthus chamissoi');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (556, 'KII', 'Fragile codium', 'Codium orvet', 'Codio fragil ', NULL, NULL, NULL, 'Codium fragile');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (557, 'LNJ', 'Japanese kelp', 'Laminaire du Japon', 'Laminaria del Japón ', NULL, NULL, NULL, 'Laminaria japonica');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (558, 'LQD', 'Tangle', 'Laminaire digitée', 'Laminaria digitata ', NULL, NULL, NULL, 'Laminaria digitata');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (559, 'LQX', 'Sea belt', 'Laminaire saccharine', 'Laminaria saccharina ', NULL, NULL, NULL, 'Laminaria saccharina');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (560, 'MTN', 'Green laver', 'Laitue brillante', 'Lechuga brillante ', NULL, NULL, NULL, 'Monostroma nitidum');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (561, 'MXY', 'Giant kelp', 'Macrocyste', 'Cachiyuyo ', NULL, NULL, NULL, 'Macrocystis pyrifera');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (562, 'NYQ', 'Mozuku', 'Nemacystus decipiens', 'Nemacystus decipiens ', NULL, NULL, NULL, 'Nemacystus decipiens');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (563, 'PRT', 'Laver (Nori)', 'Algue nori', 'Lechuga nori ', NULL, NULL, NULL, 'Porphyra tenera');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (564, 'RHP', 'Dulse', 'Main de mer', 'Palmaria palmata ', NULL, NULL, NULL, 'Palmaria palmata');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (565, 'SIZ', 'Spirulina nei', 'Spirulina nca', 'Spirulina nep ', NULL, NULL, NULL, 'Spirulina spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (566, 'SWB', 'Brown seaweeds', 'Algues brunes', 'Algas pardas ', NULL, NULL, NULL, 'Phaeophyceae');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (567, 'SWG', 'Green seaweeds', 'Algues vertes', 'Algas verdes ', NULL, NULL, NULL, 'Chlorophyceae');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (568, 'SWR', 'Red seaweeds', 'Algues rouges', 'Algas rojas ', NULL, NULL, NULL, 'Rhodophyceae');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (569, 'SWX', 'Seaweeds nei', 'Algues nca', 'Algas nep ', NULL, NULL, NULL, 'Algae');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (570, 'UDP', 'Wakame', 'Wakamé', 'Abeto marino ', NULL, NULL, NULL, 'Undaria pinnatifida');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (571, 'UDS', 'Wakame nei', 'Algues wakamé nca', 'Abetos marinos nep ', NULL, NULL, NULL, 'Undaria spp');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (572, 'ULL', 'Spirulina platensis', 'Spirulina platensis', 'Spirulina platensis ', NULL, NULL, NULL, 'Spirulina platensis');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (573, 'ULX', 'Spirulina maxima', 'Spirulina maxima', 'Spirulina maxima ', NULL, NULL, NULL, 'Spirulina maxima');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (574, 'YKN', 'Porphyra columbina', 'Porphyra columbina', 'Porphyra columbina ', NULL, NULL, NULL, 'Porphyra columbina');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (575, 'ALL1', 'American alligator', NULL, NULL, NULL, NULL, NULL, 'Alligator mississippiensis');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (576, 'ALL2', 'American crocodile', NULL, NULL, NULL, NULL, NULL, 'Crocodylus acutus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (577, 'ALL3', 'Australian crocodile', NULL, NULL, NULL, NULL, NULL, 'Crocodylus johnstoni');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (578, 'ALL4', 'Black caiman', NULL, NULL, NULL, NULL, NULL, 'Melanosuchus niger');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (579, 'ALL5', 'Broad-nosed caiman', NULL, NULL, NULL, NULL, NULL, 'Caiman latirostris');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (580, 'ALL6', 'Cuban crocodile', NULL, NULL, NULL, NULL, NULL, 'Crocodylus rhombifer');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (581, 'ALL7', 'Cuvier''s Dwarf caiman', NULL, NULL, NULL, NULL, NULL, 'Paleosuchus palpebrosus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (582, 'ALL8', 'Estuarine crocodile', NULL, NULL, NULL, NULL, NULL, 'Crocodylus porosus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (583, 'ALL9', 'Morelet''s crocodile', NULL, NULL, NULL, NULL, NULL, 'Crocodylus moreletii');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (584, 'ALL10', 'New Guinea crocodile', NULL, NULL, NULL, NULL, NULL, 'Crocodylus novaeguineae');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (585, 'ALL11', 'Nile crocodile', NULL, NULL, NULL, NULL, NULL, 'Crocodylus niloticus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (586, 'ALL12', 'Paraguayan caiman', NULL, NULL, NULL, NULL, NULL, 'Caiman yacare');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (587, 'ALL13', 'Siamese crocodile', NULL, NULL, NULL, NULL, NULL, 'Crocodylus siamensis');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (588, 'ALL14', 'Slender-snouted crocodile', NULL, NULL, NULL, NULL, NULL, 'Crocodylus cataphractus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (589, 'ALL15', 'Smooth-fronted caiman', NULL, NULL, NULL, NULL, NULL, 'Paleosuchus trigonatus');
INSERT INTO "Species" ("ID", value, name_e, name_f, name_s, name_c, name_r, name_a, scientific_name) VALUES (590, 'ALL16', 'Spectacled caiman', NULL, NULL, NULL, NULL, NULL, 'Caiman crocodilus');


--
-- TOC entry 1981 (class 0 OID 17052)
-- Dependencies: 175
-- Data for Name: Status; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO "Status" ("ID", status) VALUES (0, 'Rejected');
INSERT INTO "Status" ("ID", status) VALUES (1, 'Under Revision');
INSERT INTO "Status" ("ID", status) VALUES (2, 'Approved');


--
-- TOC entry 1980 (class 0 OID 16893)
-- Dependencies: 174
-- Data for Name: Survey; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO "Survey" ("ID", date, country, name, prepared_by, deleted, inserted_date, modified_date) VALUES (2, '2015-05-31', 62, NULL, 'gfdgfdfb', 0, '2015-06-10', '2015-06-10');
INSERT INTO "Survey" ("ID", date, country, name, prepared_by, deleted, inserted_date, modified_date) VALUES (1, '2015-06-08', 11, NULL, 'wefe', 0, '2015-06-10', '2015-06-10');


--
-- TOC entry 1978 (class 0 OID 16760)
-- Dependencies: 172
-- Data for Name: SurveyAnswers; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (1, 1, 101, 9, 'q18_radio1', NULL, 24, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (2, 1, 228, 17, 'q31_sf_03', NULL, 62, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (3, 1, 113, 10, 'q19_02_radio', NULL, 28, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (5, 1, 226, 17, 'q31_sf_02', NULL, 62, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (6, 1, 41, 6, 'q14_radio5', NULL, 6, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (8, 1, 369, 30, 'q47_rank', NULL, 109, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (9, 1, 172, 16, 'q30_rank', NULL, 50, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (10, 1, 336, 28, 'q44_sf_01', NULL, 101, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (11, 1, 59, 7, 'q15_02_radio', NULL, 10, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (15, 1, 2, 0, 'q8_chk2', NULL, 0, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (17, 1, 38, NULL, 'q26_radio', NULL, NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (19, 1, 346, 30, 'q47_radio03', NULL, 103, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (20, 1, 83, 8, 'q16_02_radio', NULL, 18, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (21, 1, 18, 1, 'q9_chk7', NULL, 1, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (22, 1, 34, 5, 'q13_03', NULL, 5, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (26, 1, 378, 30, 'q47_radio03', NULL, 111, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (27, 1, 281, 23, 'q39_rank', NULL, 80, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (28, 1, 7, 0, 'q8_sf2', NULL, 0, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (29, 1, 370, 30, 'q47_radio03', NULL, 109, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (30, 1, 50, 7, 'q15_02_radio', NULL, 7, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (31, 1, 68, 7, 'q15_02_radio', NULL, 13, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (32, 1, 30, 4, 'q12_02', NULL, 4, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (35, 1, 74, 8, 'q16_02_radio', NULL, 15, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (36, 1, 373, 30, 'q47_rank', NULL, 110, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (38, 1, 145, 11, 'q23_rank', NULL, 40, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (42, 1, 45, 6, 'q14_09', NULL, 6, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (43, 1, 386, 24, 'q40_sf_03_02', NULL, 112, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (44, 1, 69, NULL, 'q48_txt', NULL, NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (47, 1, 203, 17, 'q31_sf_03', NULL, 57, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (48, 1, 15, 1, 'q9_radio4', NULL, 1, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (49, 1, 28, NULL, 'q20_radio', NULL, NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (51, 1, 211, 17, 'q31_sf_02', NULL, 59, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (52, 1, 283, 23, 'q39_rank', NULL, 81, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (53, 1, 5, 0, 'q8_chk5', NULL, 0, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (54, 1, 365, 30, 'q47_rank', NULL, 108, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (57, 1, 350, 30, 'q47_radio03', NULL, 104, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (59, 1, 8, 0, 'q8_sf3', NULL, 0, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (60, 1, 92, 9, 'q18_radio1', NULL, 21, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (61, 1, 54, NULL, 'q37_txt_details', NULL, NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (63, 1, 107, 9, 'q18_radio1', NULL, 26, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (65, 1, 14, NULL, 'q6_txtinfo', NULL, NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (66, 1, 174, 16, 'q30_rank', NULL, 51, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (67, 1, 3, NULL, 'q2_radioList', NULL, NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (68, 1, 257, 21, 'q36_sf', NULL, 72, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (69, 1, 395, 24, 'q40_sf_03_05', NULL, 112, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (70, 1, 30, NULL, 'q21_radio', NULL, NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (71, 1, 176, 17, 'q31_sf_02', NULL, 52, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (72, 1, 98, 9, 'q18_radio1', NULL, 23, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (74, 1, 278, 22, 'q38_sf', NULL, 79, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (75, 1, 193, 17, 'q31_sf_03', NULL, 55, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (76, 1, 77, 8, 'q16_02_radio', NULL, 16, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (77, 1, 272, 21, 'q36_sf', NULL, 77, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (79, 1, 237, 18, 'q32_03', NULL, 64, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (80, 1, 357, 30, 'q47_rank', NULL, 106, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (82, 1, 72, NULL, 'q50_txt', NULL, NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (84, 1, 56, 7, 'q15_02_radio', NULL, 9, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (85, 1, 297, 23, 'q39_rank', NULL, 88, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (86, 1, 221, 17, 'q31_sf_02', NULL, 61, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (87, 1, 65, 7, 'q15_02_radio', NULL, 12, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (88, 1, 285, 23, 'q39_rank', NULL, 82, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (89, 1, 4, NULL, 'q3_radioList', NULL, NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (92, 1, 254, 21, 'q36_sf', NULL, 71, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (93, 1, 383, 24, 'q40_sf_03_01', NULL, 112, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (95, 1, 9, NULL, 'q5_radioList', NULL, NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (96, 1, 26, 3, 'q11_04', NULL, 3, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (98, 1, 143, 11, 'q23_rank', NULL, 39, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (100, 1, 223, 17, 'q31_sf_03', NULL, 61, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (101, 1, 39, 6, 'q14_radio3', NULL, 6, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (103, 1, 59, NULL, 'q41_chk_01', NULL, NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (104, 1, 8, NULL, 'q4_txtinfo', NULL, NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (105, 1, 218, 17, 'q31_sf_03', NULL, 60, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (56, 1, 28, 3, 'q11_comments', '', 3, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (97, 1, 31, 4, 'q12_comments', '', 4, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (41, 1, 54, 7, 'q15_comment', '', 8, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (78, 1, 63, 7, 'q15_comment', '', 11, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (106, 1, 90, 8, 'q16_comment', '', 20, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (55, 1, 96, 9, 'q18_comments', '', 22, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (83, 1, 99, 9, 'q18_comments', '', 23, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (73, 1, 105, 9, 'q18_comments', '', 25, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (62, 1, 111, 9, 'q18_commentsOther', '', 27, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (24, 1, 117, 10, 'q19_comment', '', 29, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (18, 1, 126, 10, 'q19_comment', '', 32, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (91, 1, 129, 10, 'q19_comment', '', 33, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (64, 1, 135, 10, 'q19_comment', '', 35, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (16, 1, 146, 11, 'q23_name_other', '', 41, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (102, 1, 162, 15, 'q29_txt_comments', '', 45, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (12, 1, 173, 16, 'q30_txt_other', '', 51, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (50, 1, 194, 17, 'q31_txt_comments', '', 55, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (33, 1, 204, 17, 'q31_txt_comments', '', 57, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (4, 1, 214, 17, 'q31_txt_comments', '', 59, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (13, 1, 217, 17, 'q31_other', '', 60, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (7, 1, 224, 17, 'q31_txt_comments', '', 61, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (14, 1, 234, 17, 'q31_txt_comments', '', 63, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (94, 1, 235, 18, 'q32_txt_legislation', '', 64, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (25, 1, 255, 21, 'q36_txt_comments', '', 71, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (81, 1, 264, 21, 'q36_txt_comments', '', 74, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (23, 1, 267, 21, 'q36_txt_comments', '', 75, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (39, 1, 330, 26, 'q42_other', '', 99, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (40, 1, 334, 27, 'q43_txt_comments', '', 100, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (46, 1, 355, 30, 'q47_comments', '', 105, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (99, 1, 363, 30, 'q47_comments', '', 107, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (37, 1, 379, 30, 'q47_comments', '', 111, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (34, 1, 37, 6, 'q14_species', '', 6, 1, 0, '');
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (107, 1, 342, 29, 'q46_radio_04', NULL, 102, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (109, 1, 213, 17, 'q31_sf_03', NULL, 59, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (111, 1, 168, 16, 'q30_rank', NULL, 48, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (116, 1, 0, 0, 'q8_species', 'CDT', 0, 1, 0, 'Yabby crayfish');
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (117, 1, 70, NULL, 'q49_radio', NULL, NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (119, 1, 349, 30, 'q47_rank', NULL, 104, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (120, 1, 358, 30, 'q47_radio03', NULL, 106, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (123, 1, 31, NULL, 'q21_additionalInformation', NULL, NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (124, 1, 110, 9, 'q18_radioOther', NULL, 27, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (126, 1, 62, NULL, 'q42_comments', NULL, NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (127, 1, 260, 21, 'q36_sf', NULL, 73, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (128, 1, 341, 29, 'q46_radio_03', NULL, 102, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (131, 1, 251, 21, 'q36_sf', NULL, 70, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (132, 1, 42, 6, 'q14_radio6', NULL, 6, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (133, 1, 141, 11, 'q23_rank', NULL, 38, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (135, 1, 86, 8, 'q16_02_radio', NULL, 19, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (137, 1, 248, 20, 'q35_sf', NULL, 69, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (142, 1, 46, NULL, 'q31_more_a', NULL, NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (143, 1, 80, 8, 'q16_02_radio', NULL, 17, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (145, 1, 161, 15, 'q29_sf_04', NULL, 45, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (146, 1, 295, 23, 'q39_rank', NULL, 87, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (148, 1, 231, 17, 'q31_sf_02', NULL, 63, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (149, 1, 236, 18, 'q32_date', NULL, 64, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (151, 1, 0, NULL, 'executiveSummary', NULL, NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (152, 1, 6, 0, 'q8_sf1', '2,3', 0, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (154, 1, 40, 6, 'q14_radio4', NULL, 6, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (155, 1, 7, NULL, 'q4b_radioList', NULL, NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (156, 1, 134, 10, 'q19_02_radio', NULL, 35, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (158, 1, 131, 10, 'q19_02_radio', NULL, 34, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (161, 1, 183, 17, 'q31_sf_03', NULL, 53, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (162, 1, 331, 26, 'q42_rank', NULL, 99, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (164, 1, 53, NULL, 'q37_radio', NULL, NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (165, 1, 291, 23, 'q39_rank', NULL, 85, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (166, 1, 345, 30, 'q47_rank', NULL, 103, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (167, 1, 196, 17, 'q31_sf_02', NULL, 56, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (168, 1, 16, 1, 'q9_radio5', NULL, 1, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (170, 1, 147, 11, 'q23_rank_other', NULL, 41, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (171, 1, 37, NULL, 'q25_examples', NULL, NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (172, 1, 263, 21, 'q36_sf', NULL, 74, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (173, 1, 17, 1, 'q9_chk6', NULL, 1, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (174, 1, 198, 17, 'q31_sf_03', NULL, 56, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (175, 1, 44, 6, 'q14_radio8', NULL, 6, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (176, 1, 164, 16, 'q30_rank', NULL, 46, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (177, 1, 329, 26, 'q42_rank', NULL, 98, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (178, 1, 374, 30, 'q47_radio03', NULL, 110, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (181, 1, 15, NULL, 'q7_radioList', NULL, NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (182, 1, 289, 23, 'q39_rank', NULL, 84, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (183, 1, 71, NULL, 'q49_txt', NULL, NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (186, 1, 181, 17, 'q31_sf_02', NULL, 53, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (187, 1, 155, 14, 'q28_sf_02', NULL, 44, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (188, 1, 5, NULL, 'q3_txtinfo', NULL, NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (189, 1, 11, 1, 'q9_radio_native_introduced', NULL, 1, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (190, 1, 333, 27, 'q43_sf', NULL, 100, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (191, 1, 48, 6, 'q14_11', NULL, 6, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (192, 1, 137, 11, 'q23_rank', NULL, 36, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (195, 1, 12, NULL, 'q6_txtperc2', NULL, NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (196, 1, 21, 2, 'q10_radio2', NULL, 2, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (198, 1, 11, NULL, 'q6_txtperc1', NULL, NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (200, 1, 49, NULL, 'q33_txtinfo', NULL, NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (204, 1, 293, 23, 'q39_rank', NULL, 86, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (206, 1, 389, 24, 'q40_sf_03_03', NULL, 112, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (209, 1, 57, NULL, 'q39_comments', NULL, NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (210, 1, 25, 3, 'q11_03', NULL, 3, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (211, 1, 71, 8, 'q16_02_radio', NULL, 14, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (153, 1, 27, 3, 'q11_05', '', 3, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (113, 1, 35, 5, 'q13_04', '', 5, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (194, 1, 69, 7, 'q15_comment', '', 13, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (110, 1, 75, 8, 'q16_comment', '', 15, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (203, 1, 78, 8, 'q16_comment', '', 16, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (180, 1, 87, 8, 'q16_comment', '', 19, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (184, 1, 93, 9, 'q18_comments', '', 21, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (160, 1, 114, 10, 'q19_comment', '', 28, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (138, 1, 123, 10, 'q19_comment', '', 31, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (114, 1, 132, 10, 'q19_comment', '', 34, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (108, 1, 159, 15, 'q29_txt_users', '', 45, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (118, 1, 182, 17, 'q31_other', '', 53, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (159, 1, 184, 17, 'q31_txt_comments', '', 53, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (197, 1, 187, 17, 'q31_other', '', 54, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (144, 1, 189, 17, 'q31_txt_comments', '', 54, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (130, 1, 192, 17, 'q31_other', '', 55, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (157, 1, 197, 17, 'q31_other', '', 56, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (150, 1, 202, 17, 'q31_other', '', 57, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (141, 1, 207, 17, 'q31_other', '', 58, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (163, 1, 209, 17, 'q31_txt_comments', '', 58, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (208, 1, 212, 17, 'q31_other', '', 59, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (193, 1, 219, 17, 'q31_txt_comments', '', 60, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (169, 1, 229, 17, 'q31_txt_comments', '', 62, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (199, 1, 238, 18, 'q32_comments', '', 64, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (139, 1, 242, 19, 'q34_txt_comments', '', 66, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (179, 1, 244, 19, 'q34_txt_comments', '', 67, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (125, 1, 245, 19, 'q34_txt_genetic', '', 68, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (212, 1, 247, 20, 'q35_txt_action', '', 69, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (121, 1, 270, 21, 'q36_txt_comments', '', 76, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (185, 1, 273, 21, 'q36_txt_comments', '', 77, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (112, 1, 396, 24, 'q40_comments_05', '', 112, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (136, 1, 323, 25, 'q41_txt_description', '', 95, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (140, 1, 339, 29, 'q46_txt_01', '', 102, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (115, 1, 340, 29, 'q46_txt_02', '', 102, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (147, 1, 359, 30, 'q47_comments', '', 106, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (207, 1, 371, 30, 'q47_comments', '', 109, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (201, 1, 12, 1, 'q9_species', '', 1, 1, 0, '');
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (134, 1, 20, 2, 'q10_species', '', 2, 1, 0, '');
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (214, 1, 287, 23, 'q39_rank', NULL, 83, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (216, 1, 122, 10, 'q19_02_radio', NULL, 31, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (218, 1, 156, 14, 'q28_radio_03', NULL, 44, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (221, 1, 362, 30, 'q47_radio03', NULL, 107, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (222, 1, 327, 26, 'q42_rank', NULL, 97, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (223, 1, 208, 17, 'q31_sf_03', NULL, 58, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (224, 1, 233, 17, 'q31_sf_03', NULL, 63, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (225, 1, 13, NULL, 'q6_txtperc3', NULL, NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (228, 1, 266, 21, 'q36_sf', NULL, 75, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (229, 1, 1, NULL, 'introduction', NULL, NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (230, 1, 152, 13, 'q27_radio02', NULL, 43, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (232, 1, 36, NULL, 'q25_radio', NULL, NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (233, 1, 3, 0, 'q8_chk3', NULL, 0, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (235, 1, 4, 0, 'q8_chk4', '4', 0, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (237, 1, 216, 17, 'q31_sf_02', NULL, 60, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (238, 1, 337, 28, 'q44_sf_02', NULL, 101, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (239, 1, 361, 30, 'q47_rank', NULL, 107, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (242, 1, 160, 15, 'q29_sf_03', NULL, 45, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (246, 1, 125, 10, 'q19_02_radio', NULL, 32, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (248, 1, 6, NULL, 'q4a_radioList', NULL, NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (251, 1, 128, 10, 'q19_02_radio', NULL, 33, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (252, 1, 166, 16, 'q30_rank', NULL, 47, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (254, 1, 33, 5, 'q13_02', NULL, 5, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (256, 1, 35, NULL, 'q24_examples', NULL, NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (261, 1, 1, 0, 'q8_chk1', '1', 0, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (263, 1, 170, 16, 'q30_rank', NULL, 49, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (265, 1, 39, NULL, 'q26_examples', NULL, NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (266, 1, 43, 6, 'q14_radio7', NULL, 6, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (269, 1, 10, NULL, 'q5_txtinfo', NULL, NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (270, 1, 188, 17, 'q31_sf_03', NULL, 54, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (271, 1, 191, 17, 'q31_sf_02', NULL, 55, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (275, 1, 377, 30, 'q47_rank', NULL, 111, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (276, 1, 47, NULL, 'q31_more_b', NULL, NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (277, 1, 9, 0, 'q8_sf4', '1,2,3', 0, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (279, 1, 325, 26, 'q42_rank', NULL, 96, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (282, 1, 38, 6, 'q14_02', NULL, 6, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (283, 1, 186, 17, 'q31_sf_02', NULL, 54, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (284, 1, 354, 30, 'q47_radio03', NULL, 105, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (289, 1, 366, 30, 'q47_radio03', NULL, 108, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (291, 1, 10, 0, 'q8_sf5', NULL, 0, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (293, 1, 201, 17, 'q31_sf_02', NULL, 57, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (295, 1, 2, NULL, 'q1_radioList', NULL, NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (297, 1, 139, 11, 'q23_rank', NULL, 37, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (298, 1, 62, 7, 'q15_02_radio', NULL, 11, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (299, 1, 24, 3, 'q11_02', NULL, 3, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (300, 1, 275, 21, 'q36_sf', NULL, 78, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (301, 1, 65, NULL, 'q45_txt_answer_1', NULL, NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (302, 1, 104, 9, 'q18_radio1', NULL, 25, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (303, 1, 178, 17, 'q31_sf_03', NULL, 52, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (304, 1, 353, 30, 'q47_rank', NULL, 105, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (305, 1, 13, 1, 'q9_chk2', NULL, 1, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (308, 1, 14, 1, 'q9_radio3', NULL, 1, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (309, 1, 269, 21, 'q36_sf', NULL, 76, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (310, 1, 392, 24, 'q40_sf_03_04', NULL, 112, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (311, 1, 25, NULL, 'q17_txtInfo', NULL, NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (313, 1, 119, 10, 'q19_02_radio', NULL, 30, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (273, 1, 36, 5, 'q13_comments', '', 5, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (278, 1, 46, 6, 'q14_09_custom', '', 6, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (259, 1, 51, 7, 'q15_comment', '', 7, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (260, 1, 57, 7, 'q15_comment', '', 9, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (307, 1, 60, 7, 'q15_comment', '', 10, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (287, 1, 67, 7, 'txt_q15_other', '', 13, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (280, 1, 72, 8, 'q16_comment', '', 14, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (249, 1, 81, 8, 'q16_comment', '', 17, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (268, 1, 88, 8, 'txt_q16_other', '', 20, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (264, 1, 102, 9, 'q18_comments', '', 24, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (241, 1, 108, 9, 'q18_comments', '', 26, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (217, 1, 109, 9, 'q18_01_other', '', 27, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (226, 1, 120, 10, 'q19_comment', '', 30, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (253, 1, 151, 13, 'q27_txtSpecies', '', 43, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (257, 1, 153, 13, 'q27_comments', '', 43, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (262, 1, 154, 14, 'q28_txt_species', '', 44, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (314, 1, 158, 15, 'q29_txt_species', '', 45, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (267, 1, 177, 17, 'q31_other', '', 52, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (243, 1, 179, 17, 'q31_txt_comments', '', 52, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (219, 1, 222, 17, 'q31_other', '', 61, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (227, 1, 227, 17, 'q31_other', '', 62, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (240, 1, 240, 19, 'q34_txt_comments', '', 65, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (247, 1, 246, 19, 'q34_txt_comments', '', 68, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (306, 1, 249, 20, 'q35_txt_comments', '', 69, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (281, 1, 252, 21, 'q36_txt_comments', '', 70, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (285, 1, 258, 21, 'q36_txt_comments', '', 72, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (244, 1, 261, 21, 'q36_txt_comments', '', 73, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (274, 1, 274, 21, 'q36_txt_obstacles', '', 78, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (250, 1, 276, 21, 'q36_txt_comments', '', 78, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (315, 1, 277, 22, 'q38_txt_institution', '', 79, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (231, 1, 279, 22, 'q38_comment', '', 79, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (290, 1, 296, 23, 'q39_other', '', 88, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (312, 1, 384, 24, 'q40_comments_01', '', 112, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (234, 1, 387, 24, 'q40_comments_02', '', 112, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (220, 1, 390, 24, 'q40_comments_03', '', 112, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (292, 1, 393, 24, 'q40_comments_04', '', 112, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (255, 1, 322, 25, 'q41_txt_mechanism', '', 95, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (272, 1, 335, 28, 'q44_txt_information_system', '', 101, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (286, 1, 338, 28, 'q44_txt_other_stackholders', '', 101, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (288, 1, 351, 30, 'q47_comments', '', 104, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (245, 1, 367, 30, 'q47_comments', '', 108, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (296, 1, 375, 30, 'q47_comments', '', 110, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (316, 1, 376, 30, 'q47_txt_other', '', 111, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (704, 2, 25, NULL, 'q17_txtInfo', NULL, NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (294, 1, 32, 5, 'q13_species', '', 5, 1, 0, '');
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (317, 1, 95, 9, 'q18_radio1', NULL, 22, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (318, 1, 66, NULL, 'q45_txt_answer_2', NULL, NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (320, 1, 34, NULL, 'q24_radio', NULL, NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (321, 1, 206, 17, 'q31_sf_02', NULL, 58, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (322, 1, 53, 7, 'q15_02_radio', NULL, 8, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (324, 1, 116, 10, 'q19_02_radio', NULL, 29, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (325, 1, 32, NULL, 'q22_examples', NULL, NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (326, 1, 47, 6, 'q14_radio10', NULL, 6, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (328, 1, 89, 8, 'q16_02_radio', NULL, 20, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (330, 1, 29, NULL, 'q20_additionalInformation', NULL, NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (258, 1, 380, 0, 'q8_hybrids', '', 0, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (202, 1, 19, 1, 'q9_txtComments', '', 1, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (90, 1, 22, 2, 'q10_comments', '', 2, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (129, 1, 66, 7, 'q15_comment', '', 12, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (323, 1, 84, 8, 'q16_comment', '', 18, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (45, 1, 133, 10, 'txt_q19_other', '', 35, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (215, 1, 157, 14, 'q28_txt_comments', '', 44, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (122, 1, 199, 17, 'q31_txt_comments', '', 56, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (327, 1, 232, 17, 'q31_other', '', 63, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (236, 1, 381, 24, 'txt_institution', '', 112, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (58, 1, 332, 27, 'q43_txt_network', '', 100, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (205, 1, 343, 29, 'q46_txt_comments', '', 102, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (319, 1, 347, 30, 'q47_comments', '', 103, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (331, 1, 0, 0, 'q8_species', NULL, 0, 2, 0, 'custom');
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (332, 1, 1, 0, 'q8_chk1', NULL, 0, 2, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (333, 1, 2, 0, 'q8_chk2', '2', 0, 2, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (334, 1, 3, 0, 'q8_chk3', '3', 0, 2, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (335, 1, 4, 0, 'q8_chk4', NULL, 0, 2, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (336, 1, 5, 0, 'q8_chk5', NULL, 0, 2, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (337, 1, 380, 0, 'q8_hybrids', 'custom', 0, 2, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (338, 1, 6, 0, 'q8_sf1', NULL, 0, 2, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (339, 1, 7, 0, 'q8_sf2', '3', 0, 2, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (340, 1, 8, 0, 'q8_sf3', '1,2', 0, 2, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (341, 1, 9, 0, 'q8_sf4', NULL, 0, 2, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (342, 1, 10, 0, 'q8_sf5', NULL, 0, 2, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (343, 2, 101, 9, 'q18_radio1', NULL, 24, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (344, 2, 14, 1, 'q9_radio3', '2', 1, 3, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (345, 2, 228, 17, 'q31_sf_03', NULL, 62, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (346, 2, 113, 10, 'q19_02_radio', NULL, 28, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (348, 2, 226, 17, 'q31_sf_02', NULL, 62, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (349, 2, 41, 6, 'q14_radio5', NULL, 6, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (351, 2, 369, 30, 'q47_rank', NULL, 109, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (352, 2, 172, 16, 'q30_rank', NULL, 50, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (353, 2, 13, 1, 'q9_chk2', '2,3', 1, 2, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (354, 2, 336, 28, 'q44_sf_01', NULL, 101, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (355, 2, 59, 7, 'q15_02_radio', NULL, 10, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (359, 2, 8, 0, 'q8_sf3', NULL, 0, 2, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (361, 2, 2, 0, 'q8_chk2', '2', 0, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (363, 2, 38, NULL, 'q26_radio', NULL, NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (365, 2, 346, 30, 'q47_radio03', NULL, 103, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (366, 2, 83, 8, 'q16_02_radio', NULL, 18, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (367, 2, 18, 1, 'q9_chk7', '2,3', 1, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (368, 2, 34, 5, 'q13_03', NULL, 5, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (371, 2, 380, 0, 'q8_hybrids', 'fesfedsfd', 0, 2, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (372, 2, 5, 0, 'q8_chk5', NULL, 0, 2, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (374, 2, 378, 30, 'q47_radio03', NULL, 111, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (375, 2, 281, 23, 'q39_rank', NULL, 80, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (376, 2, 7, 0, 'q8_sf2', '1,2', 0, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (377, 2, 370, 30, 'q47_radio03', NULL, 109, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (378, 2, 11, 1, 'q9_radio_native_introduced', '1', 1, 3, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (379, 2, 50, 7, 'q15_02_radio', NULL, 7, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (380, 2, 68, 7, 'q15_02_radio', NULL, 13, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (381, 2, 9, 0, 'q8_sf4', '2,3', 0, 2, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (382, 2, 30, 4, 'q12_02', NULL, 4, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (384, 2, 12, 1, 'q9_species', 'fdwfdwfd', 1, 2, 0, 'fdwfdwfd');
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (386, 2, 74, 8, 'q16_02_radio', NULL, 15, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (387, 2, 373, 30, 'q47_rank', NULL, 110, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (389, 2, 19, 1, 'q9_txtComments', 'fdfdewfe', 1, 3, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (390, 2, 145, 11, 'q23_rank', NULL, 40, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (394, 2, 45, 6, 'q14_09', NULL, 6, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (395, 2, 386, 24, 'q40_sf_03_02', '3', 112, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (396, 2, 69, NULL, 'q48_txt', NULL, NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (399, 2, 203, 17, 'q31_sf_03', NULL, 57, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (400, 2, 15, 1, 'q9_radio4', '4', 1, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (401, 2, 28, NULL, 'q20_radio', NULL, NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (393, 2, 54, 7, 'q15_comment', '', 8, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (370, 2, 117, 10, 'q19_comment', '', 29, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (364, 2, 126, 10, 'q19_comment', '', 32, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (397, 2, 133, 10, 'txt_q19_other', '', 35, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (362, 2, 146, 11, 'q23_name_other', '', 41, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (356, 2, 173, 16, 'q30_txt_other', '', 51, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (383, 2, 204, 17, 'q31_txt_comments', '', 57, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (347, 2, 214, 17, 'q31_txt_comments', '', 59, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (358, 2, 217, 17, 'q31_other', '', 60, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (350, 2, 224, 17, 'q31_txt_comments', '', 61, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (360, 2, 234, 17, 'q31_txt_comments', '', 63, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (373, 2, 255, 21, 'q36_txt_comments', '', 71, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (369, 2, 267, 21, 'q36_txt_comments', '', 75, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (391, 2, 330, 26, 'q42_other', '', 99, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (392, 2, 334, 27, 'q43_txt_comments', '', 100, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (398, 2, 355, 30, 'q47_comments', '', 105, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (388, 2, 379, 30, 'q47_comments', '', 111, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (385, 2, 37, 6, 'q14_species', '', 6, 1, 0, '');
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (329, 1, 23, 3, 'q11_species', '', 3, 1, 0, '');
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (403, 2, 7, 0, 'q8_sf2', '1,2', 0, 2, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (404, 2, 211, 17, 'q31_sf_02', NULL, 59, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (405, 2, 283, 23, 'q39_rank', NULL, 81, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (406, 2, 5, 0, 'q8_chk5', NULL, 0, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (407, 2, 365, 30, 'q47_rank', NULL, 108, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (410, 2, 350, 30, 'q47_radio03', NULL, 104, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (412, 2, 8, 0, 'q8_sf3', NULL, 0, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (413, 2, 92, 9, 'q18_radio1', NULL, 21, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (414, 2, 54, NULL, 'q37_txt_details', NULL, NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (416, 2, 107, 9, 'q18_radio1', NULL, 26, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (418, 2, 14, NULL, 'q6_txtinfo', 'bvsdfv rbaerb', NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (419, 2, 174, 16, 'q30_rank', NULL, 51, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (420, 2, 3, NULL, 'q2_radioList', '6', NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (421, 2, 257, 21, 'q36_sf', NULL, 72, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (422, 2, 1, 0, 'q8_chk1', '1', 0, 2, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (423, 2, 395, 24, 'q40_sf_03_05', '1,2', 112, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (424, 2, 30, NULL, 'q21_radio', NULL, NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (425, 2, 176, 17, 'q31_sf_02', NULL, 52, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (426, 2, 98, 9, 'q18_radio1', NULL, 23, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (428, 2, 278, 22, 'q38_sf', NULL, 79, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (429, 2, 395, 24, 'q40_sf_03_05', '1,2,3,4', 112, 2, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (430, 2, 193, 17, 'q31_sf_03', NULL, 55, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (431, 2, 77, 8, 'q16_02_radio', NULL, 16, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (432, 2, 12, 1, 'q9_species', 'fewfwfgwf vw we we', 1, 3, 0, 'fewfwfgwf vw we we');
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (433, 2, 272, 21, 'q36_sf', NULL, 77, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (436, 2, 237, 18, 'q32_03', NULL, 64, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (437, 2, 357, 30, 'q47_rank', NULL, 106, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (439, 2, 72, NULL, 'q50_txt', NULL, NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (441, 2, 56, 7, 'q15_02_radio', NULL, 9, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (442, 2, 297, 23, 'q39_rank', NULL, 88, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (443, 2, 221, 17, 'q31_sf_02', NULL, 61, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (445, 2, 65, 7, 'q15_02_radio', NULL, 12, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (446, 2, 285, 23, 'q39_rank', NULL, 82, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (447, 2, 4, NULL, 'q3_radioList', '1', NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (450, 2, 254, 21, 'q36_sf', NULL, 71, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (451, 2, 383, 24, 'q40_sf_03_01', '2,3', 112, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (453, 2, 9, NULL, 'q5_radioList', '2', NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (454, 2, 5, 0, 'q8_chk5', '5', 0, 3, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (455, 2, 26, 3, 'q11_04', NULL, 3, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (457, 2, 143, 11, 'q23_rank', NULL, 39, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (459, 2, 223, 17, 'q31_sf_03', NULL, 61, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (460, 2, 39, 6, 'q14_radio3', NULL, 6, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (462, 2, 59, NULL, 'q41_chk_01', NULL, NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (463, 2, 8, NULL, 'q4_txtinfo', 'bsdfb sbes btesb esrebs', NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (464, 2, 16, 1, 'q9_radio5', '4', 1, 3, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (465, 2, 218, 17, 'q31_sf_03', NULL, 60, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (467, 2, 342, 29, 'q46_radio_04', NULL, 102, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (469, 2, 213, 17, 'q31_sf_03', NULL, 59, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (471, 2, 168, 16, 'q30_rank', NULL, 48, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (473, 2, 18, 1, 'q9_chk7', '1,2,6', 1, 2, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (477, 2, 0, 0, 'q8_species', 'CDT', 0, 1, 0, 'Yabby crayfish');
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (478, 2, 70, NULL, 'q49_radio', NULL, NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (479, 2, 389, 24, 'q40_sf_03_03', '2,3', 112, 2, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (481, 2, 349, 30, 'q47_rank', NULL, 104, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (482, 2, 358, 30, 'q47_radio03', NULL, 106, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (484, 2, 17, 1, 'q9_chk6', '3,4', 1, 2, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (485, 2, 6, 0, 'q8_sf1', '1,3', 0, 3, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (487, 2, 31, NULL, 'q21_additionalInformation', NULL, NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (488, 2, 1, 0, 'q8_chk1', '1', 0, 3, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (489, 2, 110, 9, 'q18_radioOther', NULL, 27, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (491, 2, 62, NULL, 'q42_comments', NULL, NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (492, 2, 260, 21, 'q36_sf', NULL, 73, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (493, 2, 341, 29, 'q46_radio_03', NULL, 102, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (496, 2, 251, 21, 'q36_sf', NULL, 70, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (497, 2, 42, 6, 'q14_radio6', NULL, 6, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (498, 2, 392, 24, 'q40_sf_03_04', '3', 112, 2, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (499, 2, 0, 0, 'q8_species', 'PNV', 0, 3, 0, 'Whiteleg shrimp');
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (500, 2, 10, 0, 'q8_sf5', '2', 0, 2, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (501, 2, 141, 11, 'q23_rank', NULL, 38, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (409, 2, 28, 3, 'q11_comments', '', 3, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (456, 2, 31, 4, 'q12_comments', '', 4, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (474, 2, 35, 5, 'q13_04', '', 5, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (435, 2, 63, 7, 'q15_comment', '', 11, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (494, 2, 66, 7, 'q15_comment', '', 12, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (470, 2, 75, 8, 'q16_comment', '', 15, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (466, 2, 90, 8, 'q16_comment', '', 20, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (408, 2, 96, 9, 'q18_comments', '', 22, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (440, 2, 99, 9, 'q18_comments', '', 23, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (427, 2, 105, 9, 'q18_comments', '', 25, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (449, 2, 129, 10, 'q19_comment', '', 33, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (475, 2, 132, 10, 'q19_comment', '', 34, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (417, 2, 135, 10, 'q19_comment', '', 35, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (468, 2, 159, 15, 'q29_txt_users', '', 45, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (461, 2, 162, 15, 'q29_txt_comments', '', 45, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (480, 2, 182, 17, 'q31_other', '', 53, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (495, 2, 192, 17, 'q31_other', '', 55, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (402, 2, 194, 17, 'q31_txt_comments', '', 55, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (486, 2, 199, 17, 'q31_txt_comments', '', 56, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (452, 2, 235, 18, 'q32_txt_legislation', '', 64, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (490, 2, 245, 19, 'q34_txt_genetic', '', 68, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (438, 2, 264, 21, 'q36_txt_comments', '', 74, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (483, 2, 270, 21, 'q36_txt_comments', '', 76, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (476, 2, 340, 29, 'q46_txt_02', '', 102, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (458, 2, 363, 30, 'q47_comments', '', 107, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (472, 2, 396, 24, 'q40_comments_05', NULL, 112, 1, 1, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (434, 2, 384, 24, 'q40_comments_01', '', 112, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (502, 2, 0, 0, 'q8_species', 'custom II', 0, 2, 0, 'custom II');
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (504, 2, 86, 8, 'q16_02_radio', NULL, 19, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (505, 2, 2, 0, 'q8_chk2', NULL, 0, 3, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (507, 2, 248, 20, 'q35_sf', NULL, 69, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (511, 2, 4, 0, 'q8_chk4', NULL, 0, 3, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (514, 2, 46, NULL, 'q31_more_a', NULL, NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (515, 2, 80, 8, 'q16_02_radio', NULL, 17, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (517, 2, 161, 15, 'q29_sf_04', NULL, 45, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (518, 2, 295, 23, 'q39_rank', NULL, 87, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (520, 2, 3, 0, 'q8_chk3', '3', 0, 3, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (521, 2, 231, 17, 'q31_sf_02', NULL, 63, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (522, 2, 236, 18, 'q32_date', NULL, 64, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (524, 2, 0, NULL, 'executiveSummary', 'bfdbsdfbfsbdf', NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (525, 2, 6, 0, 'q8_sf1', '2', 0, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (527, 2, 40, 6, 'q14_radio4', NULL, 6, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (528, 2, 7, NULL, 'q4b_radioList', '0', NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (529, 2, 134, 10, 'q19_02_radio', NULL, 35, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (531, 2, 7, 0, 'q8_sf2', NULL, 0, 3, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (532, 2, 131, 10, 'q19_02_radio', NULL, 34, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (535, 2, 183, 17, 'q31_sf_03', NULL, 53, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (536, 2, 331, 26, 'q42_rank', NULL, 99, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (539, 2, 53, NULL, 'q37_radio', NULL, NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (540, 2, 291, 23, 'q39_rank', NULL, 85, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (541, 2, 345, 30, 'q47_rank', NULL, 103, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (542, 2, 196, 17, 'q31_sf_02', NULL, 56, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (543, 2, 16, 1, 'q9_radio5', '2', 1, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (545, 2, 147, 11, 'q23_rank_other', NULL, 41, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (546, 2, 37, NULL, 'q25_examples', NULL, NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (547, 2, 263, 21, 'q36_sf', NULL, 74, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (548, 2, 17, 1, 'q9_chk6', '1,2,3,4,5,6', 1, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (549, 2, 198, 17, 'q31_sf_03', NULL, 56, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (550, 2, 44, 6, 'q14_radio8', NULL, 6, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (551, 2, 164, 16, 'q30_rank', NULL, 46, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (552, 2, 329, 26, 'q42_rank', NULL, 98, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (553, 2, 374, 30, 'q47_radio03', NULL, 110, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (556, 2, 15, NULL, 'q7_radioList', '1', NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (557, 2, 289, 23, 'q39_rank', NULL, 84, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (558, 2, 71, NULL, 'q49_txt', NULL, NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (561, 2, 181, 17, 'q31_sf_02', NULL, 53, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (562, 2, 155, 14, 'q28_sf_02', NULL, 44, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (563, 2, 5, NULL, 'q3_txtinfo', 'sbdfbdnstd nbsd bfd bfes best bsbte', NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (564, 2, 11, 1, 'q9_radio_native_introduced', '1', 1, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (565, 2, 3, 0, 'q8_chk3', NULL, 0, 2, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (566, 2, 333, 27, 'q43_sf', NULL, 100, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (567, 2, 48, 6, 'q14_11', NULL, 6, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (568, 2, 137, 11, 'q23_rank', NULL, 36, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (571, 2, 10, 0, 'q8_sf5', '2', 0, 3, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (572, 2, 12, NULL, 'q6_txtperc2', '20', NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (575, 2, 11, NULL, 'q6_txtperc1', '20', NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (577, 2, 49, NULL, 'q33_txtinfo', NULL, NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (578, 2, 386, 24, 'q40_sf_03_02', '2,3,4', 112, 2, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (579, 2, 12, 1, 'q9_species', 'TTS', 1, 1, 0, 'Chinese softshell turtle');
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (580, 2, 19, 1, 'q9_txtComments', 'dzvcddvsa', 1, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (582, 2, 293, 23, 'q39_rank', NULL, 86, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (584, 2, 389, 24, 'q40_sf_03_03', '1,2,3,4', 112, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (587, 2, 57, NULL, 'q39_comments', NULL, NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (588, 2, 25, 3, 'q11_03', NULL, 3, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (589, 2, 71, 8, 'q16_02_radio', NULL, 14, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (591, 2, 8, 0, 'q8_sf3', '2,3', 0, 3, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (593, 2, 287, 23, 'q39_rank', NULL, 83, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (595, 2, 122, 10, 'q19_02_radio', NULL, 31, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (597, 2, 156, 14, 'q28_radio_03', NULL, 44, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (526, 2, 27, 3, 'q11_05', '', 3, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (581, 2, 78, 8, 'q16_comment', '', 16, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (555, 2, 87, 8, 'q16_comment', '', 19, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (559, 2, 93, 9, 'q18_comments', '', 21, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (596, 2, 109, 9, 'q18_01_other', '', 27, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (534, 2, 114, 10, 'q19_comment', '', 28, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (508, 2, 123, 10, 'q19_comment', '', 31, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (594, 2, 157, 14, 'q28_txt_comments', '', 44, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (533, 2, 184, 17, 'q31_txt_comments', '', 53, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (574, 2, 187, 17, 'q31_other', '', 54, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (516, 2, 189, 17, 'q31_txt_comments', '', 54, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (530, 2, 197, 17, 'q31_other', '', 56, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (523, 2, 202, 17, 'q31_other', '', 57, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (512, 2, 207, 17, 'q31_other', '', 58, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (538, 2, 209, 17, 'q31_txt_comments', '', 58, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (586, 2, 212, 17, 'q31_other', '', 59, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (569, 2, 219, 17, 'q31_txt_comments', '', 60, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (598, 2, 222, 17, 'q31_other', '', 61, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (576, 2, 238, 18, 'q32_comments', '', 64, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (509, 2, 242, 19, 'q34_txt_comments', '', 66, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (554, 2, 244, 19, 'q34_txt_comments', '', 67, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (590, 2, 247, 20, 'q35_txt_action', '', 69, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (560, 2, 273, 21, 'q36_txt_comments', '', 77, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (503, 2, 20, 2, 'q10_species', 'TUG', 2, 1, 0, 'Green turtle');
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (506, 2, 323, 25, 'q41_txt_description', '', 95, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (510, 2, 339, 29, 'q46_txt_01', '', 102, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (583, 2, 343, 29, 'q46_txt_comments', '', 102, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (519, 2, 359, 30, 'q47_comments', '', 106, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (585, 2, 371, 30, 'q47_comments', '', 109, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (513, 2, 390, 24, 'q40_comments_03', '', 112, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (573, 2, 21, 2, 'q10_radio2', '1', 2, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (592, 2, 29, 4, 'q12_species', '', 4, 1, 0, '');
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (600, 2, 362, 30, 'q47_radio03', NULL, 107, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (601, 2, 327, 26, 'q42_rank', NULL, 97, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (602, 2, 208, 17, 'q31_sf_03', NULL, 58, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (603, 2, 233, 17, 'q31_sf_03', NULL, 63, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (604, 2, 13, NULL, 'q6_txtperc3', '60', NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (607, 2, 14, 1, 'q9_radio3', '2', 1, 2, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (608, 2, 266, 21, 'q36_sf', NULL, 75, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (609, 2, 1, NULL, 'introduction', 'ngfdngfgfndfng', NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (610, 2, 152, 13, 'q27_radio02', NULL, 43, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (612, 2, 36, NULL, 'q25_radio', NULL, NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (613, 2, 3, 0, 'q8_chk3', NULL, 0, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (615, 2, 4, 0, 'q8_chk4', '4', 0, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (617, 2, 216, 17, 'q31_sf_02', NULL, 60, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (618, 2, 337, 28, 'q44_sf_02', NULL, 101, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (619, 2, 361, 30, 'q47_rank', NULL, 107, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (622, 2, 160, 15, 'q29_sf_03', NULL, 45, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (624, 2, 9, 0, 'q8_sf4', NULL, 0, 3, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (627, 2, 15, 1, 'q9_radio4', '1', 1, 3, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (628, 2, 125, 10, 'q19_02_radio', NULL, 32, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (630, 2, 6, NULL, 'q4a_radioList', '3', NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (633, 2, 128, 10, 'q19_02_radio', NULL, 33, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (634, 2, 166, 16, 'q30_rank', NULL, 47, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (636, 2, 33, 5, 'q13_02', NULL, 5, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (638, 2, 35, NULL, 'q24_examples', NULL, NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (639, 2, 2, 0, 'q8_chk2', '2', 0, 2, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (644, 2, 1, 0, 'q8_chk1', '1', 0, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (646, 2, 170, 16, 'q30_rank', NULL, 49, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (648, 2, 39, NULL, 'q26_examples', NULL, NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (649, 2, 43, 6, 'q14_radio7', NULL, 6, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (652, 2, 10, NULL, 'q5_txtinfo', 'bes ber s beb es b', NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (653, 2, 188, 17, 'q31_sf_03', NULL, 54, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (654, 2, 191, 17, 'q31_sf_02', NULL, 55, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (656, 2, 6, 0, 'q8_sf1', '2', 0, 2, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (657, 2, 13, 1, 'q9_chk2', '2,3', 1, 3, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (660, 2, 377, 30, 'q47_rank', NULL, 111, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (661, 2, 47, NULL, 'q31_more_b', NULL, NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (662, 2, 9, 0, 'q8_sf4', '2,3', 0, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (664, 2, 325, 26, 'q42_rank', NULL, 96, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (667, 2, 38, 6, 'q14_02', NULL, 6, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (668, 2, 186, 17, 'q31_sf_02', NULL, 54, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (669, 2, 354, 30, 'q47_radio03', NULL, 105, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (671, 2, 15, 1, 'q9_radio4', '2', 1, 2, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (673, 2, 4, 0, 'q8_chk4', '4', 0, 2, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (676, 2, 366, 30, 'q47_radio03', NULL, 108, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (678, 2, 10, 0, 'q8_sf5', NULL, 0, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (680, 2, 19, 1, 'q9_txtComments', 'fweecew', 1, 2, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (681, 2, 201, 17, 'q31_sf_02', NULL, 57, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (683, 2, 2, NULL, 'q1_radioList', '2', NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (685, 2, 139, 11, 'q23_rank', NULL, 37, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (686, 2, 17, 1, 'q9_chk6', '1,2', 1, 3, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (688, 2, 18, 1, 'q9_chk7', '1,2', 1, 3, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (689, 2, 62, 7, 'q15_02_radio', NULL, 11, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (690, 2, 383, 24, 'q40_sf_03_01', '1', 112, 2, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (691, 2, 24, 3, 'q11_02', NULL, 3, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (692, 2, 275, 21, 'q36_sf', NULL, 78, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (693, 2, 65, NULL, 'q45_txt_answer_1', NULL, NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (694, 2, 104, 9, 'q18_radio1', NULL, 25, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (695, 2, 178, 17, 'q31_sf_03', NULL, 52, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (696, 2, 353, 30, 'q47_rank', NULL, 105, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (697, 2, 13, 1, 'q9_chk2', '1,2', 1, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (700, 2, 14, 1, 'q9_radio3', '2', 1, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (701, 2, 16, 1, 'q9_radio5', '5', 1, 2, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (702, 2, 269, 21, 'q36_sf', NULL, 76, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (703, 2, 392, 24, 'q40_sf_03_04', '2', 112, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (658, 2, 36, 5, 'q13_comments', '', 5, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (663, 2, 46, 6, 'q14_09_custom', '', 6, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (642, 2, 51, 7, 'q15_comment', '', 7, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (643, 2, 57, 7, 'q15_comment', '', 9, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (699, 2, 60, 7, 'q15_comment', '', 10, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (674, 2, 67, 7, 'txt_q15_other', '', 13, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (665, 2, 72, 8, 'q16_comment', '', 14, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (631, 2, 81, 8, 'q16_comment', '', 17, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (651, 2, 88, 8, 'txt_q16_other', '', 20, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (647, 2, 102, 9, 'q18_comments', '', 24, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (621, 2, 108, 9, 'q18_comments', '', 26, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (605, 2, 120, 10, 'q19_comment', '', 30, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (635, 2, 151, 13, 'q27_txtSpecies', '', 43, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (640, 2, 153, 13, 'q27_comments', '', 43, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (650, 2, 177, 17, 'q31_other', '', 52, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (623, 2, 179, 17, 'q31_txt_comments', '', 52, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (606, 2, 227, 17, 'q31_other', '', 62, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (620, 2, 240, 19, 'q34_txt_comments', '', 65, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (629, 2, 246, 19, 'q34_txt_comments', '', 68, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (698, 2, 249, 20, 'q35_txt_comments', '', 69, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (666, 2, 252, 21, 'q36_txt_comments', '', 70, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (670, 2, 258, 21, 'q36_txt_comments', '', 72, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (625, 2, 261, 21, 'q36_txt_comments', '', 73, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (659, 2, 274, 21, 'q36_txt_obstacles', '', 78, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (632, 2, 276, 21, 'q36_txt_comments', '', 78, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (611, 2, 279, 22, 'q38_comment', '', 79, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (677, 2, 296, 23, 'q39_other', '', 88, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (614, 2, 387, 24, 'q40_comments_02', NULL, 112, 1, 1, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (637, 2, 322, 25, 'q41_txt_mechanism', '', 95, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (655, 2, 335, 28, 'q44_txt_information_system', '', 101, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (675, 2, 351, 30, 'q47_comments', '', 104, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (626, 2, 367, 30, 'q47_comments', '', 108, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (684, 2, 375, 30, 'q47_comments', '', 110, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (687, 2, 396, 24, 'q40_comments_05', '', 112, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (616, 2, 381, 24, 'txt_institution', 'test test test', 112, 1, 1, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (679, 2, 393, 24, 'q40_comments_04', NULL, 112, 1, 1, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (682, 2, 32, 5, 'q13_species', '', 5, 1, 0, '');
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (706, 2, 119, 10, 'q19_02_radio', NULL, 30, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (710, 2, 95, 9, 'q18_radio1', NULL, 22, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (711, 2, 11, 1, 'q9_radio_native_introduced', '0', 1, 2, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (712, 2, 66, NULL, 'q45_txt_answer_2', NULL, NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (714, 2, 34, NULL, 'q24_radio', NULL, NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (715, 2, 206, 17, 'q31_sf_02', NULL, 58, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (716, 2, 53, 7, 'q15_02_radio', NULL, 8, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (719, 2, 116, 10, 'q19_02_radio', NULL, 29, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (720, 2, 32, NULL, 'q22_examples', NULL, NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (721, 2, 47, 6, 'q14_radio10', NULL, 6, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (723, 2, 89, 8, 'q16_02_radio', NULL, 20, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (725, 2, 29, NULL, 'q20_additionalInformation', NULL, NULL, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (641, 2, 380, 0, 'q8_hybrids', '', 0, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (537, 2, 380, 0, 'q8_hybrids', '', 0, 3, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (570, 2, 69, 7, 'q15_comment', '', 13, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (717, 2, 84, 8, 'q16_comment', '', 18, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (415, 2, 111, 9, 'q18_commentsOther', '', 27, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (645, 2, 154, 14, 'q28_txt_species', '', 44, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (707, 2, 158, 15, 'q29_txt_species', '', 45, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (544, 2, 229, 17, 'q31_txt_comments', '', 62, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (722, 2, 232, 17, 'q31_other', '', 63, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (708, 2, 277, 22, 'q38_txt_institution', '', 79, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (411, 2, 332, 27, 'q43_txt_network', '', 100, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (672, 2, 338, 28, 'q44_txt_other_stackholders', '', 101, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (713, 2, 347, 30, 'q47_comments', '', 103, NULL, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (709, 2, 376, 30, 'q47_txt_other', '', 111, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (599, 2, 390, 24, 'q40_comments_03', 'TESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTT', 112, 1, 1, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (718, 2, 387, 24, 'q40_comments_02', 'TESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTT', 112, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (444, 2, 381, 24, 'txt_institution', 'TESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTT', 112, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (357, 2, 393, 24, 'q40_comments_04', 'TESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTT', 112, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (705, 2, 384, 24, 'q40_comments_01', 'TESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTTTESTTTTTTTTTT', 112, 1, 1, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (448, 2, 22, 2, 'q10_comments', 'kyffhmhm', 2, 1, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (724, 2, 23, 3, 'q11_species', '', 3, 1, 0, '');
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (213, 1, 29, 4, 'q12_species', '', 4, 1, 0, '');
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (726, 1, 0, 0, 'q8_species', 'CRD', 0, 3, 0, 'Astacus leptodactylus');
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (727, 1, 1, 0, 'q8_chk1', '1', 0, 3, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (728, 1, 2, 0, 'q8_chk2', '2', 0, 3, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (729, 1, 3, 0, 'q8_chk3', '3', 0, 3, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (730, 1, 4, 0, 'q8_chk4', '4', 0, 3, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (731, 1, 5, 0, 'q8_chk5', '5', 0, 3, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (732, 1, 380, 0, 'q8_hybrids', 'scientific name', 0, 3, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (733, 1, 6, 0, 'q8_sf1', '2,3', 0, 3, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (734, 1, 7, 0, 'q8_sf2', '2,3', 0, 3, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (735, 1, 8, 0, 'q8_sf3', '2', 0, 3, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (736, 1, 9, 0, 'q8_sf4', '2,3', 0, 3, 0, NULL);
INSERT INTO "SurveyAnswers" ("ID", survey_id, field_id, table_id, field, value, table_row_id, table_row_multi_sort, deleted, value_opt) VALUES (737, 1, 10, 0, 'q8_sf5', '1,3', 0, 3, 0, NULL);


--
-- TOC entry 1995 (class 0 OID 0)
-- Dependencies: 171
-- Name: SurveyAnswers_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"SurveyAnswers_ID_seq"', 737, true);


--
-- TOC entry 1983 (class 0 OID 17069)
-- Dependencies: 177
-- Data for Name: SurveyStatus; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (1, 1, 1, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (2, 1, 2, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (3, 1, 3, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (4, 1, 4, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (5, 1, 5, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (6, 1, 6, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (7, 1, 7, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (8, 1, 8, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (9, 1, 9, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (10, 1, 10, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (11, 1, 11, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (12, 1, 12, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (13, 1, 13, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (14, 1, 14, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (15, 1, 15, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (16, 1, 16, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (17, 1, 17, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (18, 1, 18, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (19, 1, 19, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (20, 1, 20, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (21, 1, 21, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (22, 1, 22, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (23, 1, 23, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (24, 1, 24, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (25, 1, 25, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (26, 1, 26, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (27, 1, 27, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (28, 1, 28, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (29, 1, 30, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (30, 1, 31, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (31, 1, 32, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (32, 1, 33, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (33, 1, 34, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (34, 1, 35, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (35, 1, 36, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (36, 1, 37, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (37, 1, 38, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (38, 1, 39, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (39, 1, 40, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (40, 1, 41, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (41, 1, 42, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (42, 1, 43, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (43, 1, 44, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (44, 1, 45, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (45, 1, 46, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (46, 1, 47, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (47, 1, 48, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (48, 1, 49, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (49, 1, 50, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (50, 1, 51, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (51, 1, 52, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (52, 1, 53, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (53, 2, 1, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (54, 2, 2, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (55, 2, 3, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (56, 2, 4, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (57, 2, 5, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (58, 2, 6, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (59, 2, 7, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (60, 2, 8, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (61, 2, 9, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (62, 2, 10, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (63, 2, 11, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (64, 2, 12, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (65, 2, 13, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (66, 2, 14, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (67, 2, 15, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (68, 2, 16, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (69, 2, 17, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (70, 2, 18, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (71, 2, 19, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (72, 2, 20, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (73, 2, 21, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (74, 2, 22, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (75, 2, 23, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (76, 2, 24, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (77, 2, 25, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (78, 2, 26, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (79, 2, 27, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (80, 2, 28, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (81, 2, 30, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (82, 2, 31, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (83, 2, 32, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (84, 2, 33, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (85, 2, 34, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (86, 2, 35, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (87, 2, 36, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (88, 2, 37, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (89, 2, 38, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (90, 2, 39, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (91, 2, 40, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (92, 2, 41, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (93, 2, 42, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (94, 2, 43, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (95, 2, 44, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (96, 2, 45, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (97, 2, 46, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (98, 2, 47, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (99, 2, 48, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (100, 2, 49, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (101, 2, 50, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (102, 2, 51, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (103, 2, 52, 1);
INSERT INTO "SurveyStatus" ("ID", survey_id, question_id, status) VALUES (104, 2, 53, 1);


--
-- TOC entry 1996 (class 0 OID 0)
-- Dependencies: 176
-- Name: SurveyStatus_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"SurveyStatus_ID_seq"', 104, true);


--
-- TOC entry 1997 (class 0 OID 0)
-- Dependencies: 173
-- Name: Survey_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"Survey_ID_seq"', 2, true);


--
-- TOC entry 1840 (class 2606 OID 16507)
-- Name: ControlledLists_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY "ControlledLists"
    ADD CONSTRAINT "ControlledLists_pkey" PRIMARY KEY (pk);


--
-- TOC entry 1832 (class 2606 OID 16396)
-- Name: ID; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY "Countries"
    ADD CONSTRAINT "ID" PRIMARY KEY ("ID");


--
-- TOC entry 1850 (class 2606 OID 16678)
-- Name: QuestionsTablesColumns_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY "QuestionsTablesColumns"
    ADD CONSTRAINT "QuestionsTablesColumns_pkey" PRIMARY KEY ("ID");


--
-- TOC entry 1848 (class 2606 OID 16600)
-- Name: QuestionsTablesFields_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY "QuestionsTablesFields"
    ADD CONSTRAINT "QuestionsTablesFields_pkey" PRIMARY KEY ("ID");


--
-- TOC entry 1846 (class 2606 OID 16561)
-- Name: QuestionsTablesRows_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY "QuestionsTablesRows"
    ADD CONSTRAINT "QuestionsTablesRows_pkey" PRIMARY KEY ("ID");


--
-- TOC entry 1844 (class 2606 OID 16532)
-- Name: QuestionsTables_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY "QuestionsTables"
    ADD CONSTRAINT "QuestionsTables_pkey" PRIMARY KEY ("ID");


--
-- TOC entry 1834 (class 2606 OID 16407)
-- Name: QuestionsType_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY "QuestionType"
    ADD CONSTRAINT "QuestionsType_pkey" PRIMARY KEY ("ID");


--
-- TOC entry 1842 (class 2606 OID 16517)
-- Name: Questions_pkey1; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY "Questions"
    ADD CONSTRAINT "Questions_pkey1" PRIMARY KEY ("ID");


--
-- TOC entry 1838 (class 2606 OID 16484)
-- Name: Questions_sub_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY "QuestionsFields"
    ADD CONSTRAINT "Questions_sub_pkey" PRIMARY KEY ("ID");


--
-- TOC entry 1836 (class 2606 OID 16452)
-- Name: Species_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY "Species"
    ADD CONSTRAINT "Species_pkey" PRIMARY KEY ("ID");


--
-- TOC entry 1856 (class 2606 OID 17059)
-- Name: Status_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY "Status"
    ADD CONSTRAINT "Status_pkey" PRIMARY KEY ("ID");


--
-- TOC entry 1852 (class 2606 OID 16768)
-- Name: SurveyAnswers_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY "SurveyAnswers"
    ADD CONSTRAINT "SurveyAnswers_pkey" PRIMARY KEY ("ID");


--
-- TOC entry 1858 (class 2606 OID 17074)
-- Name: SurveyStatus_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY "SurveyStatus"
    ADD CONSTRAINT "SurveyStatus_pkey" PRIMARY KEY ("ID");


--
-- TOC entry 1854 (class 2606 OID 16901)
-- Name: Survey_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY "Survey"
    ADD CONSTRAINT "Survey_pkey" PRIMARY KEY ("ID");


--
-- TOC entry 1861 (class 2606 OID 16679)
-- Name: QuestionsTablesColumns_table_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "QuestionsTablesColumns"
    ADD CONSTRAINT "QuestionsTablesColumns_table_id_fkey" FOREIGN KEY (table_id) REFERENCES "QuestionsTables"("ID");


--
-- TOC entry 1860 (class 2606 OID 16562)
-- Name: QuestionsTablesRows_table_ID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "QuestionsTablesRows"
    ADD CONSTRAINT "QuestionsTablesRows_table_ID_fkey" FOREIGN KEY ("table_ID") REFERENCES "QuestionsTables"("ID");


--
-- TOC entry 1859 (class 2606 OID 16485)
-- Name: Questions_sub_type_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "QuestionsFields"
    ADD CONSTRAINT "Questions_sub_type_fkey" FOREIGN KEY (type) REFERENCES "QuestionType"("ID");


--
-- TOC entry 1862 (class 2606 OID 16948)
-- Name: SurveyAnswers_survey_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "SurveyAnswers"
    ADD CONSTRAINT "SurveyAnswers_survey_id_fkey" FOREIGN KEY (survey_id) REFERENCES "Survey"("ID");


--
-- TOC entry 1864 (class 2606 OID 17080)
-- Name: SurveyStatus_question_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "SurveyStatus"
    ADD CONSTRAINT "SurveyStatus_question_id_fkey" FOREIGN KEY (question_id) REFERENCES "Questions"("ID");


--
-- TOC entry 1865 (class 2606 OID 17085)
-- Name: SurveyStatus_status_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "SurveyStatus"
    ADD CONSTRAINT "SurveyStatus_status_fkey" FOREIGN KEY (status) REFERENCES "Status"("ID");


--
-- TOC entry 1863 (class 2606 OID 17075)
-- Name: SurveyStatus_survey_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "SurveyStatus"
    ADD CONSTRAINT "SurveyStatus_survey_id_fkey" FOREIGN KEY (survey_id) REFERENCES "Survey"("ID");


--
-- TOC entry 1990 (class 0 OID 0)
-- Dependencies: 5
-- Name: public; Type: ACL; Schema: -; Owner: -
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2015-06-10 13:41:04 CEST

--
-- PostgreSQL database dump complete
--

