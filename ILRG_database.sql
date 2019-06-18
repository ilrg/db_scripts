--
-- PostgreSQL database dump
--

-- Dumped from database version 10.6
-- Dumped by pg_dump version 10.7

-- Started on 2019-06-18 16:37:14

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 297 (class 1259 OID 24733)
-- Name: accesses; Type: TABLE; Schema: public; Owner: ilrg_admin
--

CREATE TABLE public.accesses (
    id integer NOT NULL,
    code character varying,
    accesses character varying
);


ALTER TABLE public.accesses OWNER TO ilrg_admin;

--
-- TOC entry 296 (class 1259 OID 24731)
-- Name: accesses_id_seq; Type: SEQUENCE; Schema: public; Owner: ilrg_admin
--

CREATE SEQUENCE public.accesses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.accesses_id_seq OWNER TO ilrg_admin;

--
-- TOC entry 5989 (class 0 OID 0)
-- Dependencies: 296
-- Name: accesses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilrg_admin
--

ALTER SEQUENCE public.accesses_id_seq OWNED BY public.accesses.id;


--
-- TOC entry 215 (class 1259 OID 17926)
-- Name: age_range; Type: TABLE; Schema: public; Owner: ilrg_admin
--

CREATE TABLE public.age_range (
    id integer NOT NULL,
    code character varying,
    age_range character varying
);


ALTER TABLE public.age_range OWNER TO ilrg_admin;

--
-- TOC entry 214 (class 1259 OID 17924)
-- Name: age_range_id_seq; Type: SEQUENCE; Schema: public; Owner: ilrg_admin
--

CREATE SEQUENCE public.age_range_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.age_range_id_seq OWNER TO ilrg_admin;

--
-- TOC entry 5990 (class 0 OID 0)
-- Dependencies: 214
-- Name: age_range_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilrg_admin
--

ALTER SEQUENCE public.age_range_id_seq OWNED BY public.age_range.id;


--
-- TOC entry 263 (class 1259 OID 18456)
-- Name: areas; Type: TABLE; Schema: public; Owner: ilrg_admin
--

CREATE TABLE public.areas (
    id integer NOT NULL,
    code character varying,
    areas character varying
);


ALTER TABLE public.areas OWNER TO ilrg_admin;

--
-- TOC entry 262 (class 1259 OID 18454)
-- Name: areas_id_seq; Type: SEQUENCE; Schema: public; Owner: ilrg_admin
--

CREATE SEQUENCE public.areas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.areas_id_seq OWNER TO ilrg_admin;

--
-- TOC entry 5991 (class 0 OID 0)
-- Dependencies: 262
-- Name: areas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilrg_admin
--

ALTER SEQUENCE public.areas_id_seq OWNED BY public.areas.id;


--
-- TOC entry 295 (class 1259 OID 24722)
-- Name: authority; Type: TABLE; Schema: public; Owner: ilrg_admin
--

CREATE TABLE public.authority (
    id integer NOT NULL,
    code character varying,
    authority character varying
);


ALTER TABLE public.authority OWNER TO ilrg_admin;

--
-- TOC entry 294 (class 1259 OID 24720)
-- Name: authority_id_seq; Type: SEQUENCE; Schema: public; Owner: ilrg_admin
--

CREATE SEQUENCE public.authority_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.authority_id_seq OWNER TO ilrg_admin;

--
-- TOC entry 5992 (class 0 OID 0)
-- Dependencies: 294
-- Name: authority_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilrg_admin
--

ALTER SEQUENCE public.authority_id_seq OWNED BY public.authority.id;


--
-- TOC entry 265 (class 1259 OID 18467)
-- Name: boundaries; Type: TABLE; Schema: public; Owner: ilrg_admin
--

CREATE TABLE public.boundaries (
    id integer NOT NULL,
    code character varying,
    boundaries character varying
);


ALTER TABLE public.boundaries OWNER TO ilrg_admin;

--
-- TOC entry 264 (class 1259 OID 18465)
-- Name: boundaries_id_seq; Type: SEQUENCE; Schema: public; Owner: ilrg_admin
--

CREATE SEQUENCE public.boundaries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.boundaries_id_seq OWNER TO ilrg_admin;

--
-- TOC entry 5993 (class 0 OID 0)
-- Dependencies: 264
-- Name: boundaries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilrg_admin
--

ALTER SEQUENCE public.boundaries_id_seq OWNED BY public.boundaries.id;


--
-- TOC entry 267 (class 1259 OID 18478)
-- Name: categories; Type: TABLE; Schema: public; Owner: ilrg_admin
--

CREATE TABLE public.categories (
    id integer NOT NULL,
    code character varying,
    categories character varying
);


ALTER TABLE public.categories OWNER TO ilrg_admin;

--
-- TOC entry 266 (class 1259 OID 18476)
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: ilrg_admin
--

CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_id_seq OWNER TO ilrg_admin;

--
-- TOC entry 5994 (class 0 OID 0)
-- Dependencies: 266
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilrg_admin
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- TOC entry 269 (class 1259 OID 18489)
-- Name: certify; Type: TABLE; Schema: public; Owner: ilrg_admin
--

CREATE TABLE public.certify (
    id integer NOT NULL,
    code character varying,
    certify character varying
);


ALTER TABLE public.certify OWNER TO ilrg_admin;

--
-- TOC entry 268 (class 1259 OID 18487)
-- Name: certify_id_seq; Type: SEQUENCE; Schema: public; Owner: ilrg_admin
--

CREATE SEQUENCE public.certify_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.certify_id_seq OWNER TO ilrg_admin;

--
-- TOC entry 5995 (class 0 OID 0)
-- Dependencies: 268
-- Name: certify_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilrg_admin
--

ALTER SEQUENCE public.certify_id_seq OWNED BY public.certify.id;


--
-- TOC entry 227 (class 1259 OID 17992)
-- Name: civil; Type: TABLE; Schema: public; Owner: ilrg_admin
--

CREATE TABLE public.civil (
    id integer NOT NULL,
    code character varying,
    civil_status character varying
);


ALTER TABLE public.civil OWNER TO ilrg_admin;

--
-- TOC entry 226 (class 1259 OID 17990)
-- Name: civil_status_id_seq; Type: SEQUENCE; Schema: public; Owner: ilrg_admin
--

CREATE SEQUENCE public.civil_status_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.civil_status_id_seq OWNER TO ilrg_admin;

--
-- TOC entry 5996 (class 0 OID 0)
-- Dependencies: 226
-- Name: civil_status_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilrg_admin
--

ALTER SEQUENCE public.civil_status_id_seq OWNED BY public.civil.id;


--
-- TOC entry 271 (class 1259 OID 18500)
-- Name: descriptors; Type: TABLE; Schema: public; Owner: ilrg_admin
--

CREATE TABLE public.descriptors (
    id integer NOT NULL,
    code character varying,
    descriptors character varying,
    osm_tags character varying
);


ALTER TABLE public.descriptors OWNER TO ilrg_admin;

--
-- TOC entry 273 (class 1259 OID 24589)
-- Name: descriptors_area; Type: TABLE; Schema: public; Owner: ilrg_admin
--

CREATE TABLE public.descriptors_area (
    id integer NOT NULL,
    code character varying,
    descriptors_area character varying
);


ALTER TABLE public.descriptors_area OWNER TO ilrg_admin;

--
-- TOC entry 272 (class 1259 OID 24587)
-- Name: descriptors_area_id_seq; Type: SEQUENCE; Schema: public; Owner: ilrg_admin
--

CREATE SEQUENCE public.descriptors_area_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.descriptors_area_id_seq OWNER TO ilrg_admin;

--
-- TOC entry 5997 (class 0 OID 0)
-- Dependencies: 272
-- Name: descriptors_area_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilrg_admin
--

ALTER SEQUENCE public.descriptors_area_id_seq OWNED BY public.descriptors_area.id;


--
-- TOC entry 270 (class 1259 OID 18498)
-- Name: descriptors_id_seq; Type: SEQUENCE; Schema: public; Owner: ilrg_admin
--

CREATE SEQUENCE public.descriptors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.descriptors_id_seq OWNER TO ilrg_admin;

--
-- TOC entry 5998 (class 0 OID 0)
-- Dependencies: 270
-- Name: descriptors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilrg_admin
--

ALTER SEQUENCE public.descriptors_id_seq OWNED BY public.descriptors.id;


--
-- TOC entry 259 (class 1259 OID 18434)
-- Name: dev; Type: TABLE; Schema: public; Owner: ilrg_admin
--

CREATE TABLE public.dev (
    id integer NOT NULL,
    code character varying,
    dev character varying
);


ALTER TABLE public.dev OWNER TO ilrg_admin;

--
-- TOC entry 258 (class 1259 OID 18432)
-- Name: dev_id_seq; Type: SEQUENCE; Schema: public; Owner: ilrg_admin
--

CREATE SEQUENCE public.dev_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dev_id_seq OWNER TO ilrg_admin;

--
-- TOC entry 5999 (class 0 OID 0)
-- Dependencies: 258
-- Name: dev_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilrg_admin
--

ALTER SEQUENCE public.dev_id_seq OWNED BY public.dev.id;


--
-- TOC entry 319 (class 1259 OID 25032)
-- Name: dispute; Type: TABLE; Schema: public; Owner: ilrg_admin
--

CREATE TABLE public.dispute (
    id integer NOT NULL,
    organization character varying,
    enumerator character varying,
    jurisdiction character varying,
    date timestamp without time zone,
    village_id integer,
    parcel_id integer,
    dispute_fam character varying,
    dispute_fams character varying,
    dispute_vills character varying,
    dispute_bounds character varying,
    dispute_legit character varying,
    dispute_gender character varying,
    dispute_description character varying,
    resolved character varying,
    con_inst character varying[],
    project_role character varying
);


ALTER TABLE public.dispute OWNER TO ilrg_admin;

--
-- TOC entry 318 (class 1259 OID 25030)
-- Name: dispute_id_seq; Type: SEQUENCE; Schema: public; Owner: ilrg_admin
--

CREATE SEQUENCE public.dispute_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dispute_id_seq OWNER TO ilrg_admin;

--
-- TOC entry 6000 (class 0 OID 0)
-- Dependencies: 318
-- Name: dispute_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilrg_admin
--

ALTER SEQUENCE public.dispute_id_seq OWNED BY public.dispute.id;


--
-- TOC entry 321 (class 1259 OID 25043)
-- Name: dispute_resolution; Type: TABLE; Schema: public; Owner: ilrg_admin
--

CREATE TABLE public.dispute_resolution (
    id integer NOT NULL,
    organization character varying,
    enumerator character varying,
    jurisdiction character varying,
    date timestamp without time zone,
    village_id integer,
    parcel_id integer,
    dispute_id integer,
    dispute_id_other integer,
    resolution_inst character varying[],
    resolution_description character varying,
    resolved character varying,
    resolution character varying,
    project_role_next character varying
);


ALTER TABLE public.dispute_resolution OWNER TO ilrg_admin;

--
-- TOC entry 320 (class 1259 OID 25041)
-- Name: dispute_resolution_id_seq; Type: SEQUENCE; Schema: public; Owner: ilrg_admin
--

CREATE SEQUENCE public.dispute_resolution_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dispute_resolution_id_seq OWNER TO ilrg_admin;

--
-- TOC entry 6001 (class 0 OID 0)
-- Dependencies: 320
-- Name: dispute_resolution_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilrg_admin
--

ALTER SEQUENCE public.dispute_resolution_id_seq OWNED BY public.dispute_resolution.id;


--
-- TOC entry 249 (class 1259 OID 18187)
-- Name: disputes; Type: TABLE; Schema: public; Owner: ilrg_admin
--

CREATE TABLE public.disputes (
    id integer NOT NULL,
    code character varying,
    dispute_type character varying
);


ALTER TABLE public.disputes OWNER TO ilrg_admin;

--
-- TOC entry 248 (class 1259 OID 18185)
-- Name: dispute_type_id_seq; Type: SEQUENCE; Schema: public; Owner: ilrg_admin
--

CREATE SEQUENCE public.dispute_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dispute_type_id_seq OWNER TO ilrg_admin;

--
-- TOC entry 6002 (class 0 OID 0)
-- Dependencies: 248
-- Name: dispute_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilrg_admin
--

ALTER SEQUENCE public.dispute_type_id_seq OWNED BY public.disputes.id;


--
-- TOC entry 253 (class 1259 OID 18400)
-- Name: distances; Type: TABLE; Schema: public; Owner: ilrg_admin
--

CREATE TABLE public.distances (
    id integer NOT NULL,
    code character varying,
    disances character varying
);


ALTER TABLE public.distances OWNER TO ilrg_admin;

--
-- TOC entry 252 (class 1259 OID 18398)
-- Name: distances_id_seq; Type: SEQUENCE; Schema: public; Owner: ilrg_admin
--

CREATE SEQUENCE public.distances_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.distances_id_seq OWNER TO ilrg_admin;

--
-- TOC entry 6003 (class 0 OID 0)
-- Dependencies: 252
-- Name: distances_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilrg_admin
--

ALTER SEQUENCE public.distances_id_seq OWNED BY public.distances.id;


--
-- TOC entry 261 (class 1259 OID 18445)
-- Name: documents; Type: TABLE; Schema: public; Owner: ilrg_admin
--

CREATE TABLE public.documents (
    id integer NOT NULL,
    code character varying,
    documents character varying
);


ALTER TABLE public.documents OWNER TO ilrg_admin;

--
-- TOC entry 260 (class 1259 OID 18443)
-- Name: documents_id_seq; Type: SEQUENCE; Schema: public; Owner: ilrg_admin
--

CREATE SEQUENCE public.documents_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.documents_id_seq OWNER TO ilrg_admin;

--
-- TOC entry 6004 (class 0 OID 0)
-- Dependencies: 260
-- Name: documents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilrg_admin
--

ALTER SEQUENCE public.documents_id_seq OWNED BY public.documents.id;


--
-- TOC entry 245 (class 1259 OID 18157)
-- Name: enumerator; Type: TABLE; Schema: public; Owner: ilrg_admin
--

CREATE TABLE public.enumerator (
    id integer NOT NULL,
    code character varying,
    family_name character varying,
    given_name character varying,
    gender character varying,
    role character varying,
    d_o_b timestamp without time zone,
    nat_id_number character varying,
    tel_1 integer,
    tel_2 integer,
    name character varying
);


ALTER TABLE public.enumerator OWNER TO ilrg_admin;

--
-- TOC entry 244 (class 1259 OID 18155)
-- Name: enumerator_id_seq; Type: SEQUENCE; Schema: public; Owner: ilrg_admin
--

CREATE SEQUENCE public.enumerator_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.enumerator_id_seq OWNER TO ilrg_admin;

--
-- TOC entry 6005 (class 0 OID 0)
-- Dependencies: 244
-- Name: enumerator_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilrg_admin
--

ALTER SEQUENCE public.enumerator_id_seq OWNED BY public.enumerator.id;


--
-- TOC entry 293 (class 1259 OID 24711)
-- Name: evidence; Type: TABLE; Schema: public; Owner: ilrg_admin
--

CREATE TABLE public.evidence (
    id integer NOT NULL,
    code character varying,
    evidence character varying
);


ALTER TABLE public.evidence OWNER TO ilrg_admin;

--
-- TOC entry 315 (class 1259 OID 25010)
-- Name: evidence_docs; Type: TABLE; Schema: public; Owner: ilrg_admin
--

CREATE TABLE public.evidence_docs (
    id integer NOT NULL,
    organization character varying,
    enumerator character varying,
    jurisdiction character varying,
    date timestamp without time zone,
    village_id integer,
    village_other character varying,
    parcel_id integer,
    document_type character varying,
    document_oth character varying,
    document_authority character varying,
    authority_other character varying,
    document character varying,
    document_owner character varying,
    document_spatial character varying,
    document_present character varying,
    document_date date,
    document_number character varying,
    document_photo_1 character varying,
    document_photo_2 character varying
);


ALTER TABLE public.evidence_docs OWNER TO ilrg_admin;

--
-- TOC entry 314 (class 1259 OID 25008)
-- Name: evidence_docs_id_seq; Type: SEQUENCE; Schema: public; Owner: ilrg_admin
--

CREATE SEQUENCE public.evidence_docs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.evidence_docs_id_seq OWNER TO ilrg_admin;

--
-- TOC entry 6006 (class 0 OID 0)
-- Dependencies: 314
-- Name: evidence_docs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilrg_admin
--

ALTER SEQUENCE public.evidence_docs_id_seq OWNED BY public.evidence_docs.id;


--
-- TOC entry 292 (class 1259 OID 24709)
-- Name: evidence_id_seq; Type: SEQUENCE; Schema: public; Owner: ilrg_admin
--

CREATE SEQUENCE public.evidence_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.evidence_id_seq OWNER TO ilrg_admin;

--
-- TOC entry 6007 (class 0 OID 0)
-- Dependencies: 292
-- Name: evidence_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilrg_admin
--

ALTER SEQUENCE public.evidence_id_seq OWNED BY public.evidence.id;


--
-- TOC entry 225 (class 1259 OID 17981)
-- Name: gender; Type: TABLE; Schema: public; Owner: ilrg_admin
--

CREATE TABLE public.gender (
    id integer NOT NULL,
    code character varying,
    gender character varying
);


ALTER TABLE public.gender OWNER TO ilrg_admin;

--
-- TOC entry 224 (class 1259 OID 17979)
-- Name: gender_id_seq; Type: SEQUENCE; Schema: public; Owner: ilrg_admin
--

CREATE SEQUENCE public.gender_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gender_id_seq OWNER TO ilrg_admin;

--
-- TOC entry 6008 (class 0 OID 0)
-- Dependencies: 224
-- Name: gender_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilrg_admin
--

ALTER SEQUENCE public.gender_id_seq OWNED BY public.gender.id;


--
-- TOC entry 275 (class 1259 OID 24611)
-- Name: infrastructure; Type: TABLE; Schema: public; Owner: ilrg_admin
--

CREATE TABLE public.infrastructure (
    id integer NOT NULL,
    code character varying,
    infrastructure character varying
);


ALTER TABLE public.infrastructure OWNER TO ilrg_admin;

--
-- TOC entry 274 (class 1259 OID 24609)
-- Name: infrastructure_id_seq; Type: SEQUENCE; Schema: public; Owner: ilrg_admin
--

