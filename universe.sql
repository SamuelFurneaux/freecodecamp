--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: empty; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.empty (
    name character varying(40),
    empty_id integer NOT NULL,
    surname text NOT NULL
);


ALTER TABLE public.empty OWNER TO freecodecamp;

--
-- Name: empty_empty_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.empty_empty_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.empty_empty_id_seq OWNER TO freecodecamp;

--
-- Name: empty_empty_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.empty_empty_id_seq OWNED BY public.empty.empty_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(40) NOT NULL,
    galaxy_id integer NOT NULL,
    has_planets boolean,
    width numeric,
    no_stars integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(40),
    moon_id integer NOT NULL,
    planet_id integer,
    mass numeric,
    humans_have_landed boolean NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(40) NOT NULL,
    planet_id integer NOT NULL,
    no_moons integer,
    has_moons boolean NOT NULL,
    star_id integer,
    mass_earth_eqv numeric
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40),
    no_planets integer,
    has_planets boolean NOT NULL,
    galaxy_id integer,
    colour text
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: sun_has_moons; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.sun_has_moons (
    star_id integer NOT NULL,
    moon_id integer NOT NULL,
    name character varying(40),
    sun_has_moons_id integer NOT NULL
);


ALTER TABLE public.sun_has_moons OWNER TO freecodecamp;

--
-- Name: sun_has_moons_sun_has_moons_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.sun_has_moons_sun_has_moons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sun_has_moons_sun_has_moons_id_seq OWNER TO freecodecamp;

--
-- Name: sun_has_moons_sun_has_moons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.sun_has_moons_sun_has_moons_id_seq OWNED BY public.sun_has_moons.sun_has_moons_id;


