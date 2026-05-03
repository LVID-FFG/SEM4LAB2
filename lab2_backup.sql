--
-- PostgreSQL database dump
--

\restrict NPnM8cW1ZRcR6QbAK2zyMUdeBrGeOcYL0XQMTsAZ9lcoKT5UGD71aQl2DcPYNfn

-- Dumped from database version 18.3
-- Dumped by pg_dump version 18.3

-- Started on 2026-05-03 16:14:55

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

--
-- TOC entry 877 (class 1247 OID 16658)
-- Name: cyrillic_20; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN public.cyrillic_20 AS character varying(20)
	CONSTRAINT cyrillic_20_check CHECK ((((VALUE)::text ~ '^[а-яёА-ЯЁ\s\-\.\,\:\;\(\)\[\]\/]+$'::text) AND ((VALUE)::text ~ '[а-яёА-ЯЁ]'::text)));


ALTER DOMAIN public.cyrillic_20 OWNER TO postgres;

--
-- TOC entry 889 (class 1247 OID 16667)
-- Name: cyrillic_200; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN public.cyrillic_200 AS character varying(200)
	CONSTRAINT cyrillic_200_check CHECK ((((VALUE)::text ~ '^[а-яёА-ЯЁ\s\-\.\,\:\;\(\)\[\]\/]+$'::text) AND ((VALUE)::text ~ '[а-яёА-ЯЁ]'::text)));


ALTER DOMAIN public.cyrillic_200 OWNER TO postgres;

--
-- TOC entry 914 (class 1247 OID 16817)
-- Name: cyrillic_30; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN public.cyrillic_30 AS character varying(30)
	CONSTRAINT cyrillic_30_check CHECK ((((VALUE)::text ~ '^[а-яёА-ЯЁ\s\-\.\,\:\;\(\)\[\]\/]+$'::text) AND ((VALUE)::text ~ '[а-яёА-ЯЁ]'::text)));


ALTER DOMAIN public.cyrillic_30 OWNER TO postgres;

--
-- TOC entry 910 (class 1247 OID 16814)
-- Name: cyrillic_35; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN public.cyrillic_35 AS character varying(35)
	CONSTRAINT cyrillic_35_check CHECK ((((VALUE)::text ~ '^[а-яёА-ЯЁ\s\-\.\,\:\;\(\)\[\]\/]+$'::text) AND ((VALUE)::text ~ '[а-яёА-ЯЁ]'::text)));


ALTER DOMAIN public.cyrillic_35 OWNER TO postgres;

--
-- TOC entry 881 (class 1247 OID 16661)
-- Name: cyrillic_50; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN public.cyrillic_50 AS character varying(50)
	CONSTRAINT cyrillic_50_check CHECK ((((VALUE)::text ~ '^[а-яёА-ЯЁ\s\-\.\,\:\;\(\)\[\]\/]+$'::text) AND ((VALUE)::text ~ '[а-яёА-ЯЁ]'::text)));


ALTER DOMAIN public.cyrillic_50 OWNER TO postgres;

--
-- TOC entry 885 (class 1247 OID 16664)
-- Name: cyrillic_numbers_200; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN public.cyrillic_numbers_200 AS character varying(200)
	CONSTRAINT cyrillic_numbers_200_check CHECK ((((VALUE)::text ~ '^[а-яёА-ЯЁ0-9\s\-\.\,\:\;\(\)\[\]\/]+$'::text) AND ((VALUE)::text ~ '[а-яёА-ЯЁ0-9]'::text)));


ALTER DOMAIN public.cyrillic_numbers_200 OWNER TO postgres;

--
-- TOC entry 926 (class 1247 OID 16826)
-- Name: cyrillic_numbers_50; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN public.cyrillic_numbers_50 AS character varying(50)
	CONSTRAINT cyrillic_numbers_50_check CHECK ((((VALUE)::text ~ '^[а-яёА-ЯЁ0-9\s\-\.\,\:\;\(\)\[\]\/]+$'::text) AND ((VALUE)::text ~ '[а-яёА-ЯЁ0-9]'::text)));


ALTER DOMAIN public.cyrillic_numbers_50 OWNER TO postgres;

--
-- TOC entry 922 (class 1247 OID 16823)
-- Name: email_text; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN public.email_text AS character varying(30)
	CONSTRAINT email_text_check CHECK ((((VALUE)::text ~ '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$'::text) AND (length((VALUE)::text) >= 5) AND ((VALUE)::text !~ '@.*@'::text)));


ALTER DOMAIN public.email_text OWNER TO postgres;

--
-- TOC entry 940 (class 1247 OID 16857)
-- Name: hash_text; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN public.hash_text AS character varying(30)
	CONSTRAINT hash_text_check CHECK (((VALUE)::text ~ '^[a-fA-F0-9]+$'::text));


ALTER DOMAIN public.hash_text OWNER TO postgres;

--
-- TOC entry 936 (class 1247 OID 16854)
-- Name: login_text; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN public.login_text AS character varying(30)
	CONSTRAINT login_text_check CHECK (((VALUE)::text ~ '^[a-zA-Z0-9]+$'::text));


ALTER DOMAIN public.login_text OWNER TO postgres;

--
-- TOC entry 906 (class 1247 OID 16791)
-- Name: mixed_lang_100; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN public.mixed_lang_100 AS character varying(100)
	CONSTRAINT mixed_lang_100_check CHECK ((((VALUE)::text ~ '^[а-яёА-ЯЁa-zA-Z0-9\s\-\.\,\:\;\(\)\[\]\/]+$'::text) AND ((VALUE)::text ~ '[а-яёА-ЯЁa-zA-Z0-9]'::text)));


ALTER DOMAIN public.mixed_lang_100 OWNER TO postgres;

--
-- TOC entry 899 (class 1247 OID 16777)
-- Name: mixed_lang_20; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN public.mixed_lang_20 AS character varying(20)
	CONSTRAINT mixed_lang_20_check CHECK ((((VALUE)::text ~ '^[а-яёА-ЯЁa-zA-Z0-9\s\-\.\,\:\;\(\)\[\]\/]+$'::text) AND ((VALUE)::text ~ '[а-яёА-ЯЁa-zA-Z0-9]'::text)));


ALTER DOMAIN public.mixed_lang_20 OWNER TO postgres;

--
-- TOC entry 962 (class 1247 OID 16968)
-- Name: mixed_lang_30; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN public.mixed_lang_30 AS character varying(30)
	CONSTRAINT mixed_lang_30_check CHECK ((((VALUE)::text ~ '^[а-яёА-ЯЁa-zA-Z0-9\s\-\.\,\:\;\(\)\[\]\/]+$'::text) AND ((VALUE)::text ~ '[а-яёА-ЯЁa-zA-Z0-9]'::text)));


ALTER DOMAIN public.mixed_lang_30 OWNER TO postgres;

--
-- TOC entry 918 (class 1247 OID 16820)
-- Name: phone_text; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN public.phone_text AS character varying(20)
	CONSTRAINT phone_text_check CHECK (((VALUE)::text ~ '^[0-9]+$'::text));


ALTER DOMAIN public.phone_text OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 240 (class 1259 OID 16957)
-- Name: Вектор угрозы; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Вектор угрозы" (
    "id_ВУ" integer NOT NULL,
    "Название" public.cyrillic_20 NOT NULL,
    "Описание" public.cyrillic_200
);


ALTER TABLE public."Вектор угрозы" OWNER TO postgres;

--
-- TOC entry 239 (class 1259 OID 16956)
-- Name: Вектор угрозы_id_ВУ_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Вектор угрозы_id_ВУ_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Вектор угрозы_id_ВУ_seq" OWNER TO postgres;