CREATE SEQUENCE public.infrastructure_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.infrastructure_id_seq OWNER TO ilrg_admin;

--
-- TOC entry 6009 (class 0 OID 0)
-- Dependencies: 274
-- Name: infrastructure_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilrg_admin
--

ALTER SEQUENCE public.infrastructure_id_seq OWNED BY public.infrastructure.id;


--
-- TOC entry 277 (class 1259 OID 24622)
-- Name: institutions; Type: TABLE; Schema: public; Owner: ilrg_admin
--

CREATE TABLE public.institutions (
    id integer NOT NULL,
    code character varying,
    institutions character varying
);


ALTER TABLE public.institutions OWNER TO ilrg_admin;

--
-- TOC entry 276 (class 1259 OID 24620)
-- Name: institutions_id_seq; Type: SEQUENCE; Schema: public; Owner: ilrg_admin
--

CREATE SEQUENCE public.institutions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.institutions_id_seq OWNER TO ilrg_admin;

--
-- TOC entry 6010 (class 0 OID 0)
-- Dependencies: 276
-- Name: institutions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilrg_admin
--

ALTER SEQUENCE public.institutions_id_seq OWNED BY public.institutions.id;


--
-- TOC entry 217 (class 1259 OID 17937)
-- Name: jurisdiction; Type: TABLE; Schema: public; Owner: ilrg_admin
--

CREATE TABLE public.jurisdiction (
    id integer NOT NULL,
    code character varying,
    jurisdiction character varying
);


ALTER TABLE public.jurisdiction OWNER TO ilrg_admin;

--
-- TOC entry 313 (class 1259 OID 24997)
-- Name: jurisdiction_boundaries; Type: TABLE; Schema: public; Owner: ilrg_admin
--

CREATE TABLE public.jurisdiction_boundaries (
    id integer NOT NULL,
    organization character varying,
    enumerator character varying,
    jurisdiction character varying,
    date timestamp without time zone,
    boundary_type character varying,
    jurisdiction_type character varying,
    register_yn character varying,
    register_inst character varying,
    register_inst_name character varying,
    village_id integer,
    village_other character varying,
    area_name character varying,
    id_means character varying,
    whole_part character varying,
    ref_map_id character varying,
    partial_border public.geometry(LineString,4326),
    full_boundary public.geometry(MultiPolygon,4326),
    narrative character varying,
    number_women integer,
    number_men integer
);


ALTER TABLE public.jurisdiction_boundaries OWNER TO ilrg_admin;

--
-- TOC entry 312 (class 1259 OID 24995)
-- Name: jurisdiction_boundaries_id_seq; Type: SEQUENCE; Schema: public; Owner: ilrg_admin
--

CREATE SEQUENCE public.jurisdiction_boundaries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.jurisdiction_boundaries_id_seq OWNER TO ilrg_admin;

--
-- TOC entry 6011 (class 0 OID 0)
-- Dependencies: 312
-- Name: jurisdiction_boundaries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilrg_admin
--

ALTER SEQUENCE public.jurisdiction_boundaries_id_seq OWNED BY public.jurisdiction_boundaries.id;


--
-- TOC entry 216 (class 1259 OID 17935)
-- Name: jurisdiction_id_seq; Type: SEQUENCE; Schema: public; Owner: ilrg_admin
--

CREATE SEQUENCE public.jurisdiction_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.jurisdiction_id_seq OWNER TO ilrg_admin;

--
-- TOC entry 6012 (class 0 OID 0)
-- Dependencies: 216
-- Name: jurisdiction_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilrg_admin
--

ALTER SEQUENCE public.jurisdiction_id_seq OWNED BY public.jurisdiction.id;


--
-- TOC entry 279 (class 1259 OID 24633)
-- Name: jurisdiction_type; Type: TABLE; Schema: public; Owner: ilrg_admin
--

CREATE TABLE public.jurisdiction_type (
    id integer NOT NULL,
    code character varying,
    jurisdictions character varying
);


ALTER TABLE public.jurisdiction_type OWNER TO ilrg_admin;

--
-- TOC entry 278 (class 1259 OID 24631)
-- Name: jurisdictions_id_seq; Type: SEQUENCE; Schema: public; Owner: ilrg_admin
--

CREATE SEQUENCE public.jurisdictions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.jurisdictions_id_seq OWNER TO ilrg_admin;

--
-- TOC entry 6013 (class 0 OID 0)
-- Dependencies: 278
-- Name: jurisdictions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilrg_admin
--

ALTER SEQUENCE public.jurisdictions_id_seq OWNED BY public.jurisdiction_type.id;


--
-- TOC entry 281 (class 1259 OID 24644)
-- Name: maps; Type: TABLE; Schema: public; Owner: ilrg_admin
--

CREATE TABLE public.maps (
    id integer NOT NULL,
    code character varying,
    maps character varying
);


ALTER TABLE public.maps OWNER TO ilrg_admin;

--
-- TOC entry 280 (class 1259 OID 24642)
-- Name: maps_id_seq; Type: SEQUENCE; Schema: public; Owner: ilrg_admin
--

CREATE SEQUENCE public.maps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.maps_id_seq OWNER TO ilrg_admin;

--
-- TOC entry 6014 (class 0 OID 0)
-- Dependencies: 280
-- Name: maps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilrg_admin
--

ALTER SEQUENCE public.maps_id_seq OWNED BY public.maps.id;


--
-- TOC entry 283 (class 1259 OID 24656)
-- Name: means; Type: TABLE; Schema: public; Owner: ilrg_admin
--

CREATE TABLE public.means (
    id integer NOT NULL,
    code character varying,
    means character varying
);


ALTER TABLE public.means OWNER TO ilrg_admin;

--
-- TOC entry 282 (class 1259 OID 24654)
-- Name: means_id_seq; Type: SEQUENCE; Schema: public; Owner: ilrg_admin
--

CREATE SEQUENCE public.means_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.means_id_seq OWNER TO ilrg_admin;

--
-- TOC entry 6015 (class 0 OID 0)
-- Dependencies: 282
-- Name: means_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilrg_admin
--

ALTER SEQUENCE public.means_id_seq OWNED BY public.means.id;


--
-- TOC entry 323 (class 1259 OID 25054)
-- Name: meeting; Type: TABLE; Schema: public; Owner: ilrg_admin
--

CREATE TABLE public.meeting (
    id integer NOT NULL,
    organization character varying,
    enumerator character varying,
    jurisdiction character varying,
    date timestamp without time zone,
    village_id integer,
    meeting_location public.geometry(Point,4326),
    meeting_cat character varying,
    meeting_type character varying,
    meeting_type_other character varying,
    conflict character varying,
    conflict_more character varying,
    gender character varying,
    gender_more character varying,
    wom_att integer,
    men_att integer,
    wom_youth_att integer,
    men_youth_att integer,
    village_id_att integer[],
    village_other_att character varying[],
    wom_vill_att integer[],
    men_vill_att integer[],
    att_sheet character varying[],
    img_meet character varying,
    obs character varying
);


ALTER TABLE public.meeting OWNER TO ilrg_admin;

--
-- TOC entry 322 (class 1259 OID 25052)
-- Name: meeting_id_seq; Type: SEQUENCE; Schema: public; Owner: ilrg_admin
--

CREATE SEQUENCE public.meeting_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.meeting_id_seq OWNER TO ilrg_admin;

--
-- TOC entry 6016 (class 0 OID 0)
-- Dependencies: 322
-- Name: meeting_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilrg_admin
--

ALTER SEQUENCE public.meeting_id_seq OWNED BY public.meeting.id;


--
-- TOC entry 289 (class 1259 OID 24689)
-- Name: meeting_types; Type: TABLE; Schema: public; Owner: ilrg_admin
--

CREATE TABLE public.meeting_types (
    id integer NOT NULL,
    code character varying,
    meeting_types character varying
);


ALTER TABLE public.meeting_types OWNER TO ilrg_admin;

--
-- TOC entry 288 (class 1259 OID 24687)
-- Name: meeting_types_id_seq; Type: SEQUENCE; Schema: public; Owner: ilrg_admin
--

CREATE SEQUENCE public.meeting_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.meeting_types_id_seq OWNER TO ilrg_admin;

--
-- TOC entry 6017 (class 0 OID 0)
-- Dependencies: 288
-- Name: meeting_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilrg_admin
--

ALTER SEQUENCE public.meeting_types_id_seq OWNED BY public.meeting_types.id;


--
-- TOC entry 221 (class 1259 OID 17959)
-- Name: nationality; Type: TABLE; Schema: public; Owner: ilrg_admin
--

CREATE TABLE public.nationality (
    id integer NOT NULL,
    code character varying,
    nationality character varying
);


ALTER TABLE public.nationality OWNER TO ilrg_admin;

--
-- TOC entry 220 (class 1259 OID 17957)
-- Name: nationality_id_seq; Type: SEQUENCE; Schema: public; Owner: ilrg_admin
--

CREATE SEQUENCE public.nationality_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nationality_id_seq OWNER TO ilrg_admin;

--
-- TOC entry 6018 (class 0 OID 0)
-- Dependencies: 220
-- Name: nationality_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilrg_admin
--

ALTER SEQUENCE public.nationality_id_seq OWNED BY public.nationality.id;


--
-- TOC entry 237 (class 1259 OID 18047)
-- Name: norms; Type: TABLE; Schema: public; Owner: ilrg_admin
--

CREATE TABLE public.norms (
    id integer NOT NULL,
    code character varying,
    norm_type character varying
);


ALTER TABLE public.norms OWNER TO ilrg_admin;

--
-- TOC entry 236 (class 1259 OID 18045)
-- Name: norm_type_id_seq; Type: SEQUENCE; Schema: public; Owner: ilrg_admin
--

CREATE SEQUENCE public.norm_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.norm_type_id_seq OWNER TO ilrg_admin;

--
-- TOC entry 6019 (class 0 OID 0)
-- Dependencies: 236
-- Name: norm_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilrg_admin
--

ALTER SEQUENCE public.norm_type_id_seq OWNED BY public.norms.id;


--
-- TOC entry 317 (class 1259 OID 25021)
-- Name: occ; Type: TABLE; Schema: public; Owner: ilrg_admin
--

CREATE TABLE public.occ (
    id integer NOT NULL,
    organization character varying,
    enumerator character varying,
    jurisdiction character varying,
    date timestamp without time zone,
    parcel_id integer,
    certified character varying,
    cor_condition character varying,
    del_condition character varying,
    add_condition character varying,
    bound_condition character varying,
    vill_condition character varying,
    sig_condition character varying,
    village_id integer,
    village_other character varying,
    conflict_reason character varying,
    conflict_obs character varying
);


ALTER TABLE public.occ OWNER TO ilrg_admin;

--
-- TOC entry 316 (class 1259 OID 25019)
-- Name: occ_id_seq; Type: SEQUENCE; Schema: public; Owner: ilrg_admin
--

CREATE SEQUENCE public.occ_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.occ_id_seq OWNER TO ilrg_admin;

--
-- TOC entry 6020 (class 0 OID 0)
-- Dependencies: 316
-- Name: occ_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilrg_admin
--

ALTER SEQUENCE public.occ_id_seq OWNED BY public.occ.id;


--
-- TOC entry 251 (class 1259 OID 18389)
-- Name: organization; Type: TABLE; Schema: public; Owner: ilrg_admin
--

CREATE TABLE public.organization (
    id integer NOT NULL,
    code character varying,
    organization character varying
);


ALTER TABLE public.organization OWNER TO ilrg_admin;

--
-- TOC entry 250 (class 1259 OID 18387)
-- Name: organization_id_seq; Type: SEQUENCE; Schema: public; Owner: ilrg_admin
--

CREATE SEQUENCE public.organization_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.organization_id_seq OWNER TO ilrg_admin;

--
-- TOC entry 6021 (class 0 OID 0)
-- Dependencies: 250
-- Name: organization_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilrg_admin
--

ALTER SEQUENCE public.organization_id_seq OWNED BY public.organization.id;


--
-- TOC entry 231 (class 1259 OID 18014)
-- Name: parcel; Type: TABLE; Schema: public; Owner: ilrg_admin
--

CREATE TABLE public.parcel (
    id integer NOT NULL,
    parcel_id bigint,
    spatial_source_id integer,
    date timestamp without time zone,
    jurisdiction character varying,
    demarc_map character varying,
    state character varying,
    village character varying,
    dispute integer,
    border boolean,
    overlap boolean,
    use_category character varying,
    use_area character varying,
    resident boolean,
    resident_village character varying,
    chiefdom character varying,
    norm_type character varying,
    year_arrived integer,
    beacons boolean,
    water character varying,
    enum_date timestamp without time zone,
    enumerator character varying,
    claim_basis character varying,
    witness_set integer,
    cert_produced timestamp without time zone,
    receipt_img character varying,
    area double precision,
    parcel_boundary public.geometry(MultiPolygon,4326)
);


ALTER TABLE public.parcel OWNER TO ilrg_admin;

--
-- TOC entry 255 (class 1259 OID 18411)
-- Name: participation; Type: TABLE; Schema: public; Owner: ilrg_admin
--

CREATE TABLE public.participation (
    id integer NOT NULL,
    code character varying,
    participation character varying
);


ALTER TABLE public.participation OWNER TO ilrg_admin;

--
-- TOC entry 254 (class 1259 OID 18409)
-- Name: participation_id_seq; Type: SEQUENCE; Schema: public; Owner: ilrg_admin
--

CREATE SEQUENCE public.participation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.participation_id_seq OWNER TO ilrg_admin;

--
-- TOC entry 6022 (class 0 OID 0)
-- Dependencies: 254
-- Name: participation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilrg_admin
--

ALTER SEQUENCE public.participation_id_seq OWNED BY public.participation.id;


--
-- TOC entry 223 (class 1259 OID 17970)
-- Name: party_juridical; Type: TABLE; Schema: public; Owner: ilrg_admin
--

CREATE TABLE public.party_juridical (
    id integer NOT NULL,
    entity_type integer,
    registration_number character varying,
    registration_date timestamp without time zone,
    dissolution_date timestamp without time zone,
    identity_document character varying,
    identity_document_number character varying,
    tax_number character varying,
    phone integer,
    e_mail character varying,
    office_address character varying,
    su_id integer
);


ALTER TABLE public.party_juridical OWNER TO ilrg_admin;

--
-- TOC entry 222 (class 1259 OID 17968)
-- Name: party_juridical_id_seq; Type: SEQUENCE; Schema: public; Owner: ilrg_admin
--

CREATE SEQUENCE public.party_juridical_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.party_juridical_id_seq OWNER TO ilrg_admin;

--
-- TOC entry 6023 (class 0 OID 0)
-- Dependencies: 222
-- Name: party_juridical_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilrg_admin
--

ALTER SEQUENCE public.party_juridical_id_seq OWNED BY public.party_juridical.id;


--
-- TOC entry 213 (class 1259 OID 17915)
-- Name: party_person; Type: TABLE; Schema: public; Owner: ilrg_admin
--

CREATE TABLE public.party_person (
    id integer NOT NULL,
    given_name character varying,
    second_given_name character varying,
    family_name character varying,
    gender character varying,
    birthdate timestamp without time zone,
    birthyear integer,
    age_range character varying,
    id_number character varying,
    id_place_issued character varying,
    id_date_issued timestamp without time zone,
    id_date_validity timestamp without time zone,
    birthplace character varying,
    civil_status character varying,
    profession character varying,
    contact character varying,
    nationality character varying,
    photo character varying,
    id_image_front character varying,
    id_image_back character varying,
    jurisdiction character varying
);


ALTER TABLE public.party_person OWNER TO ilrg_admin;

--
-- TOC entry 212 (class 1259 OID 17913)
-- Name: party_person_id_seq; Type: SEQUENCE; Schema: public; Owner: ilrg_admin
--

CREATE SEQUENCE public.party_person_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.party_person_id_seq OWNER TO ilrg_admin;

--
-- TOC entry 6024 (class 0 OID 0)
-- Dependencies: 212
-- Name: party_person_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilrg_admin
--

ALTER SEQUENCE public.party_person_id_seq OWNED BY public.party_person.id;


--
-- TOC entry 309 (class 1259 OID 24957)
-- Name: party_role; Type: TABLE; Schema: public; Owner: ilrg_admin
--

CREATE TABLE public.party_role (
    id integer NOT NULL,
    code character varying,
    party_role character varying
);


ALTER TABLE public.party_role OWNER TO ilrg_admin;

--
-- TOC entry 308 (class 1259 OID 24955)
-- Name: party_role_id_seq; Type: SEQUENCE; Schema: public; Owner: ilrg_admin
--

CREATE SEQUENCE public.party_role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.party_role_id_seq OWNER TO ilrg_admin;

--
-- TOC entry 6025 (class 0 OID 0)
-- Dependencies: 308
-- Name: party_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilrg_admin
--

ALTER SEQUENCE public.party_role_id_seq OWNED BY public.party_role.id;


--
-- TOC entry 229 (class 1259 OID 18003)
-- Name: profession; Type: TABLE; Schema: public; Owner: ilrg_admin
--

CREATE TABLE public.profession (
    id integer NOT NULL,
    code character varying,
    profession character varying
);


ALTER TABLE public.profession OWNER TO ilrg_admin;

--
-- TOC entry 228 (class 1259 OID 18001)
-- Name: profession_id_seq; Type: SEQUENCE; Schema: public; Owner: ilrg_admin
--

CREATE SEQUENCE public.profession_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.profession_id_seq OWNER TO ilrg_admin;

--
-- TOC entry 6026 (class 0 OID 0)
-- Dependencies: 228
-- Name: profession_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilrg_admin
--

ALTER SEQUENCE public.profession_id_seq OWNED BY public.profession.id;


--
-- TOC entry 247 (class 1259 OID 18168)
-- Name: redraw; Type: TABLE; Schema: public; Owner: ilrg_admin
--

CREATE TABLE public.redraw (
    id integer NOT NULL,
    spatial_unit_id integer,
    needs_redraw boolean,
    redrawn boolean
);


ALTER TABLE public.redraw OWNER TO ilrg_admin;

--
-- TOC entry 246 (class 1259 OID 18166)
-- Name: redraw_id_seq; Type: SEQUENCE; Schema: public; Owner: ilrg_admin
--

CREATE SEQUENCE public.redraw_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.redraw_id_seq OWNER TO ilrg_admin;

