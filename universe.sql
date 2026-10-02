--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: asterism; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asterism (
    asterism_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text
);


ALTER TABLE public.asterism OWNER TO freecodecamp;

--
-- Name: asterism_asterism_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asterism_asterism_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asterism_asterism_id_seq OWNER TO freecodecamp;

--
-- Name: asterism_asterism_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asterism_asterism_id_seq OWNED BY public.asterism.asterism_id;


--
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    black_hole_id integer NOT NULL,
    name character varying(40) NOT NULL,
    galaxy_id integer,
    description text,
    is_supermassive boolean
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_hole_black_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_hole_black_hole_id_seq OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_hole_black_hole_id_seq OWNED BY public.black_hole.black_hole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age_billion_years numeric(4,1),
    distance_from_earth_mly numeric(8,2),
    description text
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
    name character varying(40) NOT NULL,
    orbital_period_days integer,
    has_atmosphere boolean,
    description text,
    planet_id integer NOT NULL
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
    name character varying(40) NOT NULL,
    planet_type character varying(30) NOT NULL,
    orbital_period_days integer,
    rotation_period_hours integer,
    has_water boolean,
    description text,
    star_id integer NOT NULL
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
    name character varying(40) NOT NULL,
    star_type character varying(30) NOT NULL,
    distance_from_sun_ly numeric(10,2) NOT NULL,
    description text,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_asterism; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star_asterism (
    star_asterism_id integer NOT NULL,
    star_id integer NOT NULL,
    asterism_id integer NOT NULL,
    name character varying(40) NOT NULL
);


ALTER TABLE public.star_asterism OWNER TO freecodecamp;

--
-- Name: star_asterism_star_asterism_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_asterism_star_asterism_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_asterism_star_asterism_id_seq OWNER TO freecodecamp;

--
-- Name: star_asterism_star_asterism_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_asterism_star_asterism_id_seq OWNED BY public.star_asterism.star_asterism_id;


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
-- Name: asterism asterism_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asterism ALTER COLUMN asterism_id SET DEFAULT nextval('public.asterism_asterism_id_seq'::regclass);


--
-- Name: black_hole black_hole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole ALTER COLUMN black_hole_id SET DEFAULT nextval('public.black_hole_black_hole_id_seq'::regclass);


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
-- Name: star_asterism star_asterism_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_asterism ALTER COLUMN star_asterism_id SET DEFAULT nextval('public.star_asterism_star_asterism_id_seq'::regclass);


--
-- Data for Name: asterism; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asterism VALUES (1, 'Summer Triangle', 'A prominent asterism formed by the stars Vega, Deneb, and Altair.');
INSERT INTO public.asterism VALUES (2, 'Winter Triangle', 'A prominent asterism formed by Sirius, Procyon, and Betelgeuse.');
INSERT INTO public.asterism VALUES (3, 'Big Dipper', 'A well-known asterism formed by seven bright stars in Ursa Major.');
INSERT INTO public.asterism VALUES (5, 'Northern Cross', 'A prominent cross-shaped asterism within the constellation Cygnus.');