--
-- TOC entry 5100 (class 0 OID 0)
-- Dependencies: 239
-- Name: Вектор угрозы_id_ВУ_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Вектор угрозы_id_ВУ_seq" OWNED BY public."Вектор угрозы"."id_ВУ";


--
-- TOC entry 228 (class 1259 OID 16843)
-- Name: Должность; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Должность" (
    "id_Д" integer NOT NULL,
    "Название" public.cyrillic_30 NOT NULL,
    "Описание" public.cyrillic_200
);


ALTER TABLE public."Должность" OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 16842)
-- Name: Должность_id_Д_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Должность_id_Д_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Должность_id_Д_seq" OWNER TO postgres;

--
-- TOC entry 5101 (class 0 OID 0)
-- Dependencies: 227
-- Name: Должность_id_Д_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Должность_id_Д_seq" OWNED BY public."Должность"."id_Д";


--
-- TOC entry 220 (class 1259 OID 16670)
-- Name: Инструкции для системы; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Инструкции для системы" (
    "id_ИС" integer NOT NULL,
    "Описание" public.cyrillic_numbers_200 CONSTRAINT "Инструкции для сист_Описание_not_null" NOT NULL
);


ALTER TABLE public."Инструкции для системы" OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16669)
-- Name: Инструкции для системы_id_ИС_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Инструкции для системы_id_ИС_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Инструкции для системы_id_ИС_seq" OWNER TO postgres;

--
-- TOC entry 5102 (class 0 OID 0)
-- Dependencies: 219
-- Name: Инструкции для системы_id_ИС_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Инструкции для системы_id_ИС_seq" OWNED BY public."Инструкции для системы"."id_ИС";


--
-- TOC entry 232 (class 1259 OID 16889)
-- Name: Информационный актив; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Информационный актив" (
    "id_ИА" integer NOT NULL,
    "Название" public.mixed_lang_100 CONSTRAINT "Информационный акти_Название_not_null" NOT NULL,
    "Дата создания" date CONSTRAINT "Информационный_Дата создания_not_null" NOT NULL,
    "Описание" public.cyrillic_200,
    "Дата последнего изменения" date,
    "id_ТипИА" integer NOT NULL
);


ALTER TABLE public."Информационный актив" OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 16888)
-- Name: Информационный актив_id_ИА_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Информационный актив_id_ИА_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Информационный актив_id_ИА_seq" OWNER TO postgres;

--
-- TOC entry 5103 (class 0 OID 0)
-- Dependencies: 231
-- Name: Информационный актив_id_ИА_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Информационный актив_id_ИА_seq" OWNED BY public."Информационный актив"."id_ИА";


--
-- TOC entry 244 (class 1259 OID 17029)
-- Name: Инцидент; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Инцидент" (
    "id_И" integer NOT NULL,
    "Название" public.mixed_lang_100 NOT NULL,
    "id_У" integer NOT NULL,
    "id_С" integer NOT NULL,
    "id_ИА" integer NOT NULL,
    "Статус устранения" public.cyrillic_20 NOT NULL,
    "Дата обнаружения" date NOT NULL,
    "Дата устранения" date
);


ALTER TABLE public."Инцидент" OWNER TO postgres;

--
-- TOC entry 243 (class 1259 OID 17028)
-- Name: Инцидент_id_И_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Инцидент_id_И_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Инцидент_id_И_seq" OWNER TO postgres;

--
-- TOC entry 5104 (class 0 OID 0)
-- Dependencies: 243
-- Name: Инцидент_id_И_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Инцидент_id_И_seq" OWNED BY public."Инцидент"."id_И";


--
-- TOC entry 236 (class 1259 OID 16926)
-- Name: Меры устранения; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Меры устранения" (
    "id_МУ" integer NOT NULL,
    "id_ИС" integer NOT NULL,
    "Название" public.cyrillic_20 NOT NULL,
    "Описание" public.cyrillic_200,
    "Плановая дата устранения" date CONSTRAINT "Меры устранени_Плановая дата _not_null" NOT NULL,
    "Фактическая дата устранения" date CONSTRAINT "Меры устранени_Фактическая д_not_null" NOT NULL
);


ALTER TABLE public."Меры устранения" OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 16925)
-- Name: Меры устранения_id_МУ_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Меры устранения_id_МУ_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Меры устранения_id_МУ_seq" OWNER TO postgres;

--
-- TOC entry 5105 (class 0 OID 0)
-- Dependencies: 235
-- Name: Меры устранения_id_МУ_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Меры устранения_id_МУ_seq" OWNED BY public."Меры устранения"."id_МУ";


--
-- TOC entry 230 (class 1259 OID 16860)
-- Name: Ответственный сотрудник; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Ответственный сотрудник" (
    "id_С" integer NOT NULL,
    "Имя" public.cyrillic_50 NOT NULL,
    "Фамилия" public.cyrillic_50 CONSTRAINT "Ответственный сотруд_Фамилия_not_null" NOT NULL,
    "Отчество" public.cyrillic_50,
    "Дата рождения" date CONSTRAINT "Ответственный _Дата рождения_not_null" NOT NULL,
    "id_Д" integer NOT NULL,
    "id_П" integer NOT NULL,
    email public.email_text NOT NULL,
    "Номер телефона" public.phone_text CONSTRAINT "Ответственный _Номер телефон_not_null" NOT NULL,
    "Логин" public.login_text CONSTRAINT "Ответственный сотрудни_Логин_not_null" NOT NULL,
    "Хэш пароля" public.hash_text CONSTRAINT "Ответственный сот_Хэш пароля_not_null" NOT NULL
);


ALTER TABLE public."Ответственный сотрудник" OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 16859)
-- Name: Ответственный сотрудник_id_С_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Ответственный сотрудник_id_С_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Ответственный сотрудник_id_С_seq" OWNER TO postgres;

--
-- TOC entry 5106 (class 0 OID 0)
-- Dependencies: 229
-- Name: Ответственный сотрудник_id_С_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Ответственный сотрудник_id_С_seq" OWNED BY public."Ответственный сотрудник"."id_С";


--
-- TOC entry 226 (class 1259 OID 16829)
-- Name: Подразделение; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Подразделение" (
    "id_П" integer NOT NULL,
    "Название" public.cyrillic_30 NOT NULL,
    "Описание" public.cyrillic_200,
    "Адрес" public.cyrillic_numbers_50 NOT NULL,
    "Номер телефона" public.phone_text NOT NULL,
    email public.email_text NOT NULL
);


ALTER TABLE public."Подразделение" OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16828)
-- Name: Подразделение_id_П_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Подразделение_id_П_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Подразделение_id_П_seq" OWNER TO postgres;

--
-- TOC entry 5107 (class 0 OID 0)
-- Dependencies: 225
-- Name: Подразделение_id_П_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Подразделение_id_П_seq" OWNED BY public."Подразделение"."id_П";


--
-- TOC entry 234 (class 1259 OID 16907)
-- Name: Способ обнаружения; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Способ обнаружения" (
    "id_СО" integer NOT NULL,
    "Название" public.cyrillic_20 NOT NULL,
    "id_ТипСО" integer NOT NULL,
    "Дата последнего сканирования" date CONSTRAINT "Способ обнаруж_Дата последне_not_null" NOT NULL,
    "Дата последнего обнаружения" date CONSTRAINT "Способ обнару_Дата последне_not_null1" NOT NULL
);


ALTER TABLE public."Способ обнаружения" OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 16906)
-- Name: Способ обнаружения_id_СО_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Способ обнаружения_id_СО_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Способ обнаружения_id_СО_seq" OWNER TO postgres;