--
-- TOC entry 6027 (class 0 OID 0)
-- Dependencies: 246
-- Name: redraw_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilrg_admin
--

ALTER SEQUENCE public.redraw_id_seq OWNED BY public.redraw.id;


--
-- TOC entry 299 (class 1259 OID 24745)
-- Name: relationship; Type: TABLE; Schema: public; Owner: ilrg_admin
--

CREATE TABLE public.relationship (
    id integer NOT NULL,
    parcel_id integer NOT NULL,
    person_id integer NOT NULL,
    demarcation_role character varying,
    dem_rep_relationship character varying,
    party_role character varying,
    poi_relationship character varying,
    witness_type character varying
);


ALTER TABLE public.relationship OWNER TO ilrg_admin;

--
-- TOC entry 298 (class 1259 OID 24743)
-- Name: relationship_id_seq; Type: SEQUENCE; Schema: public; Owner: ilrg_admin
--

CREATE SEQUENCE public.relationship_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.relationship_id_seq OWNER TO ilrg_admin;

--
-- TOC entry 6028 (class 0 OID 0)
-- Dependencies: 298
-- Name: relationship_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilrg_admin
--

ALTER SEQUENCE public.relationship_id_seq OWNED BY public.relationship.id;


--
-- TOC entry 219 (class 1259 OID 17948)
-- Name: relationship_poi; Type: TABLE; Schema: public; Owner: ilrg_admin
--

CREATE TABLE public.relationship_poi (
    id integer NOT NULL,
    code character varying,
    relationship_poi character varying
);


ALTER TABLE public.relationship_poi OWNER TO ilrg_admin;

--
-- TOC entry 218 (class 1259 OID 17946)
-- Name: relationship_poi_id_seq; Type: SEQUENCE; Schema: public; Owner: ilrg_admin
--

CREATE SEQUENCE public.relationship_poi_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.relationship_poi_id_seq OWNER TO ilrg_admin;

--
-- TOC entry 6029 (class 0 OID 0)
-- Dependencies: 218
-- Name: relationship_poi_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilrg_admin
--

ALTER SEQUENCE public.relationship_poi_id_seq OWNED BY public.relationship_poi.id;


--
-- TOC entry 285 (class 1259 OID 24667)
-- Name: rep_relations; Type: TABLE; Schema: public; Owner: ilrg_admin
--

CREATE TABLE public.rep_relations (
    id integer NOT NULL,
    code character varying,
    rep_relations character varying
);


ALTER TABLE public.rep_relations OWNER TO ilrg_admin;

--
-- TOC entry 284 (class 1259 OID 24665)
-- Name: rep_relations_id_seq; Type: SEQUENCE; Schema: public; Owner: ilrg_admin
--

CREATE SEQUENCE public.rep_relations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rep_relations_id_seq OWNER TO ilrg_admin;

--
-- TOC entry 6030 (class 0 OID 0)
-- Dependencies: 284
-- Name: rep_relations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilrg_admin
--

ALTER SEQUENCE public.rep_relations_id_seq OWNED BY public.rep_relations.id;


--
-- TOC entry 303 (class 1259 OID 24764)
-- Name: resources_areas; Type: TABLE; Schema: public; Owner: ilrg_admin
--

CREATE TABLE public.resources_areas (
    id integer NOT NULL,
    organization character varying,
    enumerator character varying,
    jurisdiction character varying,
    date timestamp without time zone,
    ref_mad_id character varying,
    id_means character varying,
    area_descriptor character varying,
    res_name character varying,
    poi_area public.geometry(MultiPolygon,4326),
    res_code character varying,
    tenure_type character varying,
    manage_inst character varying,
    manage_problem character varying,
    manage_notes character varying,
    narrative character varying,
    uses_area character varying[],
    user_area_other character varying,
    use_rules character varying
);


ALTER TABLE public.resources_areas OWNER TO ilrg_admin;

--
-- TOC entry 302 (class 1259 OID 24762)
-- Name: resources_areas_id_seq; Type: SEQUENCE; Schema: public; Owner: ilrg_admin
--

CREATE SEQUENCE public.resources_areas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.resources_areas_id_seq OWNER TO ilrg_admin;

--
-- TOC entry 6031 (class 0 OID 0)
-- Dependencies: 302
-- Name: resources_areas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilrg_admin
--

ALTER SEQUENCE public.resources_areas_id_seq OWNED BY public.resources_areas.id;


--
-- TOC entry 301 (class 1259 OID 24753)
-- Name: resources_points; Type: TABLE; Schema: public; Owner: ilrg_admin
--

CREATE TABLE public.resources_points (
    id integer NOT NULL,
    organization character varying,
    enumerator character varying,
    jurisdiction character varying,
    date timestamp without time zone,
    point_poi public.geometry(Point,4326),
    poi_descriptor character varying,
    res_name character varying,
    tenure_type character varying,
    manage_inst character varying,
    manage_problem character varying,
    manage_notes character varying
);


ALTER TABLE public.resources_points OWNER TO ilrg_admin;

--
-- TOC entry 300 (class 1259 OID 24751)
-- Name: resources_points_id_seq; Type: SEQUENCE; Schema: public; Owner: ilrg_admin
--

CREATE SEQUENCE public.resources_points_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.resources_points_id_seq OWNER TO ilrg_admin;

--
-- TOC entry 6032 (class 0 OID 0)
-- Dependencies: 300
-- Name: resources_points_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilrg_admin
--

ALTER SEQUENCE public.resources_points_id_seq OWNED BY public.resources_points.id;


--
-- TOC entry 307 (class 1259 OID 24786)
-- Name: roads; Type: TABLE; Schema: public; Owner: ilrg_admin
--

CREATE TABLE public.roads (
    id integer NOT NULL,
    organization character varying,
    enumerator character varying,
    jurisdiction character varying,
    date timestamp without time zone,
    road_path public.geometry(LineString,4326)
);


ALTER TABLE public.roads OWNER TO ilrg_admin;

--
-- TOC entry 306 (class 1259 OID 24784)
-- Name: roads_id_seq; Type: SEQUENCE; Schema: public; Owner: ilrg_admin
--

CREATE SEQUENCE public.roads_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.roads_id_seq OWNER TO ilrg_admin;

--
-- TOC entry 6033 (class 0 OID 0)
-- Dependencies: 306
-- Name: roads_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilrg_admin
--

ALTER SEQUENCE public.roads_id_seq OWNED BY public.roads.id;


--
-- TOC entry 230 (class 1259 OID 18012)
-- Name: spatial_unit_id_seq; Type: SEQUENCE; Schema: public; Owner: ilrg_admin
--

CREATE SEQUENCE public.spatial_unit_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spatial_unit_id_seq OWNER TO ilrg_admin;

--
-- TOC entry 6034 (class 0 OID 0)
-- Dependencies: 230
-- Name: spatial_unit_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilrg_admin
--

ALTER SEQUENCE public.spatial_unit_id_seq OWNED BY public.parcel.id;


--
-- TOC entry 233 (class 1259 OID 18025)
-- Name: state; Type: TABLE; Schema: public; Owner: ilrg_admin
--

CREATE TABLE public.state (
    id integer NOT NULL,
    code character varying,
    state character varying
);


ALTER TABLE public.state OWNER TO ilrg_admin;

--
-- TOC entry 232 (class 1259 OID 18023)
-- Name: state_id_seq; Type: SEQUENCE; Schema: public; Owner: ilrg_admin
--

CREATE SEQUENCE public.state_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.state_id_seq OWNER TO ilrg_admin;

--
-- TOC entry 6035 (class 0 OID 0)
-- Dependencies: 232
-- Name: state_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilrg_admin
--

ALTER SEQUENCE public.state_id_seq OWNED BY public.state.id;


--
-- TOC entry 257 (class 1259 OID 18422)
-- Name: supportive; Type: TABLE; Schema: public; Owner: ilrg_admin
--

CREATE TABLE public.supportive (
    id integer NOT NULL,
    code character varying,
    supportive character varying
);


ALTER TABLE public.supportive OWNER TO ilrg_admin;

--
-- TOC entry 256 (class 1259 OID 18420)
-- Name: supportive_id_seq; Type: SEQUENCE; Schema: public; Owner: ilrg_admin
--

CREATE SEQUENCE public.supportive_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.supportive_id_seq OWNER TO ilrg_admin;

--
-- TOC entry 6036 (class 0 OID 0)
-- Dependencies: 256
-- Name: supportive_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilrg_admin
--

ALTER SEQUENCE public.supportive_id_seq OWNED BY public.supportive.id;


--
-- TOC entry 287 (class 1259 OID 24678)
-- Name: tenure; Type: TABLE; Schema: public; Owner: ilrg_admin
--

CREATE TABLE public.tenure (
    id integer NOT NULL,
    code character varying,
    tenure character varying
);


ALTER TABLE public.tenure OWNER TO ilrg_admin;

--
-- TOC entry 286 (class 1259 OID 24676)
-- Name: tenure_id_seq; Type: SEQUENCE; Schema: public; Owner: ilrg_admin
--

CREATE SEQUENCE public.tenure_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tenure_id_seq OWNER TO ilrg_admin;

--
-- TOC entry 6037 (class 0 OID 0)
-- Dependencies: 286
-- Name: tenure_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilrg_admin
--

ALTER SEQUENCE public.tenure_id_seq OWNED BY public.tenure.id;


--
-- TOC entry 241 (class 1259 OID 18124)
-- Name: use_area; Type: TABLE; Schema: public; Owner: ilrg_admin
--

CREATE TABLE public.use_area (
    id integer NOT NULL,
    code character varying,
    use_area character varying
);


ALTER TABLE public.use_area OWNER TO ilrg_admin;

--
-- TOC entry 240 (class 1259 OID 18122)
-- Name: use_area_id_seq; Type: SEQUENCE; Schema: public; Owner: ilrg_admin
--

CREATE SEQUENCE public.use_area_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.use_area_id_seq OWNER TO ilrg_admin;

--
-- TOC entry 6038 (class 0 OID 0)
-- Dependencies: 240
-- Name: use_area_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilrg_admin
--

ALTER SEQUENCE public.use_area_id_seq OWNED BY public.use_area.id;


--
-- TOC entry 243 (class 1259 OID 18135)
-- Name: use_category; Type: TABLE; Schema: public; Owner: ilrg_admin
--

CREATE TABLE public.use_category (
    id integer NOT NULL,
    code character varying,
    use_category character varying
);


ALTER TABLE public.use_category OWNER TO ilrg_admin;

--
-- TOC entry 242 (class 1259 OID 18133)
-- Name: use_category_id_seq; Type: SEQUENCE; Schema: public; Owner: ilrg_admin
--

CREATE SEQUENCE public.use_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.use_category_id_seq OWNER TO ilrg_admin;

--
-- TOC entry 6039 (class 0 OID 0)
-- Dependencies: 242
-- Name: use_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilrg_admin
--

ALTER SEQUENCE public.use_category_id_seq OWNED BY public.use_category.id;


--
-- TOC entry 235 (class 1259 OID 18036)
-- Name: village; Type: TABLE; Schema: public; Owner: ilrg_admin
--

CREATE TABLE public.village (
    id integer NOT NULL,
    code character varying,
    village character varying
);


ALTER TABLE public.village OWNER TO ilrg_admin;

--
-- TOC entry 311 (class 1259 OID 24985)
-- Name: village_governance; Type: TABLE; Schema: public; Owner: ilrg_admin
--

CREATE TABLE public.village_governance (
    id integer NOT NULL,
    organization character varying,
    enumerator character varying,
    jurisdiction character varying,
    date timestamp without time zone,
    village_id integer,
    village_other character varying,
    dist_id integer,
    dist_other character varying,
    ward_id integer,
    ward_other character varying,
    area_id integer,
    area_other character varying,
    induna_given_name character varying,
    induna_family_name character varying,
    head_given_name character varying,
    head_family_name character varying,
    gender character varying,
    contact character varying,
    head_year date,
    vill_reg character varying,
    vill_household integer,
    vill_year date,
    vill_est character varying,
    move_has character varying,
    divide_has character varying,
    move_when date,
    move_reason character varying,
    divide_reason character varying,
    dev_act character varying,
    dev_act_other character varying,
    vill_dev_issues character varying,
    village_dev character varying,
    community_conflict character varying,
    neighbour_conflict character varying,
    government_conflict character varying,
    investor_conflict character varying,
    vill_rec character varying,
    community_conflict_des character varying,
    neighbour_community_conflict_des character varying,
    government_conflict_des character varying,
    investor_conflict_des character varying,
    forest_gov character varying,
    vill_inst character varying,
    consent_res_map character varying,
    consent_hh_cert character varying,
    consent_lup character varying,
    consent_data character varying,
    consent_rep character varying,
    signature character varying,
    no_consent_res_map character varying,
    no_consent_hh_cert character varying,
    no_consent_lup character varying,
    no_consent_data character varying,
    no_consent_rep character varying,
    regnote character varying[],
    village_reg character varying[],
    vill_reg_sheet character varying[],
    map_note character varying[],
    map_image character varying[],
    map_author character varying[],
    narrative character varying,
    participate_village character varying,
    supportive_headperson character varying,
    supportive_gender character varying,
    supportive_inclusion character varying,
    supportive_youth character varying,
    obs character varying,
    img_meet character varying
);


ALTER TABLE public.village_governance OWNER TO ilrg_admin;

--
-- TOC entry 310 (class 1259 OID 24983)
-- Name: village_governance_id_seq; Type: SEQUENCE; Schema: public; Owner: ilrg_admin
--

CREATE SEQUENCE public.village_governance_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.village_governance_id_seq OWNER TO ilrg_admin;

--
-- TOC entry 6040 (class 0 OID 0)
-- Dependencies: 310
-- Name: village_governance_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilrg_admin
--

ALTER SEQUENCE public.village_governance_id_seq OWNED BY public.village_governance.id;


--
-- TOC entry 234 (class 1259 OID 18034)
-- Name: village_id_seq; Type: SEQUENCE; Schema: public; Owner: ilrg_admin
--

CREATE SEQUENCE public.village_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.village_id_seq OWNER TO ilrg_admin;

--
-- TOC entry 6041 (class 0 OID 0)
-- Dependencies: 234
-- Name: village_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilrg_admin
--

ALTER SEQUENCE public.village_id_seq OWNED BY public.village.id;


--
-- TOC entry 305 (class 1259 OID 24775)
-- Name: village_identification; Type: TABLE; Schema: public; Owner: ilrg_admin
--

CREATE TABLE public.village_identification (
    id integer NOT NULL,
    organization character varying,
    enumerator character varying,
    jurisdiction character varying,
    date timestamp without time zone,
    village_id integer,
    village_point public.geometry(Point,4326),
    contact_given_name character varying,
    contact_family_name character varying,
    head_given_name character varying,
    head_family_name character varying,
    contact character varying,
    households integer,
    village_register character varying,
    recognized character varying,
    agriculture character varying,
    network character varying,
    borehole character varying,
    well character varying,
    hammermill character varying,
    school_prim_distance character varying,
    schoold_sec_distance character varying,
    church character varying,
    clinic character varying,
    clinic_distance character varying,
    dam character varying,
    dip_tank character varying,
    gov_pres character varying,
    electricity character varying,
    market character varying,
    nat_res character varying,
    airtel character varying,
    mtn character varying,
    zamtel character varying,
    conflict character varying,
    con_des character varying,
    settle_scheme character varying,
    mvuvye_forest character varying
);


ALTER TABLE public.village_identification OWNER TO ilrg_admin;

--
-- TOC entry 304 (class 1259 OID 24773)
-- Name: village_identification_id_seq; Type: SEQUENCE; Schema: public; Owner: ilrg_admin
--

CREATE SEQUENCE public.village_identification_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.village_identification_id_seq OWNER TO ilrg_admin;

--
-- TOC entry 6042 (class 0 OID 0)
-- Dependencies: 304
-- Name: village_identification_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilrg_admin
--

ALTER SEQUENCE public.village_identification_id_seq OWNED BY public.village_identification.id;


--
-- TOC entry 239 (class 1259 OID 18058)
-- Name: water; Type: TABLE; Schema: public; Owner: ilrg_admin
--

CREATE TABLE public.water (
    id integer NOT NULL,
    code character varying,
    water character varying
);


ALTER TABLE public.water OWNER TO ilrg_admin;

--
-- TOC entry 238 (class 1259 OID 18056)
-- Name: water_id_seq; Type: SEQUENCE; Schema: public; Owner: ilrg_admin
--

CREATE SEQUENCE public.water_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.water_id_seq OWNER TO ilrg_admin;

--
-- TOC entry 6043 (class 0 OID 0)
-- Dependencies: 238
-- Name: water_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilrg_admin
--

ALTER SEQUENCE public.water_id_seq OWNED BY public.water.id;


--
-- TOC entry 291 (class 1259 OID 24700)
-- Name: witness_types; Type: TABLE; Schema: public; Owner: ilrg_admin
--

CREATE TABLE public.witness_types (
    id integer NOT NULL,
    code character varying,
    witness_types character varying
);


ALTER TABLE public.witness_types OWNER TO ilrg_admin;

--
-- TOC entry 290 (class 1259 OID 24698)
-- Name: witness_types_id_seq; Type: SEQUENCE; Schema: public; Owner: ilrg_admin
--

CREATE SEQUENCE public.witness_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.witness_types_id_seq OWNER TO ilrg_admin;

--
-- TOC entry 6044 (class 0 OID 0)
-- Dependencies: 290
-- Name: witness_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilrg_admin
--

ALTER SEQUENCE public.witness_types_id_seq OWNED BY public.witness_types.id;


--
-- TOC entry 5497 (class 2604 OID 24736)
-- Name: accesses id; Type: DEFAULT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.accesses ALTER COLUMN id SET DEFAULT nextval('public.accesses_id_seq'::regclass);


--
-- TOC entry 5456 (class 2604 OID 17929)
-- Name: age_range id; Type: DEFAULT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.age_range ALTER COLUMN id SET DEFAULT nextval('public.age_range_id_seq'::regclass);


--
-- TOC entry 5480 (class 2604 OID 18459)
-- Name: areas id; Type: DEFAULT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.areas ALTER COLUMN id SET DEFAULT nextval('public.areas_id_seq'::regclass);


--
-- TOC entry 5496 (class 2604 OID 24725)
-- Name: authority id; Type: DEFAULT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.authority ALTER COLUMN id SET DEFAULT nextval('public.authority_id_seq'::regclass);


