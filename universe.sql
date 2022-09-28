--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: aliens; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.aliens (
    aliens_id integer NOT NULL,
    name character varying(30) NOT NULL,
    color text
);


ALTER TABLE public.aliens OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth numeric,
    structure text,
    size integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    radius integer,
    planet_id integer,
    color text
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    radius integer,
    hospitable boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    color text,
    expected_to_supernova boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: aliens; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.aliens VALUES (1, 'Aliens', 'blue');
INSERT INTO public.aliens VALUES (2, 'Do Not', 'torquoise');
INSERT INTO public.aliens VALUES (3, 'Exist!', 'magenta');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 0, 'spiral', NULL);
INSERT INTO public.galaxy VALUES (2, 'Canis Major Dwarf', 0.025, 'irregular', NULL);
INSERT INTO public.galaxy VALUES (3, 'Segue 1', 0.075, 'spheroidal', NULL);
INSERT INTO public.galaxy VALUES (4, 'Saggittarius Dwarf', 0.078, 'elliptical', 10000);
INSERT INTO public.galaxy VALUES (5, 'ESO 383-76', 654.9, NULL, 1764000);
INSERT INTO public.galaxy VALUES (6, 'Sextans Dwarf', 0.28, 'spheroidal', 8400);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'The Moon', 1738, 3, 'white');
INSERT INTO public.moon VALUES (2, 'Phobos', 11, 4, 'brown');
INSERT INTO public.moon VALUES (3, 'Deimos', 6, 4, 'puke');
INSERT INTO public.moon VALUES (4, 'Lo', 1821, 5, 'Yellow');
INSERT INTO public.moon VALUES (5, 'Europa', 1560, 5, 'red');
INSERT INTO public.moon VALUES (6, 'Ganymede', 2634, 5, 'grey');
INSERT INTO public.moon VALUES (7, 'Callisto', 2410, 5, 'brown');
INSERT INTO public.moon VALUES (8, 'Amalthea', 83, 5, 'red');
INSERT INTO public.moon VALUES (9, 'Himalia', 69, 5, 'grey');
INSERT INTO public.moon VALUES (10, 'Elara', 43, 5, 'brown');
INSERT INTO public.moon VALUES (11, 'Mimas', 198, 6, 'grey');
INSERT INTO public.moon VALUES (12, 'Enceladus', 252, 6, 'grey');
INSERT INTO public.moon VALUES (13, 'Tethys', 533, 6, 'grey');
INSERT INTO public.moon VALUES (14, 'Dione', 531, 6, 'grey');
INSERT INTO public.moon VALUES (15, 'Rhea', 763, 6, 'grey');
INSERT INTO public.moon VALUES (16, 'Titan', 2574, 6, 'orange');
INSERT INTO public.moon VALUES (17, 'Hyperion', 135, 6, 'grey');
INSERT INTO public.moon VALUES (18, 'Iapetus', 735, 6, 'grey');
INSERT INTO public.moon VALUES (19, 'Umbriel', 585, 7, 'grey');
INSERT INTO public.moon VALUES (20, 'Titania', 789, 7, 'grey');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'mercury', 2400, false, 1);
INSERT INTO public.planet VALUES (2, 'venus', 6000, false, 1);
INSERT INTO public.planet VALUES (3, 'earth', 6300, true, 1);
INSERT INTO public.planet VALUES (4, 'mars', 3300, true, 1);
INSERT INTO public.planet VALUES (5, 'jupiter', 70000, false, 1);
INSERT INTO public.planet VALUES (6, 'saturn', 60000, false, 1);
INSERT INTO public.planet VALUES (7, 'uranus', 25000, false, 1);
INSERT INTO public.planet VALUES (8, 'neptune', 24000, false, 1);
INSERT INTO public.planet VALUES (9, 'pluto', 1200, false, 1);
INSERT INTO public.planet VALUES (10, 'proxima centauri b', NULL, true, 2);
INSERT INTO public.planet VALUES (11, 'proxima centauri d', NULL, false, 2);
INSERT INTO public.planet VALUES (12, 'proxima centauri c', NULL, false, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'yellow', false, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 'red', false, 1);
INSERT INTO public.star VALUES (3, 'wolf 359', 'red', false, 1);
INSERT INTO public.star VALUES (4, 'Bernards Star', 'red', false, 1);
INSERT INTO public.star VALUES (5, 'Luhman 16', 'brown', false, 1);
INSERT INTO public.star VALUES (6, 'Lalande 21185', 'red', false, 1);


--
-- Name: aliens aliens_alien_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.aliens
    ADD CONSTRAINT aliens_alien_id_key UNIQUE (aliens_id);


--
-- Name: aliens aliens_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.aliens
    ADD CONSTRAINT aliens_pkey PRIMARY KEY (aliens_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: moon moon_planet_orbiting_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_orbiting_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_orbiting_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_orbiting_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