--
-- TOC entry 5108 (class 0 OID 0)
-- Dependencies: 233
-- Name: Способ обнаружения_id_СО_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Способ обнаружения_id_СО_seq" OWNED BY public."Способ обнаружения"."id_СО";


--
-- TOC entry 224 (class 1259 OID 16780)
-- Name: Тип ИА; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Тип ИА" (
    "id_ТипИА" integer NOT NULL,
    "Название" public.mixed_lang_20 NOT NULL,
    "Описание" public.cyrillic_200
);


ALTER TABLE public."Тип ИА" OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16779)
-- Name: Тип ИА_id_ТипИА_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Тип ИА_id_ТипИА_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Тип ИА_id_ТипИА_seq" OWNER TO postgres;

--
-- TOC entry 5109 (class 0 OID 0)
-- Dependencies: 223
-- Name: Тип ИА_id_ТипИА_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Тип ИА_id_ТипИА_seq" OWNED BY public."Тип ИА"."id_ТипИА";


--
-- TOC entry 222 (class 1259 OID 16745)
-- Name: Тип Способа обнаружения; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Тип Способа обнаружения" (
    "id_ТипСО" integer CONSTRAINT "Тип Способа обнаружен_id_ТипСО_not_null" NOT NULL,
    "Название" public.cyrillic_20 CONSTRAINT "Тип Способа обнаруж_Название_not_null" NOT NULL,
    "Описание" public.cyrillic_200
);


ALTER TABLE public."Тип Способа обнаружения" OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16744)
-- Name: Тип Способа обнаружения_id_ТипСО_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Тип Способа обнаружения_id_ТипСО_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Тип Способа обнаружения_id_ТипСО_seq" OWNER TO postgres;

--
-- TOC entry 5110 (class 0 OID 0)
-- Dependencies: 221
-- Name: Тип Способа обнаружения_id_ТипСО_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Тип Способа обнаружения_id_ТипСО_seq" OWNED BY public."Тип Способа обнаружения"."id_ТипСО";


--
-- TOC entry 238 (class 1259 OID 16946)
-- Name: Уровень критичности; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Уровень критичности" (
    "id_УК" integer NOT NULL,
    "Название" public.cyrillic_35 NOT NULL,
    "Описание" public.cyrillic_200
);


ALTER TABLE public."Уровень критичности" OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 16945)
-- Name: Уровень критичности_id_УК_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Уровень критичности_id_УК_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Уровень критичности_id_УК_seq" OWNER TO postgres;

--
-- TOC entry 5111 (class 0 OID 0)
-- Dependencies: 237
-- Name: Уровень критичности_id_УК_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Уровень критичности_id_УК_seq" OWNED BY public."Уровень критичности"."id_УК";


--
-- TOC entry 242 (class 1259 OID 16971)
-- Name: Уязвимость; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Уязвимость" (
    "id_У" integer NOT NULL,
    "Название" public.mixed_lang_30 NOT NULL,
    "Время события" timestamp without time zone NOT NULL,
    "id_МУ" integer NOT NULL,
    "id_УК" integer NOT NULL,
    "id_СО" integer NOT NULL,
    "id_ВУ" integer NOT NULL,
    "Дата регистрации" date NOT NULL,
    "Описание" public.cyrillic_200
);


ALTER TABLE public."Уязвимость" OWNER TO postgres;

--
-- TOC entry 241 (class 1259 OID 16970)
-- Name: Уязвимость_id_У_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Уязвимость_id_У_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Уязвимость_id_У_seq" OWNER TO postgres;

--
-- TOC entry 5112 (class 0 OID 0)
-- Dependencies: 241
-- Name: Уязвимость_id_У_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Уязвимость_id_У_seq" OWNED BY public."Уязвимость"."id_У";


--
-- TOC entry 4881 (class 2604 OID 16960)
-- Name: Вектор угрозы id_ВУ; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Вектор угрозы" ALTER COLUMN "id_ВУ" SET DEFAULT nextval('public."Вектор угрозы_id_ВУ_seq"'::regclass);


--
-- TOC entry 4875 (class 2604 OID 16846)
-- Name: Должность id_Д; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Должность" ALTER COLUMN "id_Д" SET DEFAULT nextval('public."Должность_id_Д_seq"'::regclass);


--
-- TOC entry 4871 (class 2604 OID 16673)
-- Name: Инструкции для системы id_ИС; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Инструкции для системы" ALTER COLUMN "id_ИС" SET DEFAULT nextval('public."Инструкции для системы_id_ИС_seq"'::regclass);


--
-- TOC entry 4877 (class 2604 OID 16892)
-- Name: Информационный актив id_ИА; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Информационный актив" ALTER COLUMN "id_ИА" SET DEFAULT nextval('public."Информационный актив_id_ИА_seq"'::regclass);


--
-- TOC entry 4883 (class 2604 OID 17032)
-- Name: Инцидент id_И; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Инцидент" ALTER COLUMN "id_И" SET DEFAULT nextval('public."Инцидент_id_И_seq"'::regclass);


--
-- TOC entry 4879 (class 2604 OID 16929)
-- Name: Меры устранения id_МУ; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Меры устранения" ALTER COLUMN "id_МУ" SET DEFAULT nextval('public."Меры устранения_id_МУ_seq"'::regclass);


--
-- TOC entry 4876 (class 2604 OID 16863)
-- Name: Ответственный сотрудник id_С; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Ответственный сотрудник" ALTER COLUMN "id_С" SET DEFAULT nextval('public."Ответственный сотрудник_id_С_seq"'::regclass);


--
-- TOC entry 4874 (class 2604 OID 16832)
-- Name: Подразделение id_П; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Подразделение" ALTER COLUMN "id_П" SET DEFAULT nextval('public."Подразделение_id_П_seq"'::regclass);


--
-- TOC entry 4878 (class 2604 OID 16910)
-- Name: Способ обнаружения id_СО; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Способ обнаружения" ALTER COLUMN "id_СО" SET DEFAULT nextval('public."Способ обнаружения_id_СО_seq"'::regclass);


--
-- TOC entry 4873 (class 2604 OID 16783)
-- Name: Тип ИА id_ТипИА; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Тип ИА" ALTER COLUMN "id_ТипИА" SET DEFAULT nextval('public."Тип ИА_id_ТипИА_seq"'::regclass);


--
-- TOC entry 4872 (class 2604 OID 16748)
-- Name: Тип Способа обнаружения id_ТипСО; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Тип Способа обнаружения" ALTER COLUMN "id_ТипСО" SET DEFAULT nextval('public."Тип Способа обнаружения_id_ТипСО_seq"'::regclass);


--
-- TOC entry 4880 (class 2604 OID 16949)
-- Name: Уровень критичности id_УК; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Уровень критичности" ALTER COLUMN "id_УК" SET DEFAULT nextval('public."Уровень критичности_id_УК_seq"'::regclass);


--
-- TOC entry 4882 (class 2604 OID 16974)
-- Name: Уязвимость id_У; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Уязвимость" ALTER COLUMN "id_У" SET DEFAULT nextval('public."Уязвимость_id_У_seq"'::regclass);


--
-- TOC entry 5090 (class 0 OID 16957)
-- Dependencies: 240
-- Data for Name: Вектор угрозы; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Вектор угрозы" ("id_ВУ", "Название", "Описание") FROM stdin;
1	Сетевой	Атака проводится через сетевое подключение
2	Локальный	Атака требует локального доступа к системе
3	Физический	Атака требует физического доступа к оборудованию
4	Социальный	Атака с использованием социальной инженерии
5	Смежный	Атака исходит от смежной доверенной системы
6	Удалённый	Атака проводится удалённо без учётных данных
7	Внутренний	Атака проводится сотрудником организации
8	Программный	Атака через вредоносное программное обеспечение
\.