--
-- TOC entry 5481 (class 2604 OID 18470)
-- Name: boundaries id; Type: DEFAULT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.boundaries ALTER COLUMN id SET DEFAULT nextval('public.boundaries_id_seq'::regclass);


--
-- TOC entry 5482 (class 2604 OID 18481)
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- TOC entry 5483 (class 2604 OID 18492)
-- Name: certify id; Type: DEFAULT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.certify ALTER COLUMN id SET DEFAULT nextval('public.certify_id_seq'::regclass);


--
-- TOC entry 5462 (class 2604 OID 17995)
-- Name: civil id; Type: DEFAULT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.civil ALTER COLUMN id SET DEFAULT nextval('public.civil_status_id_seq'::regclass);


--
-- TOC entry 5484 (class 2604 OID 18503)
-- Name: descriptors id; Type: DEFAULT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.descriptors ALTER COLUMN id SET DEFAULT nextval('public.descriptors_id_seq'::regclass);


--
-- TOC entry 5485 (class 2604 OID 24592)
-- Name: descriptors_area id; Type: DEFAULT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.descriptors_area ALTER COLUMN id SET DEFAULT nextval('public.descriptors_area_id_seq'::regclass);


--
-- TOC entry 5478 (class 2604 OID 18437)
-- Name: dev id; Type: DEFAULT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.dev ALTER COLUMN id SET DEFAULT nextval('public.dev_id_seq'::regclass);


--
-- TOC entry 5508 (class 2604 OID 25035)
-- Name: dispute id; Type: DEFAULT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.dispute ALTER COLUMN id SET DEFAULT nextval('public.dispute_id_seq'::regclass);


--
-- TOC entry 5509 (class 2604 OID 25046)
-- Name: dispute_resolution id; Type: DEFAULT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.dispute_resolution ALTER COLUMN id SET DEFAULT nextval('public.dispute_resolution_id_seq'::regclass);


--
-- TOC entry 5473 (class 2604 OID 18190)
-- Name: disputes id; Type: DEFAULT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.disputes ALTER COLUMN id SET DEFAULT nextval('public.dispute_type_id_seq'::regclass);


--
-- TOC entry 5475 (class 2604 OID 18403)
-- Name: distances id; Type: DEFAULT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.distances ALTER COLUMN id SET DEFAULT nextval('public.distances_id_seq'::regclass);


--
-- TOC entry 5479 (class 2604 OID 18448)
-- Name: documents id; Type: DEFAULT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.documents ALTER COLUMN id SET DEFAULT nextval('public.documents_id_seq'::regclass);


--
-- TOC entry 5471 (class 2604 OID 18160)
-- Name: enumerator id; Type: DEFAULT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.enumerator ALTER COLUMN id SET DEFAULT nextval('public.enumerator_id_seq'::regclass);


--
-- TOC entry 5495 (class 2604 OID 24714)
-- Name: evidence id; Type: DEFAULT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.evidence ALTER COLUMN id SET DEFAULT nextval('public.evidence_id_seq'::regclass);


--
-- TOC entry 5506 (class 2604 OID 25013)
-- Name: evidence_docs id; Type: DEFAULT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.evidence_docs ALTER COLUMN id SET DEFAULT nextval('public.evidence_docs_id_seq'::regclass);


--
-- TOC entry 5461 (class 2604 OID 17984)
-- Name: gender id; Type: DEFAULT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.gender ALTER COLUMN id SET DEFAULT nextval('public.gender_id_seq'::regclass);


--
-- TOC entry 5486 (class 2604 OID 24614)
-- Name: infrastructure id; Type: DEFAULT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.infrastructure ALTER COLUMN id SET DEFAULT nextval('public.infrastructure_id_seq'::regclass);


--
-- TOC entry 5487 (class 2604 OID 24625)
-- Name: institutions id; Type: DEFAULT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.institutions ALTER COLUMN id SET DEFAULT nextval('public.institutions_id_seq'::regclass);


--
-- TOC entry 5457 (class 2604 OID 17940)
-- Name: jurisdiction id; Type: DEFAULT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.jurisdiction ALTER COLUMN id SET DEFAULT nextval('public.jurisdiction_id_seq'::regclass);


--
-- TOC entry 5505 (class 2604 OID 25000)
-- Name: jurisdiction_boundaries id; Type: DEFAULT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.jurisdiction_boundaries ALTER COLUMN id SET DEFAULT nextval('public.jurisdiction_boundaries_id_seq'::regclass);


--
-- TOC entry 5488 (class 2604 OID 24636)
-- Name: jurisdiction_type id; Type: DEFAULT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.jurisdiction_type ALTER COLUMN id SET DEFAULT nextval('public.jurisdictions_id_seq'::regclass);


--
-- TOC entry 5489 (class 2604 OID 24647)
-- Name: maps id; Type: DEFAULT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.maps ALTER COLUMN id SET DEFAULT nextval('public.maps_id_seq'::regclass);


--
-- TOC entry 5490 (class 2604 OID 24659)
-- Name: means id; Type: DEFAULT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.means ALTER COLUMN id SET DEFAULT nextval('public.means_id_seq'::regclass);


--
-- TOC entry 5510 (class 2604 OID 25057)
-- Name: meeting id; Type: DEFAULT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.meeting ALTER COLUMN id SET DEFAULT nextval('public.meeting_id_seq'::regclass);


--
-- TOC entry 5493 (class 2604 OID 24692)
-- Name: meeting_types id; Type: DEFAULT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.meeting_types ALTER COLUMN id SET DEFAULT nextval('public.meeting_types_id_seq'::regclass);


--
-- TOC entry 5459 (class 2604 OID 17962)
-- Name: nationality id; Type: DEFAULT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.nationality ALTER COLUMN id SET DEFAULT nextval('public.nationality_id_seq'::regclass);


--
-- TOC entry 5467 (class 2604 OID 18050)
-- Name: norms id; Type: DEFAULT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.norms ALTER COLUMN id SET DEFAULT nextval('public.norm_type_id_seq'::regclass);


--
-- TOC entry 5507 (class 2604 OID 25024)
-- Name: occ id; Type: DEFAULT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.occ ALTER COLUMN id SET DEFAULT nextval('public.occ_id_seq'::regclass);


--
-- TOC entry 5474 (class 2604 OID 18392)
-- Name: organization id; Type: DEFAULT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.organization ALTER COLUMN id SET DEFAULT nextval('public.organization_id_seq'::regclass);


--
-- TOC entry 5464 (class 2604 OID 18017)
-- Name: parcel id; Type: DEFAULT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.parcel ALTER COLUMN id SET DEFAULT nextval('public.spatial_unit_id_seq'::regclass);


--
-- TOC entry 5476 (class 2604 OID 18414)
-- Name: participation id; Type: DEFAULT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.participation ALTER COLUMN id SET DEFAULT nextval('public.participation_id_seq'::regclass);


--
-- TOC entry 5460 (class 2604 OID 17973)
-- Name: party_juridical id; Type: DEFAULT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.party_juridical ALTER COLUMN id SET DEFAULT nextval('public.party_juridical_id_seq'::regclass);


--
-- TOC entry 5455 (class 2604 OID 17918)
-- Name: party_person id; Type: DEFAULT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.party_person ALTER COLUMN id SET DEFAULT nextval('public.party_person_id_seq'::regclass);


--
-- TOC entry 5503 (class 2604 OID 24960)
-- Name: party_role id; Type: DEFAULT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.party_role ALTER COLUMN id SET DEFAULT nextval('public.party_role_id_seq'::regclass);


--
-- TOC entry 5463 (class 2604 OID 18006)
-- Name: profession id; Type: DEFAULT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.profession ALTER COLUMN id SET DEFAULT nextval('public.profession_id_seq'::regclass);


--
-- TOC entry 5472 (class 2604 OID 18171)
-- Name: redraw id; Type: DEFAULT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.redraw ALTER COLUMN id SET DEFAULT nextval('public.redraw_id_seq'::regclass);


--
-- TOC entry 5498 (class 2604 OID 24748)
-- Name: relationship id; Type: DEFAULT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.relationship ALTER COLUMN id SET DEFAULT nextval('public.relationship_id_seq'::regclass);


--
-- TOC entry 5458 (class 2604 OID 17951)
-- Name: relationship_poi id; Type: DEFAULT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.relationship_poi ALTER COLUMN id SET DEFAULT nextval('public.relationship_poi_id_seq'::regclass);


--
-- TOC entry 5491 (class 2604 OID 24670)
-- Name: rep_relations id; Type: DEFAULT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.rep_relations ALTER COLUMN id SET DEFAULT nextval('public.rep_relations_id_seq'::regclass);


--
-- TOC entry 5500 (class 2604 OID 24767)
-- Name: resources_areas id; Type: DEFAULT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.resources_areas ALTER COLUMN id SET DEFAULT nextval('public.resources_areas_id_seq'::regclass);


--
-- TOC entry 5499 (class 2604 OID 24756)
-- Name: resources_points id; Type: DEFAULT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.resources_points ALTER COLUMN id SET DEFAULT nextval('public.resources_points_id_seq'::regclass);


--
-- TOC entry 5502 (class 2604 OID 24789)
-- Name: roads id; Type: DEFAULT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.roads ALTER COLUMN id SET DEFAULT nextval('public.roads_id_seq'::regclass);


--
-- TOC entry 5465 (class 2604 OID 18028)
-- Name: state id; Type: DEFAULT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.state ALTER COLUMN id SET DEFAULT nextval('public.state_id_seq'::regclass);


--
-- TOC entry 5477 (class 2604 OID 18425)
-- Name: supportive id; Type: DEFAULT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.supportive ALTER COLUMN id SET DEFAULT nextval('public.supportive_id_seq'::regclass);


--
-- TOC entry 5492 (class 2604 OID 24681)
-- Name: tenure id; Type: DEFAULT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.tenure ALTER COLUMN id SET DEFAULT nextval('public.tenure_id_seq'::regclass);


--
-- TOC entry 5469 (class 2604 OID 18127)
-- Name: use_area id; Type: DEFAULT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.use_area ALTER COLUMN id SET DEFAULT nextval('public.use_area_id_seq'::regclass);


--
-- TOC entry 5470 (class 2604 OID 18138)
-- Name: use_category id; Type: DEFAULT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.use_category ALTER COLUMN id SET DEFAULT nextval('public.use_category_id_seq'::regclass);


--
-- TOC entry 5466 (class 2604 OID 18039)
-- Name: village id; Type: DEFAULT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.village ALTER COLUMN id SET DEFAULT nextval('public.village_id_seq'::regclass);


--
-- TOC entry 5504 (class 2604 OID 24988)
-- Name: village_governance id; Type: DEFAULT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.village_governance ALTER COLUMN id SET DEFAULT nextval('public.village_governance_id_seq'::regclass);


--
-- TOC entry 5501 (class 2604 OID 24778)
-- Name: village_identification id; Type: DEFAULT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.village_identification ALTER COLUMN id SET DEFAULT nextval('public.village_identification_id_seq'::regclass);


--
-- TOC entry 5468 (class 2604 OID 18061)
-- Name: water id; Type: DEFAULT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.water ALTER COLUMN id SET DEFAULT nextval('public.water_id_seq'::regclass);


--
-- TOC entry 5494 (class 2604 OID 24703)
-- Name: witness_types id; Type: DEFAULT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.witness_types ALTER COLUMN id SET DEFAULT nextval('public.witness_types_id_seq'::regclass);


--
-- TOC entry 5956 (class 0 OID 24733)
-- Dependencies: 297
-- Data for Name: accesses; Type: TABLE DATA; Schema: public; Owner: ilrg_admin
--

INSERT INTO public.accesses VALUES (1, 'road', 'Motorable Road');
INSERT INTO public.accesses VALUES (2, 'path', 'Path for bikes /motorbike');
INSERT INTO public.accesses VALUES (3, 'footpath', 'Footpath');
INSERT INTO public.accesses VALUES (4, 'none', 'None');


--
-- TOC entry 5874 (class 0 OID 17926)
-- Dependencies: 215
-- Data for Name: age_range; Type: TABLE DATA; Schema: public; Owner: ilrg_admin
--

INSERT INTO public.age_range VALUES (1, 'child', 'Under 18');
INSERT INTO public.age_range VALUES (2, 'youth25', 'Between 18 - 25');
INSERT INTO public.age_range VALUES (3, 'youth35', 'Between 25 - 35');
INSERT INTO public.age_range VALUES (4, 'adult', 'Between 35 - 50');
INSERT INTO public.age_range VALUES (5, 'senior', '50+');


--
-- TOC entry 5922 (class 0 OID 18456)
-- Dependencies: 263
-- Data for Name: areas; Type: TABLE DATA; Schema: public; Owner: ilrg_admin
--

INSERT INTO public.areas VALUES (1, 'single', 'One area');
INSERT INTO public.areas VALUES (2, 'non_contiguous', 'Multiple areas');
INSERT INTO public.areas VALUES (3, 'inside', 'Inside other villages');


--
-- TOC entry 5954 (class 0 OID 24722)
-- Dependencies: 295
-- Data for Name: authority; Type: TABLE DATA; Schema: public; Owner: ilrg_admin
--

INSERT INTO public.authority VALUES (1, 'lands', 'Ministry of Lands');
INSERT INTO public.authority VALUES (2, 'agriculture', 'Ministry of Agriculture');
INSERT INTO public.authority VALUES (3, 'resettlement', 'Resettlement Department');
INSERT INTO public.authority VALUES (4, 'headperson', 'Headperson / Chairman');
INSERT INTO public.authority VALUES (5, 'chief', 'Chief');
INSERT INTO public.authority VALUES (6, 'council', 'District Council');
INSERT INTO public.authority VALUES (7, 'private', 'Private citizen');
INSERT INTO public.authority VALUES (8, 'unknown', 'Unknown');


--
-- TOC entry 5924 (class 0 OID 18467)
-- Dependencies: 265
-- Data for Name: boundaries; Type: TABLE DATA; Schema: public; Owner: ilrg_admin
--

INSERT INTO public.boundaries VALUES (1, 'aoi', 'General area (area is illustrative)');
INSERT INTO public.boundaries VALUES (2, 'specific', 'Specific boundary (boundaries are very clear) ');


--
-- TOC entry 5926 (class 0 OID 18478)
-- Dependencies: 267
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: ilrg_admin
--

INSERT INTO public.categories VALUES (1, 'sm_group', 'Small group meeting');
INSERT INTO public.categories VALUES (2, 'vill_meeting', 'Open village meeting');
INSERT INTO public.categories VALUES (3, 'training', 'Training');


--
-- TOC entry 5928 (class 0 OID 18489)
-- Dependencies: 269
-- Data for Name: certify; Type: TABLE DATA; Schema: public; Owner: ilrg_admin
--

INSERT INTO public.certify VALUES (1, 'certify', 'Ready to certify - all signed, no changes');
INSERT INTO public.certify VALUES (2, 'cert_cond', 'Ready to certify AFTER corrections');
INSERT INTO public.certify VALUES (3, 'dis_cond', 'NOT ready to certify, and needs corrections');
INSERT INTO public.certify VALUES (4, 'dis', 'NOT ready to certify');


--
-- TOC entry 5886 (class 0 OID 17992)
-- Dependencies: 227
-- Data for Name: civil; Type: TABLE DATA; Schema: public; Owner: ilrg_admin
--

INSERT INTO public.civil VALUES (1, 'single', 'Single');
INSERT INTO public.civil VALUES (2, 'de_facto_union', 'Defacto Marriage');
INSERT INTO public.civil VALUES (3, 'married', 'Registered Marriage');
INSERT INTO public.civil VALUES (4, 'divorced', 'Divorced');
INSERT INTO public.civil VALUES (5, 'widowed', 'Widow / Widower');


--
-- TOC entry 5930 (class 0 OID 18500)
-- Dependencies: 271
-- Data for Name: descriptors; Type: TABLE DATA; Schema: public; Owner: ilrg_admin
--

