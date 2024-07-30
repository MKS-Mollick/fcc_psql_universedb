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
-- Name: event; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.event (
    event_id integer NOT NULL,
    name character varying(200) NOT NULL,
    my_name text,
    world_event boolean,
    local_event boolean,
    perticipent integer NOT NULL,
    fraction numeric(5,2),
    moon_id integer
);


ALTER TABLE public.event OWNER TO freecodecamp;

--
-- Name: event_event_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.event_event_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.event_event_id_seq OWNER TO freecodecamp;

--
-- Name: event_event_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.event_event_id_seq OWNED BY public.event.event_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(200),
    my_name text NOT NULL,
    alien_signal boolean,
    has_bhole boolean,
    diameter_lys integer NOT NULL,
    star_count integer NOT NULL,
    magnitude numeric(5,2)
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
    moon_id integer NOT NULL,
    name character varying(200) NOT NULL,
    mission_name text NOT NULL,
    success boolean,
    failure boolean,
    crue integer NOT NULL,
    year integer,
    orbit numeric(2,1),
    planet_id integer
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
    planet_id integer NOT NULL,
    name character varying(200) NOT NULL,
    my_name text,
    has_water boolean,
    has_life boolean,
    moon_count integer NOT NULL,
    diameter integer NOT NULL,
    distance_fstar numeric(5,2),
    star_id integer
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
    name character varying(200),
    my_name text NOT NULL,
    old_age boolean,
    new_age boolean,
    planet_count integer NOT NULL,
    diameter integer NOT NULL,
    magnitude numeric(5,2),
    galaxy_id integer
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
-- Name: event event_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.event ALTER COLUMN event_id SET DEFAULT nextval('public.event_event_id_seq'::regclass);


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
-- Data for Name: event; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.event VALUES (2, 'Fullmoon', 'Purnima', true, false, 50, 23.23, 5);
INSERT INTO public.event VALUES (3, 'Halfmoon', 'Dhurnima', true, false, 50, 23.23, 6);
INSERT INTO public.event VALUES (4, 'Zeromoon', 'Zurnima', true, false, 50, 23.23, 7);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milkyway', 'Agonga', false, true, 2500, 500, 4.24);
INSERT INTO public.galaxy VALUES (2, 'Bway', 'Bpoth', false, true, 200, 600, 4.90);
INSERT INTO public.galaxy VALUES (3, 'Cway', 'Cpoth', false, true, 200, 600, 4.90);
INSERT INTO public.galaxy VALUES (4, 'Dway', 'Dpoth', false, true, 200, 600, 4.90);
INSERT INTO public.galaxy VALUES (5, 'Eway', 'Epoth', false, true, 200, 600, 4.90);
INSERT INTO public.galaxy VALUES (6, 'Fway', 'Fpoth', false, true, 200, 600, 4.90);
INSERT INTO public.galaxy VALUES (7, 'Gway', 'Gpoth', false, true, 200, 600, 4.90);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'LunaOn', 'ChadOn', true, false, 5, 88, 2.3, 3);
INSERT INTO public.moon VALUES (2, 'LunaTw', 'ChadTw', true, false, 5, 88, 2.3, 3);
INSERT INTO public.moon VALUES (3, 'LunaTh', 'ChadTh', true, false, 5, 88, 2.3, 3);
INSERT INTO public.moon VALUES (4, 'LunaFo', 'ChadFo', true, false, 5, 88, 2.3, 3);
INSERT INTO public.moon VALUES (5, 'LunaFi', 'ChadFi', true, false, 5, 88, 2.3, 3);
INSERT INTO public.moon VALUES (6, 'LunaSi', 'ChadSi', true, false, 5, 88, 2.3, 3);
INSERT INTO public.moon VALUES (7, 'LunaSe', 'ChadSe', true, false, 5, 88, 2.3, 3);
INSERT INTO public.moon VALUES (8, 'LunaEi', 'ChadEi', true, false, 5, 88, 2.3, 3);
INSERT INTO public.moon VALUES (9, 'LunaNi', 'ChadNi', true, false, 5, 88, 2.3, 3);
INSERT INTO public.moon VALUES (10, 'LunaTe', 'ChadTe', true, false, 5, 88, 2.3, 3);
INSERT INTO public.moon VALUES (11, 'LunaEl', 'ChadEl', true, false, 5, 88, 2.3, 3);
INSERT INTO public.moon VALUES (12, 'LunaTwe', 'ChadTwe', true, false, 5, 88, 2.3, 3);
INSERT INTO public.moon VALUES (13, 'LunaThir', 'ChadThir', true, false, 5, 88, 2.3, 3);
INSERT INTO public.moon VALUES (14, 'Lunacho', 'Chadcho', true, false, 5, 88, 2.3, 3);
INSERT INTO public.moon VALUES (15, 'Lunacpo', 'Chadpo', true, false, 5, 88, 2.3, 3);
INSERT INTO public.moon VALUES (16, 'Lunasho', 'Chadsho', true, false, 5, 88, 2.3, 3);
INSERT INTO public.moon VALUES (17, 'Lunashot', 'Chadshot', true, false, 5, 88, 2.3, 3);
INSERT INTO public.moon VALUES (18, 'Lunashott', 'Chadshott', true, false, 5, 88, 2.3, 3);
INSERT INTO public.moon VALUES (19, 'Lunashotte', 'Chadshotte', true, false, 5, 88, 2.3, 3);
INSERT INTO public.moon VALUES (20, 'Lunashottb', 'Chadshottb', true, false, 5, 88, 2.3, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Budh', false, false, 1, 5, 1.23, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'Shukro', false, false, 1, 5, 1.23, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 'Prithibi', true, true, 1, 5, 1.23, 1);
INSERT INTO public.planet VALUES (4, 'FourEarth', 'FourPrithibi', false, false, 1, 5, 1.23, 1);
INSERT INTO public.planet VALUES (5, 'FiEarth', 'FiPrithibi', false, false, 1, 5, 1.23, 1);
INSERT INTO public.planet VALUES (6, 'SiEarth', 'SiPrithibi', false, false, 1, 5, 1.23, 1);
INSERT INTO public.planet VALUES (7, 'SeEarth', 'SePrithibi', false, false, 1, 5, 1.23, 1);
INSERT INTO public.planet VALUES (8, 'EiEarth', 'EiPrithibi', false, false, 1, 5, 1.23, 1);
INSERT INTO public.planet VALUES (9, 'NiEarth', 'NiPrithibi', false, false, 1, 5, 1.23, 1);
INSERT INTO public.planet VALUES (10, 'TeEarth', 'TePrithibi', false, false, 1, 5, 1.23, 1);
INSERT INTO public.planet VALUES (11, 'ElEarth', 'ElPrithibi', false, false, 1, 5, 1.23, 1);
INSERT INTO public.planet VALUES (12, 'TwEarth', 'TwPrithibi', false, false, 1, 5, 1.23, 1);
INSERT INTO public.planet VALUES (13, 'ThEarth', 'ThPrithibi', false, false, 1, 5, 1.23, 1);
INSERT INTO public.planet VALUES (14, 'FoEarth', 'FoPrithibi', false, false, 1, 5, 1.23, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'Shurjo', false, true, 12, 100, 3.44, 1);
INSERT INTO public.star VALUES (2, 'BSun', 'BShurjo', false, true, 12, 100, 3.44, 1);
INSERT INTO public.star VALUES (3, 'CSun', 'CShurjo', false, true, 12, 100, 3.44, 1);
INSERT INTO public.star VALUES (4, 'DSun', 'DShurjo', false, true, 12, 100, 3.44, 1);
INSERT INTO public.star VALUES (5, 'ESun', 'EShurjo', false, true, 12, 100, 3.44, 1);
INSERT INTO public.star VALUES (6, 'FSun', 'FShurjo', false, true, 12, 100, 3.44, 1);


--
-- Name: event_event_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.event_event_id_seq', 4, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: event event_my_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.event
    ADD CONSTRAINT event_my_name_key UNIQUE (my_name);


--
-- Name: event event_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.event
    ADD CONSTRAINT event_pkey PRIMARY KEY (event_id);


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
-- Name: moon moon_mission_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_mission_name_key UNIQUE (mission_name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_my_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_my_name_key UNIQUE (my_name);


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
-- Name: event event_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.event
    ADD CONSTRAINT event_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


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
-- PostgreSQL database dump complete
--