--
-- TOC entry 5078 (class 0 OID 16843)
-- Dependencies: 228
-- Data for Name: Должность; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Должность" ("id_Д", "Название", "Описание") FROM stdin;
8	Системный администратор	Администрирование серверов и сетевого оборудования
9	Сетевой инженер	Проектирование и поддержка сетевой инфраструктуры
10	Специалист по ИБ	Мониторинг и реагирование на инциденты безопасности
11	Руководитель отдела ИБ	Управление отделом информационной безопасности
12	Аналитик ИБ	Анализ угроз и уязвимостей информационной безопасности
13	Разработчик ПО	Разработка и сопровождение программного обеспечения
14	Тестировщик ПО	Тестирование и контроль качества программного обеспечения
15	Системный аналитик	Анализ требований и проектирование информационных систем
16	Технический писатель	Разработка технической документации и инструкций
\.


--
-- TOC entry 5070 (class 0 OID 16670)
-- Dependencies: 220
-- Data for Name: Инструкции для системы; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Инструкции для системы" ("id_ИС", "Описание") FROM stdin;
1	Провести полное сканирование системы на наличие уязвимостей
2	Обновить антивирусное ПО до актуальной версии и запустить проверку
3	Проверить логи сервера на предмет подозрительной активности
4	Установить последние обновления безопасности для ОС
5	Настроить межсетевой экран для блокировки подозрительного трафика
6	Провести аудит учётных записей пользователей системы
7	Настроить резервное копирование критически важных данных
8	Проверить целостность системных файлов утилитой контроля
9	Обновить сигнатуры системы обнаружения вторжений
10	Провести анализ защищённости веб приложений
11	Настроить журналирование событий безопасности на сервере
12	Проверить настройки шифрования передаваемых данных
13	Обновить сертификаты безопасности веб сервера
14	Провести нагрузочное тестирование системы
15	Настроить двухфакторную аутентификацию для администраторов
16	Проверить права доступа к критическим файлам конфигурации
17	Обновить микрокод сетевого оборудования до актуальной версии
18	Провести анализ логов на предмет утечки данных
19	Настроить автоматическое оповещение о подозрительной активности
20	Проверить стойкость паролей учётных записей администраторов
21	Обновить политики безопасности в соответствии с регламентом 2024
22	Провести ревизию установленного программного обеспечения
23	Настроить фильтрацию входящего трафика по геолокации
24	Проверить конфигурацию виртуальных частных сетей
25	Обновить списки контроля доступа на сетевом оборудовании
26	Провести тестирование на проникновение внутренней сети
27	Настроить мониторинг доступности критических сервисов
28	Проверить корректность работы системы резервного копирования
29	Обновить документацию по восстановлению после сбоев
30	Провести инструктаж сотрудников по информационной безопасности
\.


--
-- TOC entry 5082 (class 0 OID 16889)
-- Dependencies: 232
-- Data for Name: Информационный актив; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Информационный актив" ("id_ИА", "Название", "Дата создания", "Описание", "Дата последнего изменения", "id_ТипИА") FROM stdin;
21	Сервер БД основной	2024-01-15	Основной сервер баз данных организации	2026-04-10	3
22	Сервер приложений 1	2024-03-20	Сервер для корпоративных приложений	2026-04-05	1
23	Веб сервер портала	2024-06-10	Веб сервер корпоративного портала	2026-03-28	1
24	Контроллер домена Active Directory	2024-01-10	Контроллер домена	2026-04-01	1
25	Файловый сервер	2024-02-15	Центральное файловое хранилище	2026-03-15	8
26	Почтовый сервер	2024-04-01	Сервер корпоративной электронной почты	2026-04-02	1
27	Маршрутизатор ядра	2023-11-01	Маршрутизатор ядра корпоративной сети	2026-01-15	4
28	Коммутатор основного ЦОД	2023-11-15	Центральный коммутатор центра обработки данных	2026-02-10	4
29	Межсетевой экран	2023-11-20	Межсетевой экран периметра сети	2026-03-20	4
30	VPN шлюз	2024-05-10	Шлюз для организации удалённого доступа	2026-04-12	4
31	АРМ директора	2025-01-20	Рабочая станция директора организации	2026-04-08	5
32	АРМ бухгалтера	2025-02-10	Рабочая станция главного бухгалтера	2026-04-14	5
33	АРМ администратора	2025-02-15	Рабочая станция системного администратора	2026-04-16	5
34	Виртуальный сервер DEV	2025-06-01	Виртуальный сервер среды разработки	2026-03-10	2
35	Виртуальный сервер TEST	2025-06-15	Виртуальный сервер среды тестирования	2026-03-12	2
36	Виртуальный сервер PROD	2025-07-01	Виртуальный сервер продуктивной среды	2026-04-18	2
37	СУБД Oracle основная	2023-05-20	Основная СУБД для финансовых систем	2026-04-20	3
38	СУБД PostgreSQL	2024-08-10	СУБД для веб приложений	2026-03-25	3
39	Хранилище резервных копий	2024-09-01	Сетевое хранилище для резервного копирования	2026-04-19	8
40	Облачный сервис AWS	2025-08-15	Облачная инфраструктура для резервного хранения	2026-04-10	7
41	Облачный сервис Azure	2025-10-01	Облачный сервис для тестовых сред	2026-03-30	7
42	Сервер мониторинга Zabbix	2025-03-10	Сервер системы мониторинга	2026-04-15	2
43	Сервер антивирусной защиты	2025-04-01	Сервер управления антивирусной защитой	2026-04-02	2
44	Сканер уязвимостей сервер	2025-11-15	Сервер для автоматического сканирования уязвимостей	2026-04-22	2
45	Сервер системы логирования	2026-01-20	Централизованный сервер сбора и анализа логов	2026-04-25	2
\.