INSERT INTO public.descriptors VALUES (1, 'bar', 'Bar', 'amenity=bar');
INSERT INTO public.descriptors VALUES (2, 'borehole', 'Borehole', '');
INSERT INTO public.descriptors VALUES (3, 'bridge', 'Bridge', '');
INSERT INTO public.descriptors VALUES (4, 'communications_tower', 'Cell phone tower', 'man_made=communications_tower');
INSERT INTO public.descriptors VALUES (5, 'clinic', 'Clinic', 'amenity=clinic');
INSERT INTO public.descriptors VALUES (6, 'civic', 'Community building', 'building=civic');
INSERT INTO public.descriptors VALUES (7, 'courthouse', 'Courthouse / Judge', 'amenity=courthouse');
INSERT INTO public.descriptors VALUES (8, 'culvert', 'Culvert', '');
INSERT INTO public.descriptors VALUES (9, 'farm', 'Farm building', 'building=farm');
INSERT INTO public.descriptors VALUES (10, 'government', 'Government building', 'building=government');
INSERT INTO public.descriptors VALUES (11, 'grave_yard', 'Graveyard', 'amenity=grave_yard');
INSERT INTO public.descriptors VALUES (12, 'hammer', 'Hammer Mills / Processing Sites', '');
INSERT INTO public.descriptors VALUES (13, 'headperson', 'Headperson''s House Current', '');
INSERT INTO public.descriptors VALUES (14, 'hospital', 'Hospital', 'amenity=hospital');
INSERT INTO public.descriptors VALUES (15, 'hotel', 'Hotel / Lodging', 'building=hotel');
INSERT INTO public.descriptors VALUES (16, 'watering_place', 'Livestock watering', 'amenity=watering_place');
INSERT INTO public.descriptors VALUES (17, 'marketplace', 'Market / Planning Zone', 'building=marketplace');
INSERT INTO public.descriptors VALUES (18, 'meeting', 'Meeting Place', '');
INSERT INTO public.descriptors VALUES (19, 'other', 'Other', 'amenity=other');
INSERT INTO public.descriptors VALUES (20, 'palace', 'Palace', '');
INSERT INTO public.descriptors VALUES (21, 'pharmacy', 'Pharmacy', 'amenity=pharmacy');
INSERT INTO public.descriptors VALUES (22, 'pitch', 'Pitch (Football)', 'leisure=pitch');
INSERT INTO public.descriptors VALUES (23, 'place_of_worship', 'Place of worship', 'amenity=place_of_worship');
INSERT INTO public.descriptors VALUES (24, 'police', 'Police', 'amenity=police');
INSERT INTO public.descriptors VALUES (25, 'school', 'School', 'amenity=school');
INSERT INTO public.descriptors VALUES (26, 'kiosk', 'Service kiosk', 'building=kiosk');
INSERT INTO public.descriptors VALUES (27, 'retail', 'Shop', 'building=retail');
INSERT INTO public.descriptors VALUES (28, 'water_well', 'Well shallow', 'man_made=water_well');
INSERT INTO public.descriptors VALUES (29, 'well_deep', 'Well deep', '');
INSERT INTO public.descriptors VALUES (30, 'apartments', 'Apartment building', 'building=apartments');
INSERT INTO public.descriptors VALUES (31, 'bank', 'Bank', 'amenity=bank');
INSERT INTO public.descriptors VALUES (32, 'bus_station', 'Bus station', 'amenity=bus_station');
INSERT INTO public.descriptors VALUES (33, 'atm', 'Cash machine', 'amenity=atm');
INSERT INTO public.descriptors VALUES (34, 'commercial', 'Commercial site', 'building=commercial');
INSERT INTO public.descriptors VALUES (35, 'dentist', 'Dentist', 'amenity=dentist');
INSERT INTO public.descriptors VALUES (36, 'doctors', 'Doctor / Medical ', 'amenity=doctors');
INSERT INTO public.descriptors VALUES (37, 'fire_station', 'Fire Station', 'amenity=fire_station');
INSERT INTO public.descriptors VALUES (38, 'college', 'Higher education college', 'amenity=college');
INSERT INTO public.descriptors VALUES (39, 'industrial', 'Industrial Site', 'building=industrial');
INSERT INTO public.descriptors VALUES (40, 'internet_cafe', 'Internet Café', 'amenity=internet_cafe');
INSERT INTO public.descriptors VALUES (41, 'kindergarten', 'Kindergarten', 'amenity=kindergarten');
INSERT INTO public.descriptors VALUES (42, 'library', 'Library', 'amenity=library');
INSERT INTO public.descriptors VALUES (43, 'bureau_de_change', 'Money exchange', 'amenity=bureau_de_change');
INSERT INTO public.descriptors VALUES (44, 'office', 'Office', 'building=office');
INSERT INTO public.descriptors VALUES (45, 'fuel', 'Petrol station', 'amenity=fuel');
INSERT INTO public.descriptors VALUES (46, 'post_office', 'Post Office', 'amenity=post_office');
INSERT INTO public.descriptors VALUES (47, 'prison', 'Prison', 'amenity=prison');
INSERT INTO public.descriptors VALUES (48, 'restaurant', 'Restaurant', 'amenity=restaurant');
INSERT INTO public.descriptors VALUES (49, 'shrine', 'Shrine', 'building=shrine');
INSERT INTO public.descriptors VALUES (50, 'supermarket', 'Supermarket', 'building=supermarket');
INSERT INTO public.descriptors VALUES (51, 'transportation', 'Transportation site', 'building=transportation');
INSERT INTO public.descriptors VALUES (52, 'university', 'University', 'building=university');
INSERT INTO public.descriptors VALUES (53, 'veterinary', 'Veterinarian', 'amenity=veterinary');
INSERT INTO public.descriptors VALUES (54, 'warehouse', 'Warehouse', 'building=warehouse');


--
-- TOC entry 5932 (class 0 OID 24589)
-- Dependencies: 273
-- Data for Name: descriptors_area; Type: TABLE DATA; Schema: public; Owner: ilrg_admin
--

INSERT INTO public.descriptors_area VALUES (1, 'farm', 'Agriculture');
INSERT INTO public.descriptors_area VALUES (2, 'dam', 'Dam');
INSERT INTO public.descriptors_area VALUES (3, 'pasture', 'Pasture');
INSERT INTO public.descriptors_area VALUES (4, 'wetland', 'Dambo');
INSERT INTO public.descriptors_area VALUES (5, 'cca', 'Community Conservation Area (Protected Area)');
INSERT INTO public.descriptors_area VALUES (6, 'gma', 'Game Management Area (Protected Area)');
INSERT INTO public.descriptors_area VALUES (7, 'gameranch', 'Game Ranch');
INSERT INTO public.descriptors_area VALUES (8, 'graveyard', 'Graveyard');
INSERT INTO public.descriptors_area VALUES (9, 'water', 'Lake / Water Body');
INSERT INTO public.descriptors_area VALUES (11, 'bush', 'Bush');
INSERT INTO public.descriptors_area VALUES (12, 'forest', 'Forest (define if it is State, National, Local, Community)');
INSERT INTO public.descriptors_area VALUES (13, 'mine', 'Mining');
INSERT INTO public.descriptors_area VALUES (14, 'residential', 'Settlement Area');
INSERT INTO public.descriptors_area VALUES (15, 'titled', 'Titled Land');
INSERT INTO public.descriptors_area VALUES (16, 'other', 'Other');


--
-- TOC entry 5918 (class 0 OID 18434)
-- Dependencies: 259
-- Data for Name: dev; Type: TABLE DATA; Schema: public; Owner: ilrg_admin
--

INSERT INTO public.dev VALUES (1, 'comaco', 'COMACO');
INSERT INTO public.dev VALUES (2, 'bcp', 'BCP');
INSERT INTO public.dev VALUES (3, 'other', 'Other');


--
-- TOC entry 5978 (class 0 OID 25032)
-- Dependencies: 319
-- Data for Name: dispute; Type: TABLE DATA; Schema: public; Owner: ilrg_admin
--



--
-- TOC entry 5980 (class 0 OID 25043)
-- Dependencies: 321
-- Data for Name: dispute_resolution; Type: TABLE DATA; Schema: public; Owner: ilrg_admin
--



--
-- TOC entry 5908 (class 0 OID 18187)
-- Dependencies: 249
-- Data for Name: disputes; Type: TABLE DATA; Schema: public; Owner: ilrg_admin
--

INSERT INTO public.disputes VALUES (1, 'dis_bound', 'Do not certify - parcel boundaries are under dispute');
INSERT INTO public.disputes VALUES (2, 'dis_owner', 'Do not certify - dispute over the correct landholder or persons of interest');
INSERT INTO public.disputes VALUES (3, 'dis_other', 'Do not certify - other dispute');


--
-- TOC entry 5912 (class 0 OID 18400)
-- Dependencies: 253
-- Data for Name: distances; Type: TABLE DATA; Schema: public; Owner: ilrg_admin
--



--
-- TOC entry 5920 (class 0 OID 18445)
-- Dependencies: 261
-- Data for Name: documents; Type: TABLE DATA; Schema: public; Owner: ilrg_admin
--

INSERT INTO public.documents VALUES (1, 'identity_document', 'NRC');
INSERT INTO public.documents VALUES (2, 'passport', 'Passport');
INSERT INTO public.documents VALUES (3, 'tax_payment_card', 'TPIN');
INSERT INTO public.documents VALUES (4, 'declaration', 'Declaration from other source');
INSERT INTO public.documents VALUES (5, 'voter_card', 'Electoral card');
INSERT INTO public.documents VALUES (6, 'driving_license', 'Drivers license');
INSERT INTO public.documents VALUES (7, 'other', 'Other');


--
-- TOC entry 5904 (class 0 OID 18157)
-- Dependencies: 245
-- Data for Name: enumerator; Type: TABLE DATA; Schema: public; Owner: ilrg_admin
--



--
-- TOC entry 5952 (class 0 OID 24711)
-- Dependencies: 293
-- Data for Name: evidence; Type: TABLE DATA; Schema: public; Owner: ilrg_admin
--

INSERT INTO public.evidence VALUES (1, 'title', 'Title');
INSERT INTO public.evidence VALUES (2, 'occupancy', 'Occupancy Certificate');
INSERT INTO public.evidence VALUES (3, 'offer', 'Offer Letter');
INSERT INTO public.evidence VALUES (4, 'council', 'Council Record');
INSERT INTO public.evidence VALUES (5, 'letter', 'Letter of Sale');
INSERT INTO public.evidence VALUES (6, 'none', 'None');
INSERT INTO public.evidence VALUES (7, 'chief_let', 'Letter from Chief / Customary');
INSERT INTO public.evidence VALUES (8, 'cust_cert', 'Customary Certificate');
INSERT INTO public.evidence VALUES (9, 'map', 'Recorded on Map');


--
-- TOC entry 5974 (class 0 OID 25010)
-- Dependencies: 315
-- Data for Name: evidence_docs; Type: TABLE DATA; Schema: public; Owner: ilrg_admin
--



--
-- TOC entry 5884 (class 0 OID 17981)
-- Dependencies: 225
-- Data for Name: gender; Type: TABLE DATA; Schema: public; Owner: ilrg_admin
--

INSERT INTO public.gender VALUES (1, 'male', 'Male');
INSERT INTO public.gender VALUES (2, 'female', 'Female');
INSERT INTO public.gender VALUES (3, 'na', 'Not applicable');


--
-- TOC entry 5934 (class 0 OID 24611)
-- Dependencies: 275
-- Data for Name: infrastructure; Type: TABLE DATA; Schema: public; Owner: ilrg_admin
--

INSERT INTO public.infrastructure VALUES (1, 'perm_res', 'Permanent house');
INSERT INTO public.infrastructure VALUES (2, 'perm_ag', 'Permanent shed / storage');
INSERT INTO public.infrastructure VALUES (3, 'borehole', 'Borehole');
INSERT INTO public.infrastructure VALUES (4, 'well', 'Shallow well');
INSERT INTO public.infrastructure VALUES (5, 'irrigation', 'Irrigation');
INSERT INTO public.infrastructure VALUES (6, 'toilet', 'Toilet');
INSERT INTO public.infrastructure VALUES (7, 'septic', 'Septic or sewer');
INSERT INTO public.infrastructure VALUES (8, 'temp_res', 'Temporary house');
INSERT INTO public.infrastructure VALUES (9, 'wall', 'Wall');
INSERT INTO public.infrastructure VALUES (10, 'field_fence', 'Field fence');
INSERT INTO public.infrastructure VALUES (11, 'kraal', 'Kraal');
INSERT INTO public.infrastructure VALUES (12, 'electricity', 'Electricity');
INSERT INTO public.infrastructure VALUES (13, 'grade_road', 'Graded road');
INSERT INTO public.infrastructure VALUES (14, 'access_road', 'Access road (motor vehicle)');


--
-- TOC entry 5936 (class 0 OID 24622)
-- Dependencies: 277
-- Data for Name: institutions; Type: TABLE DATA; Schema: public; Owner: ilrg_admin
--

INSERT INTO public.institutions VALUES (1, 'vill_elders', 'Village Headpersons and/or elders');
INSERT INTO public.institutions VALUES (2, 'advisors', 'Indunas of Chief');
INSERT INTO public.institutions VALUES (3, 'chief', 'Chief');
INSERT INTO public.institutions VALUES (4, 'other_chief', 'Other or neighbouring Chief');
INSERT INTO public.institutions VALUES (5, 'gov_local', 'Local Government');
INSERT INTO public.institutions VALUES (6, 'gov_nat', 'National Government');
INSERT INTO public.institutions VALUES (7, 'private', 'Private third party (company, individual)');
INSERT INTO public.institutions VALUES (8, 'other', 'Other');
INSERT INTO public.institutions VALUES (9, 'community', 'Community');


--
-- TOC entry 5876 (class 0 OID 17937)
-- Dependencies: 217
-- Data for Name: jurisdiction; Type: TABLE DATA; Schema: public; Owner: ilrg_admin
--

INSERT INTO public.jurisdiction VALUES (1, 'maf', 'Mafuta');
INSERT INTO public.jurisdiction VALUES (2, 'chi', 'Chikwa');
INSERT INTO public.jurisdiction VALUES (3, 'chf', 'Chifunda');
INSERT INTO public.jurisdiction VALUES (4, 'mag', 'Maguya');
INSERT INTO public.jurisdiction VALUES (5, 'mka', 'Mkanda');
INSERT INTO public.jurisdiction VALUES (6, 'mnu', 'Mnukwa');
INSERT INTO public.jurisdiction VALUES (7, 'msh', 'Mshawa');
INSERT INTO public.jurisdiction VALUES (8, 'nya', 'Nyampande');
INSERT INTO public.jurisdiction VALUES (9, 'nza', 'Nzamane');
INSERT INTO public.jurisdiction VALUES (10, 'san', 'Sandwe');
INSERT INTO public.jurisdiction VALUES (11, 'kal', 'Kalindawalo');
INSERT INTO public.jurisdiction VALUES (12, 'other', 'Other');


--
-- TOC entry 5972 (class 0 OID 24997)
-- Dependencies: 313
-- Data for Name: jurisdiction_boundaries; Type: TABLE DATA; Schema: public; Owner: ilrg_admin
--



--
-- TOC entry 5938 (class 0 OID 24633)
-- Dependencies: 279
-- Data for Name: jurisdiction_type; Type: TABLE DATA; Schema: public; Owner: ilrg_admin
--

INSERT INTO public.jurisdiction_type VALUES (1, 'village', 'Village');
INSERT INTO public.jurisdiction_type VALUES (2, 'area', 'Sub-area of a Chiefdom / Neighborhood');
INSERT INTO public.jurisdiction_type VALUES (3, 'chiefdom', 'Chiefdom');
INSERT INTO public.jurisdiction_type VALUES (4, 'ward', 'Ward');
INSERT INTO public.jurisdiction_type VALUES (5, 'district', 'District');
INSERT INTO public.jurisdiction_type VALUES (6, 'town_city', 'Town / City');
INSERT INTO public.jurisdiction_type VALUES (7, 'com_for', 'Community Forest');


--
-- TOC entry 5940 (class 0 OID 24644)
-- Dependencies: 281
-- Data for Name: maps; Type: TABLE DATA; Schema: public; Owner: ilrg_admin
--

INSERT INTO public.maps VALUES (1, 'female', 'Female');
INSERT INTO public.maps VALUES (2, 'male ', 'Male ');
INSERT INTO public.maps VALUES (3, 'elder', 'Elders');
INSERT INTO public.maps VALUES (4, 'youth_f', 'Youth - Female');
INSERT INTO public.maps VALUES (5, 'youth_m', 'Youth - Male');
INSERT INTO public.maps VALUES (6, 'other ', 'Other ');


--
-- TOC entry 5942 (class 0 OID 24656)
-- Dependencies: 283
-- Data for Name: means; Type: TABLE DATA; Schema: public; Owner: ilrg_admin
--

INSERT INTO public.means VALUES (1, 'tablet', 'Boundary points taken (manual) or drawn on tablet (placement by tapping)');
INSERT INTO public.means VALUES (2, 'paper', 'Printed map only');


--
-- TOC entry 5982 (class 0 OID 25054)
-- Dependencies: 323
-- Data for Name: meeting; Type: TABLE DATA; Schema: public; Owner: ilrg_admin
--



--
-- TOC entry 5948 (class 0 OID 24689)
-- Dependencies: 289
-- Data for Name: meeting_types; Type: TABLE DATA; Schema: public; Owner: ilrg_admin
--

INSERT INTO public.meeting_types VALUES (1, 'first_vill_meeting', 'First village meeting');
INSERT INTO public.meeting_types VALUES (2, 'comm_mapping', 'Community mapping and points of interest');
INSERT INTO public.meeting_types VALUES (3, 'first_reg', 'First registration sensitization');
INSERT INTO public.meeting_types VALUES (4, 'obj_corr', 'Objections and corrections');
INSERT INTO public.meeting_types VALUES (5, 'land_use', 'Land use planning');
INSERT INTO public.meeting_types VALUES (6, 'cert_dist', 'Certificate distribution');
INSERT INTO public.meeting_types VALUES (7, 'admin_training', 'Administration training');
INSERT INTO public.meeting_types VALUES (8, 'dispute_res', 'Dispute resolution');
INSERT INTO public.meeting_types VALUES (9, 'comm_forest_mgmt', 'Community forest management');
INSERT INTO public.meeting_types VALUES (10, 'wildlife_mgmt', 'Wildlife management');
INSERT INTO public.meeting_types VALUES (11, 'other', 'Other');


--
-- TOC entry 5880 (class 0 OID 17959)
-- Dependencies: 221
-- Data for Name: nationality; Type: TABLE DATA; Schema: public; Owner: ilrg_admin
--

INSERT INTO public.nationality VALUES (1, 'zam', 'Zambian');
INSERT INTO public.nationality VALUES (2, 'other', 'Other');


--
-- TOC entry 5896 (class 0 OID 18047)
-- Dependencies: 237
-- Data for Name: norms; Type: TABLE DATA; Schema: public; Owner: ilrg_admin
--

INSERT INTO public.norms VALUES (1, 'inherited', 'Inherited');
INSERT INTO public.norms VALUES (2, 'givenfriend', 'Given by friend');
INSERT INTO public.norms VALUES (3, 'givenhead', 'Allocated by headman');
INSERT INTO public.norms VALUES (4, 'givenchief', 'Allocated by chief');
INSERT INTO public.norms VALUES (5, 'bought', 'Bought');


--
-- TOC entry 5976 (class 0 OID 25021)
-- Dependencies: 317
-- Data for Name: occ; Type: TABLE DATA; Schema: public; Owner: ilrg_admin
--



--
-- TOC entry 5910 (class 0 OID 18389)
-- Dependencies: 251
-- Data for Name: organization; Type: TABLE DATA; Schema: public; Owner: ilrg_admin
--

INSERT INTO public.organization VALUES (1, 'fzs', 'Frankfurt Zoological Society');
INSERT INTO public.organization VALUES (2, 'cdla', 'Chipata District Land Alliance');
INSERT INTO public.organization VALUES (3, 'pdla', 'Petauke District Land Alliance');
INSERT INTO public.organization VALUES (4, 'other', 'Other');


--
-- TOC entry 5890 (class 0 OID 18014)
-- Dependencies: 231
-- Data for Name: parcel; Type: TABLE DATA; Schema: public; Owner: ilrg_admin
--



--
-- TOC entry 5914 (class 0 OID 18411)
-- Dependencies: 255
-- Data for Name: participation; Type: TABLE DATA; Schema: public; Owner: ilrg_admin
--

INSERT INTO public.participation VALUES (1, 'very_high', 'Very high');
INSERT INTO public.participation VALUES (2, 'high', 'High');
INSERT INTO public.participation VALUES (3, 'neither', 'Average');
INSERT INTO public.participation VALUES (4, 'low', 'Low');
INSERT INTO public.participation VALUES (5, 'very_low', 'Very low');