--
-- Name: empty empty_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.empty ALTER COLUMN empty_id SET DEFAULT nextval('public.empty_empty_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: sun_has_moons sun_has_moons_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun_has_moons ALTER COLUMN sun_has_moons_id SET DEFAULT nextval('public.sun_has_moons_sun_has_moons_id_seq'::regclass);


--
-- Data for Name: empty; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.empty VALUES ('Emily', 1, 'Iverson');
INSERT INTO public.empty VALUES ('Sam', 2, 'Furneaux');
INSERT INTO public.empty VALUES ('Brae', 3, 'Iverson-Furneaux');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', 1, true, 105.7, 100);
INSERT INTO public.galaxy VALUES ('Ursa Major III', 2, false, 19.6, 0);
INSERT INTO public.galaxy VALUES ('Segue 1', 3, false, 400, 0);
INSERT INTO public.galaxy VALUES ('Segue 2', 4, false, 400, 0);
INSERT INTO public.galaxy VALUES ('Segue 3', 5, false, 400, 0);
INSERT INTO public.galaxy VALUES ('Segue 4', 6, false, 400, 0);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Charon', 1, 9, 158.7, false);
INSERT INTO public.moon VALUES ('Styx', 2, 9, 0.01, false);
INSERT INTO public.moon VALUES ('Nix', 3, 9, 0.01, false);
INSERT INTO public.moon VALUES ('Kerberos', 4, 9, 0.01, false);
INSERT INTO public.moon VALUES ('Hydra', 5, 9, 0.01, false);
INSERT INTO public.moon VALUES ('moon', 6, 3, 0.08, false);
INSERT INTO public.moon VALUES ('Phobos', 7, 4, 0.01, false);
INSERT INTO public.moon VALUES ('Deimos', 8, 4, 0.01, false);
INSERT INTO public.moon VALUES ('Proteus', 9, 8, 0.01, false);
INSERT INTO public.moon VALUES ('Triton', 10, 8, 0.01, false);
INSERT INTO public.moon VALUES ('Nereid', 11, 8, 0.01, false);
INSERT INTO public.moon VALUES ('Halimede', 12, 8, 0.01, false);
INSERT INTO public.moon VALUES ('Cordelia', 13, 7, 0.01, false);
INSERT INTO public.moon VALUES ('Ophelia', 14, 7, 0.01, false);
INSERT INTO public.moon VALUES ('Bianca', 15, 7, 0.01, false);
INSERT INTO public.moon VALUES ('Cressida', 16, 7, 0.01, false);
INSERT INTO public.moon VALUES ('Desdemona', 17, 7, 0.01, false);
INSERT INTO public.moon VALUES ('Titan', 18, 6, 0.01, false);
INSERT INTO public.moon VALUES ('Mimas', 19, 6, 0.01, false);
INSERT INTO public.moon VALUES ('Dione', 20, 6, 0.01, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Mercury', 1, 0, false, 1, 0.33);
INSERT INTO public.planet VALUES ('Venus', 2, 0, false, 1, 4.87);
INSERT INTO public.planet VALUES ('Earth', 3, 1, true, 1, 5.97);
INSERT INTO public.planet VALUES ('Mars', 4, 2, true, 1, 0.07);
INSERT INTO public.planet VALUES ('Jupiter', 5, 95, true, 1, 1898.00);
INSERT INTO public.planet VALUES ('Saturn', 6, 146, true, 1, 568.00);
INSERT INTO public.planet VALUES ('Uranus', 7, 28, true, 1, 86.80);
INSERT INTO public.planet VALUES ('Neptune', 8, 16, true, 1, 102.00);
INSERT INTO public.planet VALUES ('Pluto', 9, 5, true, 1, 0.13);
INSERT INTO public.planet VALUES ('Proxima B', 10, 0, false, 3, 0.37);
INSERT INTO public.planet VALUES ('Barnard B', 11, 0, false, 3, 0.37);
INSERT INTO public.planet VALUES ('Epsilon Eridani B', 12, 0, false, 4, 9.37);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'The Sun', 8, true, 1, 'Red');
INSERT INTO public.star VALUES (2, 'Proxima', 1, true, 1, 'orange');
INSERT INTO public.star VALUES (3, 'Barnards star', 1, true, 1, 'orange');
INSERT INTO public.star VALUES (4, 'Epsilon Eridani', 1, true, 1, 'orange');
INSERT INTO public.star VALUES (5, 'Luhman 16', 0, false, 1, 'orange');
INSERT INTO public.star VALUES (6, 'Wolf 359', 0, false, 1, 'orange');


--
-- Data for Name: sun_has_moons; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.sun_has_moons VALUES (1, 1, NULL, 1);
INSERT INTO public.sun_has_moons VALUES (1, 2, NULL, 2);
INSERT INTO public.sun_has_moons VALUES (1, 3, NULL, 3);


--
-- Name: empty_empty_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.empty_empty_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: sun_has_moons_sun_has_moons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.sun_has_moons_sun_has_moons_id_seq', 3, true);


--
-- Name: empty empty_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.empty
    ADD CONSTRAINT empty_name_key UNIQUE (name);


--
-- Name: empty empty_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.empty
    ADD CONSTRAINT empty_pkey PRIMARY KEY (empty_id);


--
-- Name: empty empty_surname_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.empty
    ADD CONSTRAINT empty_surname_key UNIQUE (surname);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: sun_has_moons sun_has_moons_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun_has_moons
    ADD CONSTRAINT sun_has_moons_name_key UNIQUE (name);


--
-- Name: sun_has_moons sun_has_moons_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun_has_moons
    ADD CONSTRAINT sun_has_moons_pkey PRIMARY KEY (sun_has_moons_id);


--
-- Name: empty surname_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.empty
    ADD CONSTRAINT surname_unq UNIQUE (surname);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: sun_has_moons sun_has_moons_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun_has_moons
    ADD CONSTRAINT sun_has_moons_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: sun_has_moons sun_has_moons_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun_has_moons
    ADD CONSTRAINT sun_has_moons_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