--
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES (1, 'Sagittarius A*', 1, 'The supermassive black hole at the center of the Milky Way.', true);
INSERT INTO public.black_hole VALUES (2, 'Cygnus X-1', 1, 'A well-studied stellar-mass black hole in a binary star system.', false);
INSERT INTO public.black_hole VALUES (3, 'Gaia BH1', 1, 'A stellar-mass black hole in the Milky Way discovered through its effect on a companion star.', false);
INSERT INTO public.black_hole VALUES (4, 'LMC X-1', 4, 'A stellar-mass black hole in a binary system in the Large Magellanic Cloud.', false);
INSERT INTO public.black_hole VALUES (5, 'LMC X-3', 4, 'A stellar-mass black hole candidate in a binary system in the Large Magellanic Cloud.', false);
INSERT INTO public.black_hole VALUES (6, 'Unknown Host Black Hole', NULL, 'A black hole whose host galaxy is not specified in this database.', false);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13.6, 0.00, 'The galaxy containing Earth and the Solar System.');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 10.0, 2.54, 'A large spiral galaxy and closest neighbor of the Milky Way.');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 13.3, 2.73, 'A spiral galaxy in the Local Group.');
INSERT INTO public.galaxy VALUES (4, 'Large Magellanic Cloud', 13.0, 0.16, 'A satellite galaxy of the Milky Way.');
INSERT INTO public.galaxy VALUES (5, 'Small Magellanic Cloud', 13.0, 0.20, 'A dwarf galaxy near the Milky Way.');
INSERT INTO public.galaxy VALUES (6, 'Whirlpool Galaxy', 13.0, 23.16, 'A prominent spiral galaxy with a companion galaxy.');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 27, true, 'Earth''s only natural satellite.', 3);
INSERT INTO public.moon VALUES (2, 'Deimos', 1, false, 'The smaller and more distant moon of Mars.', 4);
INSERT INTO public.moon VALUES (3, 'Io', 2, true, 'A volcanically active moon of Jupiter.', 5);
INSERT INTO public.moon VALUES (4, 'Europa', 4, true, 'An icy moon with a subsurface ocean and a thin oxygen atmosphere.', 5);
INSERT INTO public.moon VALUES (5, 'Ganymede', 7, true, 'The largest moon in the Solar System.', 5);
INSERT INTO public.moon VALUES (6, 'Callisto', 17, true, 'A heavily cratered moon of Jupiter with evidence of a possible subsurface ocean.', 5);
INSERT INTO public.moon VALUES (7, 'Titan', 16, true, 'Saturn''s largest moon and the only moon with a thick atmosphere.', 6);
INSERT INTO public.moon VALUES (8, 'Rhea', 5, true, 'A large icy moon of Saturn with a very thin exosphere.', 6);
INSERT INTO public.moon VALUES (9, 'Iapetus', 79, false, 'A Saturnian moon known for its striking light and dark hemispheres.', 6);
INSERT INTO public.moon VALUES (10, 'Dione', 3, true, 'An icy Saturnian moon with a very tenuous atmosphere.', 6);
INSERT INTO public.moon VALUES (11, 'Tethys', 2, false, 'An icy moon of Saturn with a large impact crater.', 6);
INSERT INTO public.moon VALUES (12, 'Enceladus', 1, true, 'An icy moon of Saturn with water-rich plumes.', 6);
INSERT INTO public.moon VALUES (13, 'Mimas', 1, false, 'A small Saturnian moon dominated by a large impact crater.', 6);
INSERT INTO public.moon VALUES (14, 'Titania', 9, false, 'The largest moon of Uranus.', 7);
INSERT INTO public.moon VALUES (15, 'Oberon', 13, false, 'A large, heavily cratered moon of Uranus.', 7);
INSERT INTO public.moon VALUES (16, 'Ariel', 3, false, 'A bright icy moon of Uranus with signs of past geological activity.', 7);
INSERT INTO public.moon VALUES (17, 'Umbriel', 4, false, 'A dark icy moon of Uranus.', 7);
INSERT INTO public.moon VALUES (18, 'Miranda', 1, false, 'A small Uranian moon with an unusually varied surface.', 7);
INSERT INTO public.moon VALUES (19, 'Triton', 6, true, 'Neptune''s largest moon with a thin nitrogen atmosphere.', 8);
INSERT INTO public.moon VALUES (20, 'Charon', 6, false, 'Pluto''s largest moon and its large binary companion.', 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Terrestrial', 88, 1408, false, 'The smallest planet in the Solar System.', 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'Terrestrial', 225, 5832, false, 'A hot terrestrial planet with a thick atmosphere.', 1);
INSERT INTO public.planet VALUES (3, 'Earth', 'Terrestrial', 365, 24, true, 'The only planet currently known to support life.', 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'Terrestrial', 687, 25, true, 'A cold desert planet with polar ice caps.', 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Gas Giant', 4333, 10, false, 'The largest planet in the Solar System.', 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Gas Giant', 10759, 11, false, 'A gas giant famous for its extensive ring system.', 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Ice Giant', 30687, 17, false, 'An ice giant with an extreme axial tilt.', 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Ice Giant', 60190, 16, false, 'A distant ice giant with powerful winds.', 1);
INSERT INTO public.planet VALUES (9, 'Proxima Centauri b', 'Super-Earth', 11, NULL, NULL, 'A confirmed exoplanet orbiting Proxima Centauri.', 9);
INSERT INTO public.planet VALUES (10, 'Proxima Centauri d', 'Terrestrial', 5, NULL, NULL, 'A confirmed terrestrial exoplanet orbiting Proxima Centauri.', 9);
INSERT INTO public.planet VALUES (11, 'Ceres', 'Dwarf Planet', 1682, 9, true, 'The only officially recognized dwarf planet in the inner Solar System.', 1);
INSERT INTO public.planet VALUES (12, 'Pluto', 'Dwarf Planet', 90582, 153, true, 'A dwarf planet in the Kuiper Belt beyond Neptune.', 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'Yellow Dwarf', 0.00, 'The star at the center of our Solar System.', 1);
INSERT INTO public.star VALUES (2, 'Sirius', 'Main Sequence', 8.60, 'The brightest star in the night sky.', 1);
INSERT INTO public.star VALUES (7, 'Betelgeuse', 'Red Supergiant', 642.50, 'A massive red supergiant in Orion.', 1);
INSERT INTO public.star VALUES (8, 'Vega', 'Main Sequence', 25.04, 'A bright star in the constellation Lyra.', 1);
INSERT INTO public.star VALUES (9, 'Proxima Centauri', 'Red Dwarf', 4.25, 'The closest known star to the Sun.', 1);
INSERT INTO public.star VALUES (10, 'Mirach', 'Red Giant', 197.00, 'A red giant star in the Andromeda constellation.', 2);
INSERT INTO public.star VALUES (11, 'Procyon', 'White Subgiant', 11.46, 'A bright star that forms part of the Winter Triangle.', 1);
INSERT INTO public.star VALUES (12, 'Deneb', 'Blue Supergiant', 2615.00, 'A luminous star that forms part of the Summer Triangle.', 1);
INSERT INTO public.star VALUES (13, 'Altair', 'Main Sequence', 16.73, 'A bright star that forms part of the Summer Triangle.', 1);
INSERT INTO public.star VALUES (14, 'Sadr', 'Yellow-White Supergiant', 1800.00, 'A bright supergiant star at the center of the Northern Cross.', 1);
INSERT INTO public.star VALUES (15, 'Albireo', 'Binary Star System', 430.00, 'A colorful binary star system in the constellation Cygnus.', 1);
INSERT INTO public.star VALUES (16, 'Delta Cygni', 'Blue-White Giant', 165.00, 'A bright star forming part of the Northern Cross.', 1);
INSERT INTO public.star VALUES (17, 'Epsilon Cygni', 'Orange Giant', 72.00, 'An orange giant star forming part of the Northern Cross.', 1);
INSERT INTO public.star VALUES (18, 'Dubhe', 'Orange Giant', 123.00, 'One of the two stars forming the outer edge of the Big Dipper bowl.', 1);
INSERT INTO public.star VALUES (19, 'Merak', 'White Main Sequence', 80.00, 'A bright star forming part of the Big Dipper.', 1);
INSERT INTO public.star VALUES (20, 'Phecda', 'White Main Sequence', 84.00, 'A bright star forming part of the Big Dipper.', 1);
INSERT INTO public.star VALUES (21, 'Megrez', 'White Main Sequence', 81.00, 'The faintest of the seven main stars of the Big Dipper.', 1);
INSERT INTO public.star VALUES (22, 'Alioth', 'White Giant', 81.00, 'The brightest star in the handle of the Big Dipper.', 1);
INSERT INTO public.star VALUES (23, 'Mizar', 'White Main Sequence', 78.00, 'A famous multiple star system in the handle of the Big Dipper.', 1);
INSERT INTO public.star VALUES (24, 'Alkaid', 'Blue Main Sequence', 104.00, 'The star at the end of the handle of the Big Dipper.', 1);


--
-- Data for Name: star_asterism; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star_asterism VALUES (1, 8, 1, 'Vega - Summer Triangle');
INSERT INTO public.star_asterism VALUES (2, 12, 1, 'Deneb - Summer Triangle');
INSERT INTO public.star_asterism VALUES (3, 13, 1, 'Altair - Summer Triangle');
INSERT INTO public.star_asterism VALUES (4, 2, 2, 'Sirius - Winter Triangle');
INSERT INTO public.star_asterism VALUES (5, 7, 2, 'Betelgeuse - Winter Triangle');
INSERT INTO public.star_asterism VALUES (6, 11, 2, 'Procyon - Winter Triangle');
INSERT INTO public.star_asterism VALUES (7, 18, 3, 'Dubhe - Big Dipper');
INSERT INTO public.star_asterism VALUES (8, 19, 3, 'Merak - Big Dipper');
INSERT INTO public.star_asterism VALUES (9, 20, 3, 'Phecda - Big Dipper');
INSERT INTO public.star_asterism VALUES (10, 21, 3, 'Megrez - Big Dipper');
INSERT INTO public.star_asterism VALUES (11, 22, 3, 'Alioth - Big Dipper');
INSERT INTO public.star_asterism VALUES (12, 23, 3, 'Mizar - Big Dipper');
INSERT INTO public.star_asterism VALUES (13, 24, 3, 'Alkaid - Big Dipper');
INSERT INTO public.star_asterism VALUES (14, 12, 5, 'Deneb - Northern Cross');
INSERT INTO public.star_asterism VALUES (15, 14, 5, 'Sadr - Northern Cross');
INSERT INTO public.star_asterism VALUES (16, 15, 5, 'Albireo - Northern Cross');
INSERT INTO public.star_asterism VALUES (17, 16, 5, 'Delta Cygni - Northern Cross');
INSERT INTO public.star_asterism VALUES (18, 17, 5, 'Epsilon Cygni - Northern Cross');


--
-- Name: asterism_asterism_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asterism_asterism_id_seq', 8, true);


--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_hole_black_hole_id_seq', 6, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_asterism_star_asterism_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_asterism_star_asterism_id_seq', 18, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 25, true);


