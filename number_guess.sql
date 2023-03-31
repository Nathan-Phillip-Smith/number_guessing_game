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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    username character varying(22),
    games_played integer,
    best_game integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES ('user_1680294246654', 2, 597);
INSERT INTO public.games VALUES ('user_1680294246655', 5, 509);
INSERT INTO public.games VALUES ('user_1680294779489', 1, 321);
INSERT INTO public.games VALUES ('user_1680294260126', 2, 932);
INSERT INTO public.games VALUES ('user_1680294779490', 1, 36);
INSERT INTO public.games VALUES ('user_1680294260127', 5, 370);
INSERT INTO public.games VALUES ('user_1680294312337', 2, 87);
INSERT INTO public.games VALUES ('user_1680294791281', 1, 144);
INSERT INTO public.games VALUES ('user_1680294312338', 5, 22);
INSERT INTO public.games VALUES ('user_1680294339822', 2, 793);
INSERT INTO public.games VALUES ('user_1680294791282', 1, 105);
INSERT INTO public.games VALUES ('user_1680294339823', 5, 424);
INSERT INTO public.games VALUES ('user_1680294387078', 2, 904);
INSERT INTO public.games VALUES ('user_1680294844934', 1, 96);
INSERT INTO public.games VALUES ('user_1680294387079', 5, 694);
INSERT INTO public.games VALUES ('user_1680294844935', 1, 709);
INSERT INTO public.games VALUES ('user_1680294447436', 1, 5);
INSERT INTO public.games VALUES ('user_1680294447437', 1, 111);
INSERT INTO public.games VALUES ('user_1680294856241', 1, 186);
INSERT INTO public.games VALUES ('user_1680294611601', 1, 40);
INSERT INTO public.games VALUES ('user_1680294856242', 1, 435);
INSERT INTO public.games VALUES ('user_1680294611602', 1, 79);
INSERT INTO public.games VALUES ('user_1680294633327', 1, 519);
INSERT INTO public.games VALUES ('user_1680294876744', 1, 78);
INSERT INTO public.games VALUES ('user_1680294633328', 1, 269);
INSERT INTO public.games VALUES ('user_1680294653612', 1, 303);
INSERT INTO public.games VALUES ('user_1680294876745', 1, 103);
INSERT INTO public.games VALUES ('user_1680294653613', 1, 148);
INSERT INTO public.games VALUES ('user_1680294914390', 1, 454);
INSERT INTO public.games VALUES ('user_1680294914391', 1, 390);


--
-- Name: games games_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_username_key UNIQUE (username);


--
-- PostgreSQL database dump complete
--