--
-- TOC entry 5094 (class 0 OID 17029)
-- Dependencies: 244
-- Data for Name: Инцидент; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Инцидент" ("id_И", "Название", "id_У", "id_С", "id_ИА", "Статус устранения", "Дата обнаружения", "Дата устранения") FROM stdin;
31	Критическая уязвимость Windows Server	99	35	21	Устранён	2026-04-20	2026-05-09
32	Устаревшие базы антивируса на сервере	101	36	22	Устранён	2026-04-22	2026-05-12
33	SQL Injection в форме портала	104	35	23	Устранён	2026-04-25	2026-06-05
34	Сертификат SSL истёк	114	42	23	Устранён	2026-05-05	2026-06-20
35	Фишинговая рассылка на сотрудников	107	37	33	Устранён	2026-04-28	2026-07-08
36	Вредоносное ПО на рабочей станции	113	35	32	Устранён	2026-05-04	2026-05-25
37	Неавторизованный вход в нерабочее время	110	43	25	Устранён	2026-05-01	2026-05-28
38	Подозрительный исходящий трафик	102	36	24	Устранён	2026-04-23	2026-05-17
39	Устаревшая версия OpenSSL	123	40	23	Устранён	2026-05-14	2026-07-05
40	Открытый порт RDP 3389	103	38	24	Устранён	2026-04-24	2026-05-17
41	CVE-2024-5678 Apache уязвимость	105	39	22	Устранён	2026-04-26	2026-06-01
42	DDoS атака на веб портал	109	38	23	Устранён	2026-04-30	2026-05-28
43	Небезопасный протокол Telnet	115	39	27	Устранён	2026-05-06	2026-06-05
44	XSS уязвимость на портале	118	40	23	Устранён	2026-05-09	2026-06-01
45	Слабые пароли пользователей	106	43	31	Устранён	2026-04-27	2026-05-25
46	CVE-2024-2345 Linux Kernel уязвимость	100	35	37	В процессе	2026-04-21	\N
47	Утечка данных через корпоративную почту	111	36	26	В процессе	2026-05-02	\N
48	CVE-2024-7890 Oracle DB уязвимость	108	37	38	В процессе	2026-04-29	\N
49	Подбор пароля администратора	117	38	21	В процессе	2026-05-08	\N
50	CVE-2024-2222 VMware ESXi уязвимость	122	35	35	В процессе	2026-05-13	\N
51	Утечка через сетевой принтер	126	41	39	В процессе	2026-05-17	\N
52	CVE-2024-9012 Cisco IOS уязвимость	112	31	28	В процессе	2026-05-03	\N
53	CVE-2024-1111 Exchange уязвимость	119	35	26	В процессе	2026-05-10	\N
54	Несанкционированное ПО на АРМ	124	37	33	В процессе	2026-05-15	\N
55	Недостаточная фильтрация трафика	128	38	29	В процессе	2026-05-19	\N
56	CVE-2024-1234 второе обнаружение	99	32	42	Новый	2026-05-20	\N
57	Отказ в обслуживании DNS сервера	121	33	27	Новый	2026-05-12	\N
58	CVE-2024-3456 PostgreSQL уязвимость	116	39	38	Новый	2026-05-07	\N
59	CVE-2024-3333 nginx уязвимость	125	40	22	Новый	2026-05-16	\N
60	CVE-2024-4444 Python requests	127	41	45	Новый	2026-05-18	\N
\.


--
-- TOC entry 5086 (class 0 OID 16926)
-- Dependencies: 236
-- Data for Name: Меры устранения; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Меры устранения" ("id_МУ", "id_ИС", "Название", "Описание", "Плановая дата устранения", "Фактическая дата устранения") FROM stdin;
11	1	Обновление ОС	Установка обновлений безопасности сервера	2026-05-10	2026-05-09
12	2	Обновление антивирус	Обновление антивирусных баз и полное сканирование	2026-05-12	2026-05-12
13	3	Анализ логов	Детальный анализ системных логов сервера	2026-05-15	2026-05-14
14	4	Установка патча	Установка патча безопасности ядра системы	2026-05-20	2026-05-22
15	5	Настройка экрана	Корректировка правил межсетевого экрана	2026-05-18	2026-05-17
16	6	Смена паролей	Принудительная смена паролей администраторов	2026-05-25	2026-05-25
17	7	Блокировка адресов	Блокировка подозрительных адресов на экране	2026-05-28	2026-05-28
18	8	Обновление ПО	Обновление корпоративного прикладного обеспечения	2026-06-01	2026-06-01
19	9	Настройка доступа	Перенастройка каналов удалённого доступа	2026-06-05	2026-06-05
20	10	Восстановление БД	Восстановление данных из резервной копии	2026-05-30	2026-05-29
21	11	Изоляция хоста	Отключение скомпрометированного хоста от сети	2026-06-10	2026-06-10
22	12	Обновление защиты	Обновление сигнатур системы обнаружения вторжений	2026-06-12	2026-06-12
23	13	Аудит доступа	Ревизия прав доступа к критическим ресурсам	2026-06-15	2026-06-15
24	14	Шифрование данных	Включение шифрования на файловом сервере	2026-06-18	2026-06-18
25	15	Замена сертификатов	Замена истекших сертификатов веб сервера	2026-06-20	2026-06-20
26	16	Настройка контроля	Добавление новых метрик в систему контроля	2026-06-22	2026-06-22
27	17	Защита от утечек	Внедрение системы предотвращения утечек данных	2026-07-01	2026-07-01
28	18	Документирование	Актуализация регламентов реагирования	2026-06-25	2026-06-25
29	19	Тестирование защиты	Проведение внутреннего тестирования безопасности	2026-07-10	2026-07-10
30	20	Защита веб узла	Внедрение и настройка защиты веб приложений	2026-07-15	2026-07-15
31	21	Обновление прошивки	Обновление встроенного обеспечения оборудования	2026-07-20	2026-07-20
32	22	Сегментация сети	Разделение сети на изолированные сегменты	2026-08-01	2026-08-01
33	23	Двойная проверка	Внедрение многофакторной проверки пользователей	2026-08-15	2026-08-15
34	24	Очистка реестра	Очистка системного реестра от старых записей	2026-06-30	2026-06-30
35	25	Обновление среды	Установка актуальной версии среды исполнения	2026-07-05	2026-07-05
36	26	Фильтрация почты	Настройка фильтрации спама и фишинга	2026-07-08	2026-07-08
37	27	Установка агента	Установка агента контроля на новые серверы	2026-07-12	2026-07-12
38	28	Обновление языка	Обновление интерпретатора языка программирования	2026-07-18	2026-07-18
39	29	Проверка целостности	Проверка целостности файлов приложений	2026-07-22	2026-07-22
40	30	Архивация логов	Перемещение старых логов в архивное хранилище	2026-07-25	2026-07-25
\.