--
-- TOC entry 5882 (class 0 OID 17970)
-- Dependencies: 223
-- Data for Name: party_juridical; Type: TABLE DATA; Schema: public; Owner: ilrg_admin
--



--
-- TOC entry 5872 (class 0 OID 17915)
-- Dependencies: 213
-- Data for Name: party_person; Type: TABLE DATA; Schema: public; Owner: ilrg_admin
--



--
-- TOC entry 5968 (class 0 OID 24957)
-- Dependencies: 309
-- Data for Name: party_role; Type: TABLE DATA; Schema: public; Owner: ilrg_admin
--



--
-- TOC entry 5888 (class 0 OID 18003)
-- Dependencies: 229
-- Data for Name: profession; Type: TABLE DATA; Schema: public; Owner: ilrg_admin
--

INSERT INTO public.profession VALUES (1, 'farmer', 'Farmer');
INSERT INTO public.profession VALUES (2, 'carpenter', 'Carpenter');
INSERT INTO public.profession VALUES (3, 'comm', 'Commercial Vendor');
INSERT INTO public.profession VALUES (4, 'medicine', 'Medicine');
INSERT INTO public.profession VALUES (5, 'student', 'Student');
INSERT INTO public.profession VALUES (6, 'public_serv', 'Civil servant');
INSERT INTO public.profession VALUES (7, 'teacher', 'Teacher');
INSERT INTO public.profession VALUES (8, 'pastor', 'Religious');
INSERT INTO public.profession VALUES (9, 'leader', 'Community Leader');
INSERT INTO public.profession VALUES (10, 'other', 'Other');


--
-- TOC entry 5906 (class 0 OID 18168)
-- Dependencies: 247
-- Data for Name: redraw; Type: TABLE DATA; Schema: public; Owner: ilrg_admin
--



--
-- TOC entry 5958 (class 0 OID 24745)
-- Dependencies: 299
-- Data for Name: relationship; Type: TABLE DATA; Schema: public; Owner: ilrg_admin
--



--
-- TOC entry 5878 (class 0 OID 17948)
-- Dependencies: 219
-- Data for Name: relationship_poi; Type: TABLE DATA; Schema: public; Owner: ilrg_admin
--

INSERT INTO public.relationship_poi VALUES (1, 'primary', 'Self');
INSERT INTO public.relationship_poi VALUES (2, 'spouse', 'Spouse');
INSERT INTO public.relationship_poi VALUES (3, 'niece_neph', 'Niece/nephew');
INSERT INTO public.relationship_poi VALUES (4, 'child', 'Child');
INSERT INTO public.relationship_poi VALUES (5, 'sibling', 'Sibling');
INSERT INTO public.relationship_poi VALUES (6, 'grandchild', 'Grandchild');
INSERT INTO public.relationship_poi VALUES (7, 'aunt_uncle', 'Aunt/uncle');
INSERT INTO public.relationship_poi VALUES (8, 'parent', 'Parent');
INSERT INTO public.relationship_poi VALUES (9, 'distant', 'Other Relative/Relation');
INSERT INTO public.relationship_poi VALUES (10, 'friend', 'Friend');
INSERT INTO public.relationship_poi VALUES (11, 'user', 'Long-term user');


--
-- TOC entry 5944 (class 0 OID 24667)
-- Dependencies: 285
-- Data for Name: rep_relations; Type: TABLE DATA; Schema: public; Owner: ilrg_admin
--

INSERT INTO public.rep_relations VALUES (1, 'family', 'Family member');
INSERT INTO public.rep_relations VALUES (2, 'friend', 'Friend');
INSERT INTO public.rep_relations VALUES (3, 'borrow', 'Currently cultivating/borrowing');
INSERT INTO public.rep_relations VALUES (4, 'leader', 'Community leader');


--
-- TOC entry 5962 (class 0 OID 24764)
-- Dependencies: 303
-- Data for Name: resources_areas; Type: TABLE DATA; Schema: public; Owner: ilrg_admin
--



--
-- TOC entry 5960 (class 0 OID 24753)
-- Dependencies: 301
-- Data for Name: resources_points; Type: TABLE DATA; Schema: public; Owner: ilrg_admin
--



--
-- TOC entry 5966 (class 0 OID 24786)
-- Dependencies: 307
-- Data for Name: roads; Type: TABLE DATA; Schema: public; Owner: ilrg_admin
--



--
-- TOC entry 5454 (class 0 OID 16706)
-- Dependencies: 198
-- Data for Name: spatial_ref_sys; Type: TABLE DATA; Schema: public; Owner: rdsadmin
--



--
-- TOC entry 5892 (class 0 OID 18025)
-- Dependencies: 233
-- Data for Name: state; Type: TABLE DATA; Schema: public; Owner: ilrg_admin
--

INSERT INTO public.state VALUES (1, 'state_parcel', 'State parcel');
INSERT INTO public.state VALUES (2, 'cust_parcel', 'Customary parcel');
INSERT INTO public.state VALUES (3, 'conversion', 'Customary parcel for conversion');


--
-- TOC entry 5916 (class 0 OID 18422)
-- Dependencies: 257
-- Data for Name: supportive; Type: TABLE DATA; Schema: public; Owner: ilrg_admin
--

INSERT INTO public.supportive VALUES (1, 'very_supp', 'Very supportive of process');
INSERT INTO public.supportive VALUES (2, 'supp', 'Supportive of process');
INSERT INTO public.supportive VALUES (3, 'neither', 'Disinterested');
INSERT INTO public.supportive VALUES (4, 'low_supp', 'Not supportive of process');
INSERT INTO public.supportive VALUES (5, 'very_low_supp', 'Resistant to process');
INSERT INTO public.supportive VALUES (6, 'absent', 'Not present at meeting');


--
-- TOC entry 5946 (class 0 OID 24678)
-- Dependencies: 287
-- Data for Name: tenure; Type: TABLE DATA; Schema: public; Owner: ilrg_admin
--

INSERT INTO public.tenure VALUES (1, 'private', 'Single/joint owner (person/family/org) ');
INSERT INTO public.tenure VALUES (2, 'community', 'Community (restricted to a single village)');
INSERT INTO public.tenure VALUES (3, 'communal', 'Communal (only those villages nearby) ');
INSERT INTO public.tenure VALUES (4, 'com_area', 'Communal (anyone from the area) ');
INSERT INTO public.tenure VALUES (5, 'com_jur_chief', 'Communal (anyone from within the jurisdiction/chiefdom)');
INSERT INTO public.tenure VALUES (6, 'open', 'Open to anyone (inside and outside jurisdiction/chiefdom)');
INSERT INTO public.tenure VALUES (7, 'state', 'Only state/government');


--
-- TOC entry 5900 (class 0 OID 18124)
-- Dependencies: 241
-- Data for Name: use_area; Type: TABLE DATA; Schema: public; Owner: ilrg_admin
--

INSERT INTO public.use_area VALUES (1, 'firewood', 'Firewood');
INSERT INTO public.use_area VALUES (2, 'timber', 'Timber for sale / construction');
INSERT INTO public.use_area VALUES (3, 'hunting', 'Hunting');
INSERT INTO public.use_area VALUES (4, 'honey', 'Honey');
INSERT INTO public.use_area VALUES (5, 'bamboo', 'Bamboo');
INSERT INTO public.use_area VALUES (6, 'medicines', 'Medicinal Plants');
INSERT INTO public.use_area VALUES (7, 'ag_expand', 'Expansion of cropping fields');
INSERT INTO public.use_area VALUES (8, 'charcoal', 'Charcoal production');
INSERT INTO public.use_area VALUES (9, 'fish', 'Fishing');
INSERT INTO public.use_area VALUES (10, 'irrigation', 'Irrigation');
INSERT INTO public.use_area VALUES (11, 'sacred', 'Sacred');
INSERT INTO public.use_area VALUES (12, 'agric', 'Agriculture');
INSERT INTO public.use_area VALUES (13, 'minerals', 'Minerals');
INSERT INTO public.use_area VALUES (14, 'poles', 'Woodlot');
INSERT INTO public.use_area VALUES (15, 'reserve', 'Reserved / Protected');
INSERT INTO public.use_area VALUES (16, 'clay', 'Clay');
INSERT INTO public.use_area VALUES (17, 'reeds', 'Reeds');
INSERT INTO public.use_area VALUES (18, 'reforestation', 'Reforestation');
INSERT INTO public.use_area VALUES (19, 'residential', 'Settlement');
INSERT INTO public.use_area VALUES (20, 'other', 'Other');
INSERT INTO public.use_area VALUES (22, 'mixed_farming', 'Mixed agriculture/livestock');
INSERT INTO public.use_area VALUES (23, 'livestock', 'Livestock');
INSERT INTO public.use_area VALUES (24, 'perm_culture', 'Permanent cultivation/garden');
INSERT INTO public.use_area VALUES (25, 'forestry', 'Forestry');
INSERT INTO public.use_area VALUES (26, 'bush', 'Uncleared bush for future use');
INSERT INTO public.use_area VALUES (27, 'holiday', 'Holiday');
INSERT INTO public.use_area VALUES (28, 'soc_relig', 'Social/Religious Use');
INSERT INTO public.use_area VALUES (29, 'community_purposes', 'Community use');
INSERT INTO public.use_area VALUES (30, 'commercial', 'Commercial');
INSERT INTO public.use_area VALUES (31, 'res_com', 'Mixed residential/commercial');


--
-- TOC entry 5902 (class 0 OID 18135)
-- Dependencies: 243
-- Data for Name: use_category; Type: TABLE DATA; Schema: public; Owner: ilrg_admin
--

INSERT INTO public.use_category VALUES (1, 'fam', 'Extended Family / Clan Land');
INSERT INTO public.use_category VALUES (2, 'hh', 'Household Land');
INSERT INTO public.use_category VALUES (3, 'vf', 'Village Field');
INSERT INTO public.use_category VALUES (4, 'group', 'Group or association (church, school, etc)');
INSERT INTO public.use_category VALUES (5, 'noclaim', 'Unclaimable because of ongoing dispute');


--
-- TOC entry 5894 (class 0 OID 18036)
-- Dependencies: 235
-- Data for Name: village; Type: TABLE DATA; Schema: public; Owner: ilrg_admin
--



--
-- TOC entry 5970 (class 0 OID 24985)
-- Dependencies: 311
-- Data for Name: village_governance; Type: TABLE DATA; Schema: public; Owner: ilrg_admin
--



--
-- TOC entry 5964 (class 0 OID 24775)
-- Dependencies: 305
-- Data for Name: village_identification; Type: TABLE DATA; Schema: public; Owner: ilrg_admin
--



--
-- TOC entry 5898 (class 0 OID 18058)
-- Dependencies: 239
-- Data for Name: water; Type: TABLE DATA; Schema: public; Owner: ilrg_admin
--

INSERT INTO public.water VALUES (1, 'borehole', 'Borehole');
INSERT INTO public.water VALUES (2, 'well', 'Shallow well');
INSERT INTO public.water VALUES (3, 'well_deep', 'Deep well');
INSERT INTO public.water VALUES (4, 'river', 'River');
INSERT INTO public.water VALUES (5, 'public', 'Public water');
INSERT INTO public.water VALUES (6, 'distant', 'Distant water (have to walk over 100m)');


--
-- TOC entry 5950 (class 0 OID 24700)
-- Dependencies: 291
-- Data for Name: witness_types; Type: TABLE DATA; Schema: public; Owner: ilrg_admin
--

INSERT INTO public.witness_types VALUES (1, 'neghbour_direct', 'Direct parcel neighbour');
INSERT INTO public.witness_types VALUES (2, 'neighbour_near', 'Nearby neighbour');
INSERT INTO public.witness_types VALUES (3, 'headman', 'Headman');
INSERT INTO public.witness_types VALUES (4, 'vlc', 'VLC');
INSERT INTO public.witness_types VALUES (5, 'elder', 'Elder');


--
-- TOC entry 6045 (class 0 OID 0)
-- Dependencies: 296
-- Name: accesses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilrg_admin
--

SELECT pg_catalog.setval('public.accesses_id_seq', 4, true);


--
-- TOC entry 6046 (class 0 OID 0)
-- Dependencies: 214
-- Name: age_range_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilrg_admin
--

SELECT pg_catalog.setval('public.age_range_id_seq', 6, true);


--
-- TOC entry 6047 (class 0 OID 0)
-- Dependencies: 262
-- Name: areas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilrg_admin
--

SELECT pg_catalog.setval('public.areas_id_seq', 3, true);


--
-- TOC entry 6048 (class 0 OID 0)
-- Dependencies: 294
-- Name: authority_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilrg_admin
--

SELECT pg_catalog.setval('public.authority_id_seq', 8, true);


--
-- TOC entry 6049 (class 0 OID 0)
-- Dependencies: 264
-- Name: boundaries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilrg_admin
--

SELECT pg_catalog.setval('public.boundaries_id_seq', 2, true);


--
-- TOC entry 6050 (class 0 OID 0)
-- Dependencies: 266
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilrg_admin
--

SELECT pg_catalog.setval('public.categories_id_seq', 3, true);


--
-- TOC entry 6051 (class 0 OID 0)
-- Dependencies: 268
-- Name: certify_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilrg_admin
--

SELECT pg_catalog.setval('public.certify_id_seq', 4, true);


--
-- TOC entry 6052 (class 0 OID 0)
-- Dependencies: 226
-- Name: civil_status_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilrg_admin
--

SELECT pg_catalog.setval('public.civil_status_id_seq', 5, true);


--
-- TOC entry 6053 (class 0 OID 0)
-- Dependencies: 272
-- Name: descriptors_area_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilrg_admin
--

SELECT pg_catalog.setval('public.descriptors_area_id_seq', 16, true);


--
-- TOC entry 6054 (class 0 OID 0)
-- Dependencies: 270
-- Name: descriptors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilrg_admin
--

SELECT pg_catalog.setval('public.descriptors_id_seq', 54, true);


--
-- TOC entry 6055 (class 0 OID 0)
-- Dependencies: 258
-- Name: dev_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilrg_admin
--

SELECT pg_catalog.setval('public.dev_id_seq', 3, true);


--
-- TOC entry 6056 (class 0 OID 0)
-- Dependencies: 318
-- Name: dispute_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilrg_admin
--

SELECT pg_catalog.setval('public.dispute_id_seq', 1, false);


--
-- TOC entry 6057 (class 0 OID 0)
-- Dependencies: 320
-- Name: dispute_resolution_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilrg_admin
--

SELECT pg_catalog.setval('public.dispute_resolution_id_seq', 1, false);


--
-- TOC entry 6058 (class 0 OID 0)
-- Dependencies: 248
-- Name: dispute_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilrg_admin
--

SELECT pg_catalog.setval('public.dispute_type_id_seq', 3, true);


--
-- TOC entry 6059 (class 0 OID 0)
-- Dependencies: 252
-- Name: distances_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilrg_admin
--

SELECT pg_catalog.setval('public.distances_id_seq', 1, false);


--
-- TOC entry 6060 (class 0 OID 0)
-- Dependencies: 260
-- Name: documents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilrg_admin
--

SELECT pg_catalog.setval('public.documents_id_seq', 7, true);


--
-- TOC entry 6061 (class 0 OID 0)
-- Dependencies: 244
-- Name: enumerator_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilrg_admin
--

SELECT pg_catalog.setval('public.enumerator_id_seq', 1, false);


--
-- TOC entry 6062 (class 0 OID 0)
-- Dependencies: 314
-- Name: evidence_docs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilrg_admin
--

SELECT pg_catalog.setval('public.evidence_docs_id_seq', 1, false);


--
-- TOC entry 6063 (class 0 OID 0)
-- Dependencies: 292
-- Name: evidence_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilrg_admin
--

SELECT pg_catalog.setval('public.evidence_id_seq', 9, true);


--
-- TOC entry 6064 (class 0 OID 0)
-- Dependencies: 224
-- Name: gender_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilrg_admin
--

SELECT pg_catalog.setval('public.gender_id_seq', 3, true);


--
-- TOC entry 6065 (class 0 OID 0)
-- Dependencies: 274
-- Name: infrastructure_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilrg_admin
--

SELECT pg_catalog.setval('public.infrastructure_id_seq', 14, true);


--
-- TOC entry 6066 (class 0 OID 0)
-- Dependencies: 276
-- Name: institutions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilrg_admin
--

SELECT pg_catalog.setval('public.institutions_id_seq', 9, true);


--
-- TOC entry 6067 (class 0 OID 0)
-- Dependencies: 312
-- Name: jurisdiction_boundaries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilrg_admin
--

SELECT pg_catalog.setval('public.jurisdiction_boundaries_id_seq', 1, false);


--
-- TOC entry 6068 (class 0 OID 0)
-- Dependencies: 216
-- Name: jurisdiction_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilrg_admin
--

SELECT pg_catalog.setval('public.jurisdiction_id_seq', 12, true);


--
-- TOC entry 6069 (class 0 OID 0)
-- Dependencies: 278
-- Name: jurisdictions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilrg_admin
--

SELECT pg_catalog.setval('public.jurisdictions_id_seq', 7, true);


--
-- TOC entry 6070 (class 0 OID 0)
-- Dependencies: 280
-- Name: maps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilrg_admin
--

SELECT pg_catalog.setval('public.maps_id_seq', 6, true);


--
-- TOC entry 6071 (class 0 OID 0)
-- Dependencies: 282
-- Name: means_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilrg_admin
--

SELECT pg_catalog.setval('public.means_id_seq', 2, true);


--
-- TOC entry 6072 (class 0 OID 0)
-- Dependencies: 322
-- Name: meeting_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilrg_admin
--

SELECT pg_catalog.setval('public.meeting_id_seq', 1, false);


--
-- TOC entry 6073 (class 0 OID 0)
-- Dependencies: 288
-- Name: meeting_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilrg_admin
--

SELECT pg_catalog.setval('public.meeting_types_id_seq', 11, true);


--
-- TOC entry 6074 (class 0 OID 0)
-- Dependencies: 220
-- Name: nationality_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilrg_admin
--

SELECT pg_catalog.setval('public.nationality_id_seq', 2, true);


--
-- TOC entry 6075 (class 0 OID 0)
-- Dependencies: 236
-- Name: norm_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilrg_admin
--

SELECT pg_catalog.setval('public.norm_type_id_seq', 5, true);