--
-- Name: asterism asterism_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asterism
    ADD CONSTRAINT asterism_name_key UNIQUE (name);


--
-- Name: asterism asterism_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asterism
    ADD CONSTRAINT asterism_pkey PRIMARY KEY (asterism_id);


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


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
-- Name: star_asterism star_asterism_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_asterism
    ADD CONSTRAINT star_asterism_name_key UNIQUE (name);


--
-- Name: star_asterism star_asterism_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_asterism
    ADD CONSTRAINT star_asterism_pkey PRIMARY KEY (star_asterism_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon uk_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT uk_moon_name UNIQUE (name);


--
-- Name: planet uk_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT uk_planet_name UNIQUE (name);


--
-- Name: star_asterism uk_star_asterism_star_id_asterism_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_asterism
    ADD CONSTRAINT uk_star_asterism_star_id_asterism_id UNIQUE (star_id, asterism_id);


--
-- Name: star uk_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT uk_star_name UNIQUE (name);


--
-- Name: black_hole uq_black_hole_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT uq_black_hole_name UNIQUE (name);


--
-- Name: galaxy uq_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT uq_galaxy_name UNIQUE (name);


--
-- Name: black_hole fk_black_hole_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT fk_black_hole_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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
-- Name: star_asterism star_asterism_asterism_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_asterism
    ADD CONSTRAINT star_asterism_asterism_id_fkey FOREIGN KEY (asterism_id) REFERENCES public.asterism(asterism_id);


--
-- Name: star_asterism star_asterism_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_asterism
    ADD CONSTRAINT star_asterism_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