--
-- TOC entry 5080 (class 0 OID 16860)
-- Dependencies: 230
-- Data for Name: Ответственный сотрудник; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Ответственный сотрудник" ("id_С", "Имя", "Фамилия", "Отчество", "Дата рождения", "id_Д", "id_П", email, "Номер телефона", "Логин", "Хэш пароля") FROM stdin;
31	Иван	Петров	Сергеевич	1990-03-15	8	2	ipetrov@company.ru	79991234567	ivanpetrov	a1b2c3d4e5f6a7b8c9d0e1f2
32	Алексей	Сидоров	Иванович	1988-07-22	9	2	asidorov@company.ru	79992345678	alexsidorov	b2c3d4e5f6a7b8c9d0e1f2a3
33	Роман	Соколов	Михайлович	1983-03-19	8	2	rsokolov@company.ru	79994567891	romansokolov	b4c5d6e7f8a9b0c1d2e3f4a5
34	Павел	Морозов	Александрович	1989-10-15	9	2	pmorozov@company.ru	79992345679	pavelmorozov	f2a3b4c5d6e7f8a9b0c1d2e3
35	Мария	Козлова	Александровна	1992-11-08	10	1	mkozlova@company.ru	79993456789	mariakozlova	c3d4e5f6a7b8c9d0e1f2a3b4
36	Елена	Морозова	Дмитриевна	1995-09-14	11	1	emorozova@company.ru	79995678901	elenamorozova	e5f6a7b8c9d0e1f2a3b4c5d6
37	Дмитрий	Новиков	Павлович	1985-05-30	12	1	dnovikov@company.ru	79994567890	dmitrynovikov	d4e5f6a7b8c9d0e1f2a3b4c5
38	Анна	Фёдорова	Сергеевна	1994-02-28	10	1	afedorova@company.ru	79991234568	annafedorova	e1f2a3b4c5d6e7f8a9b0c1d2
39	Виктор	Козлов	Борисович	1982-05-14	11	1	vkozlov@company.ru	79996789013	viktorkozlov	d6e7f8a9b0c1d2e3f4a5b6c7
40	Игорь	Егоров	Станиславович	1981-01-30	12	1	iegorov@company.ru	79998901235	igoregorov	f8a9b0c1d2e3f4a5b6c7d8e9
41	Владимир	Григорьев	Олегович	1980-08-20	10	1	vgrigoriev@company.ru	79992345680	vladimirgrigor	d2e3f4a5b6c7d8e9f0a1b2c3
42	Михаил	Фролов	Аркадьевич	1984-10-28	11	1	mfrolov@company.ru	79996789014	mikhailfrolov	b6c7d8e9f0a1b2c3d4e5f6a7
43	Кристина	Захарова	Данииловна	1997-05-16	12	1	kzakharova@company.ru	79997890125	kristinazakhar	c7d8e9f0a1b2c3d4e5f6a7b8
44	Андрей	Волков	Николаевич	1987-01-25	13	6	avolkov@company.ru	79996789012	andreyvolkov	f6a7b8c9d0e1f2a3b4c5d6e7
45	Екатерина	Иванова	Денисовна	1996-07-07	13	6	eivanova@company.ru	79993456780	ekaterinaivanova	a3b4c5d6e7f8a9b0c1d2e3f4
46	Сергей	Кузнецов	Андреевич	1986-12-03	14	6	skuznetsov@company.ru	79998901234	sergeykuznetsov	b8c9d0e1f2a3b4c5d6e7f8a9
47	Ольга	Смирнова	Игоревна	1993-06-18	14	7	osmirnova@company.ru	79997890123	olgasmirova	a7b8c9d0e1f2a3b4c5d6e7f8
48	Юлия	Лебедева	Анатольевна	1997-11-29	14	7	ylebedeva@company.ru	79995678902	yulialebedeva	c5d6e7f8a9b0c1d2e3f4a5b6
49	Дарья	Новикова	Евгеньевна	1998-09-03	14	6	dnovikova@company.ru	79997890124	darianovikova	e7f8a9b0c1d2e3f4a5b6c7d8
50	Артём	Макаров	Тимофеевич	1987-07-08	14	7	amakarov@company.ru	79994567892	artemmakarov	f4a5b6c7d8e9f0a1b2c3d4e5
51	Наталья	Белова	Кирилловна	2000-01-12	13	6	nbelova@company.ru	79995678903	nataliabelova	a5b6c7d8e9f0a1b2c3d4e5f6
52	Денис	Богданов	Викторович	1983-06-27	13	6	dbogdanov@company.ru	79990123458	denisbogdanov	f0a1b2c3d4e5f6a7b8c9d0e1
53	Татьяна	Попова	Владимировна	1991-04-22	15	8	tpopova@company.ru	79999012345	tatianapopova	c9d0e1f2a3b4c5d6e7f8a9b0
54	Светлана	Алексеева	Романовна	1995-06-25	15	8	salekseeva@company.ru	79999012346	svetlanaalekseeva	a9b0c1d2e3f4a5b6c7d8e9f0
55	Глеб	Степанов	Фёдорович	1989-03-23	15	8	gstepanov@company.ru	79998901236	glebstepanov	d8e9f0a1b2c3d4e5f6a7b8c9
56	Николай	Васильев	Петрович	1984-08-11	16	6	nvasiliev@company.ru	79990123456	nikolayvasiliev	d0e1f2a3b4c5d6e7f8a9b0c1
57	Константин	Павлов	Валерьевич	1986-12-17	16	1	kpavlov@company.ru	79990123457	konstantinpavlov	b0c1d2e3f4a5b6c7d8e9f0a1
58	Валерия	Максимова	Артёмовна	1996-11-09	16	1	vmaksimova@company.ru	79999012347	valeriamaksimova	e9f0a1b2c3d4e5f6a7b8c9d0
59	Алёна	Титова	Ильинична	1999-04-05	9	2	atitova@company.ru	79991234569	alenatitova	c1d2e3f4a5b6c7d8e9f0a1b2
60	Николай	Васильев	Петрович	1984-08-11	13	6	nvasiliev2@company.ru	79990123459	nikolayvasiliev2	d0e1f2a3b4c5d6e7f8a9b0c2
\.


--
-- TOC entry 5076 (class 0 OID 16829)
-- Dependencies: 226
-- Data for Name: Подразделение; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Подразделение" ("id_П", "Название", "Описание", "Адрес", "Номер телефона", email) FROM stdin;
1	Отдел ИБ	Отдел информационной безопасности	ул Ленина 15 кабинет 301	83831234567	security@company.ru
2	ИТ отдел	Отдел информационных технологий	ул Ленина 15 кабинет 205	83831234568	it@company.ru
3	Отдел кадров	Отдел управления персоналом	ул Ленина 15 кабинет 101	83831234569	hr@company.ru
4	Юридический отдел	Правовое сопровождение деятельности	ул Ленина 15 кабинет 210	83831234570	legal@company.ru
5	Финансовый отдел	Бухгалтерский учёт и финансовое планирование	ул Ленина 15 кабинет 305	83831234571	finance@company.ru
6	Отдел разработки	Разработка и сопровождение программных продуктов	ул Ленина 17 этаж 3	83831234572	dev@company.ru
7	Отдел тестирования	Контроль качества программного обеспечения	ул Ленина 17 этаж 4	83831234573	qa@company.ru
8	Аналитический отдел	Системный анализ и проектирование	ул Ленина 17 кабинет 201	83831234574	analytics@company.ru
\.


--
-- TOC entry 5084 (class 0 OID 16907)
-- Dependencies: 234
-- Data for Name: Способ обнаружения; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Способ обнаружения" ("id_СО", "Название", "id_ТипСО", "Дата последнего сканирования", "Дата последнего обнаружения") FROM stdin;
12	Сканер уязвимостей	4	2026-04-15	2026-04-20
13	Сканер портов	4	2026-04-17	2026-04-22
14	Ручной аудит кода	5	2026-04-10	2026-04-19
15	Ручной пентест	5	2026-04-12	2026-04-18
16	Анализ логов сервера	6	2026-04-20	2026-04-23
17	Анализ логов сети	6	2026-04-21	2026-04-24
18	Мониторинг событий	6	2026-04-22	2026-04-25
19	Система ОВ	7	2026-04-20	2026-04-26
20	Система ПВ	7	2026-04-21	2026-04-27
21	Внешний аудит сети	8	2026-03-15	2026-04-10
22	Анализатор трафика	9	2026-04-18	2026-04-28
\.


--
-- TOC entry 5074 (class 0 OID 16780)
-- Dependencies: 224
-- Data for Name: Тип ИА; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Тип ИА" ("id_ТипИА", "Название", "Описание") FROM stdin;
1	Сервер физический	Физический сервер в стойке
2	Сервер виртуальный	Виртуальная машина на гипервизоре
3	База данных	Система управления базами данных
4	Сетевое оборудование	Маршрутизаторы и коммутаторы
5	АРМ сотрудника	Автоматизированное рабочее место
6	Прикладное ПО	Прикладное программное обеспечение
7	Облачный сервис	Сервис размещённый в облачной инфраструктуре
8	Хранилище данных	Сетевое или локальное файловое хранилище
\.


--
-- TOC entry 5072 (class 0 OID 16745)
-- Dependencies: 222
-- Data for Name: Тип Способа обнаружения; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Тип Способа обнаружения" ("id_ТипСО", "Название", "Описание") FROM stdin;
4	Автосканирование	Обнаружение специализированным программным обеспечением
5	Ручная проверка	Обнаружение в ходе ручного аудита или пентеста
6	Мониторинг логов	Обнаружение при анализе системных журналов
7	Система оповещения	Обнаружение через систему обнаружения вторжений или систему предотвращения вторжений
8	Внешний аудит	Обнаружение сторонними специалистами
9	Автоанализ	Обнаружение с помощью средств анализа трафика
\.