--
-- TOC entry 6076 (class 0 OID 0)
-- Dependencies: 316
-- Name: occ_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilrg_admin
--

SELECT pg_catalog.setval('public.occ_id_seq', 1, false);


--
-- TOC entry 6077 (class 0 OID 0)
-- Dependencies: 250
-- Name: organization_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilrg_admin
--

SELECT pg_catalog.setval('public.organization_id_seq', 4, true);


--
-- TOC entry 6078 (class 0 OID 0)
-- Dependencies: 254
-- Name: participation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilrg_admin
--

SELECT pg_catalog.setval('public.participation_id_seq', 5, true);


--
-- TOC entry 6079 (class 0 OID 0)
-- Dependencies: 222
-- Name: party_juridical_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilrg_admin
--

SELECT pg_catalog.setval('public.party_juridical_id_seq', 1, false);


--
-- TOC entry 6080 (class 0 OID 0)
-- Dependencies: 212
-- Name: party_person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilrg_admin
--

SELECT pg_catalog.setval('public.party_person_id_seq', 1, false);


--
-- TOC entry 6081 (class 0 OID 0)
-- Dependencies: 308
-- Name: party_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilrg_admin
--

SELECT pg_catalog.setval('public.party_role_id_seq', 1, false);


--
-- TOC entry 6082 (class 0 OID 0)
-- Dependencies: 228
-- Name: profession_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilrg_admin
--

SELECT pg_catalog.setval('public.profession_id_seq', 10, true);


--
-- TOC entry 6083 (class 0 OID 0)
-- Dependencies: 246
-- Name: redraw_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilrg_admin
--

SELECT pg_catalog.setval('public.redraw_id_seq', 1, false);


--
-- TOC entry 6084 (class 0 OID 0)
-- Dependencies: 298
-- Name: relationship_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilrg_admin
--

SELECT pg_catalog.setval('public.relationship_id_seq', 1, false);


--
-- TOC entry 6085 (class 0 OID 0)
-- Dependencies: 218
-- Name: relationship_poi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilrg_admin
--

SELECT pg_catalog.setval('public.relationship_poi_id_seq', 11, true);


--
-- TOC entry 6086 (class 0 OID 0)
-- Dependencies: 284
-- Name: rep_relations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilrg_admin
--

SELECT pg_catalog.setval('public.rep_relations_id_seq', 4, true);


--
-- TOC entry 6087 (class 0 OID 0)
-- Dependencies: 302
-- Name: resources_areas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilrg_admin
--

SELECT pg_catalog.setval('public.resources_areas_id_seq', 1, false);


--
-- TOC entry 6088 (class 0 OID 0)
-- Dependencies: 300
-- Name: resources_points_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilrg_admin
--

SELECT pg_catalog.setval('public.resources_points_id_seq', 1, false);


--
-- TOC entry 6089 (class 0 OID 0)
-- Dependencies: 306
-- Name: roads_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilrg_admin
--

SELECT pg_catalog.setval('public.roads_id_seq', 1, false);


--
-- TOC entry 6090 (class 0 OID 0)
-- Dependencies: 230
-- Name: spatial_unit_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilrg_admin
--

SELECT pg_catalog.setval('public.spatial_unit_id_seq', 1, false);


--
-- TOC entry 6091 (class 0 OID 0)
-- Dependencies: 232
-- Name: state_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilrg_admin
--

SELECT pg_catalog.setval('public.state_id_seq', 3, true);


--
-- TOC entry 6092 (class 0 OID 0)
-- Dependencies: 256
-- Name: supportive_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilrg_admin
--

SELECT pg_catalog.setval('public.supportive_id_seq', 6, true);


--
-- TOC entry 6093 (class 0 OID 0)
-- Dependencies: 286
-- Name: tenure_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilrg_admin
--

SELECT pg_catalog.setval('public.tenure_id_seq', 7, true);


--
-- TOC entry 6094 (class 0 OID 0)
-- Dependencies: 240
-- Name: use_area_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilrg_admin
--

SELECT pg_catalog.setval('public.use_area_id_seq', 31, true);


--
-- TOC entry 6095 (class 0 OID 0)
-- Dependencies: 242
-- Name: use_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilrg_admin
--

SELECT pg_catalog.setval('public.use_category_id_seq', 5, true);


--
-- TOC entry 6096 (class 0 OID 0)
-- Dependencies: 310
-- Name: village_governance_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilrg_admin
--

SELECT pg_catalog.setval('public.village_governance_id_seq', 1, false);


--
-- TOC entry 6097 (class 0 OID 0)
-- Dependencies: 234
-- Name: village_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilrg_admin
--

SELECT pg_catalog.setval('public.village_id_seq', 1, false);


--
-- TOC entry 6098 (class 0 OID 0)
-- Dependencies: 304
-- Name: village_identification_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilrg_admin
--

SELECT pg_catalog.setval('public.village_identification_id_seq', 1, false);


--
-- TOC entry 6099 (class 0 OID 0)
-- Dependencies: 238
-- Name: water_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilrg_admin
--

SELECT pg_catalog.setval('public.water_id_seq', 6, true);


--
-- TOC entry 6100 (class 0 OID 0)
-- Dependencies: 290
-- Name: witness_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilrg_admin
--

SELECT pg_catalog.setval('public.witness_types_id_seq', 5, true);


--
-- TOC entry 5660 (class 2606 OID 24741)
-- Name: accesses accesses_pk; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.accesses
    ADD CONSTRAINT accesses_pk PRIMARY KEY (id);


--
-- TOC entry 5514 (class 2606 OID 17934)
-- Name: age_range age_range_pkey; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.age_range
    ADD CONSTRAINT age_range_pkey PRIMARY KEY (id);


--
-- TOC entry 5516 (class 2606 OID 18238)
-- Name: age_range age_range_un; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.age_range
    ADD CONSTRAINT age_range_un UNIQUE (code);


--
-- TOC entry 5600 (class 2606 OID 18464)
-- Name: areas areas_pk; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.areas
    ADD CONSTRAINT areas_pk PRIMARY KEY (id);


--
-- TOC entry 5602 (class 2606 OID 24796)
-- Name: areas areas_un; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.areas
    ADD CONSTRAINT areas_un UNIQUE (code);


--
-- TOC entry 5656 (class 2606 OID 24730)
-- Name: authority authority_pk; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.authority
    ADD CONSTRAINT authority_pk PRIMARY KEY (id);


--
-- TOC entry 5658 (class 2606 OID 24798)
-- Name: authority authority_un; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.authority
    ADD CONSTRAINT authority_un UNIQUE (code);


--
-- TOC entry 5604 (class 2606 OID 18475)
-- Name: boundaries boundaries_pk; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.boundaries
    ADD CONSTRAINT boundaries_pk PRIMARY KEY (id);


--
-- TOC entry 5606 (class 2606 OID 24800)
-- Name: boundaries boundaries_un; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.boundaries
    ADD CONSTRAINT boundaries_un UNIQUE (code);


--
-- TOC entry 5608 (class 2606 OID 18486)
-- Name: categories categories_pk; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pk PRIMARY KEY (id);


--
-- TOC entry 5610 (class 2606 OID 24802)
-- Name: categories categories_un; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_un UNIQUE (code);


--
-- TOC entry 5612 (class 2606 OID 18497)
-- Name: certify certify_pk; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.certify
    ADD CONSTRAINT certify_pk PRIMARY KEY (id);


--
-- TOC entry 5614 (class 2606 OID 24804)
-- Name: certify certify_un; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.certify
    ADD CONSTRAINT certify_un UNIQUE (code);


--
-- TOC entry 5536 (class 2606 OID 18000)
-- Name: civil civil_status_pkey; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.civil
    ADD CONSTRAINT civil_status_pkey PRIMARY KEY (id);


--
-- TOC entry 5538 (class 2606 OID 18252)
-- Name: civil civil_status_un; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.civil
    ADD CONSTRAINT civil_status_un UNIQUE (code);


--
-- TOC entry 5620 (class 2606 OID 24597)
-- Name: descriptors_area descriptors_area_pk; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.descriptors_area
    ADD CONSTRAINT descriptors_area_pk PRIMARY KEY (id);


--
-- TOC entry 5622 (class 2606 OID 24812)
-- Name: descriptors_area descriptors_area_un; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.descriptors_area
    ADD CONSTRAINT descriptors_area_un UNIQUE (code);


--
-- TOC entry 5616 (class 2606 OID 18508)
-- Name: descriptors descriptors_pk; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.descriptors
    ADD CONSTRAINT descriptors_pk PRIMARY KEY (id);


--
-- TOC entry 5618 (class 2606 OID 24810)
-- Name: descriptors descriptors_un; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.descriptors
    ADD CONSTRAINT descriptors_un UNIQUE (code);


--
-- TOC entry 5596 (class 2606 OID 18442)
-- Name: dev dev_pk; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.dev
    ADD CONSTRAINT dev_pk PRIMARY KEY (id);


--
-- TOC entry 5684 (class 2606 OID 25040)
-- Name: dispute dispute_pk; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.dispute
    ADD CONSTRAINT dispute_pk PRIMARY KEY (id);


--
-- TOC entry 5686 (class 2606 OID 25051)
-- Name: dispute_resolution dispute_resolution_pk; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.dispute_resolution
    ADD CONSTRAINT dispute_resolution_pk PRIMARY KEY (id);


--
-- TOC entry 5578 (class 2606 OID 18195)
-- Name: disputes dispute_type_pkey; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.disputes
    ADD CONSTRAINT dispute_type_pkey PRIMARY KEY (id);


--
-- TOC entry 5584 (class 2606 OID 18408)
-- Name: distances distances_pk; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.distances
    ADD CONSTRAINT distances_pk PRIMARY KEY (id);


--
-- TOC entry 5586 (class 2606 OID 25262)
-- Name: distances distances_un; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.distances
    ADD CONSTRAINT distances_un UNIQUE (code);


--
-- TOC entry 5598 (class 2606 OID 18453)
-- Name: documents documents_pk; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.documents
    ADD CONSTRAINT documents_pk PRIMARY KEY (id);


--
-- TOC entry 5572 (class 2606 OID 18165)
-- Name: enumerator enumerator_pkey; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.enumerator
    ADD CONSTRAINT enumerator_pkey PRIMARY KEY (id);


--
-- TOC entry 5574 (class 2606 OID 18348)
-- Name: enumerator enumerator_un; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.enumerator
    ADD CONSTRAINT enumerator_un UNIQUE (code);


--
-- TOC entry 5680 (class 2606 OID 25018)
-- Name: evidence_docs evidence_docs_pk; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.evidence_docs
    ADD CONSTRAINT evidence_docs_pk PRIMARY KEY (id);


--
-- TOC entry 5654 (class 2606 OID 24719)
-- Name: evidence evidence_pk; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.evidence
    ADD CONSTRAINT evidence_pk PRIMARY KEY (id);


--
-- TOC entry 5532 (class 2606 OID 17989)
-- Name: gender gender_pkey; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.gender
    ADD CONSTRAINT gender_pkey PRIMARY KEY (id);


--
-- TOC entry 5534 (class 2606 OID 18245)
-- Name: gender gender_un; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.gender
    ADD CONSTRAINT gender_un UNIQUE (code);


--
-- TOC entry 5624 (class 2606 OID 24619)
-- Name: infrastructure infrastructure_pk; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.infrastructure
    ADD CONSTRAINT infrastructure_pk PRIMARY KEY (id);


--
-- TOC entry 5626 (class 2606 OID 24630)
-- Name: institutions institutions_pk; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.institutions
    ADD CONSTRAINT institutions_pk PRIMARY KEY (id);


--
-- TOC entry 5628 (class 2606 OID 25341)
-- Name: institutions institutions_un; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.institutions
    ADD CONSTRAINT institutions_un UNIQUE (code);


--
-- TOC entry 5678 (class 2606 OID 25005)
-- Name: jurisdiction_boundaries jurisdiction_boundaries_pk; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.jurisdiction_boundaries
    ADD CONSTRAINT jurisdiction_boundaries_pk PRIMARY KEY (id);


--
-- TOC entry 5518 (class 2606 OID 17945)
-- Name: jurisdiction jurisdiction_pkey; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.jurisdiction
    ADD CONSTRAINT jurisdiction_pkey PRIMARY KEY (id);


--
-- TOC entry 5630 (class 2606 OID 25314)
-- Name: jurisdiction_type jurisdiction_type_un; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.jurisdiction_type
    ADD CONSTRAINT jurisdiction_type_un UNIQUE (code);


--
-- TOC entry 5520 (class 2606 OID 18273)
-- Name: jurisdiction jurisdiction_un; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.jurisdiction
    ADD CONSTRAINT jurisdiction_un UNIQUE (code);


--
-- TOC entry 5632 (class 2606 OID 24641)
-- Name: jurisdiction_type jurisdictions_pk; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.jurisdiction_type
    ADD CONSTRAINT jurisdictions_pk PRIMARY KEY (id);


--
-- TOC entry 5634 (class 2606 OID 24652)
-- Name: maps maps_pk; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.maps
    ADD CONSTRAINT maps_pk PRIMARY KEY (id);


--
-- TOC entry 5636 (class 2606 OID 24664)
-- Name: means means_pk; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.means
    ADD CONSTRAINT means_pk PRIMARY KEY (id);


--
-- TOC entry 5638 (class 2606 OID 24863)
-- Name: means means_un; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.means
    ADD CONSTRAINT means_un UNIQUE (code);


--
-- TOC entry 5688 (class 2606 OID 25062)
-- Name: meeting meeting_pk; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.meeting
    ADD CONSTRAINT meeting_pk PRIMARY KEY (id);


--
-- TOC entry 5648 (class 2606 OID 24697)
-- Name: meeting_types meeting_types_pk; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.meeting_types
    ADD CONSTRAINT meeting_types_pk PRIMARY KEY (id);


--
-- TOC entry 5526 (class 2606 OID 17967)
-- Name: nationality nationality_pkey; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.nationality
    ADD CONSTRAINT nationality_pkey PRIMARY KEY (id);


--
-- TOC entry 5528 (class 2606 OID 18266)
-- Name: nationality nationality_un; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.nationality
    ADD CONSTRAINT nationality_un UNIQUE (code);


--
-- TOC entry 5556 (class 2606 OID 18055)
-- Name: norms norm_type_pkey; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.norms
    ADD CONSTRAINT norm_type_pkey PRIMARY KEY (id);


--
-- TOC entry 5558 (class 2606 OID 18334)
-- Name: norms norm_type_un; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.norms
    ADD CONSTRAINT norm_type_un UNIQUE (code);


--
-- TOC entry 5682 (class 2606 OID 25029)
-- Name: occ occ_pk; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.occ
    ADD CONSTRAINT occ_pk PRIMARY KEY (id);


--
-- TOC entry 5580 (class 2606 OID 18397)
-- Name: organization organization_pk; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.organization
    ADD CONSTRAINT organization_pk PRIMARY KEY (id);


--
-- TOC entry 5582 (class 2606 OID 24846)
-- Name: organization organization_un; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.organization
    ADD CONSTRAINT organization_un UNIQUE (code);


--
-- TOC entry 5544 (class 2606 OID 24905)
-- Name: parcel parcel_id_un; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.parcel
    ADD CONSTRAINT parcel_id_un UNIQUE (parcel_id);


--
-- TOC entry 5588 (class 2606 OID 18419)
-- Name: participation participation_pk; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.participation
    ADD CONSTRAINT participation_pk PRIMARY KEY (id);


--
-- TOC entry 5590 (class 2606 OID 24838)
-- Name: participation participation_un; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.participation
    ADD CONSTRAINT participation_un UNIQUE (code);


--
-- TOC entry 5530 (class 2606 OID 17978)
-- Name: party_juridical party_juridical_pkey; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.party_juridical
    ADD CONSTRAINT party_juridical_pkey PRIMARY KEY (id);


--
-- TOC entry 5512 (class 2606 OID 17923)
-- Name: party_person party_person_pkey; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.party_person
    ADD CONSTRAINT party_person_pkey PRIMARY KEY (id);


--
-- TOC entry 5672 (class 2606 OID 24965)
-- Name: party_role party_role_pk; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.party_role
    ADD CONSTRAINT party_role_pk PRIMARY KEY (id);


--
-- TOC entry 5674 (class 2606 OID 24967)
-- Name: party_role party_role_un; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.party_role
    ADD CONSTRAINT party_role_un UNIQUE (code);


--
-- TOC entry 5540 (class 2606 OID 18011)
-- Name: profession profession_pkey; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.profession
    ADD CONSTRAINT profession_pkey PRIMARY KEY (id);


--
-- TOC entry 5542 (class 2606 OID 18259)
-- Name: profession profession_un; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.profession
    ADD CONSTRAINT profession_un UNIQUE (code);


--
-- TOC entry 5576 (class 2606 OID 18173)
-- Name: redraw redraw_pkey; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.redraw
    ADD CONSTRAINT redraw_pkey PRIMARY KEY (id);


--
-- TOC entry 5662 (class 2606 OID 24750)
-- Name: relationship relationship_pk; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.relationship
    ADD CONSTRAINT relationship_pk PRIMARY KEY (id);


--
-- TOC entry 5522 (class 2606 OID 17956)
-- Name: relationship_poi relationship_poi_pkey; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.relationship_poi
    ADD CONSTRAINT relationship_poi_pkey PRIMARY KEY (id);


--
-- TOC entry 5524 (class 2606 OID 18287)
-- Name: relationship_poi relationship_poi_un; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.relationship_poi
    ADD CONSTRAINT relationship_poi_un UNIQUE (code);


--
-- TOC entry 5640 (class 2606 OID 24675)
-- Name: rep_relations rep_relations_pk; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.rep_relations
    ADD CONSTRAINT rep_relations_pk PRIMARY KEY (id);


--
-- TOC entry 5642 (class 2606 OID 24840)
-- Name: rep_relations rep_relations_un; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.rep_relations
    ADD CONSTRAINT rep_relations_un UNIQUE (code);


--
-- TOC entry 5666 (class 2606 OID 24772)
-- Name: resources_areas resources_areas_pk; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.resources_areas
    ADD CONSTRAINT resources_areas_pk PRIMARY KEY (id);


--
-- TOC entry 5664 (class 2606 OID 24761)
-- Name: resources_points resources_points_pk; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.resources_points
    ADD CONSTRAINT resources_points_pk PRIMARY KEY (id);