--
-- TOC entry 5088 (class 0 OID 16946)
-- Dependencies: 238
-- Data for Name: Уровень критичности; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Уровень критичности" ("id_УК", "Название", "Описание") FROM stdin;
1	Критический	Требует немедленного реагирования в течение часа
2	Высокий	Требует реагирования в течение суток
3	Средний	Требует реагирования в течение трёх дней
4	Низкий	Требует реагирования в течение недели
5	Информационный	Не требует реагирования, носит справочный характер
\.


--
-- TOC entry 5092 (class 0 OID 16971)
-- Dependencies: 242
-- Data for Name: Уязвимость; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Уязвимость" ("id_У", "Название", "Время события", "id_МУ", "id_УК", "id_СО", "id_ВУ", "Дата регистрации", "Описание") FROM stdin;
99	CVE-2024-1234 Windows Server	2026-04-20 10:30:00	11	1	12	1	2026-04-20	Критическая уязвимость с удалённым выполнением кода
100	CVE-2024-2345 Linux Kernel	2026-04-21 14:15:00	14	1	12	2	2026-04-21	Уязвимость ядра с повышением привилегий до уровня суперпользователя
101	Устаревшие базы антивируса	2026-04-22 08:45:00	12	2	13	4	2026-04-22	Антивирусные базы не обновлялись более месяца на сервере
102	Подозрительный трафик	2026-04-23 16:00:00	15	2	14	1	2026-04-23	Обнаружен аномальный исходящий трафик на внешний адрес
103	Открытый порт RDP 3389	2026-04-24 11:30:00	15	2	15	1	2026-04-24	Порт доступен из внешней сети без ограничений
104	SQL Injection на портале	2026-04-25 09:00:00	19	1	13	1	2026-04-25	Обнаружена уязвимость инъекции в форме обратной связи портала
105	CVE-2024-5678 Apache httpd	2026-04-26 13:20:00	18	2	12	1	2026-04-26	Уязвимость в веб сервере
106	Слабые пароли учётных записей	2026-04-27 10:10:00	16	3	13	3	2026-04-27	Обнаружены учётные записи пользователей со стандартными паролями
107	Фишинговая рассылка	2026-04-28 07:30:00	36	3	22	4	2026-04-28	Зафиксирована массовая фишинговая рассылка на корпоративную почту
108	CVE-2024-7890 Oracle DB	2026-04-29 15:45:00	18	1	12	1	2026-04-29	Критическая уязвимость в СУБД
109	DDoS атака на портал	2026-04-30 12:00:00	17	2	16	1	2026-04-30	Зафиксирована распределённая атака на отказ в обслуживании веб портала
110	Неавторизованный вход	2026-05-01 03:15:00	16	1	14	1	2026-05-01	Обнаружен вход в систему администрирования в нерабочее время
111	Утечка данных через email	2026-05-02 14:50:00	27	2	18	3	2026-05-02	Обнаружена отправка конфиденциальных данных на внешний почтовый адрес
112	CVE-2024-9012 Cisco IOS	2026-05-03 09:30:00	31	1	12	1	2026-05-03	Уязвимость в операционной системе
113	Вредоносное ПО на АРМ	2026-05-04 11:00:00	12	1	21	8	2026-05-04	Обнаружен троян удалённого доступа на рабочей станции бухгалтера
114	Сертификат SSL истёк	2026-05-05 08:20:00	25	3	20	6	2026-05-05	Истёк сертификат корпоративного портала для внешних пользователей
115	Небезопасный протокол Telnet	2026-05-06 16:40:00	19	3	14	5	2026-05-06	Обнаружено использование небезопасного протокола на сетевом оборудовании
116	CVE-2024-3456 PostgreSQL	2026-05-07 11:10:00	14	2	12	2	2026-05-07	Уязвимость в системе управления базами данных
117	Подбор пароля администратора	2026-05-08 02:30:00	17	2	16	1	2026-05-08	Зафиксированы множественные попытки подбора пароля учётной записи администратора
118	XSS уязвимость на портале	2026-05-09 13:55:00	18	3	14	1	2026-05-09	Обнаружена межсайтовая скриптовая уязвимость на странице профиля пользователя
119	CVE-2024-1111 Exchange	2026-05-10 09:00:00	11	1	12	1	2026-05-10	Критическая уязвимость в почтовом сервере
120	Недостаточное журналирование	2026-05-11 15:20:00	26	4	13	5	2026-05-11	Отсутствует журналирование действий администраторов в критических системах
121	Отказ в обслуживании DNS	2026-05-12 18:30:00	17	2	17	1	2026-05-12	Зафиксирована атака на сервер организации с отказом в обслуживании
122	CVE-2024-2222 VMware ESXi	2026-05-13 12:00:00	14	1	12	2	2026-05-13	Уязвимость выхода из виртуальной среды в гипервизоре
123	Устаревшая версия OpenSSL	2026-05-14 10:45:00	35	2	12	5	2026-05-14	Обнаружена устаревшая версия библиотеки на веб сервере
124	Несанкционированное ПО	2026-05-15 14:10:00	34	4	17	7	2026-05-15	Обнаружено неутверждённое программное обеспечение на рабочей станции
125	CVE-2024-3333 nginx	2026-05-16 11:25:00	18	3	12	1	2026-05-16	Уязвимость отказа в обслуживании веб сервера
126	Утечка данных через принтер	2026-05-17 09:50:00	24	3	18	3	2026-05-17	Обнаружена печать конфиденциальных документов без авторизации
127	CVE-2024-4444 Python requests	2026-05-18 16:30:00	38	3	12	8	2026-05-18	Уязвимость подделки запросов в библиотеке
128	Недостаточная фильтрация	2026-05-19 13:15:00	30	2	22	1	2026-05-19	Отсутствует фильтрация входящего трафика на уровне веб приложений
\.


--
-- TOC entry 5113 (class 0 OID 0)
-- Dependencies: 239
-- Name: Вектор угрозы_id_ВУ_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Вектор угрозы_id_ВУ_seq"', 8, true);


--
-- TOC entry 5114 (class 0 OID 0)
-- Dependencies: 227
-- Name: Должность_id_Д_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Должность_id_Д_seq"', 16, true);


--
-- TOC entry 5115 (class 0 OID 0)
-- Dependencies: 219
-- Name: Инструкции для системы_id_ИС_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Инструкции для системы_id_ИС_seq"', 30, true);


--
-- TOC entry 5116 (class 0 OID 0)
-- Dependencies: 231
-- Name: Информационный актив_id_ИА_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Информационный актив_id_ИА_seq"', 45, true);


--
-- TOC entry 5117 (class 0 OID 0)
-- Dependencies: 243
-- Name: Инцидент_id_И_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Инцидент_id_И_seq"', 60, true);


--
-- TOC entry 5118 (class 0 OID 0)
-- Dependencies: 235
-- Name: Меры устранения_id_МУ_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Меры устранения_id_МУ_seq"', 40, true);


--
-- TOC entry 5119 (class 0 OID 0)
-- Dependencies: 229
-- Name: Ответственный сотрудник_id_С_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Ответственный сотрудник_id_С_seq"', 60, true);


--
-- TOC entry 5120 (class 0 OID 0)
-- Dependencies: 225
-- Name: Подразделение_id_П_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Подразделение_id_П_seq"', 8, true);


--
-- TOC entry 5121 (class 0 OID 0)
-- Dependencies: 233
-- Name: Способ обнаружения_id_СО_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Способ обнаружения_id_СО_seq"', 22, true);


--
-- TOC entry 5122 (class 0 OID 0)
-- Dependencies: 223
-- Name: Тип ИА_id_ТипИА_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Тип ИА_id_ТипИА_seq"', 8, true);