--
-- TOC entry 5670 (class 2606 OID 24794)
-- Name: roads roads_pk; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.roads
    ADD CONSTRAINT roads_pk PRIMARY KEY (id);


--
-- TOC entry 5546 (class 2606 OID 18022)
-- Name: parcel spatial_unit_pkey; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.parcel
    ADD CONSTRAINT spatial_unit_pkey PRIMARY KEY (id);


--
-- TOC entry 5548 (class 2606 OID 18033)
-- Name: state state_pkey; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.state
    ADD CONSTRAINT state_pkey PRIMARY KEY (id);


--
-- TOC entry 5550 (class 2606 OID 18294)
-- Name: state state_un; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.state
    ADD CONSTRAINT state_un UNIQUE (code);


--
-- TOC entry 5592 (class 2606 OID 18430)
-- Name: supportive supportive_pk; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.supportive
    ADD CONSTRAINT supportive_pk PRIMARY KEY (id);


--
-- TOC entry 5594 (class 2606 OID 25105)
-- Name: supportive supportive_un; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.supportive
    ADD CONSTRAINT supportive_un UNIQUE (code);


--
-- TOC entry 5644 (class 2606 OID 24686)
-- Name: tenure tenure_pk; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.tenure
    ADD CONSTRAINT tenure_pk PRIMARY KEY (id);


--
-- TOC entry 5646 (class 2606 OID 24842)
-- Name: tenure tenure_un; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.tenure
    ADD CONSTRAINT tenure_un UNIQUE (code);


--
-- TOC entry 5564 (class 2606 OID 18132)
-- Name: use_area use_area_pkey; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.use_area
    ADD CONSTRAINT use_area_pkey PRIMARY KEY (id);


--
-- TOC entry 5566 (class 2606 OID 18315)
-- Name: use_area use_area_un; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.use_area
    ADD CONSTRAINT use_area_un UNIQUE (code);


--
-- TOC entry 5568 (class 2606 OID 18143)
-- Name: use_category use_category_pkey; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.use_category
    ADD CONSTRAINT use_category_pkey PRIMARY KEY (id);


--
-- TOC entry 5570 (class 2606 OID 18308)
-- Name: use_category use_category_un; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.use_category
    ADD CONSTRAINT use_category_un UNIQUE (code);


--
-- TOC entry 5676 (class 2606 OID 24993)
-- Name: village_governance village_governance_pk; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.village_governance
    ADD CONSTRAINT village_governance_pk PRIMARY KEY (id);


--
-- TOC entry 5668 (class 2606 OID 24783)
-- Name: village_identification village_identification_pk; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.village_identification
    ADD CONSTRAINT village_identification_pk PRIMARY KEY (id);


--
-- TOC entry 5552 (class 2606 OID 18044)
-- Name: village village_pkey; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.village
    ADD CONSTRAINT village_pkey PRIMARY KEY (id);


--
-- TOC entry 5554 (class 2606 OID 18301)
-- Name: village village_un; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.village
    ADD CONSTRAINT village_un UNIQUE (code);


--
-- TOC entry 5560 (class 2606 OID 18066)
-- Name: water water_pkey; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.water
    ADD CONSTRAINT water_pkey PRIMARY KEY (id);


--
-- TOC entry 5562 (class 2606 OID 18341)
-- Name: water water_un; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.water
    ADD CONSTRAINT water_un UNIQUE (code);


--
-- TOC entry 5650 (class 2606 OID 24708)
-- Name: witness_types witness_types_pk; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.witness_types
    ADD CONSTRAINT witness_types_pk PRIMARY KEY (id);


--
-- TOC entry 5652 (class 2606 OID 24844)
-- Name: witness_types witness_types_un; Type: CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.witness_types
    ADD CONSTRAINT witness_types_un UNIQUE (code);


--
-- TOC entry 5704 (class 2606 OID 18376)
-- Name: enumerator enumerator_gender_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.enumerator
    ADD CONSTRAINT enumerator_gender_fkey FOREIGN KEY (gender) REFERENCES public.gender(code);


--
-- TOC entry 5740 (class 2606 OID 25357)
-- Name: jurisdiction_boundaries jurisdiction_boundaries_boundary_type_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.jurisdiction_boundaries
    ADD CONSTRAINT jurisdiction_boundaries_boundary_type_fkey FOREIGN KEY (boundary_type) REFERENCES public.boundaries(code);


--
-- TOC entry 5737 (class 2606 OID 25342)
-- Name: jurisdiction_boundaries jurisdiction_boundaries_enumerator_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.jurisdiction_boundaries
    ADD CONSTRAINT jurisdiction_boundaries_enumerator_fkey FOREIGN KEY (enumerator) REFERENCES public.enumerator(code);


--
-- TOC entry 5741 (class 2606 OID 25362)
-- Name: jurisdiction_boundaries jurisdiction_boundaries_jurisdiction_type_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.jurisdiction_boundaries
    ADD CONSTRAINT jurisdiction_boundaries_jurisdiction_type_fkey FOREIGN KEY (jurisdiction_type) REFERENCES public.jurisdiction_type(code);


--
-- TOC entry 5738 (class 2606 OID 25347)
-- Name: jurisdiction_boundaries jurisdiction_boundaries_organization_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.jurisdiction_boundaries
    ADD CONSTRAINT jurisdiction_boundaries_organization_fkey FOREIGN KEY (organization) REFERENCES public.organization(code);


--
-- TOC entry 5742 (class 2606 OID 25367)
-- Name: jurisdiction_boundaries jurisdiction_boundaries_register_inst_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.jurisdiction_boundaries
    ADD CONSTRAINT jurisdiction_boundaries_register_inst_fkey FOREIGN KEY (register_inst) REFERENCES public.institutions(code);


--
-- TOC entry 5739 (class 2606 OID 25352)
-- Name: jurisdiction_boundaries jurisdiction_boundaries_village_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.jurisdiction_boundaries
    ADD CONSTRAINT jurisdiction_boundaries_village_id_fkey FOREIGN KEY (village_id) REFERENCES public.village(id);


--
-- TOC entry 5695 (class 2606 OID 18202)
-- Name: party_juridical party_juridical_su_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.party_juridical
    ADD CONSTRAINT party_juridical_su_id_fkey FOREIGN KEY (su_id) REFERENCES public.parcel(id);


--
-- TOC entry 5689 (class 2606 OID 18239)
-- Name: party_person party_person_age_range_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.party_person
    ADD CONSTRAINT party_person_age_range_fkey FOREIGN KEY (age_range) REFERENCES public.age_range(code);


--
-- TOC entry 5691 (class 2606 OID 18253)
-- Name: party_person party_person_civil_status_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.party_person
    ADD CONSTRAINT party_person_civil_status_fkey FOREIGN KEY (civil_status) REFERENCES public.civil(code);


--
-- TOC entry 5690 (class 2606 OID 18246)
-- Name: party_person party_person_gender_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.party_person
    ADD CONSTRAINT party_person_gender_fkey FOREIGN KEY (gender) REFERENCES public.gender(code);


--
-- TOC entry 5694 (class 2606 OID 18274)
-- Name: party_person party_person_jurisdiction_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.party_person
    ADD CONSTRAINT party_person_jurisdiction_fkey FOREIGN KEY (jurisdiction) REFERENCES public.jurisdiction(code);


--
-- TOC entry 5693 (class 2606 OID 18267)
-- Name: party_person party_person_nationality_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.party_person
    ADD CONSTRAINT party_person_nationality_fkey FOREIGN KEY (nationality) REFERENCES public.nationality(code);


--
-- TOC entry 5692 (class 2606 OID 18260)
-- Name: party_person party_person_profession_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.party_person
    ADD CONSTRAINT party_person_profession_fkey FOREIGN KEY (profession) REFERENCES public.profession(code);


--
-- TOC entry 5705 (class 2606 OID 18227)
-- Name: redraw redraw_spatial_unit_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.redraw
    ADD CONSTRAINT redraw_spatial_unit_id_fkey FOREIGN KEY (spatial_unit_id) REFERENCES public.parcel(id);


--
-- TOC entry 5706 (class 2606 OID 24906)
-- Name: relationship relationship_parcel_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.relationship
    ADD CONSTRAINT relationship_parcel_id_fkey FOREIGN KEY (parcel_id) REFERENCES public.parcel(parcel_id);


--
-- TOC entry 5708 (class 2606 OID 24968)
-- Name: relationship relationship_party_role_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.relationship
    ADD CONSTRAINT relationship_party_role_fkey FOREIGN KEY (party_role) REFERENCES public.party_role(code);


--
-- TOC entry 5707 (class 2606 OID 24911)
-- Name: relationship relationship_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.relationship
    ADD CONSTRAINT relationship_person_id_fkey FOREIGN KEY (person_id) REFERENCES public.party_person(id);


--
-- TOC entry 5709 (class 2606 OID 24973)
-- Name: relationship relationship_poi_relationship_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.relationship
    ADD CONSTRAINT relationship_poi_relationship_fkey FOREIGN KEY (poi_relationship) REFERENCES public.relationship_poi(code);


--
-- TOC entry 5710 (class 2606 OID 24978)
-- Name: relationship relationship_witness_type_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.relationship
    ADD CONSTRAINT relationship_witness_type_fkey FOREIGN KEY (witness_type) REFERENCES public.witness_types(code);


--
-- TOC entry 5716 (class 2606 OID 24847)
-- Name: resources_areas resources_areas_area_descriptor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.resources_areas
    ADD CONSTRAINT resources_areas_area_descriptor_fkey FOREIGN KEY (area_descriptor) REFERENCES public.descriptors_area(code);


--
-- TOC entry 5717 (class 2606 OID 24852)
-- Name: resources_areas resources_areas_enumerator_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.resources_areas
    ADD CONSTRAINT resources_areas_enumerator_fkey FOREIGN KEY (enumerator) REFERENCES public.enumerator(code);


--
-- TOC entry 5719 (class 2606 OID 24864)
-- Name: resources_areas resources_areas_id_means_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.resources_areas
    ADD CONSTRAINT resources_areas_id_means_fkey FOREIGN KEY (id_means) REFERENCES public.means(code);


--
-- TOC entry 5718 (class 2606 OID 24857)
-- Name: resources_areas resources_areas_jurisdiction_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.resources_areas
    ADD CONSTRAINT resources_areas_jurisdiction_fkey FOREIGN KEY (jurisdiction) REFERENCES public.jurisdiction(code);


--
-- TOC entry 5721 (class 2606 OID 24874)
-- Name: resources_areas resources_areas_organization_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.resources_areas
    ADD CONSTRAINT resources_areas_organization_fkey FOREIGN KEY (organization) REFERENCES public.organization(code);


--
-- TOC entry 5720 (class 2606 OID 24869)
-- Name: resources_areas resources_areas_tenure_type_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.resources_areas
    ADD CONSTRAINT resources_areas_tenure_type_fkey FOREIGN KEY (tenure_type) REFERENCES public.tenure(code);


--
-- TOC entry 5712 (class 2606 OID 24884)
-- Name: resources_points resources_points_enumerator_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.resources_points
    ADD CONSTRAINT resources_points_enumerator_fkey FOREIGN KEY (enumerator) REFERENCES public.enumerator(code);


--
-- TOC entry 5713 (class 2606 OID 24889)
-- Name: resources_points resources_points_jurisdiction_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.resources_points
    ADD CONSTRAINT resources_points_jurisdiction_fkey FOREIGN KEY (jurisdiction) REFERENCES public.jurisdiction(code);


--
-- TOC entry 5711 (class 2606 OID 24879)
-- Name: resources_points resources_points_organization_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.resources_points
    ADD CONSTRAINT resources_points_organization_fkey FOREIGN KEY (organization) REFERENCES public.organization(code);


--
-- TOC entry 5714 (class 2606 OID 24894)
-- Name: resources_points resources_points_poi_descriptor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.resources_points
    ADD CONSTRAINT resources_points_poi_descriptor_fkey FOREIGN KEY (poi_descriptor) REFERENCES public.descriptors(code);


--
-- TOC entry 5715 (class 2606 OID 24899)
-- Name: resources_points resources_points_tenure_type_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.resources_points
    ADD CONSTRAINT resources_points_tenure_type_fkey FOREIGN KEY (tenure_type) REFERENCES public.tenure(code);


--
-- TOC entry 5703 (class 2606 OID 18349)
-- Name: parcel spatial_unit_enumerator_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.parcel
    ADD CONSTRAINT spatial_unit_enumerator_fkey FOREIGN KEY (enumerator) REFERENCES public.enumerator(code);


--
-- TOC entry 5701 (class 2606 OID 18335)
-- Name: parcel spatial_unit_norm_type_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.parcel
    ADD CONSTRAINT spatial_unit_norm_type_fkey FOREIGN KEY (norm_type) REFERENCES public.norms(code);


--
-- TOC entry 5700 (class 2606 OID 18321)
-- Name: parcel spatial_unit_resident_village_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.parcel
    ADD CONSTRAINT spatial_unit_resident_village_fkey FOREIGN KEY (resident_village) REFERENCES public.village(code);


--
-- TOC entry 5696 (class 2606 OID 18295)
-- Name: parcel spatial_unit_state_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.parcel
    ADD CONSTRAINT spatial_unit_state_fkey FOREIGN KEY (state) REFERENCES public.state(code);


--
-- TOC entry 5699 (class 2606 OID 18316)
-- Name: parcel spatial_unit_use_area_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.parcel
    ADD CONSTRAINT spatial_unit_use_area_fkey FOREIGN KEY (use_area) REFERENCES public.use_area(code);


--
-- TOC entry 5698 (class 2606 OID 18309)
-- Name: parcel spatial_unit_use_category_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.parcel
    ADD CONSTRAINT spatial_unit_use_category_fkey FOREIGN KEY (use_category) REFERENCES public.use_category(code);


--
-- TOC entry 5697 (class 2606 OID 18302)
-- Name: parcel spatial_unit_village_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.parcel
    ADD CONSTRAINT spatial_unit_village_fkey FOREIGN KEY (village) REFERENCES public.village(code);


--
-- TOC entry 5702 (class 2606 OID 18342)
-- Name: parcel spatial_unit_water_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.parcel
    ADD CONSTRAINT spatial_unit_water_fkey FOREIGN KEY (water) REFERENCES public.water(code);


--
-- TOC entry 5728 (class 2606 OID 25106)
-- Name: village_governance village_governance_enumerator_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.village_governance
    ADD CONSTRAINT village_governance_enumerator_fkey FOREIGN KEY (enumerator) REFERENCES public.enumerator(code);


--
-- TOC entry 5731 (class 2606 OID 25121)
-- Name: village_governance village_governance_gender_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.village_governance
    ADD CONSTRAINT village_governance_gender_fkey FOREIGN KEY (gender) REFERENCES public.gender(code);


--
-- TOC entry 5729 (class 2606 OID 25111)
-- Name: village_governance village_governance_organization_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.village_governance
    ADD CONSTRAINT village_governance_organization_fkey FOREIGN KEY (organization) REFERENCES public.organization(code);


--
-- TOC entry 5732 (class 2606 OID 25131)
-- Name: village_governance village_governance_participate_village_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.village_governance
    ADD CONSTRAINT village_governance_participate_village_fkey FOREIGN KEY (participate_village) REFERENCES public.participation(code);


--
-- TOC entry 5734 (class 2606 OID 25141)
-- Name: village_governance village_governance_supportive_gender_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.village_governance
    ADD CONSTRAINT village_governance_supportive_gender_fkey FOREIGN KEY (supportive_gender) REFERENCES public.supportive(code);


--
-- TOC entry 5733 (class 2606 OID 25136)
-- Name: village_governance village_governance_supportive_headperson_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.village_governance
    ADD CONSTRAINT village_governance_supportive_headperson_fkey FOREIGN KEY (supportive_headperson) REFERENCES public.supportive(code);


--
-- TOC entry 5735 (class 2606 OID 25146)
-- Name: village_governance village_governance_supportive_inclusion_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.village_governance
    ADD CONSTRAINT village_governance_supportive_inclusion_fkey FOREIGN KEY (supportive_inclusion) REFERENCES public.supportive(code);


--
-- TOC entry 5736 (class 2606 OID 25151)
-- Name: village_governance village_governance_supportive_youth_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.village_governance
    ADD CONSTRAINT village_governance_supportive_youth_fkey FOREIGN KEY (supportive_youth) REFERENCES public.supportive(code);


--
-- TOC entry 5730 (class 2606 OID 25116)
-- Name: village_governance village_governance_village_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.village_governance
    ADD CONSTRAINT village_governance_village_id_fkey FOREIGN KEY (village_id) REFERENCES public.village(id);


--
-- TOC entry 5727 (class 2606 OID 25288)
-- Name: village_identification village_identification_clinic_distance_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.village_identification
    ADD CONSTRAINT village_identification_clinic_distance_fkey FOREIGN KEY (clinic_distance) REFERENCES public.distances(code);


--
-- TOC entry 5722 (class 2606 OID 25263)
-- Name: village_identification village_identification_enumerator_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.village_identification
    ADD CONSTRAINT village_identification_enumerator_fkey FOREIGN KEY (enumerator) REFERENCES public.enumerator(code);


--
-- TOC entry 5723 (class 2606 OID 25268)
-- Name: village_identification village_identification_organization_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.village_identification
    ADD CONSTRAINT village_identification_organization_fkey FOREIGN KEY (organization) REFERENCES public.organization(code);


--
-- TOC entry 5725 (class 2606 OID 25278)
-- Name: village_identification village_identification_school_prim_distance_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.village_identification
    ADD CONSTRAINT village_identification_school_prim_distance_fkey FOREIGN KEY (school_prim_distance) REFERENCES public.distances(code);


--
-- TOC entry 5726 (class 2606 OID 25283)
-- Name: village_identification village_identification_schoold_sec_distance_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.village_identification
    ADD CONSTRAINT village_identification_schoold_sec_distance_fkey FOREIGN KEY (schoold_sec_distance) REFERENCES public.distances(code);


--
-- TOC entry 5724 (class 2606 OID 25273)
-- Name: village_identification village_identification_village_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ilrg_admin
--

ALTER TABLE ONLY public.village_identification
    ADD CONSTRAINT village_identification_village_id_fkey FOREIGN KEY (village_id) REFERENCES public.village(id);


-- Completed on 2019-06-18 16:37:27

--
-- PostgreSQL database dump complete
--