--
-- TOC entry 5123 (class 0 OID 0)
-- Dependencies: 221
-- Name: Тип Способа обнаружения_id_ТипСО_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Тип Способа обнаружения_id_ТипСО_seq"', 9, true);


--
-- TOC entry 5124 (class 0 OID 0)
-- Dependencies: 237
-- Name: Уровень критичности_id_УК_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Уровень критичности_id_УК_seq"', 5, true);


--
-- TOC entry 5125 (class 0 OID 0)
-- Dependencies: 241
-- Name: Уязвимость_id_У_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Уязвимость_id_У_seq"', 128, true);


--
-- TOC entry 4905 (class 2606 OID 16966)
-- Name: Вектор угрозы Вектор угрозы_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Вектор угрозы"
    ADD CONSTRAINT "Вектор угрозы_pkey" PRIMARY KEY ("id_ВУ");


--
-- TOC entry 4893 (class 2606 OID 16852)
-- Name: Должность Должность_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Должность"
    ADD CONSTRAINT "Должность_pkey" PRIMARY KEY ("id_Д");


--
-- TOC entry 4885 (class 2606 OID 16679)
-- Name: Инструкции для системы Инструкции для системы_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Инструкции для системы"
    ADD CONSTRAINT "Инструкции для системы_pkey" PRIMARY KEY ("id_ИС");


--
-- TOC entry 4897 (class 2606 OID 16900)
-- Name: Информационный актив Информационный актив_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Информационный актив"
    ADD CONSTRAINT "Информационный актив_pkey" PRIMARY KEY ("id_ИА");


--
-- TOC entry 4909 (class 2606 OID 17043)
-- Name: Инцидент Инцидент_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Инцидент"
    ADD CONSTRAINT "Инцидент_pkey" PRIMARY KEY ("id_И");


--
-- TOC entry 4901 (class 2606 OID 16938)
-- Name: Меры устранения Меры устранения_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Меры устранения"
    ADD CONSTRAINT "Меры устранения_pkey" PRIMARY KEY ("id_МУ");


--
-- TOC entry 4895 (class 2606 OID 16877)
-- Name: Ответственный сотрудник Ответственный сотрудник_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Ответственный сотрудник"
    ADD CONSTRAINT "Ответственный сотрудник_pkey" PRIMARY KEY ("id_С");


--
-- TOC entry 4891 (class 2606 OID 16841)
-- Name: Подразделение Подразделение_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Подразделение"
    ADD CONSTRAINT "Подразделение_pkey" PRIMARY KEY ("id_П");


--
-- TOC entry 4899 (class 2606 OID 16919)
-- Name: Способ обнаружения Способ обнаружения_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Способ обнаружения"
    ADD CONSTRAINT "Способ обнаружения_pkey" PRIMARY KEY ("id_СО");


--
-- TOC entry 4889 (class 2606 OID 16789)
-- Name: Тип ИА Тип ИА_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Тип ИА"
    ADD CONSTRAINT "Тип ИА_pkey" PRIMARY KEY ("id_ТипИА");


--
-- TOC entry 4887 (class 2606 OID 16754)
-- Name: Тип Способа обнаружения Тип Способа обнаружения_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Тип Способа обнаружения"
    ADD CONSTRAINT "Тип Способа обнаружения_pkey" PRIMARY KEY ("id_ТипСО");


--
-- TOC entry 4903 (class 2606 OID 16955)
-- Name: Уровень критичности Уровень критичности_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Уровень критичности"
    ADD CONSTRAINT "Уровень критичности_pkey" PRIMARY KEY ("id_УК");


--
-- TOC entry 4907 (class 2606 OID 16986)
-- Name: Уязвимость Уязвимость_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Уязвимость"
    ADD CONSTRAINT "Уязвимость_pkey" PRIMARY KEY ("id_У");


--
-- TOC entry 4915 (class 2606 OID 17002)
-- Name: Уязвимость fk_ВУ_У; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Уязвимость"
    ADD CONSTRAINT "fk_ВУ_У" FOREIGN KEY ("id_ВУ") REFERENCES public."Вектор угрозы"("id_ВУ");


--
-- TOC entry 4910 (class 2606 OID 16878)
-- Name: Ответственный сотрудник fk_Д_ОС; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Ответственный сотрудник"
    ADD CONSTRAINT "fk_Д_ОС" FOREIGN KEY ("id_Д") REFERENCES public."Должность"("id_Д");


--
-- TOC entry 4919 (class 2606 OID 17054)
-- Name: Инцидент fk_ИА_И; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Инцидент"
    ADD CONSTRAINT "fk_ИА_И" FOREIGN KEY ("id_ИА") REFERENCES public."Информационный актив"("id_ИА");


--
-- TOC entry 4914 (class 2606 OID 16939)
-- Name: Меры устранения fk_МУ_ИДС; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Меры устранения"
    ADD CONSTRAINT "fk_МУ_ИДС" FOREIGN KEY ("id_ИС") REFERENCES public."Инструкции для системы"("id_ИС");


--
-- TOC entry 4916 (class 2606 OID 16987)
-- Name: Уязвимость fk_МУ_У; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Уязвимость"
    ADD CONSTRAINT "fk_МУ_У" FOREIGN KEY ("id_МУ") REFERENCES public."Меры устранения"("id_МУ");


--
-- TOC entry 4920 (class 2606 OID 17049)
-- Name: Инцидент fk_ОС_И; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Инцидент"
    ADD CONSTRAINT "fk_ОС_И" FOREIGN KEY ("id_С") REFERENCES public."Ответственный сотрудник"("id_С");


--
-- TOC entry 4911 (class 2606 OID 16883)
-- Name: Ответственный сотрудник fk_П_ОС; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Ответственный сотрудник"
    ADD CONSTRAINT "fk_П_ОС" FOREIGN KEY ("id_П") REFERENCES public."Подразделение"("id_П");


--
-- TOC entry 4917 (class 2606 OID 16997)
-- Name: Уязвимость fk_СО_У; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Уязвимость"
    ADD CONSTRAINT "fk_СО_У" FOREIGN KEY ("id_СО") REFERENCES public."Способ обнаружения"("id_СО");


--
-- TOC entry 4912 (class 2606 OID 16901)
-- Name: Информационный актив fk_ТИА_ИА; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Информационный актив"
    ADD CONSTRAINT "fk_ТИА_ИА" FOREIGN KEY ("id_ТипИА") REFERENCES public."Тип ИА"("id_ТипИА");


--
-- TOC entry 4913 (class 2606 OID 16920)
-- Name: Способ обнаружения fk_ТСО_СО; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Способ обнаружения"
    ADD CONSTRAINT "fk_ТСО_СО" FOREIGN KEY ("id_ТипСО") REFERENCES public."Тип Способа обнаружения"("id_ТипСО");


--
-- TOC entry 4921 (class 2606 OID 17044)
-- Name: Инцидент fk_У_И; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Инцидент"
    ADD CONSTRAINT "fk_У_И" FOREIGN KEY ("id_У") REFERENCES public."Уязвимость"("id_У");


--
-- TOC entry 4918 (class 2606 OID 16992)
-- Name: Уязвимость fk_УК_У; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Уязвимость"
    ADD CONSTRAINT "fk_УК_У" FOREIGN KEY ("id_УК") REFERENCES public."Уровень критичности"("id_УК");


-- Completed on 2026-05-03 16:14:55

--
-- PostgreSQL database dump complete
--

\unrestrict NPnM8cW1ZRcR6QbAK2zyMUdeBrGeOcYL0XQMTsAZ9lcoKT5UGD71aQl2DcPYNfn

