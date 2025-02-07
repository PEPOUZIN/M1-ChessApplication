--
-- PostgreSQL database dump
--

-- Dumped from database version 17.1
-- Dumped by pg_dump version 17.1

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
-- Name: chess_openings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE IF NOT EXISTS public.chess_openings (
    id integer NOT NULL,
    site character varying(100),
    white_move character varying(100),
    black_move character varying(100),
    moves text
);


ALTER TABLE public.chess_openings OWNER TO will;


--
-- Name: chess_openings_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.chess_openings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.chess_openings_id_seq OWNER TO will;

--
-- Name: chess_openings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.chess_openings_id_seq OWNED BY public.chess_openings.id;


--
-- Name: chess_openings id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.chess_openings ALTER COLUMN id SET DEFAULT nextval('public.chess_openings_id_seq'::regclass);


--
-- Data for Name: chess_openings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.chess_openings (id, site, white_move, black_move, moves) FROM stdin;
1	A00	Polish (Sokolsky) opening	N/A	1. b4
2	A00	Polish	Tuebingen Variation 	1. b4 Nh6
3	A00	Polish	Outflank Variation 	1. b4 c6
4	A00	Benko's Opening	N/A	1. g3
5	A00	Lasker simul special	N/A	1. g3 h5
6	A00	Benko's Opening	reversed Alekhine	1. g3 e5 2. Nf3
7	A00	Grob's attack	N/A	1. g4
8	A00	Grob	Spike attack	1. g4 d5 2. Bg2 c6 3. g5
9	A00	Grob	Fritz gambit	1. g4 d5 2. Bg2 Bxg4 3. c4
10	A00	Grob	Romford counter-gambit	1. g4 d5 2. Bg2 Bxg4 3. c4 d4
11	A00	Clemenz (Mead's, Basman's or de Klerk's) Opening	N/A	1. h3
12	A00	Global Opening	N/A	1. h3 e5 2. a3
13	A00	Amar (Paris) Opening	N/A	1. Nh3
14	A00	Amar gambit	N/A	1. Nh3 d5 2. g3 e5 3. f4 Bxh3 4. Bxh3 exf4
15	A00	Dunst (Sleipner, Heinrichsen) Opening	N/A	1. Nc3
16	A00	Dunst (Sleipner,Heinrichsen) Opening	N/A	1. Nc3 e5
17	A00	Battambang Opening	N/A	1. Nc3 e5 2. a3
18	A00	Novosibirsk Opening	N/A	1. Nc3 c5 2. d4 cxd4 3. Qxd4 Nc6 4. Qh4
19	A00	Anderssen's Opening	N/A	1. a3
20	A00	Ware (Meadow Hay) Opening	N/A	1. a4
21	A00	Crab Opening	N/A	1. a4 e5 2. h4
22	A00	Saragossa Opening	N/A	1. c3
23	A00	Mieses Opening	N/A	1. d3
24	A00	Mieses Opening	N/A	1. d3 e5
25	A00	Valencia Opening	N/A	1. d3 e5 2. Nd2
26	A00	Venezolana Opening	N/A	1. d3 c5 2. Nc3 Nc6 3. g3
27	A00	Van't Kruijs Opening	N/A	1. e3
28	A00	Amsterdam attack	N/A	1. e3 e5 2. c4 d6 3. Nc3 Nc6 4. b3 Nf6
29	A00	Gedult's Opening	N/A	1. f3
30	A00	Hammerschlag (Fried fox/Pork chop Opening)	N/A	1. f3 e5 2. Kf2
31	A00	Anti-Borg (Desprez) Opening	N/A	1. h4
32	A00	Durkin's attack	N/A	1. Na3
33	A01	Nimzovich-Larsen attack	N/A	1. b3
34	A01	Nimzovich-Larsen attack	Modern Variation 	1. b3 e5
35	A01	Nimzovich-Larsen attack	Indian Variation 	1. b3 Nf6
36	A01	Nimzovich-Larsen attack	Classical Variation 	1. b3 d5
37	A01	Nimzovich-Larsen attack	English Variation 	1. b3 c5
38	A01	Nimzovich-Larsen attack	Dutch Variation 	1. b3 f5
39	A01	Nimzovich-Larsen attack	Polish Variation 	1. b3 b5
40	A01	Nimzovich-Larsen attack	Symmetrical Variation 	1. b3 b6
41	A02	Bird's Opening	N/A	1. f4
42	A02	Bird	From gambit	1. f4 e5
43	A02	Bird	From gambit, Lasker Variation 	1. f4 e5 2. fxe5 d6 3. exd6 Bxd6 4. Nf3 g5
44	A02	Bird	From gambit, Lipke Variation 	1. f4 e5 2. fxe5 d6 3. exd6 Bxd6 4. Nf3 Nh6 5. d4
45	A02	Bird's Opening, Swiss gambit	N/A	1. f4 f5 2. e4 fxe4 3. Nc3 Nf6 4. g4
46	A02	Bird	Hobbs gambit	1. f4 g5
47	A03	Bird's Opening	N/A	1. f4 d5
48	A03	Mujannah Opening	N/A	1. f4 d5 2. c4
49	A03	Bird's Opening	Williams gambit	1. f4 d5 2. e4
50	A03	Bird's Opening	Lasker Variation 	1. f4 d5 2. Nf3 Nf6 3. e3 c5
51	A04	Reti Opening	N/A	1. Nf3
52	A04	Reti v Dutch	N/A	1. Nf3 f5
53	A04	Reti	Pirc-Lisitsin gambit	1. Nf3 f5 2. e4
54	A04	Reti	Lisitsin gambit deferred	1. Nf3 f5 2. d3 Nf6 3. e4
55	A04	Reti Opening	N/A	1. Nf3 d6
56	A04	Reti	Wade defense	1. Nf3 d6 2. e4 Bg4
57	A04	Reti	Herrstroem gambit	1. Nf3 g5
58	A05	Reti Opening	N/A	1. Nf3 Nf6
59	A05	Reti	King's Indian attack, Spassky's Variation 	1. Nf3 Nf6 2. g3 b5
60	A05	Reti	King's Indian attack	1. Nf3 Nf6 2. g3 g6
61	A05	Reti	King's Indian attack, Reti-Smyslov Variation 	1. Nf3 Nf6 2. g3 g6 3. b4
62	A06	Reti Opening	N/A	1. Nf3 d5
63	A06	Reti	Old Indian attack	1. Nf3 d5 2. d3
64	A06	Santasiere's folly	N/A	1. Nf3 d5 2. b4
65	A06	Tennison (Lemberg, Zukertort) gambit	N/A	1. Nf3 d5 2. e4
66	A06	Reti	Nimzovich-Larsen attack	1. Nf3 d5 2. b3
67	A07	Reti	King's Indian attack (Barcza system)	1. Nf3 d5 2. g3
68	A07	Reti	King's Indian attack, Yugoslav Variation 	1. Nf3 d5 2. g3 Nf6 3. Bg2 c6 4. O-O Bg4
69	A07	Reti	King's Indian attack, Keres Variation 	1. Nf3 d5 2. g3 Bg4 3. Bg2 Nd7
70	A07	Reti	King's Indian attack	1. Nf3 d5 2. g3 g6
71	A07	Reti	King's Indian attack, Pachman system	1. Nf3 d5 2. g3 g6 3. Bg2 Bg7 4. O-O e5 5. d3 Ne7
72	A07	Reti	King's Indian attack (with ...c5)	1. Nf3 d5 2. g3 c5
73	A08	Reti	King's Indian attack	1. Nf3 d5 2. g3 c5 3. Bg2
74	A08	Reti	King's Indian attack, French Variation 	1. Nf3 d5 2. g3 c5 3. Bg2 Nc6 4. O-O e6 5. d3 Nf6 6. Nbd2 Be7 7. e4 O-O 8.
75	A09	Reti Opening	N/A	Re1
76	A09	Reti	N/A	1. Nf3 d5 2. c4
77	A09	Reti accepted	Advance Variation 	1. Nf3 d5 2. c4 d4
78	A09	Reti accepted	N/A	1. Nf3 d5 2. c4 dxc4
79	A10	English Opening	Keres Variation 	1. Nf3 d5 2. c4 dxc4 3. e3 Be6
80	A10	English Opening	N/A	1. c4
81	A10	English	N/A	1. c4 g6
82	A10	English	Adorjan defense	1. c4 g6 2. e4 e5
83	A10	English	Jaenisch gambit	1. c4 b5
84	A11	English	Anglo-Dutch defense	1. c4 f5
85	A12	English	Caro-Kann defensive system	1. c4 c6
86	A12	English	Caro-Kann defensive system	1. c4 c6 2. Nf3 d5 3. b3
87	A12	English	Torre defensive system	1. c4 c6 2. Nf3 d5 3. b3 Nf6 4. g3 Bg4
88	A12	English	London defensive system	1. c4 c6 2. Nf3 d5 3. b3 Nf6 4. g3 Bf5
89	A12	English	Caro-Kann defensive system	1. c4 c6 2. Nf3 d5 3. b3 Nf6 4. Bb2
90	A12	English	Bled Variation 	1. c4 c6 2. Nf3 d5 3. b3 Nf6 4. Bb2 g6
91	A12	English	New York (London) defensive system	1. c4 c6 2. Nf3 d5 3. b3 Nf6 4. Bb2 Bf5
92	A12	English	Capablanca's Variation 	1. c4 c6 2. Nf3 d5 3. b3 Nf6 4. Bb2 Bg4
93	A13	English Opening	Caro-Kann defensive system, Bogolyubov Variation 	1. c4 c6 2. Nf3 d5 3. b3 Bg4
94	A13	English	N/A	1. c4 e6
95	A13	English Opening	Romanishin gambit	1. c4 e6 2. Nf3 Nf6 3. g3 a6 4. Bg2 b5
96	A13	English	Agincourt Variation 	1. c4 e6 2. Nf3 d5
97	A13	English Opening	Wimpey system	1. c4 e6 2. Nf3 d5 3. b3 Nf6 4. Bb2 c5 5. e3
98	A13	English	Agincourt Variation 	1. c4 e6 2. Nf3 d5 3. g3
99	A13	English	Kurajica defense	1. c4 e6 2. Nf3 d5 3. g3 c6
100	A13	English	Neo-Catalan	1. c4 e6 2. Nf3 d5 3. g3 Nf6
101	A14	English	Neo-Catalan accepted	1. c4 e6 2. Nf3 d5 3. g3 Nf6 4. Bg2 dxc4
102	A14	English	Neo-Catalan declined	1. c4 e6 2. Nf3 d5 3. g3 Nf6 4. Bg2 Be7 5. O-O
103	A15	English, 1...Nf6 (Anglo-Indian defense)	Symmetrical, Keres defense	1. c4 e6 2. Nf3 d5 3. g3 Nf6 4. Bg2 Be7 5. O-O c5 6. cxd5 Nxd5 7. Nc3 Nc6
104	A15	English orang-utan	N/A	1. c4 Nf6
105	A15	English Opening	N/A	1. c4 Nf6 2. b4
106	A16	English Opening	N/A	1. c4 Nf6 2. Nf3
107	A16	English	N/A	1. c4 Nf6 2. Nc3
108	A16	English	Anglo-Gruenfeld defense	1. c4 Nf6 2. Nc3 d5
109	A16	English	Anglo-Gruenfeld, Smyslov defense	1. c4 Nf6 2. Nc3 d5 3. cxd5 Nxd5 4. g3 g6 5. Bg2 Nxc3
110	A16	English	Anglo-Gruenfeld, Czech defense	1. c4 Nf6 2. Nc3 d5 3. cxd5 Nxd5 4. g3 g6 5. Bg2 Nb6
111	A16	English	Anglo-Gruenfeld defense	1. c4 Nf6 2. Nc3 d5 3. cxd5 Nxd5 4. Nf3
112	A17	English Opening	Anglo-Gruenfeld defense, Korchnoi Variation 	1. c4 Nf6 2. Nc3 d5 3. cxd5 Nxd5 4. Nf3 g6 5. g3 Bg7 6. Bg2 e5
113	A17	English	N/A	1. c4 Nf6 2. Nc3 e6
114	A17	English	Queens Indian formation	1. c4 Nf6 2. Nc3 e6 3. Nf3 b6
115	A17	English	Queens Indian, Romanishin Variation 	1. c4 Nf6 2. Nc3 e6 3. Nf3 b6 4. e4 Bb7 5. Bd3
116	A18	English	Nimzo-English Opening	1. c4 Nf6 2. Nc3 e6 3. Nf3 Bb4
117	A18	English	Mikenas-Carls Variation 	1. c4 Nf6 2. Nc3 e6 3. e4
118	A18	English	Mikenas-Carls, Flohr Variation 	1. c4 Nf6 2. Nc3 e6 3. e4 d5 4. e5
119	A19	English	Mikenas-Carls, Kevitz Variation 	1. c4 Nf6 2. Nc3 e6 3. e4 Nc6
120	A20	English Opening	Mikenas-Carls, Sicilian Variation 	1. c4 Nf6 2. Nc3 e6 3. e4 c5
121	A20	English, Nimzovich Variation 	N/A	1. c4 e5
122	A20	English, Nimzovich, Flohr Variation 	N/A	1. c4 e5 2. Nf3
123	A21	English Opening	N/A	1. c4 e5 2. Nf3 e4
124	A21	English, Troeger defense	N/A	1. c4 e5 2. Nc3
125	A21	English, Keres Variation 	N/A	1. c4 e5 2. Nc3 d6 3. g3 Be6 4. Bg2 Nc6
126	A21	English Opening	N/A	1. c4 e5 2. Nc3 d6 3. g3 c6
127	A21	English, Smyslov defense	N/A	1. c4 e5 2. Nc3 d6 3. Nf3
128	A21	English, Kramnik-Shirov counterattack	N/A	1. c4 e5 2. Nc3 d6 3. Nf3 Bg4
129	A22	English Opening	N/A	1. c4 e5 2. Nc3 Bb4
130	A22	English	N/A	1. c4 e5 2. Nc3 Nf6
131	A22	English	Bellon gambit	1. c4 e5 2. Nc3 Nf6 3. Nf3 e4 4. Ng5 b5
132	A22	English	Carls' Bremen system	1. c4 e5 2. Nc3 Nf6 3. g3
133	A22	English	Bremen, reverse Dragon	1. c4 e5 2. Nc3 Nf6 3. g3 d5
134	A23	English	Bremen, Smyslov system	1. c4 e5 2. Nc3 Nf6 3. g3 Bb4
135	A24	English	Bremen system, Keres Variation 	1. c4 e5 2. Nc3 Nf6 3. g3 c6
136	A25	English	Bremen system with ...g6	1. c4 e5 2. Nc3 Nf6 3. g3 g6
137	A25	English	Sicilian Reversed	1. c4 e5 2. Nc3 Nc6
138	A25	English	Closed system	1. c4 e5 2. Nc3 Nc6 3. g3 g6 4. Bg2 Bg7
139	A25	English	Closed, Taimanov Variation 	1. c4 e5 2. Nc3 Nc6 3. g3 g6 4. Bg2 Bg7 5. e3 d6 6. Nge2 Nh6
140	A25	English	Closed, Hort Variation 	1. c4 e5 2. Nc3 Nc6 3. g3 g6 4. Bg2 Bg7 5. e3 d6 6. Nge2 Be6
141	A25	English	Closed, 5.Rb1	1. c4 e5 2. Nc3 Nc6 3. g3 g6 4. Bg2 Bg7 5. Rb1
142	A25	English	Closed, 5.Rb1 Taimanov Variation 	1. c4 e5 2. Nc3 Nc6 3. g3 g6 4. Bg2 Bg7 5. Rb1 Nh6
143	A26	English	Closed system (without ...d6)	1. c4 e5 2. Nc3 Nc6 3. g3 g6 4. Bg2 Bg7 5. d3
144	A26	English	Closed system	1. c4 e5 2. Nc3 Nc6 3. g3 g6 4. Bg2 Bg7 5. d3 d6
145	A27	English	Botvinnik system	1. c4 e5 2. Nc3 Nc6 3. g3 g6 4. Bg2 Bg7 5. d3 d6 6. e4
146	A28	English	Three knights system	1. c4 e5 2. Nc3 Nc6 3. Nf3
147	A28	English	Four knights system	1. c4 e5 2. Nc3 Nc6 3. Nf3 Nf6
148	A28	English	Nenarokov Variation 	1. c4 e5 2. Nc3 Nc6 3. Nf3 Nf6 4. d4 exd4 5. Nxd4 Bb4 6. Bg5 h6 7. Bh4 Bxc3+ 8. bxc3 Ne5
149	A28	English	Bradley Beach Variation 	1. c4 e5 2. Nc3 Nc6 3. Nf3 Nf6 4. d4 e4
150	A28	English	Four knights, Nimzovich Variation 	1. c4 e5 2. Nc3 Nc6 3. Nf3 Nf6 4. e4
151	A28	English	Four knights, Marini Variation 	1. c4 e5 2. Nc3 Nc6 3. Nf3 Nf6 4. a3
152	A28	English	Four knights, Capablanca Variation 	1. c4 e5 2. Nc3 Nc6 3. Nf3 Nf6 4. d3
153	A28	English	Four knights, 4.e3	1. c4 e5 2. Nc3 Nc6 3. Nf3 Nf6 4. e3
154	A28	English	Four knights, Stean Variation 	1. c4 e5 2. Nc3 Nc6 3. Nf3 Nf6 4. e3 Bb4 5. Qc2 O-O 6. Nd5 Re8 7. Qf5
155	A29	English	Four knights, Romanishin Variation 	1. c4 e5 2. Nc3 Nc6 3. Nf3 Nf6 4. e3 Bb4 5. Qc2 Bxc3
156	A30	English	Four knights, kingside Fianchetto	1. c4 e5 2. Nc3 Nc6 3. Nf3 Nf6 4. g3
157	A30	English	Symmetrical Variation 	1. c4 c5
158	A30	English	Symmetrical, hedgehog system	1. c4 c5 2. Nf3 Nf6 3. g3 b6 4. Bg2 Bb7 5. O-O e6 6. Nc3 Be7
159	A31	English	Symmetrical, hedgehog, flexible formation	1. c4 c5 2. Nf3 Nf6 3. g3 b6 4. Bg2 Bb7 5. O-O e6 6. Nc3 Be7 7. d4 cxd4 8. Qxd4 d6 9. Rd1 a6 10. b3 Nbd7
160	A32	English	Symmetrical, Benoni formation	1. c4 c5 2. Nf3 Nf6 3. d4
161	A33	English	Symmetrical Variation 	1. c4 c5 2. Nf3 Nf6 3. d4 cxd4 4. Nxd4 e6
162	A33	English	Symmetrical Variation 	1. c4 c5 2. Nf3 Nf6 3. d4 cxd4 4. Nxd4 e6 5. Nc3 Nc6
163	A34	English	Symmetrical, Geller Variation 	1. c4 c5 2. Nf3 Nf6 3. d4 cxd4 4. Nxd4 e6 5. Nc3 Nc6 6. g3 Qb6
164	A34	English	Symmetrical Variation 	1. c4 c5 2. Nc3
165	A34	English	Symmetrical, Three knights system	1. c4 c5 2. Nc3 Nf6 3. Nf3 d5 4. cxd5 Nxd5
166	A34	English	Symmetrical Variation 	1. c4 c5 2. Nc3 Nf6 3. g3
167	A35	English	Symmetrical, Rubinstein system	1. c4 c5 2. Nc3 Nf6 3. g3 d5 4. cxd5 Nxd5 5. Bg2 Nc7
168	A35	English	Symmetrical Variation 	1. c4 c5 2. Nc3 Nc6
169	A36	English	Symmetrical, Four knights system	1. c4 c5 2. Nc3 Nc6 3. Nf3 Nf6
170	A36	English	Symmetrical Variation 	1. c4 c5 2. Nc3 Nc6 3. g3
171	A36	English	ultra-Symmetrical Variation 	1. c4 c5 2. Nc3 Nc6 3. g3 g6 4. Bg2 Bg7
172	A36	English	Symmetrical, Botvinnik system Reversed	1. c4 c5 2. Nc3 Nc6 3. g3 g6 4. Bg2 Bg7 5. e3 e5
173	A37	English	Symmetrical, Botvinnik system	1. c4 c5 2. Nc3 Nc6 3. g3 g6 4. Bg2 Bg7 5. e4
174	A37	English	Symmetrical Variation 	1. c4 c5 2. Nc3 Nc6 3. g3 g6 4. Bg2 Bg7 5. Nf3
175	A38	English	Symmetrical, Botvinnik system Reversed	1. c4 c5 2. Nc3 Nc6 3. g3 g6 4. Bg2 Bg7 5. Nf3 e5
176	A38	English	Symmetrical Variation 	1. c4 c5 2. Nc3 Nc6 3. g3 g6 4. Bg2 Bg7 5. Nf3 Nf6
177	A38	English	Symmetrical, Main line with d3	1. c4 c5 2. Nc3 Nc6 3. g3 g6 4. Bg2 Bg7 5. Nf3 Nf6 6. O-O O-O 7. d3
178	A39	English	Symmetrical, Main line with b3	1. c4 c5 2. Nc3 Nc6 3. g3 g6 4. Bg2 Bg7 5. Nf3 Nf6 6. O-O O-O 7. b3
179	A40	Queen's pawn	Symmetrical, Main line with d4	1. c4 c5 2. Nc3 Nc6 3. g3 g6 4. Bg2 Bg7 5. Nf3 Nf6 6. O-O O-O 7. d4
180	A40	Queen's pawn	N/A	1. d4
181	A40	Queen's pawn	Lundin (Kevitz-Mikenas) defense	1. d4 Nc6
182	A40	Queen's pawn	Charlick (Englund) gambit	1. d4 e5
183	A40	Queen's pawn	Englund gambit	1. d4 e5 2. dxe5 Nc6 3. Nf3 Qe7 4. Qd5 f6 5. exf6 Nxf6
184	A40	Polish defense	English defense	1. d4 b6
185	A40	Queen's pawn	N/A	1. d4 b5
186	A40	Queen's pawn	N/A	1. d4 e6
187	A40	Queen's pawn	Keres defense	1. d4 e6 2. c4 b6
188	A40	Modern defense	Franco-Indian (Keres) defense	1. d4 e6 2. c4 Bb4+
189	A40	Beefeater defense	N/A	1. d4 g6
190	A41	Queen's Pawn	N/A	1. d4 g6 2. c4 Bg7 3. Nc3 c5 4. d5 Bxc3+ 5. bxc3 f5
191	A41	Old Indian	N/A	1. d4 d6
192	A41	Old Indian defense	Tartakower (Wade) Variation 	1. d4 d6 2. Nf3 Bg4
193	A41	Modern defense	N/A	1. d4 d6 2. c4
194	A41	Robatsch defense	N/A	1. d4 d6 2. c4 g6 3. Nc3 Bg7
195	A42	Modern defense	Rossolimo Variation 	1. e4 g6 2. d4 Bg7 3. Nf3 d6 4. c4 Bg4
196	A42	Pterodactyl defense	Averbakh system	1. d4 d6 2. c4 g6 3. Nc3 Bg7 4. e4
197	A42	Modern defense	N/A	1. d4 d6 2. c4 g6 3. Nc3 Bg7 4. e4 c5 5. Nf3 Qa5
198	A42	Modern defense	Averbakh system, Randspringer Variation 	1. d4 d6 2. c4 g6 3. Nc3 Bg7 4. e4 f5
199	A43	Old Benoni defense	Averbakh system, Kotov Variation 	1. d4 d6 2. c4 g6 3. Nc3 Bg7 4. e4 Nc6
200	A43	Old Benoni	N/A	1. d4 c5
201	A43	Old Benoni	Franco-Benoni defense	1. d4 c5 2. d5 e6 3. e4
202	A43	Old Benoni defense	Mujannah formation	1. d4 c5 2. d5 f5
203	A43	Woozle defense	N/A	1. d4 c5 2. d5 Nf6
204	A43	Old Benoni defense	N/A	1. d4 c5 2. d5 Nf6 3. Nc3 Qa5
205	A43	Hawk (Habichd) defense	N/A	1. d4 c5 2. d5 Nf6 3. Nf3
206	A43	Old Benoni defense	N/A	1. d4 c5 2. d5 Nf6 3. Nf3 c4
207	A43	Old Benoni	N/A	1. d4 c5 2. d5 d6
208	A44	Old Benoni defense	Schmid's system	1. d4 c5 2. d5 d6 3. Nc3 g6
209	A44	Semi-Benoni (`blockade Variation ')	N/A	1. d4 c5 2. d5 e5
210	A45	Queen's pawn game	N/A	1. d4 c5 2. d5 e5 3. e4 d6
211	A45	Queen's pawn	N/A	1. d4 Nf6
212	A45	Canard Opening	Bronstein gambit	1. d4 Nf6 2. g4
213	A45	Paleface attack	N/A	1. d4 Nf6 2. f4
214	A45	Blackmar-Diemer gambit	N/A	1. d4 Nf6 2. f3
215	A45	Gedult attack	N/A	1. d4 Nf6 2. f3 d5 3. e4
216	A45	Trompovsky attack (Ruth, Opovcensky Opening)	N/A	1. d4 Nf6 2. f3 d5 3. g4
217	A46	Queen's pawn game	N/A	1. d4 Nf6 2. Bg5
218	A46	Queen's pawn	N/A	1. d4 Nf6 2. Nf3
219	A46	Queen's pawn	Torre attack	1. d4 Nf6 2. Nf3 e6 3. Bg5
220	A46	Queen's pawn	Torre attack, Wagner gambit	1. d4 Nf6 2. Nf3 e6 3. Bg5 c5 4. e4
221	A46	Doery defense	Yusupov-Rubinstein system	1. d4 Nf6 2. Nf3 e6 3. e3
222	A47	Queen's Indian defense	N/A	1. d4 Nf6 2. Nf3 Ne4
223	A47	Queen's Indian	N/A	1. d4 Nf6 2. Nf3 b6
224	A47	Queen's Indian	Marienbad system	1. d4 Nf6 2. Nf3 b6 3. g3 Bb7 4. Bg2 c5
225	A48	King's Indian	Marienbad system, Berg Variation 	1. d4 Nf6 2. Nf3 b6 3. g3 Bb7 4. Bg2 c5 5. c4 cxd4 6. Qxd4
226	A48	King's Indian	East Indian defense	1. d4 Nf6 2. Nf3 g6
227	A48	King's Indian	Torre attack	1. d4 Nf6 2. Nf3 g6 3. Bg5
228	A49	King's Indian	London system	1. d4 Nf6 2. Nf3 g6 3. Bf4
229	A50	Queen's pawn game	Fianchetto without c4	1. d4 Nf6 2. Nf3 g6 3. g3
230	A50	Kevitz-Trajkovich defense	N/A	1. d4 Nf6 2. c4
231	A50	Queen's Indian Accelerated	N/A	1. d4 Nf6 2. c4 Nc6
232	A51	Budapest defense declined	N/A	1. d4 Nf6 2. c4 b6
233	A51	Budapest	N/A	1. d4 Nf6 2. c4 e5
234	A51	Budapest	Fajarowicz Variation 	1. d4 Nf6 2. c4 e5 3. dxe5 Ne4
235	A52	Budapest defense	Fajarowicz, Steiner Variation 	1. d4 Nf6 2. c4 e5 3. dxe5 Ne4 4. Qc2
236	A52	Budapest	N/A	1. d4 Nf6 2. c4 e5 3. dxe5 Ng4
237	A52	Budapest	Adler Variation 	1. d4 Nf6 2. c4 e5 3. dxe5 Ng4 4. Nf3
238	A52	Budapest	Rubinstein Variation 	1. d4 Nf6 2. c4 e5 3. dxe5 Ng4 4. Bf4
239	A52	Budapest	Alekhine Variation 	1. d4 Nf6 2. c4 e5 3. dxe5 Ng4 4. e4
240	A52	Budapest	Alekhine, Abonyi Variation 	1. d4 Nf6 2. c4 e5 3. dxe5 Ng4 4. e4 Nxe5 5. f4 Nec6
241	A53	Old Indian defense	Alekhine Variation , Balogh gambit	1. d4 Nf6 2. c4 e5 3. dxe5 Ng4 4. e4 d6
242	A53	Old Indian	N/A	1. d4 Nf6 2. c4 d6
243	A54	Old Indian	Janowski Variation 	1. d4 Nf6 2. c4 d6 3. Nc3 Bf5
244	A54	Old Indian	Ukrainian Variation 	1. d4 Nf6 2. c4 d6 3. Nc3 e5
245	A54	Old Indian	Dus-Khotimirsky Variation 	1. d4 Nf6 2. c4 d6 3. Nc3 e5 4. e3 Nbd7 5. Bd3
246	A55	Old Indian	Ukrainian Variation , 4.Nf3	1. d4 Nf6 2. c4 d6 3. Nc3 e5 4. Nf3
247	A56	Benoni defense	Main line	1. d4 Nf6 2. c4 d6 3. Nc3 e5 4. Nf3 Nbd7 5. e4
248	A56	Benoni defense, Hromodka system	N/A	1. d4 Nf6 2. c4 c5
249	A56	Vulture defense	N/A	1. d4 Nf6 2. c4 c5 3. d5 d6
250	A56	Czech Benoni defense	N/A	1. d4 Nf6 2. c4 c5 3. d5 Ne4
251	A56	Czech Benoni	N/A	1. d4 Nf6 2. c4 c5 3. d5 e5
252	A57	Benko gambit	King's Indian system	1. d4 Nf6 2. c4 c5 3. d5 e5 4. Nc3 d6 5. e4 g6
253	A57	Benko gambit half accepted	N/A	1. d4 Nf6 2. c4 c5 3. d5 b5
254	A57	Benko gambit	N/A	1. d4 Nf6 2. c4 c5 3. d5 b5 4. cxb5 a6
255	A57	Benko gambit	Zaitsev system	1. d4 Nf6 2. c4 c5 3. d5 b5 4. cxb5 a6 5. Nc3
256	A58	Benko gambit accepted	Nescafe Frappe attack	1. d4 Nf6 2. c4 c5 3. d5 b5 4. cxb5 a6 5. Nc3 axb5 6. e4 b4 7. Nb5 d6 8. Bc4
257	A58	Benko gambit	N/A	1. d4 Nf6 2. c4 c5 3. d5 b5 4. cxb5 a6 5. bxa6
258	A58	Benko gambit	Nd2 Variation 	1. d4 Nf6 2. c4 c5 3. d5 b5 4. cxb5 a6 5. bxa6 Bxa6 6. Nc3 d6 7. Nf3 g6 8. Nd2
259	A59	Benko gambit	Fianchetto Variation 	1. d4 Nf6 2. c4 c5 3. d5 b5 4. cxb5 a6 5. bxa6 Bxa6 6. Nc3 d6 7. Nf3 g6 8. g3
260	A59	Benko gambit	7.e4	1. d4 Nf6 2. c4 c5 3. d5 b5 4. cxb5 a6 5. bxa6 Bxa6 6. Nc3 d6 7. e4
261	A59	Benko gambit	Ne2 Variation 	1. d4 Nf6 2. c4 c5 3. d5 b5 4. cxb5 a6 5. bxa6 Bxa6 6. Nc3 d6 7. e4 Bxf1 8. Kxf1 g6 9. Nge2
262	A59	Benko gambit	N/A	1. d4 Nf6 2. c4 c5 3. d5 b5 4. cxb5 a6 5. bxa6 Bxa6 6. Nc3 d6 7. e4 Bxf1 8. Kxf1 g6 9. g3
263	A60	Benoni defense	Main line	1. d4 Nf6 2. c4 c5 3. d5 b5 4. cxb5 a6 5. bxa6 Bxa6 6. Nc3 d6 7. e4 Bxf1 8. Kxf1 g6 9. g3 Bg7 10. Kg2 O-O 11. Nf3
264	A61	Benoni defense	N/A	1. d4 Nf6 2. c4 c5 3. d5 e6
265	A61	Benoni	N/A	1. d4 Nf6 2. c4 c5 3. d5 e6 4. Nc3 exd5 5. cxd5 d6 6. Nf3 g6
266	A61	Benoni	Uhlmann Variation 	1. d4 Nf6 2. c4 c5 3. d5 e6 4. Nc3 exd5 5. cxd5 d6 6. Nf3 g6 7. Bg5
267	A61	Benoni	Nimzovich (knight's tour) Variation 	1. d4 Nf6 2. c4 c5 3. d5 e6 4. Nc3 exd5 5. cxd5 d6 6. Nf3 g6 7. Nd2
268	A62	Benoni	Fianchetto Variation 	1. d4 Nf6 2. c4 c5 3. d5 e6 4. Nc3 exd5 5. cxd5 d6 6. Nf3 g6 7. g3
269	A63	Benoni	Fianchetto Variation 	1. d4 Nf6 2. c4 c5 3. d5 e6 4. Nc3 exd5 5. cxd5 d6 6. Nf3 g6 7. g3 Bg7 8. Bg2 O-O
270	A64	Benoni	Fianchetto, 9...Nbd7	1. d4 Nf6 2. c4 c5 3. d5 e6 4. Nc3 exd5 5. cxd5 d6 6. Nf3 g6 7. g3 Bg7 8. Bg2 O-O 9. O-O Nbd7
271	A65	Benoni	Fianchetto, 11...Re8	1. d4 Nf6 2. c4 c5 3. d5 e6 4. Nc3 exd5 5. cxd5 d6 6. Nf3 g6 7. g3 Bg7 8. Bg2 O-O 9. O-O Nbd7 10. Nd2 a6 11. a4 Re8
272	A66	Benoni	6.e4	1. d4 Nf6 2. c4 c5 3. d5 e6 4. Nc3 exd5 5. cxd5 d6 6. e4
273	A66	Benoni	pawn storm Variation 	1. d4 Nf6 2. c4 c5 3. d5 e6 4. Nc3 exd5 5. cxd5 d6 6. e4 g6 7. f4
274	A67	Benoni	Mikenas Variation 	1. d4 Nf6 2. c4 c5 3. d5 e6 4. Nc3 exd5 5. cxd5 d6 6. e4 g6 7. f4 Bg7 8. e5
275	A68	Benoni	Taimanov Variation 	1. d4 Nf6 2. c4 c5 3. d5 e6 4. Nc3 exd5 5. cxd5 d6 6. e4 g6 7. f4 Bg7 8. Bb5+
276	A69	Benoni	Four pawns attack	1. d4 Nf6 2. c4 c5 3. d5 e6 4. Nc3 exd5 5. cxd5 d6 6. e4 g6 7. f4 Bg7 8. Nf3 O-O
277	A70	Benoni	Four pawns attack, Main line	1. d4 Nf6 2. c4 c5 3. d5 e6 4. Nc3 exd5 5. cxd5 d6 6. e4 g6 7. f4 Bg7 8. Nf3 O-O 9. Be2 Re8
278	A70	Benoni	Classical with e4 and Nf3	1. d4 Nf6 2. c4 c5 3. d5 e6 4. Nc3 exd5 5. cxd5 d6 6. e4 g6 7. Nf3
279	A71	Benoni	Classical without 9.O-O	1. d4 Nf6 2. c4 c5 3. d5 e6 4. Nc3 exd5 5. cxd5 d6 6. e4 g6 7. Nf3 Bg7 8. Be2
280	A72	Benoni	Classical, 8.Bg5	1. d4 Nf6 2. c4 c5 3. d5 e6 4. Nc3 exd5 5. cxd5 d6 6. e4 g6 7. Nf3 Bg7 8. Bg5
281	A73	Benoni	Classical without 9.O-O	1. d4 Nf6 2. c4 c5 3. d5 e6 4. Nc3 exd5 5. cxd5 d6 6. e4 g6 7. Nf3 Bg7 8. Be2 O-O
282	A74	Benoni	Classical, 9.O-O	1. d4 Nf6 2. c4 c5 3. d5 e6 4. Nc3 exd5 5. cxd5 d6 6. e4 g6 7. Nf3 Bg7 8. Be2 O-O 9. O-O
283	A75	Benoni	Classical, 9...a6, 10.a4	1. d4 Nf6 2. c4 c5 3. d5 e6 4. Nc3 exd5 5. cxd5 d6 6. e4 g6 7. Nf3 Bg7 8. Be2 O-O 9. O-O a6 10. a4
284	A76	Benoni	Classical with ...a6 and 10...Bg4	1. d4 Nf6 2. c4 c5 3. d5 e6 4. Nc3 exd5 5. cxd5 d6 6. e4 g6 7. Nf3 Bg7 8. Be2 O-O 9. O-O a6 10. a4 Bg4
285	A77	Benoni	Classical, 9...Re8	1. d4 Nf6 2. c4 c5 3. d5 e6 4. Nc3 exd5 5. cxd5 d6 6. e4 g6 7. Nf3 Bg7 8. Be2 O-O 9. O-O Re8
286	A78	Benoni	Classical, 9...Re8, 10.Nd2	1. d4 Nf6 2. c4 c5 3. d5 e6 4. Nc3 exd5 5. cxd5 d6 6. e4 g6 7. Nf3 Bg7 8. Be2 O-O 9. O-O Re8 10. Nd2
287	A79	Benoni	Classical with ...Re8 and ...Na6	1. d4 Nf6 2. c4 c5 3. d5 e6 4. Nc3 exd5 5. cxd5 d6 6. e4 g6 7. Nf3 Bg7 8. Be2 O-O 9. O-O Re8 10. Nd2 Na6
288	A80	Dutch	Classical, 11.f3	1. d4 Nf6 2. c4 c5 3. d5 e6 4. Nc3 exd5 5. cxd5 d6 6. e4 g6 7. Nf3 Bg7 8. Be2 O-O 9. O-O Re8 10. Nd2 Na6 11. f3
289	A80	Dutch, Spielmann gambit	N/A	1. d4 f5
290	A80	Dutch, Manhattan (Alapin, Ulvestad) Variation 	N/A	1. d4 f5 2. Nc3 Nf6 3. g4
291	A80	Dutch, Von Pretzel gambit	N/A	1. d4 f5 2. Qd3
292	A80	Dutch, Korchnoi attack	N/A	1. d4 f5 2. Qd3 e6 3. g4
293	A80	Dutch, Krejcik gambit	N/A	1. d4 f5 2. h3
294	A80	Dutch, 2.Bg5 Variation 	N/A	1. d4 f5 2. g4
295	A81	Dutch defense	N/A	1. d4 f5 2. Bg5
296	A81	Dutch defense, Blackburne Variation 	N/A	1. d4 f5 2. g3
297	A81	Dutch defense	N/A	1. d4 f5 2. g3 Nf6 3. Bg2 e6 4. Nh3
298	A81	Dutch	N/A	1. d4 f5 2. g3 Nf6 3. Bg2 g6
299	A81	Dutch	Leningrad, Basman system	1. d4 f5 2. g3 g6 3. Bg2 Bg7 4. Nf3 c6 5. O-O Nh6
300	A82	Dutch	Leningrad, Karlsbad Variation 	1. d4 f5 2. g3 g6 3. Bg2 Bg7 4. Nh3
301	A82	Dutch	Staunton gambit	1. d4 f5 2. e4
302	A82	Dutch	Balogh defense	1. d4 f5 2. e4 d6
303	A82	Dutch	Staunton gambit	1. d4 f5 2. e4 fxe4
304	A83	Dutch	Staunton gambit, Tartakower Variation 	1. d4 f5 2. e4 fxe4 3. Nc3 Nf6 4. g4
305	A83	Dutch	Staunton gambit, Staunton's line	1. d4 f5 2. e4 fxe4 3. Nc3 Nf6 4. Bg5
306	A83	Dutch	Staunton gambit, Alekhine Variation 	1. d4 f5 2. e4 fxe4 3. Nc3 Nf6 4. Bg5 g6 5. h4
307	A83	Dutch	Staunton gambit, Lasker Variation 	1. d4 f5 2. e4 fxe4 3. Nc3 Nf6 4. Bg5 g6 5. f3
308	A83	Dutch	Staunton gambit, Chigorin Variation 	1. d4 f5 2. e4 fxe4 3. Nc3 Nf6 4. Bg5 c6
309	A84	Dutch defense	Staunton gambit, Nimzovich Variation 	1. d4 f5 2. e4 fxe4 3. Nc3 Nf6 4. Bg5 b6
310	A84	Dutch defense	N/A	1. d4 f5 2. c4
311	A84	Dutch defense	Bladel Variation 	1. d4 f5 2. c4 g6 3. Nc3 Nh6
312	A84	Dutch defense, Rubinstein Variation 	N/A	1. d4 f5 2. c4 e6
313	A84	Dutch	N/A	1. d4 f5 2. c4 e6 3. Nc3
314	A84	Dutch defense	Staunton gambit deferred	1. d4 f5 2. c4 e6 3. e4
315	A85	Dutch with c4 & Nc3	N/A	1. d4 f5 2. c4 Nf6
316	A86	Dutch with c4 & g3	N/A	1. d4 f5 2. c4 Nf6 3. Nc3
317	A86	Dutch	N/A	1. d4 f5 2. c4 Nf6 3. g3
318	A86	Dutch	Hort-Antoshin system	1. d4 f5 2. c4 Nf6 3. g3 d6 4. Bg2 c6 5. Nc3 Qc7
319	A87	Dutch	Leningrad Variation 	1. d4 f5 2. c4 Nf6 3. g3 g6
320	A88	Dutch	Leningrad, Main Variation 	1. d4 f5 2. c4 Nf6 3. g3 g6 4. Bg2 Bg7 5. Nf3
321	A89	Dutch	Leningrad, Main Variation with c6	1. d4 f5 2. c4 Nf6 3. g3 g6 4. Bg2 Bg7 5. Nf3 O-O 6. O-O d6 7. Nc3 c6
322	A90	Dutch defense	Leningrad, Main Variation with Nc6	1. d4 f5 2. c4 Nf6 3. g3 g6 4. Bg2 Bg7 5. Nf3 O-O 6. O-O d6 7. Nc3 Nc6
323	A90	Dutch defense	N/A	1. d4 f5 2. c4 Nf6 3. g3 e6 4. Bg2
324	A90	Dutch-Indian, Alekhine Variation 	Dutch-Indian (Nimzo-Dutch) Variation 	1. d4 f5 2. c4 Nf6 3. g3 e6 4. Bg2 Bb4+
325	A91	Dutch defense	N/A	1. d4 f5 2. c4 Nf6 3. g3 e6 4. Bg2 Bb4+ 5. Bd2 Be7
326	A92	Dutch defense	N/A	1. d4 f5 2. c4 Nf6 3. g3 e6 4. Bg2 Be7
327	A92	Dutch defense, Alekhine Variation 	N/A	1. d4 f5 2. c4 Nf6 3. g3 e6 4. Bg2 Be7 5. Nf3 O-O
328	A92	Dutch	N/A	1. d4 f5 2. c4 Nf6 3. g3 e6 4. Bg2 Be7 5. Nf3 O-O 6. O-O Ne4
329	A92	Dutch	Stonewall Variation 	1. d4 f5 2. c4 Nf6 3. g3 e6 4. Bg2 Be7 5. Nf3 O-O 6. O-O d5
330	A93	Dutch	Stonewall with Nc3	1. d4 f5 2. c4 Nf6 3. g3 e6 4. Bg2 Be7 5. Nf3 O-O 6. O-O d5 7. Nc3
331	A94	Dutch	Stonewall, Botwinnik Variation 	1. d4 f5 2. c4 Nf6 3. g3 e6 4. Bg2 Be7 5. Nf3 O-O 6. O-O d5 7. b3
332	A95	Dutch	Stonewall with Ba3	1. d4 f5 2. c4 Nf6 3. g3 e6 4. Bg2 Be7 5. Nf3 O-O 6. O-O d5 7. b3 c6 8. Ba3
333	A95	Dutch	Stonewall with Nc3	1. d4 f5 2. c4 Nf6 3. g3 e6 4. Bg2 Be7 5. Nf3 O-O 6. O-O d5 7. Nc3 c6
334	A96	Dutch	Stonewall: Chekhover Variation 	1. d4 f5 2. c4 Nf6 3. g3 e6 4. Bg2 Be7 5. Nf3 O-O 6. O-O d5 7. Nc3 c6 8. Qc2 Qe8 9. Bg5
335	A97	Dutch	Classical Variation 	1. d4 f5 2. c4 Nf6 3. g3 e6 4. Bg2 Be7 5. Nf3 O-O 6. O-O d6
336	A97	Dutch	Ilyin-Genevsky Variation 	1. d4 f5 2. c4 Nf6 3. g3 e6 4. Bg2 Be7 5. Nf3 O-O 6. O-O d6 7. Nc3 Qe8
337	A98	Dutch	Ilyin-Genevsky, Winter Variation 	1. d4 f5 2. c4 Nf6 3. g3 e6 4. Bg2 Be7 5. Nf3 O-O 6. O-O d6 7. Nc3 Qe8 8. Re1
338	A99	Dutch	Ilyin-Genevsky Variation with Qc2	1. d4 f5 2. c4 Nf6 3. g3 e6 4. Bg2 Be7 5. Nf3 O-O 6. O-O d6 7. Nc3 Qe8 8. Qc2
339	B00	King's pawn Opening	Ilyin-Genevsky Variation with b3	1. d4 f5 2. c4 Nf6 3. g3 e6 4. Bg2 Be7 5. Nf3 O-O 6. O-O d6 7. Nc3 Qe8 8. b3
340	B00	Hippopotamus defense	N/A	1. e4
341	B00	Corn stalk defense	N/A	1. e4 Nh6 2. d4 g6 3. c4 f6
342	B00	Lemming defense	N/A	1. e4 a5
343	B00	Fred	N/A	1. e4 Na6
344	B00	Barnes defense	N/A	1. e4 f5
345	B00	Fried fox defense	N/A	1. e4 f6
346	B00	Carr's defense	N/A	1. e4 f6 2. d4 Kf7
347	B00	Reversed Grob (Borg/Basman defense/macho Grob)	N/A	1. e4 h6
348	B00	St. George (Baker) defense	N/A	1. e4 g5
349	B00	Owen defense	N/A	1. e4 a6
350	B00	Guatemala defense	N/A	1. e4 b6
351	B00	KP	N/A	1. e4 b6 2. d4 Ba6
352	B00	KP	Nimzovich defense	1. e4 Nc6
353	B00	KP	Nimzovich defense, Wheeler gambit	1. e4 Nc6 2. b4 Nxb4 3. c3 Nc6 4. d4
354	B00	KP	Nimzovich defense	1. e4 Nc6 2. Nf3
355	B00	KP	Colorado counter	1. e4 Nc6 2. Nf3 f5
356	B00	KP	Nimzovich defense	1. e4 Nc6 2. d4
357	B00	KP	Nimzovich defense, Marshall gambit	1. e4 Nc6 2. d4 d5 3. exd5 Qxd5 4. Nc3
358	B00	KP	Nimzovich defense, Bogolyubov Variation 	1. e4 Nc6 2. d4 d5 3. Nc3
359	B01	Scandinavian (center counter) defense	Neo-Mongoloid defense	1. e4 Nc6 2. d4 f6
360	B01	Scandinavian defense, Lasker Variation 	N/A	1. e4 d5
361	B01	Scandinavian defense	N/A	1. e4 d5 2. exd5 Qxd5 3. Nc3 Qa5 4. d4 Nf6 5. Nf3 Bg4 6. h3
362	B01	Scandinavian defense, Gruenfeld Variation 	N/A	1. e4 d5 2. exd5 Qxd5 3. Nc3 Qa5 4. d4 Nf6 5. Nf3 Bf5
363	B01	Scandinavian	N/A	1. e4 d5 2. exd5 Qxd5 3. Nc3 Qa5 4. d4 Nf6 5. Nf3 Bf5 6. Ne5 c6 7. g4
364	B01	Scandinavian	Anderssen counter-attack	1. e4 d5 2. exd5 Qxd5 3. Nc3 Qa5 4. d4 e5
365	B01	Scandinavian	Anderssen counter-attack Orthodox attack	1. e4 d5 2. exd5 Qxd5 3. Nc3 Qa5 4. d4 e5 5. dxe5 Bb4 6. Bd2 Nc6 7. Nf3
366	B01	Scandinavian	Anderssen counter-attack, Goteborg system	1. e4 d5 2. exd5 Qxd5 3. Nc3 Qa5 4. d4 e5 5. Nf3
367	B01	Scandinavian, Mieses-Kotrvc gambit	Anderssen counter-attack, Collijn Variation 	1. e4 d5 2. exd5 Qxd5 3. Nc3 Qa5 4. d4 e5 5. Nf3 Bg4
368	B01	Scandinavian	N/A	1. e4 d5 2. exd5 Qxd5 3. Nc3 Qa5 4. b4
369	B01	Scandinavian defense	Pytel-Wade Variation 	1. e4 d5 2. exd5 Qxd5 3. Nc3 Qd6
370	B01	Scandinavian	N/A	1. e4 d5 2. exd5 Nf6
371	B01	Scandinavian gambit	Icelandic gambit	1. e4 d5 2. exd5 Nf6 3. c4 e6
372	B01	Scandinavian defense	N/A	1. e4 d5 2. exd5 Nf6 3. c4 c6
373	B01	Scandinavian	N/A	1. e4 d5 2. exd5 Nf6 3. d4
374	B01	Scandinavian	Marshall Variation 	1. e4 d5 2. exd5 Nf6 3. d4 Nxd5
375	B01	Scandinavian	Kiel Variation 	1. e4 d5 2. exd5 Nf6 3. d4 Nxd5 4. c4 Nb4
376	B02	Alekhine's defense	Richter Variation 	1. e4 d5 2. exd5 Nf6 3. d4 g6
377	B02	Alekhine's defense	N/A	1. e4 Nf6
378	B02	Alekhine's defense	Scandinavian Variation 	1. e4 Nf6 2. Nc3 d5
379	B02	Alekhine's defense	Spielmann Variation 	1. e4 Nf6 2. Nc3 d5 3. e5 Nfd7 4. e6
380	B02	Alekhine's defense	Maroczy Variation 	1. e4 Nf6 2. d3
381	B02	Alekhine's defense	Krejcik Variation 	1. e4 Nf6 2. Bc4
382	B02	Alekhine's defense	Mokele Mbembe (Buecker) Variation 	1. e4 Nf6 2. e5 Ne4
383	B02	Alekhine's defense	Brooklyn defense	1. e4 Nf6 2. e5 Ng8
384	B02	Alekhine's defense	N/A	1. e4 Nf6 2. e5 Nd5
385	B02	Alekhine's defense	Kmoch Variation 	1. e4 Nf6 2. e5 Nd5 3. Bc4 Nb6 4. Bb3 c5 5. d3
386	B02	Alekhine's defense	Saemisch attack	1. e4 Nf6 2. e5 Nd5 3. Nc3
387	B02	Alekhine's defense	Welling Variation 	1. e4 Nf6 2. e5 Nd5 3. b3
388	B02	Alekhine's defense	N/A	1. e4 Nf6 2. e5 Nd5 3. c4
389	B02	Alekhine's defense	Steiner Variation 	1. e4 Nf6 2. e5 Nd5 3. c4 Nb6 4. b3
390	B02	Alekhine's defense	Two pawns' (Lasker's) attack	1. e4 Nf6 2. e5 Nd5 3. c4 Nb6 4. c5
391	B03	Alekhine's defense	Two pawns' attack, Mikenas Variation 	1. e4 Nf6 2. e5 Nd5 3. c4 Nb6 4. c5 Nd5 5. Bc4 e6 6. Nc3 d6
392	B03	Alekhine's defense	N/A	1. e4 Nf6 2. e5 Nd5 3. d4
393	B03	Alekhine's defense	O'Sullivan gambit	1. e4 Nf6 2. e5 Nd5 3. d4 b5
394	B03	Alekhine's defense	N/A	1. e4 Nf6 2. e5 Nd5 3. d4 d6
395	B03	Alekhine's defense	Balogh Variation 	1. e4 Nf6 2. e5 Nd5 3. d4 d6 4. Bc4
396	B03	Alekhine's defense	N/A	1. e4 Nf6 2. e5 Nd5 3. d4 d6 4. c4
397	B03	Alekhine's defense	Exchange Variation 	1. e4 Nf6 2. e5 Nd5 3. d4 d6 4. c4 Nb6 5. exd6
398	B03	Alekhine's defense	Exchange, Karpov Variation 	1. e4 Nf6 2. e5 Nd5 3. d4 d6 4. c4 Nb6 5. exd6 cxd6 6. Nf3 g6 7. Be2 Bg7 8. O-O O-O 9. h3 Nc6 10. Nc3 Bf5 11. Bf4
399	B03	Alekhine's defense	Four pawns attack	1. e4 Nf6 2. e5 Nd5 3. d4 d6 4. c4 Nb6 5. f4
400	B03	Alekhine's defense	Four pawns attack, Korchnoi Variation 	1. e4 Nf6 2. e5 Nd5 3. d4 d6 4. c4 Nb6 5. f4 dxe5 6. fxe5 Bf5 7. Nc3 e6 8. Nf3 Be7 9. Be2 O-O 10. O-O f6
401	B03	Alekhine's defense	Four pawns attack, 6...Nc6	1. e4 Nf6 2. e5 Nd5 3. d4 d6 4. c4 Nb6 5. f4 dxe5 6. fxe5 Nc6
402	B03	Alekhine's defense	Four pawns attack, Ilyin-Genevsky var.	1. e4 Nf6 2. e5 Nd5 3. d4 d6 4. c4 Nb6 5. f4 dxe5 6. fxe5 Nc6 7. Nf3 Bg4 8. e6 fxe6 9. c5
403	B03	Alekhine's defense	Four pawns attack, 7.Be3	1. e4 Nf6 2. e5 Nd5 3. d4 d6 4. c4 Nb6 5. f4 dxe5 6. fxe5 Nc6 7. Be3
404	B03	Alekhine's defense	Four pawns attack, Tartakower Variation 	1. e4 Nf6 2. e5 Nd5 3. d4 d6 4. c4 Nb6 5. f4 dxe5 6. fxe5 Nc6 7. Be3 Bf5 8. Nc3 e6 9. Nf3 Qd7 10. Be2 O-O-O 11. O-O Be7
405	B03	Alekhine's defense	Four pawns attack, Planinc Variation 	1. e4 Nf6 2. e5 Nd5 3. d4 d6 4. c4 Nb6 5. f4 g5
406	B03	Alekhine's defense	Four pawns attack, Fianchetto Variation 	1. e4 Nf6 2. e5 Nd5 3. d4 d6 4. c4 Nb6 5. f4 g6
407	B04	Alekhine's defense	Four pawns attack, Trifunovic Variation 	1. e4 Nf6 2. e5 Nd5 3. d4 d6 4. c4 Nb6 5. f4 Bf5
408	B04	Alekhine's defense	Modern Variation 	1. e4 Nf6 2. e5 Nd5 3. d4 d6 4. Nf3
409	B04	Alekhine's defense	Modern, Larsen Variation 	1. e4 Nf6 2. e5 Nd5 3. d4 d6 4. Nf3 dxe5
410	B04	Alekhine's defense	Modern, Schmid Variation 	1. e4 Nf6 2. e5 Nd5 3. d4 d6 4. Nf3 Nb6
411	B04	Alekhine's defense	Modern, Fianchetto Variation 	1. e4 Nf6 2. e5 Nd5 3. d4 d6 4. Nf3 g6
412	B05	Alekhine's defense	Modern, Keres Variation 	1. e4 Nf6 2. e5 Nd5 3. d4 d6 4. Nf3 g6 5. Bc4 Nb6 6. Bb3 Bg7 7. a4
413	B05	Alekhine's defense	Modern Variation , 4...Bg4	1. e4 Nf6 2. e5 Nd5 3. d4 d6 4. Nf3 Bg4
414	B05	Alekhine's defense	Modern, Flohr Variation 	1. e4 Nf6 2. e5 Nd5 3. d4 d6 4. Nf3 Bg4 5. Be2 c6
415	B05	Alekhine's defense	Modern, Panov Variation 	1. e4 Nf6 2. e5 Nd5 3. d4 d6 4. Nf3 Bg4 5. h3
416	B05	Alekhine's defense	Modern, Alekhine Variation 	1. e4 Nf6 2. e5 Nd5 3. d4 d6 4. Nf3 Bg4 5. c4
417	B06	Robatsch (Modern) defense	Modern, Vitolins attack	1. e4 Nf6 2. e5 Nd5 3. d4 d6 4. Nf3 Bg4 5. c4 Nb6 6. d5
418	B06	Norwegian defense	N/A	1. e4 g6
419	B06	Robatsch (Modern) defense	N/A	1. e4 g6 2. d4 Nf6 3. e5 Nh5 4. g4 Ng7
420	B06	Robatsch defense	N/A	1. e4 g6 2. d4 Bg7
421	B06	Robatsch defense	Three pawns attack	1. e4 g6 2. d4 Bg7 3. f4
422	B06	Robatsch defense	N/A	1. e4 g6 2. d4 Bg7 3. Nc3
423	B06	Robatsch (Modern) defense	Gurgenidze Variation 	1. e4 g6 2. d4 Bg7 3. Nc3 c6 4. f4 d5 5. e5 h5
424	B06	Robatsch defense	N/A	1. e4 g6 2. d4 Bg7 3. Nc3 d6
425	B06	Robatsch defense	Two knights Variation 	1. e4 g6 2. d4 Bg7 3. Nc3 d6 4. Nf3
426	B06	Robatsch defense	Two knights, Suttles Variation 	1. e4 g6 2. d4 Bg7 3. Nc3 d6 4. Nf3 c6
427	B07	Pirc defense	Pseudo-Austrian attack	1. e4 g6 2. d4 Bg7 3. Nc3 d6 4. f4
428	B07	Pirc	N/A	1. e4 d6 2. d4 Nf6 3. Nc3
429	B07	Pirc defense	Ufimtsev-Pytel Variation 	1. e4 d6 2. d4 Nf6 3. Nc3 c6
430	B07	Pirc	N/A	1. e4 d6 2. d4 Nf6 3. Nc3 g6
431	B07	Pirc	150 attack	1. e4 d6 2. d4 Nf6 3. Nc3 g6 4. Be3 c6 5. Qd2
432	B07	Pirc	Sveshnikov system	1. e4 d6 2. d4 Nf6 3. Nc3 g6 4. g3
433	B07	Pirc	Holmov system	1. e4 d6 2. d4 Nf6 3. Nc3 g6 4. Bc4
434	B07	Pirc defense	Byrne Variation 	1. e4 d6 2. d4 Nf6 3. Nc3 g6 4. Bg5
435	B07	Pirc	N/A	1. e4 d6 2. d4 Nf6 3. Nc3 g6 4. Be2
436	B07	Pirc	Chinese Variation 	1. e4 d6 2. d4 Nf6 3. Nc3 g6 4. Be2 Bg7 5. g4
437	B07	Robatsch defense	bayonet (Mariotti) attack	1. e4 d6 2. d4 Nf6 3. Nc3 g6 4. Be2 Bg7 5. h4
438	B08	Pirc	Geller's system	1. e4 g6 2. d4 Bg7 3. Nf3 d6 4. c3
439	B08	Pirc	Classical (Two knights) system	1. e4 d6 2. d4 Nf6 3. Nc3 g6 4. Nf3
440	B08	Pirc	Classical (Two knights) system	1. e4 d6 2. d4 Nf6 3. Nc3 g6 4. Nf3 Bg7
441	B08	Pirc	Classical, h3 system	1. e4 d6 2. d4 Nf6 3. Nc3 g6 4. Nf3 Bg7 5. h3
442	B09	Pirc	Classical system, 5.Be2	1. e4 d6 2. d4 Nf6 3. Nc3 g6 4. Nf3 Bg7 5. Be2
443	B09	Pirc	Austrian attack	1. e4 d6 2. d4 Nf6 3. Nc3 g6 4. f4
444	B09	Pirc	Austrian attack	1. e4 d6 2. d4 Nf6 3. Nc3 g6 4. f4 Bg7 5. Nf3 O-O
445	B09	Pirc	Austrian attack, 6.e5	1. e4 d6 2. d4 Nf6 3. Nc3 g6 4. f4 Bg7 5. Nf3 O-O 6. e5
446	B09	Pirc	Austrian attack, 6.Be3	1. e4 d6 2. d4 Nf6 3. Nc3 g6 4. f4 Bg7 5. Nf3 O-O 6. Be3
447	B09	Pirc	Austrian attack, 6.Bd3	1. e4 d6 2. d4 Nf6 3. Nc3 g6 4. f4 Bg7 5. Nf3 O-O 6. Bd3
448	B09	Pirc	Austrian attack, Dragon formation	1. e4 d6 2. d4 Nf6 3. Nc3 g6 4. f4 Bg7 5. Nf3 c5
449	B10	Caro-Kann defense	Austrian attack, Ljubojevic Variation 	1. e4 d6 2. d4 Nf6 3. Nc3 g6 4. f4 Bg7 5. Bc4
450	B10	Caro-Kann	N/A	1. e4 c6
451	B10	Caro-Kann	Hillbilly attack	1. e4 c6 2. Bc4
452	B10	Caro-Kann	Anti-Caro-Kann defense	1. e4 c6 2. c4
453	B10	Caro-Kann	Anti-anti-Caro-Kann defense	1. e4 c6 2. c4 d5
454	B10	Caro-Kann defense	Closed (Breyer) Variation 	1. e4 c6 2. d3
455	B10	Caro-Kann	N/A	1. e4 c6 2. Nc3
456	B10	Caro-Kann	GOldman (Spielmann) Variation 	1. e4 c6 2. Nc3 d5 3. Qf3
457	B11	Caro-Kann	Two knights Variation 	1. e4 c6 2. Nc3 d5 3. Nf3
458	B12	Caro-Kann defense	Two knights, 3...Bg4	1. e4 c6 2. Nc3 d5 3. Nf3 Bg4
459	B12	de Bruycker defense	N/A	1. e4 c6 2. d4
460	B12	Caro-Masi defense	N/A	1. e4 c6 2. d4 Na6 3. Nc3 Nc7
461	B12	Caro-Kann defense	N/A	1. e4 c6 2. d4 Nf6
462	B12	Caro-Kann	N/A	1. e4 c6 2. d4 d5
463	B12	Caro-Kann	Tartakower (fantasy) Variation 	1. e4 c6 2. d4 d5 3. f3
464	B12	Caro-Kann	3.Nd2	1. e4 c6 2. d4 d5 3. Nd2
465	B12	Caro-Kann	Edinburgh Variation 	1. e4 c6 2. d4 d5 3. Nd2 Qb6
466	B12	Caro-Kann	Advance Variation 	1. e4 c6 2. d4 d5 3. e5
467	B13	Caro-Kann	Advance, Short Variation 	1. e4 c6 2. d4 d5 3. e5 Bf5 4. c3 e6 5. Be2
468	B13	Caro-Kann	Exchange Variation 	1. e4 c6 2. d4 d5 3. exd5
469	B13	Caro-Kann	Exchange, Rubinstein Variation 	1. e4 c6 2. d4 d5 3. exd5 cxd5 4. Bd3 Nc6 5. c3 Nf6 6. Bf4
470	B13	Caro-Kann	Panov-Botvinnik attack	1. e4 c6 2. d4 d5 3. exd5 cxd5 4. c4
471	B13	Caro-Kann	Panov-Botvinnik, Gunderam attack	1. e4 c6 2. d4 d5 3. exd5 cxd5 4. c4 Nf6 5. c5
472	B13	Caro-Kann	Panov-Botvinnik attack	1. e4 c6 2. d4 d5 3. exd5 cxd5 4. c4 Nf6 5. Nc3
473	B13	Caro-Kann	Panov-Botvinnik, Herzog defense	1. e4 c6 2. d4 d5 3. exd5 cxd5 4. c4 Nf6 5. Nc3 Nc6 6. Bg5 dxc4 7. d5 Na5
474	B13	Caro-Kann	Panov-Botvinnik, normal Variation 	1. e4 c6 2. d4 d5 3. exd5 cxd5 4. c4 Nf6 5. Nc3 Nc6 6. Bg5 e6
475	B13	Caro-Kann	Panov-Botvinnik, Czerniak Variation 	1. e4 c6 2. d4 d5 3. exd5 cxd5 4. c4 Nf6 5. Nc3 Nc6 6. Bg5 Qa5
476	B14	Caro-Kann	Panov-Botvinnik, Reifir (Spielmann) Variation 	1. e4 c6 2. d4 d5 3. exd5 cxd5 4. c4 Nf6 5. Nc3 Nc6 6. Bg5 Qb6
477	B14	Caro-Kann	Panov-Botvinnik attack, 5...e6	1. e4 c6 2. d4 d5 3. exd5 cxd5 4. c4 Nf6 5. Nc3 e6
478	B15	Caro-Kann defense	Panov-Botvinnik attack, 5...g6	1. e4 c6 2. d4 d5 3. exd5 cxd5 4. c4 Nf6 5. Nc3 g6
479	B15	Caro-Kann	N/A	1. e4 c6 2. d4 d5 3. Nc3
480	B15	Caro-Kann	Gurgenidze counter-attack	1. e4 c6 2. d4 d5 3. Nc3 b5
481	B15	Caro-Kann	Gurgenidze system	1. e4 c6 2. d4 d5 3. Nc3 g6
482	B15	Caro-Kann defense	Rasa-Studier gambit	1. e4 c6 2. d4 d5 3. Nc3 dxe4 4. f3
483	B15	Caro-Kann	N/A	1. e4 c6 2. d4 d5 3. Nc3 dxe4 4. Nxe4
484	B15	Caro-Kann	Alekhine gambit	1. e4 c6 2. d4 d5 3. Nc3 dxe4 4. Nxe4 Nf6 5. Bd3
485	B15	Caro-Kann	Tartakower (Nimzovich) Variation 	1. e4 c6 2. d4 d5 3. Nc3 dxe4 4. Nxe4 Nf6 5. Nxf6+ exf6
486	B16	Caro-Kann	Forgacs Variation 	1. e4 c6 2. d4 d5 3. Nc3 dxe4 4. Nxe4 Nf6 5. Nxf6+ exf6 6. Bc4
487	B17	Caro-Kann	Bronstein-Larsen Variation 	1. e4 c6 2. d4 d5 3. Nc3 dxe4 4. Nxe4 Nf6 5. Nxf6+ gxf6
488	B18	Caro-Kann	Steinitz Variation 	1. e4 c6 2. d4 d5 3. Nc3 dxe4 4. Nxe4 Nd7
489	B18	Caro-Kann	Classical Variation 	1. e4 c6 2. d4 d5 3. Nc3 dxe4 4. Nxe4 Bf5
490	B18	Caro-Kann	Classical, Flohr Variation 	1. e4 c6 2. d4 d5 3. Nc3 dxe4 4. Nxe4 Bf5 5. Ng3 Bg6 6. Nh3
491	B18	Caro-Kann	Classical, Maroczy attack	1. e4 c6 2. d4 d5 3. Nc3 dxe4 4. Nxe4 Bf5 5. Ng3 Bg6 6. f4
492	B19	Caro-Kann	Classical, 6.h4	1. e4 c6 2. d4 d5 3. Nc3 dxe4 4. Nxe4 Bf5 5. Ng3 Bg6 6. h4
493	B19	Caro-Kann	Classical, 7...Nd7	1. e4 c6 2. d4 d5 3. Nc3 dxe4 4. Nxe4 Bf5 5. Ng3 Bg6 6. h4 h6 7. Nf3 Nd7
494	B20	Sicilian defense	Classical, Spassky Variation 	1. e4 c6 2. d4 d5 3. Nc3 dxe4 4. Nxe4 Bf5 5. Ng3 Bg6 6. h4 h6 7. Nf3 Nd7 8. h5
495	B20	Sicilian	N/A	1. e4 c5
496	B20	Sicilian	Gloria Variation 	1. e4 c5 2. c4 d6 3. Nc3 Nc6 4. g3 h5
497	B20	Sicilian	Steinitz Variation 	1. e4 c5 2. g3
498	B20	Sicilian	wing gambit	1. e4 c5 2. b4
499	B20	Sicilian	wing gambit, Santasiere Variation 	1. e4 c5 2. b4 cxb4 3. c4
500	B20	Sicilian	wing gambit, Marshall Variation 	1. e4 c5 2. b4 cxb4 3. a3
501	B20	Sicilian	wing gambit, Marienbad Variation 	1. e4 c5 2. b4 cxb4 3. a3 d5 4. exd5 Qxd5 5. Bb2
502	B20	Sicilian	wing gambit, Carlsbad Variation 	1. e4 c5 2. b4 cxb4 3. a3 bxa3
503	B21	Sicilian	Keres Variation (2.Ne2)	1. e4 c5 2. Ne2
504	B21	Sicilian	Grand Prix attack	1. e4 c5 2. f4
505	B21	Sicilian	Smith-Morra gambit	1. e4 c5 2. d4
506	B21	Sicilian	Andreaschek gambit	1. e4 c5 2. d4 cxd4 3. Nf3 e5 4. c3
507	B21	Sicilian	Smith-Morra gambit	1. e4 c5 2. d4 cxd4 3. c3
508	B22	Sicilian	Smith-Morra gambit, Chicago defense	1. e4 c5 2. d4 cxd4 3. c3 dxc3 4. Nxc3 Nc6 5. Nf3 d6 6. Bc4 e6 7. O-O a6 8. Qe2 b5 9. Bb3 Ra7
509	B22	Sicilian	Alapin's Variation (2.c3)	1. e4 c5 2. c3
510	B23	Sicilian	2.c3, Heidenfeld Variation 	1. e4 c5 2. c3 Nf6 3. e5 Nd5 4. Nf3 Nc6 5. Na3
511	B23	Sicilian	Closed	1. e4 c5 2. Nc3
512	B23	Sicilian	Closed, Korchnoi Variation 	1. e4 c5 2. Nc3 e6 3. g3 d5
513	B23	Sicilian	Closed, 2...Nc6	1. e4 c5 2. Nc3 Nc6
514	B23	Sicilian	chameleon Variation 	1. e4 c5 2. Nc3 Nc6 3. Nge2
515	B23	Sicilian	Grand Prix attack	1. e4 c5 2. Nc3 Nc6 3. f4
516	B24	Sicilian	Grand Prix attack, Schofman Variation 	1. e4 c5 2. Nc3 Nc6 3. f4 g6 4. Nf3 Bg7 5. Bc4 e6 6. f5
517	B24	Sicilian	Closed	1. e4 c5 2. Nc3 Nc6 3. g3
518	B25	Sicilian	Closed, Smyslov Variation 	1. e4 c5 2. Nc3 Nc6 3. g3 g6 4. Bg2 Bg7 5. d3 e6 6. Be3 Nd4 7. Nce2
519	B25	Sicilian	Closed	1. e4 c5 2. Nc3 Nc6 3. g3 g6 4. Bg2 Bg7 5. d3 d6
520	B25	Sicilian	Closed, 6.Ne2 e5 (Botvinnik)	1. e4 c5 2. Nc3 Nc6 3. g3 g6 4. Bg2 Bg7 5. d3 d6 6. Nge2 e5
521	B25	Sicilian	Closed, 6.f4	1. e4 c5 2. Nc3 Nc6 3. g3 g6 4. Bg2 Bg7 5. d3 d6 6. f4
522	B26	Sicilian	Closed, 6.f4 e5 (Botvinnik)	1. e4 c5 2. Nc3 Nc6 3. g3 g6 4. Bg2 Bg7 5. d3 d6 6. f4 e5
523	B27	Sicilian defense	Closed, 6.Be3	1. e4 c5 2. Nc3 Nc6 3. g3 g6 4. Bg2 Bg7 5. d3 d6 6. Be3
524	B27	Sicilian	N/A	1. e4 c5 2. Nf3
525	B27	Sicilian	Stiletto (Althouse) Variation 	1. e4 c5 2. Nf3 Qa5
526	B27	Sicilian	Quinteros Variation 	1. e4 c5 2. Nf3 Qc7
527	B27	Sicilian	Katalimov Variation 	1. e4 c5 2. Nf3 b6
528	B27	Sicilian	Hungarian Variation 	1. e4 c5 2. Nf3 g6
529	B28	Sicilian	Acton extension	1. e4 c5 2. Nf3 g6 3. c4 Bh6
530	B29	Sicilian	O'Kelly Variation 	1. e4 c5 2. Nf3 a6
531	B29	Sicilian	Nimzovich-Rubinstein Variation 	1. e4 c5 2. Nf3 Nf6
532	B30	Sicilian defense	Nimzovich-Rubinstein; Rubinstein counter-gambit	1. e4 c5 2. Nf3 Nf6 3. e5 Nd5 4. Nc3 e6 5. Nxd5 exd5 6. d4 Nc6
533	B30	Sicilian	N/A	1. e4 c5 2. Nf3 Nc6
534	B31	Sicilian	Nimzovich-Rossolimo attack (without ...d6)	1. e4 c5 2. Nf3 Nc6 3. Bb5
535	B31	Sicilian	Nimzovich-Rossolimo attack (with ...g6, without ...d6)	1. e4 c5 2. Nf3 Nc6 3. Bb5 g6
536	B32	Sicilian defense	Nimzovich-Rossolimo attack, Gurgenidze Variation 	1. e4 c5 2. Nf3 Nc6 3. Bb5 g6 4. O-O Bg7 5. Re1 e5 6. b4
537	B32	Sicilian	N/A	1. e4 c5 2. Nf3 Nc6 3. d4
538	B32	Sicilian	Flohr Variation 	1. e4 c5 2. Nf3 Nc6 3. d4 cxd4 4. Nxd4 Qc7
539	B32	Sicilian	Nimzovich Variation 	1. e4 c5 2. Nf3 Nc6 3. d4 cxd4 4. Nxd4 d5
540	B32	Sicilian	Labourdonnais-Loewenthal Variation 	1. e4 c5 2. Nf3 Nc6 3. d4 cxd4 4. Nxd4 e5
541	B33	Sicilian defense	Labourdonnais-Loewenthal (Kalashnikov) Variation 	1. e4 c5 2. Nf3 Nc6 3. d4 cxd4 4. Nxd4 e5 5. Nb5 d6
542	B33	Sicilian	N/A	1. e4 c5 2. Nf3 Nc6 3. d4 cxd4 4. Nxd4 Nf6
543	B33	Sicilian	Pelikan (Lasker/Sveshnikov) Variation 	1. e4 c5 2. Nf3 Nc6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 e5
544	B33	Sicilian	Pelikan, Bird Variation 	1. e4 c5 2. Nf3 Nc6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 e5 6. Ndb5 d6 7. Bg5 a6 8. Na3 Be6
545	B33	Sicilian	Pelikan, Chelyabinsk Variation 	1. e4 c5 2. Nf3 Nc6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 e5 6. Ndb5 d6 7. Bg5 a6 8. Na3 b5
546	B34	Sicilian	Sveshnikov Variation 	1. e4 c5 2. Nf3 Nc6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 e5 6. Ndb5 d6 7. Bg5 a6 8. Na3 b5 9. Bxf6 gxf6 10. Nd5 f5
547	B34	Sicilian	Accelerated Fianchetto, Exchange Variation 	1. e4 c5 2. Nf3 Nc6 3. d4 cxd4 4. Nxd4 g6 5. Nxc6
548	B35	Sicilian	Accelerated Fianchetto, Modern Variation 	1. e4 c5 2. Nf3 Nc6 3. d4 cxd4 4. Nxd4 g6 5. Nc3
549	B36	Sicilian	Accelerated Fianchetto, Modern Variation with Bc4	1. e4 c5 2. Nf3 Nc6 3. d4 cxd4 4. Nxd4 g6 5. Nc3 Bg7 6. Be3 Nf6 7. Bc4
550	B36	Sicilian	Accelerated Fianchetto, Maroczy bind	1. e4 c5 2. Nf3 Nc6 3. d4 cxd4 4. Nxd4 g6 5. c4
551	B37	Sicilian	Accelerated Fianchetto, Gurgenidze Variation 	1. e4 c5 2. Nf3 Nc6 3. d4 cxd4 4. Nxd4 g6 5. c4 Nf6 6. Nc3 Nxd4 7. Qxd4 d6
552	B37	Sicilian	Accelerated Fianchetto, Maroczy bind, 5...Bg7	1. e4 c5 2. Nf3 Nc6 3. d4 cxd4 4. Nxd4 g6 5. c4 Bg7
553	B38	Sicilian	Accelerated Fianchetto, Simagin Variation 	1. e4 c5 2. Nf3 Nc6 3. d4 cxd4 4. Nxd4 g6 5. c4 Bg7 6. Nc2 d6 7. Be2 Nh6
554	B39	Sicilian	Accelerated Fianchetto, Maroczy bind, 6.Be3	1. e4 c5 2. Nf3 Nc6 3. d4 cxd4 4. Nxd4 g6 5. c4 Bg7 6. Be3
555	B40	Sicilian defense	Accelerated Fianchetto, Breyer Variation 	1. e4 c5 2. Nf3 Nc6 3. d4 cxd4 4. Nxd4 g6 5. c4 Bg7 6. Be3 Nf6 7. Nc3 Ng4
556	B40	Sicilian	N/A	1. e4 c5 2. Nf3 e6
557	B40	Sicilian defense	Marshall Variation 	1. e4 c5 2. Nf3 e6 3. d4 d5
558	B40	Sicilian	N/A	1. e4 c5 2. Nf3 e6 3. d4 cxd4
559	B40	Sicilian	Anderssen Variation 	1. e4 c5 2. Nf3 e6 3. d4 cxd4 4. Nxd4 Nf6
560	B40	Sicilian	Pin Variation (Sicilian counter-attack)	1. e4 c5 2. Nf3 e6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 Bb4
561	B40	Sicilian	Pin, Jaffe Variation 	1. e4 c5 2. Nf3 e6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 Bb4 6. Bd3 e5
562	B41	Sicilian	Pin, Koch Variation 	1. e4 c5 2. Nf3 e6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 Bb4 6. e5
563	B41	Sicilian	Kan Variation 	1. e4 c5 2. Nf3 e6 3. d4 cxd4 4. Nxd4 a6
564	B41	Sicilian	Kan, Maroczy bind (Reti Variation )	1. e4 c5 2. Nf3 e6 3. d4 cxd4 4. Nxd4 a6 5. c4
565	B42	Sicilian	Kan, Maroczy bind - Bronstein Variation 	1. e4 c5 2. Nf3 e6 3. d4 cxd4 4. Nxd4 a6 5. c4 Nf6 6. Nc3 Bb4 7. Bd3 Nc6 8. Bc2
566	B42	Sicilian	Kan, 5.Bd3	1. e4 c5 2. Nf3 e6 3. d4 cxd4 4. Nxd4 a6 5. Bd3
567	B42	Sicilian	Kan, Gipslis Variation 	1. e4 c5 2. Nf3 e6 3. d4 cxd4 4. Nxd4 a6 5. Bd3 Nf6 6. O-O d6 7. c4 g6
568	B42	Sicilian	Kan, Polugaievsky Variation 	1. e4 c5 2. Nf3 e6 3. d4 cxd4 4. Nxd4 a6 5. Bd3 Bc5
569	B43	Sicilian	Kan, Swiss cheese Variation 	1. e4 c5 2. Nf3 e6 3. d4 cxd4 4. Nxd4 a6 5. Bd3 g6
570	B44	Sicilian defense	Kan, 5.Nc3	1. e4 c5 2. Nf3 e6 3. d4 cxd4 4. Nxd4 a6 5. Nc3
571	B44	Sicilian, Szen (`anti-Taimanov') Variation 	N/A	1. e4 c5 2. Nf3 e6 3. d4 cxd4 4. Nxd4 Nc6
572	B44	Sicilian, Szen, hedgehog Variation 	N/A	1. e4 c5 2. Nf3 e6 3. d4 cxd4 4. Nxd4 Nc6 5. Nb5
573	B44	Sicilian, Szen Variation , Dely-Kasparov gambit	N/A	1. e4 c5 2. Nf3 e6 3. d4 cxd4 4. Nxd4 Nc6 5. Nb5 d6 6. c4 Nf6 7. N1c3 a6 8. Na3 Be7 9. Be2 O-O 10. O-O b6
574	B45	Sicilian	N/A	1. e4 c5 2. Nf3 e6 3. d4 cxd4 4. Nxd4 Nc6 5. Nb5 d6 6. c4 Nf6 7. N1c3 a6 8. Na3 d5
575	B45	Sicilian	Taimanov Variation 	1. e4 c5 2. Nf3 e6 3. d4 cxd4 4. Nxd4 Nc6 5. Nc3
576	B46	Sicilian	Taimanov, American attack	1. e4 c5 2. Nf3 e6 3. d4 cxd4 4. Nxd4 Nc6 5. Nc3 Nf6 6. Ndb5 Bb4 7. Nd6+
577	B47	Sicilian	Taimanov Variation 	1. e4 c5 2. Nf3 e6 3. d4 cxd4 4. Nxd4 Nc6 5. Nc3 a6
578	B48	Sicilian	Taimanov (Bastrikov) Variation 	1. e4 c5 2. Nf3 e6 3. d4 cxd4 4. Nxd4 Nc6 5. Nc3 Qc7
579	B49	Sicilian	Taimanov Variation 	1. e4 c5 2. Nf3 e6 3. d4 cxd4 4. Nxd4 Nc6 5. Nc3 Qc7 6. Be3
580	B50	Sicilian	Taimanov Variation 	1. e4 c5 2. Nf3 e6 3. d4 cxd4 4. Nxd4 Nc6 5. Nc3 Qc7 6. Be3 a6 7. Be2
581	B50	Sicilian	N/A	1. e4 c5 2. Nf3 d6
582	B51	Sicilian	wing gambit deferred	1. e4 c5 2. Nf3 d6 3. b4
583	B52	Sicilian	Canal-Sokolsky (Nimzovich-Rossolimo, Moscow) attack	1. e4 c5 2. Nf3 d6 3. Bb5+
584	B52	Sicilian	Canal-Sokolsky attack, 3...Bd7	1. e4 c5 2. Nf3 d6 3. Bb5+ Bd7
585	B52	Sicilian	Canal-Sokolsky attack, Bronstein gambit	1. e4 c5 2. Nf3 d6 3. Bb5+ Bd7 4. Bxd7+ Qxd7 5. O-O Nc6 6. c3 Nf6 7. d4
586	B53	Sicilian, Chekhover Variation 	Canal-Sokolsky attack, Sokolsky Variation 	1. e4 c5 2. Nf3 d6 3. Bb5+ Bd7 4. Bxd7+ Qxd7 5. c4
587	B53	Sicilian	N/A	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Qxd4
588	B54	Sicilian	Chekhover, Zaitsev Variation 	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Qxd4 Nc6 5. Bb5 Qd7
589	B54	Sicilian	N/A	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4
590	B55	Sicilian	Prins (Moscow) Variation 	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. f3
591	B56	Sicilian	Prins Variation , Venice attack	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. f3 e5 6. Bb5+
592	B56	Sicilian	N/A	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3
593	B56	Sicilian	Venice attack	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 e5 6. Bb5+
594	B57	Sicilian	N/A	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 Nc6
595	B57	Sicilian	Sozin, not Scheveningen	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 Nc6 6. Bc4
596	B57	Sicilian	Magnus Smith trap	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 Nc6 6. Bc4 g6 7. Nxc6 bxc6 8. e5
597	B58	Sicilian	Sozin, Benko Variation 	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 Nc6 6. Bc4 Qb6
598	B58	Sicilian	Classical	1. e4 c5 2. Nf3 Nc6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 d6 6. Be2
599	B58	Sicilian	Boleslavsky Variation 	1. e4 c5 2. Nf3 Nc6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 d6 6. Be2 e5
600	B59	Sicilian	Boleslavsky, Louma Variation 	1. e4 c5 2. Nf3 Nc6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 d6 6. Be2 e5 7. Nxc6
601	B60	Sicilian	Boleslavsky Variation , 7.Nb3	1. e4 c5 2. Nf3 Nc6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 d6 6. Be2 e5 7. Nb3
602	B60	Sicilian	Richter-Rauzer	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 Nc6 6. Bg5
603	B60	Sicilian	Richter-Rauzer, Bondarevsky Variation 	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 Nc6 6. Bg5 g6
604	B61	Sicilian	Richter-Rauzer, Larsen Variation 	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 Nc6 6. Bg5 Bd7
605	B62	Sicilian	Richter-Rauzer, Larsen Variation , 7.Qd2	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 Nc6 6. Bg5 Bd7 7. Qd2
606	B62	Sicilian	Richter-Rauzer, 6...e6	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 Nc6 6. Bg5 e6
607	B62	Sicilian	Richter-Rauzer, Podvebrady Variation 	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 Nc6 6. Bg5 e6 7. Nb3
608	B62	Sicilian	Richter-Rauzer, Margate (Alekhine) Variation 	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 Nc6 6. Bg5 e6 7. Bb5
609	B62	Sicilian	Richter-Rauzer, Richter attack	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 Nc6 6. Bg5 e6 7. Nxc6
610	B63	Sicilian	Richter-Rauzer, Keres Variation 	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 Nc6 6. Bg5 e6 7. Qd3
611	B63	Sicilian	Richter-Rauzer, Rauzer attack	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 Nc6 6. Bg5 e6 7. Qd2
612	B64	Sicilian	Richter-Rauzer, Rauzer attack, 7...Be7	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 Nc6 6. Bg5 e6 7. Qd2 Be7
613	B64	Sicilian	Richter-Rauzer, Rauzer attack, 7...Be7 defense, 9.f4	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 Nc6 6. Bg5 e6 7. Qd2 Be7 8. O-O-O O-O 9. f4
614	B65	Sicilian	Richter-Rauzer, Rauzer attack, Geller Variation 	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 Nc6 6. Bg5 e6 7. Qd2 Be7 8. O-O-O O-O 9. f4 e5
615	B65	Sicilian	Richter-Rauzer, Rauzer attack, 7...Be7 defense, 9...Nxd4	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 Nc6 6. Bg5 e6 7. Qd2 Be7 8. O-O-O O-O 9. f4 Nxd4
616	B66	Sicilian	Richter-Rauzer, Rauzer attack, 7...Be7 defense, 9...Nxd4	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 Nc6 6. Bg5 e6 7. Qd2 Be7 8. O-O-O O-O 9. f4 Nxd4 10. Qxd4
617	B67	Sicilian	Richter-Rauzer, Rauzer attack, 7...a6	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 Nc6 6. Bg5 e6 7. Qd2 a6
618	B68	Sicilian	Richter-Rauzer, Rauzer attack, 7...a6 defense, 8...Bd7	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 Nc6 6. Bg5 e6 7. Qd2 a6 8. O-O-O Bd7
619	B69	Sicilian	Richter-Rauzer, Rauzer attack, 7...a6 defense, 9...Be7	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 Nc6 6. Bg5 e6 7. Qd2 a6 8. O-O-O Bd7 9. f4 Be7
620	B70	Sicilian	Richter-Rauzer, Rauzer attack, 7...a6 defense, 11.Bxf6	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 Nc6 6. Bg5 e6 7. Qd2 a6 8. O-O-O Bd7 9. f4 Be7 10. Nf3 b5 11. Bxf6
621	B71	Sicilian	Dragon Variation 	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 g6
622	B71	Sicilian	Dragon, Levenfish Variation 	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 g6 6. f4
623	B72	Sicilian	Dragon, Levenfish; Flohr Variation 	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 g6 6. f4 Nbd7
624	B72	Sicilian	Dragon, 6.Be3	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 g6 6. Be3
625	B72	Sicilian	Dragon, Classical attack	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 g6 6. Be3 Bg7 7. Be2
626	B72	Sicilian	Dragon, Classical, Amsterdam Variation 	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 g6 6. Be3 Bg7 7. Be2 Nc6 8. Qd2
627	B72	Sicilian	Dragon, Classical, Grigoriev Variation 	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 g6 6. Be3 Bg7 7. Be2 Nc6 8. Qd2 O-O 9. O-O-O
628	B73	Sicilian	Dragon, Classical, Nottingham Variation 	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 g6 6. Be3 Bg7 7. Be2 Nc6 8. Nb3
629	B73	Sicilian	Dragon, Classical, 8.O-O	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 g6 6. Be3 Bg7 7. Be2 Nc6 8. O-O
630	B73	Sicilian	Dragon, Classical, Zollner gambit	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 g6 6. Be3 Bg7 7. Be2 Nc6 8. O-O O-O 9. f4 Qb6 10. e5
631	B74	Sicilian	Dragon, Classical, Richter Variation 	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 g6 6. Be3 Bg7 7. Be2 Nc6 8. O-O O-O 9. Qd2
632	B74	Sicilian	Dragon, Classical, 9.Nb3	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 g6 6. Be3 Bg7 7. Be2 Nc6 8. O-O O-O 9. Nb3
633	B74	Sicilian	Dragon, Classical, Stockholm attack	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 g6 6. Be3 Bg7 7. Be2 Nc6 8. O-O O-O 9. Nb3 Be6 10. f4 Na5 11. f5 Bc4 12. Nxa5 Bxe2 13. Qxe2 Qxa5 14. g4
634	B74	Sicilian	Dragon, Classical, Spielmann Variation 	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 g6 6. Be3 Bg7 7. Be2 Nc6 8. O-O O-O 9. Nb3 Be6 10. f4 Na5 11. f5 Bc4 12. Bd3
635	B74	Sicilian	Dragon, Classical, Bernard defense	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 g6 6. Be3 Bg7 7. Be2 Nc6 8. O-O O-O 9. Nb3 Be6 10. f4 Na5 11. f5 Bc4 12. Bd3 Bxd3 13. cxd3 d5
636	B74	Sicilian	Dragon, Classical, Reti-Tartakower Variation 	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 g6 6. Be3 Bg7 7. Be2 Nc6 8. O-O O-O 9. Nb3 Be6 10. f4 Qc8
637	B75	Sicilian	Dragon, Classical, Alekhine Variation 	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 g6 6. Be3 Bg7 7. Be2 Nc6 8. O-O O-O 9. Nb3 a5
638	B76	Sicilian	Dragon, Yugoslav attack	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 g6 6. Be3 Bg7 7. f3
639	B76	Sicilian	Dragon, Yugoslav attack, 7...O-O	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 g6 6. Be3 Bg7 7. f3 O-O
640	B77	Sicilian	Dragon, Yugoslav attack, Rauser Variation 	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 g6 6. Be3 Bg7 7. f3 O-O 8. Qd2 Nc6 9. O-O-O
641	B77	Sicilian	Dragon, Yugoslav attack, 9.Bc4	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 g6 6. Be3 Bg7 7. f3 O-O 8. Qd2 Nc6 9. Bc4
642	B77	Sicilian	Dragon, Yugoslav attack, Byrne Variation 	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 g6 6. Be3 Bg7 7. f3 O-O 8. Qd2 Nc6 9. Bc4 a5
643	B78	Sicilian	Dragon, Yugoslav attack, 9...Bd7	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 g6 6. Be3 Bg7 7. f3 O-O 8. Qd2 Nc6 9. Bc4 Bd7
644	B79	Sicilian	Dragon, Yugoslav attack, 10.O-O-O	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 g6 6. Be3 Bg7 7. f3 O-O 8. Qd2 Nc6 9. Bc4 Bd7 10. O-O-O
645	B80	Sicilian	Dragon, Yugoslav attack, 12.h4	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 g6 6. Be3 Bg7 7. f3 O-O 8. Qd2 Nc6 9. Bc4 Bd7 10. O-O-O Qa5 11. Bb3 Rfc8 12. h4
646	B80	Sicilian	Scheveningen Variation 	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 e6
647	B80	Sicilian	Scheveningen, English Variation 	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 e6 6. Be3 a6 7. Qd2
648	B80	Sicilian	Scheveningen, Vitolins Variation 	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 e6 6. Bb5+
649	B81	Sicilian	Scheveningen, Fianchetto Variation 	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 e6 6. g3
650	B82	Sicilian	Scheveningen, Keres attack	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 e6 6. g4
651	B82	Sicilian	Scheveningen, 6.f4	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 e6 6. f4
652	B83	Sicilian	Scheveningen, Tal Variation 	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 e6 6. f4 Nc6 7. Be3 Be7 8. Qf3
653	B83	Sicilian	Scheveningen, 6.Be2	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 e6 6. Be2
654	B83	Sicilian	Modern Scheveningen	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 e6 6. Be2 Nc6
655	B83	Sicilian	Modern Scheveningen, Main line	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 e6 6. Be2 Nc6 7. O-O Be7 8. Be3 O-O 9. f4
656	B84	Sicilian	Modern Scheveningen, Main line with Nb3	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 e6 6. Be2 Nc6 7. O-O Be7 8. Be3 O-O 9. f4 Bd7 10. Nb3
657	B84	Sicilian	Scheveningen (Paulsen), Classical Variation 	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 e6 6. Be2 a6
658	B84	Sicilian	Scheveningen, Classical, Nd7 system	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 e6 6. Be2 a6 7. O-O Nbd7
659	B85	Sicilian	Scheveningen (Paulsen), Classical Variation 	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 e6 6. Be2 a6 7. O-O Qc7
660	B85	Sicilian	Scheveningen, Classical Variation with ...Qc7 and ...Nc6	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 e6 6. Be2 a6 7. O-O Qc7 8. f4 Nc6
661	B85	Sicilian	Scheveningen, Classical, Maroczy system	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 e6 6. Be2 a6 7. O-O Qc7 8. f4 Nc6 9. Kh1 Be7 10. a4
662	B85	Sicilian	Scheveningen, Classical	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 e6 6. Be2 a6 7. O-O Qc7 8. f4 Nc6 9. Be3
663	B86	Sicilian	Scheveningen, Classical Main line	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 e6 6. Be2 a6 7. O-O Qc7 8. f4 Nc6 9. Be3 Be7 10. Qe1 O-O
664	B87	Sicilian	Sozin attack	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 e6 6. Bc4
665	B88	Sicilian	Sozin with ...a6 and ...b5	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 e6 6. Bc4 a6 7. Bb3 b5
666	B88	Sicilian	Sozin, Leonhardt Variation 	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 e6 6. Bc4 Nc6
667	B89	Sicilian	Sozin, Fischer Variation 	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 e6 6. Bc4 Nc6 7. Bb3 Be7 8. Be3 O-O 9. f4
668	B89	Sicilian	Sozin, 7.Be3	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 e6 6. Bc4 Nc6 7. Be3
669	B90	Sicilian	Velimirovic attack	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 e6 6. Bc4 Nc6 7. Be3 Be7 8. Qe2
670	B90	Sicilian	Najdorf	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 a6
671	B90	Sicilian	Najdorf, Adams attack	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 a6 6. h3
672	B90	Sicilian	Najdorf, Lipnitzky attack	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 a6 6. Bc4
673	B91	Sicilian	Najdorf, Byrne (English) attack	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 a6 6. Be3
674	B92	Sicilian	Najdorf, Zagreb (Fianchetto) Variation 	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 a6 6. g3
675	B93	Sicilian	Najdorf, Opovcensky Variation 	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 a6 6. Be2
676	B94	Sicilian	Najdorf, 6.f4	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 a6 6. f4
677	B94	Sicilian	Najdorf, 6.Bg5	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 a6 6. Bg5
678	B95	Sicilian	Najdorf, Ivkov Variation 	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 a6 6. Bg5 Nbd7 7. Bc4 Qa5 8. Qd2 e6 9. O-O-O b5 10. Bb3 Bb7 11. Rhe1 Nc5 12. e5
679	B96	Sicilian	Najdorf, 6...e6	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 a6 6. Bg5 e6
680	B96	Sicilian	Najdorf, 7.f4	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 a6 6. Bg5 e6 7. f4
681	B96	Sicilian	Najdorf, Polugayevsky Variation 	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 a6 6. Bg5 e6 7. f4 b5
682	B97	Sicilian	Najdorf, Polugayevsky, Simagin Variation 	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 a6 6. Bg5 e6 7. f4 b5 8. e5 dxe5 9. fxe5 Qc7 10. Qe2
683	B97	Sicilian	Najdorf, 7...Qb6	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 a6 6. Bg5 e6 7. f4 Qb6
684	B98	Sicilian	Najdorf, Poisoned pawn Variation 	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 a6 6. Bg5 e6 7. f4 Qb6 8. Qd2 Qxb2 9. Rb1 Qa3
685	B98	Sicilian	Najdorf, 7...Be7	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 a6 6. Bg5 e6 7. f4 Be7
686	B98	Sicilian	Najdorf, Browne Variation 	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 a6 6. Bg5 e6 7. f4 Be7 8. Qf3 h6 9. Bh4 Qc7
687	B98	Sicilian	Najdorf, Goteborg (Argentine) Variation 	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 a6 6. Bg5 e6 7. f4 Be7 8. Qf3 h6 9. Bh4 g5
688	B99	Sicilian	Najdorf Variation 	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 a6 6. Bg5 e6 7. f4 Be7 8. Qf3 Qc7
689	C00	French defense	Najdorf, 7...Be7 Main line	1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 a6 6. Bg5 e6 7. f4 Be7 8. Qf3 Qc7 9. O-O-O Nbd7
690	C00	French defense, Steiner Variation 	N/A	1. e4 e6
691	C00	French	N/A	1. e4 e6 2. c4
692	C00	French	Reti (Spielmann) Variation 	1. e4 e6 2. b3
693	C00	French	Steinitz attack	1. e4 e6 2. e5
694	C00	French defense	Labourdonnais Variation 	1. e4 e6 2. f4
695	C00	French	N/A	1. e4 e6 2. Nf3
696	C00	French defense	Wing gambit	1. e4 e6 2. Nf3 d5 3. e5 c5 4. b4
697	C00	French	N/A	1. e4 e6 2. Nc3
698	C00	French	Pelikan Variation 	1. e4 e6 2. Nc3 d5 3. f4
699	C00	French	Two knights Variation 	1. e4 e6 2. Nc3 d5 3. Nf3
700	C00	French	Chigorin Variation 	1. e4 e6 2. Qe2
701	C00	French	King's Indian attack	1. e4 e6 2. d3
702	C00	French defense	Reversed Philidor formation	1. e4 e6 2. d3 d5 3. Nd2 Nf6 4. Ngf3 Nc6 5. Be2
703	C00	Lengfellner system	N/A	1. e4 e6 2. d4
704	C00	St. George defense	N/A	1. e4 e6 2. d4 d6
705	C00	French defense	N/A	1. e4 e6 2. d4 a6
706	C00	French	N/A	1. e4 e6 2. d4 d5
707	C00	French	Schlechter Variation 	1. e4 e6 2. d4 d5 3. Bd3
708	C01	French	Alapin Variation 	1. e4 e6 2. d4 d5 3. Be3
709	C01	French	Exchange Variation 	1. e4 e6 2. d4 d5 3. exd5
710	C01	French	Exchange, Svenonius Variation 	1. e4 e6 2. d4 d5 3. exd5 exd5 4. Nc3 Nf6 5. Bg5
711	C02	French	Exchange, Bogolyubov Variation 	1. e4 e6 2. d4 d5 3. exd5 exd5 4. Nc3 Nf6 5. Bg5 Nc6
712	C02	French	Advance Variation 	1. e4 e6 2. d4 d5 3. e5
713	C02	French	Advance, Steinitz Variation 	1. e4 e6 2. d4 d5 3. e5 c5 4. dxc5
714	C02	French	Advance, Nimzovich Variation 	1. e4 e6 2. d4 d5 3. e5 c5 4. Qg4
715	C02	French	Advance, Nimzovich system	1. e4 e6 2. d4 d5 3. e5 c5 4. Nf3
716	C02	French	Advance Variation 	1. e4 e6 2. d4 d5 3. e5 c5 4. c3
717	C02	French	Advance, Wade Variation 	1. e4 e6 2. d4 d5 3. e5 c5 4. c3 Qb6 5. Nf3 Bd7
718	C02	French	Advance Variation 	1. e4 e6 2. d4 d5 3. e5 c5 4. c3 Nc6
719	C02	French	Advance, Paulsen attack	1. e4 e6 2. d4 d5 3. e5 c5 4. c3 Nc6 5. Nf3
720	C02	French	Advance, Milner-Barry gambit	1. e4 e6 2. d4 d5 3. e5 c5 4. c3 Nc6 5. Nf3 Qb6 6. Bd3
721	C03	French	Advance, Euwe Variation 	1. e4 e6 2. d4 d5 3. e5 c5 4. c3 Nc6 5. Nf3 Bd7
722	C03	French	Tarrasch	1. e4 e6 2. d4 d5 3. Nd2
723	C03	French	Tarrasch, Haberditz Variation 	1. e4 e6 2. d4 d5 3. Nd2 f5
724	C04	French	Tarrasch, Guimard Variation 	1. e4 e6 2. d4 d5 3. Nd2 Nc6
725	C05	French	Tarrasch, Guimard Main line	1. e4 e6 2. d4 d5 3. Nd2 Nc6 4. Ngf3 Nf6
726	C05	French	Tarrasch, Closed Variation 	1. e4 e6 2. d4 d5 3. Nd2 Nf6
727	C05	French	Tarrasch, Botvinnik Variation 	1. e4 e6 2. d4 d5 3. Nd2 Nf6 4. e5 Nfd7 5. Bd3 c5 6. c3 b6
728	C06	French	Tarrasch, Closed Variation 	1. e4 e6 2. d4 d5 3. Nd2 Nf6 4. e5 Nfd7 5. Bd3 c5 6. c3 Nc6
729	C06	French	Tarrasch, Closed Variation , Main line	1. e4 e6 2. d4 d5 3. Nd2 Nf6 4. e5 Nfd7 5. Bd3 c5 6. c3 Nc6 7. Ne2 cxd4 8. cxd4
730	C07	French	Tarrasch, Leningrad Variation 	1. e4 e6 2. d4 d5 3. Nd2 Nf6 4. e5 Nfd7 5. Bd3 c5 6. c3 Nc6 7. Ne2 cxd4 8. cxd4 Nb6
731	C07	French	Tarrasch, Open Variation 	1. e4 e6 2. d4 d5 3. Nd2 c5
732	C08	French	Tarrasch, Eliskases Variation 	1. e4 e6 2. d4 d5 3. Nd2 c5 4. exd5 Qxd5 5. Ngf3 cxd4 6. Bc4 Qd8
733	C09	French	Tarrasch, Open, 4.ed ed	1. e4 e6 2. d4 d5 3. Nd2 c5 4. exd5 exd5
734	C10	French	Tarrasch, Open Variation , Main line	1. e4 e6 2. d4 d5 3. Nd2 c5 4. exd5 exd5 5. Ngf3 Nc6
735	C10	French	Paulsen Variation 	1. e4 e6 2. d4 d5 3. Nc3
736	C10	French	Marshall Variation 	1. e4 e6 2. d4 d5 3. Nc3 c5
737	C10	French	Rubinstein Variation 	1. e4 e6 2. d4 d5 3. Nc3 dxe4
738	C10	French	Fort Knox Variation 	1. e4 e6 2. d4 d5 3. Nc3 dxe4 4. Nxe4 Bd7 5. Nf3 Bc6
739	C10	French	Rubinstein Variation 	1. e4 e6 2. d4 d5 3. Nc3 dxe4 4. Nxe4 Nd7
740	C10	French	Rubinstein, Capablanca line	1. e4 e6 2. d4 d5 3. Nc3 dxe4 4. Nxe4 Nd7 5. Nf3 Ngf6 6. Nxf6+ Nxf6 7. Ne5
741	C11	French defense	Frere (Becker) Variation 	1. e4 e6 2. d4 d5 3. Nc3 dxe4 4. Nxe4 Qd5
742	C11	French	N/A	1. e4 e6 2. d4 d5 3. Nc3 Nf6
743	C11	French	Swiss Variation 	1. e4 e6 2. d4 d5 3. Nc3 Nf6 4. Bd3
744	C11	French	Henneberger Variation 	1. e4 e6 2. d4 d5 3. Nc3 Nf6 4. Be3
745	C11	French	Steinitz Variation 	1. e4 e6 2. d4 d5 3. Nc3 Nf6 4. e5
746	C11	French	Steinitz, Bradford attack	1. e4 e6 2. d4 d5 3. Nc3 Nf6 4. e5 Nfd7 5. f4 c5 6. dxc5 Bxc5 7. Qg4
747	C11	French	Steinitz Variation 	1. e4 e6 2. d4 d5 3. Nc3 Nf6 4. e5 Nfd7 5. f4 c5 6. dxc5 Nc6
748	C11	French	Steinitz, Brodsky-Jones Variation 	1. e4 e6 2. d4 d5 3. Nc3 Nf6 4. e5 Nfd7 5. f4 c5 6. dxc5 Nc6 7. a3 Bxc5 8. Qg4 O-O 9. Nf3 f6
749	C11	French	Steinitz Variation 	1. e4 e6 2. d4 d5 3. Nc3 Nf6 4. e5 Nfd7 5. f4 c5 6. Nf3
750	C11	French	Steinitz, Boleslavsky Variation 	1. e4 e6 2. d4 d5 3. Nc3 Nf6 4. e5 Nfd7 5. f4 c5 6. Nf3 Nc6 7. Be3
751	C11	French	Steinitz, Gledhill attack	1. e4 e6 2. d4 d5 3. Nc3 Nf6 4. e5 Nfd7 5. Qg4
752	C12	French	Burn Variation 	1. e4 e6 2. d4 d5 3. Nc3 Nf6 4. Bg5 dxe4
753	C12	French	MacCutcheon Variation 	1. e4 e6 2. d4 d5 3. Nc3 Nf6 4. Bg5 Bb4
754	C12	French	MacCutcheon, Bogolyubov Variation 	1. e4 e6 2. d4 d5 3. Nc3 Nf6 4. Bg5 Bb4 5. exd5 Qxd5 6. Bxf6 gxf6 7. Qd2 Qa5
755	C12	French	MacCutcheon, Advance Variation 	1. e4 e6 2. d4 d5 3. Nc3 Nf6 4. Bg5 Bb4 5. e5
756	C12	French	MacCutcheon, Chigorin Variation 	1. e4 e6 2. d4 d5 3. Nc3 Nf6 4. Bg5 Bb4 5. e5 h6 6. exf6
757	C12	French	MacCutcheon, Grigoriev Variation 	1. e4 e6 2. d4 d5 3. Nc3 Nf6 4. Bg5 Bb4 5. e5 h6 6. exf6 hxg5 7. fxg7 Rg8 8. h4 gxh4 9. Qg4
758	C12	French	MacCutcheon, Bernstein Variation 	1. e4 e6 2. d4 d5 3. Nc3 Nf6 4. Bg5 Bb4 5. e5 h6 6. Bh4
759	C12	French	MacCutcheon, Janowski Variation 	1. e4 e6 2. d4 d5 3. Nc3 Nf6 4. Bg5 Bb4 5. e5 h6 6. Be3
760	C12	French	MacCutcheon, Dr. Olland (Dutch) Variation 	1. e4 e6 2. d4 d5 3. Nc3 Nf6 4. Bg5 Bb4 5. e5 h6 6. Bc1
761	C12	French	MacCutcheon, Tartakower Variation 	1. e4 e6 2. d4 d5 3. Nc3 Nf6 4. Bg5 Bb4 5. e5 h6 6. Bd2 Nfd7
762	C12	French	MacCutcheon, Lasker Variation 	1. e4 e6 2. d4 d5 3. Nc3 Nf6 4. Bg5 Bb4 5. e5 h6 6. Bd2 Bxc3
763	C12	French	MacCutcheon, Duras Variation 	1. e4 e6 2. d4 d5 3. Nc3 Nf6 4. Bg5 Bb4 5. e5 h6 6. Bd2 Bxc3 7. bxc3 Ne4 8. Qg4 Kf8 9. Bc1
764	C13	French	MacCutcheon, Lasker Variation , 8...g6	1. e4 e6 2. d4 d5 3. Nc3 Nf6 4. Bg5 Bb4 5. e5 h6 6. Bd2 Bxc3 7. bxc3 Ne4 8. Qg4 g6
765	C13	French	Classical	1. e4 e6 2. d4 d5 3. Nc3 Nf6 4. Bg5 Be7
766	C13	French	Classical, Anderssen Variation 	1. e4 e6 2. d4 d5 3. Nc3 Nf6 4. Bg5 Be7 5. Bxf6
767	C13	French	Classical, Anderssen-Richter Variation 	1. e4 e6 2. d4 d5 3. Nc3 Nf6 4. Bg5 Be7 5. Bxf6 Bxf6 6. e5 Be7 7. Qg4
768	C13	French	Classical, Vistaneckis (Nimzoö)ððð Variation 	1. e4 e6 2. d4 d5 3. Nc3 Nf6 4. Bg5 Be7 5. e5 Ng8
769	C13	French	Classical, Frankfurt Variation 	1. e4 e6 2. d4 d5 3. Nc3 Nf6 4. Bg5 Be7 5. e5 Ng8 6. Be3 b6
770	C13	French	Classical, Tartakower Variation 	1. e4 e6 2. d4 d5 3. Nc3 Nf6 4. Bg5 Be7 5. e5 Ne4
771	C13	French	Albin-Alekhine-Chatard attack	1. e4 e6 2. d4 d5 3. Nc3 Nf6 4. Bg5 Be7 5. e5 Nfd7 6. h4
772	C13	French	Albin-Alekhine-Chatard attack, Maroczy Variation 	1. e4 e6 2. d4 d5 3. Nc3 Nf6 4. Bg5 Be7 5. e5 Nfd7 6. h4 a6
839	C23	Bishop's Opening	Lewis gambit	1. e4 e5 2. Bc4 Bc5 3. d4
773	C13	French	Albin-Alekhine-Chatard attack, Breyer Variation 	1. e4 e6 2. d4 d5 3. Nc3 Nf6 4. Bg5 Be7 5. e5 Nfd7 6. h4 c5
774	C13	French	Albin-Alekhine-Chatard attack, Teichmann Variation 	1. e4 e6 2. d4 d5 3. Nc3 Nf6 4. Bg5 Be7 5. e5 Nfd7 6. h4 f6
775	C14	French	Albin-Alekhine-Chatard attack, Spielmann Variation 	1. e4 e6 2. d4 d5 3. Nc3 Nf6 4. Bg5 Be7 5. e5 Nfd7 6. h4 O-O
776	C14	French	Classical Variation 	1. e4 e6 2. d4 d5 3. Nc3 Nf6 4. Bg5 Be7 5. e5 Nfd7 6. Bxe7 Qxe7
777	C14	French	Classical, Tarrasch Variation 	1. e4 e6 2. d4 d5 3. Nc3 Nf6 4. Bg5 Be7 5. e5 Nfd7 6. Bxe7 Qxe7 7. Bd3
778	C14	French	Classical, Rubinstein Variation 	1. e4 e6 2. d4 d5 3. Nc3 Nf6 4. Bg5 Be7 5. e5 Nfd7 6. Bxe7 Qxe7 7. Qd2
779	C14	French	Classical, Alapin Variation 	1. e4 e6 2. d4 d5 3. Nc3 Nf6 4. Bg5 Be7 5. e5 Nfd7 6. Bxe7 Qxe7 7. Nb5
780	C14	French	Classical, Pollock Variation 	1. e4 e6 2. d4 d5 3. Nc3 Nf6 4. Bg5 Be7 5. e5 Nfd7 6. Bxe7 Qxe7 7. Qg4
781	C14	French	Classical, Steinitz Variation 	1. e4 e6 2. d4 d5 3. Nc3 Nf6 4. Bg5 Be7 5. e5 Nfd7 6. Bxe7 Qxe7 7. f4
782	C15	French	Classical, Stahlberg Variation 	1. e4 e6 2. d4 d5 3. Nc3 Nf6 4. Bg5 Be7 5. e5 Nfd7 6. Bxe7 Qxe7 7. f4 O-O 8. Nf3 c5 9. Qd2 Nc6 10. O-O-O c4
783	C15	French	Winawer (Nimzovich) Variation 	1. e4 e6 2. d4 d5 3. Nc3 Bb4
784	C15	French	Winawer, Kondratiyev Variation 	1. e4 e6 2. d4 d5 3. Nc3 Bb4 4. Bd3 c5 5. exd5 Qxd5 6. Bd2
785	C15	French	Winawer, fingerslip Variation 	1. e4 e6 2. d4 d5 3. Nc3 Bb4 4. Bd2
786	C15	French	Winawer, Alekhine (Maroczy) gambit	1. e4 e6 2. d4 d5 3. Nc3 Bb4 4. Ne2
787	C15	French	Winawer, Alekhine gambit, Alatortsev Variation 	1. e4 e6 2. d4 d5 3. Nc3 Bb4 4. Nge2 dxe4 5. a3 Be7 6. Nxe4 Nf6 7. N2g3 O-O 8. Be2 Nc6
788	C15	French	Winawer, Alekhine gambit	1. e4 e6 2. d4 d5 3. Nc3 Bb4 4. Ne2 dxe4 5. a3 Bxc3+
789	C16	French	Winawer, Alekhine gambit, Kan Variation 	1. e4 e6 2. d4 d5 3. Nc3 Bb4 4. Nge2 dxe4 5. a3 Bxc3+ 6. Nxc3 Nc6
790	C16	French	Winawer, Advance Variation 	1. e4 e6 2. d4 d5 3. Nc3 Bb4 4. e5
791	C17	French	Winawer, Petrosian Variation 	1. e4 e6 2. d4 d5 3. Nc3 Bb4 4. e5 Qd7
792	C17	French	Winawer, Advance Variation 	1. e4 e6 2. d4 d5 3. Nc3 Bb4 4. e5 c5
793	C17	French	Winawer, Advance, Bogolyubov Variation 	1. e4 e6 2. d4 d5 3. Nc3 Bb4 4. e5 c5 5. Bd2
794	C17	French	Winawer, Advance, Russian Variation 	1. e4 e6 2. d4 d5 3. Nc3 Bb4 4. e5 c5 5. Qg4
795	C17	French	Winawer, Advance, 5.a3	1. e4 e6 2. d4 d5 3. Nc3 Bb4 4. e5 c5 5. a3
796	C18	French	Winawer, Advance, Rauzer Variation 	1. e4 e6 2. d4 d5 3. Nc3 Bb4 4. e5 c5 5. a3 cxd4 6. axb4 dxc3 7. Nf3
797	C18	French	Winawer, Advance Variation 	1. e4 e6 2. d4 d5 3. Nc3 Bb4 4. e5 c5 5. a3 Bxc3+ 6. bxc3
798	C19	French	Winawer, Classical Variation 	1. e4 e6 2. d4 d5 3. Nc3 Bb4 4. e5 c5 5. a3 Bxc3+ 6. bxc3 Qc7
799	C19	French	Winawer, Advance, 6...Ne7	1. e4 e6 2. d4 d5 3. Nc3 Bb4 4. e5 c5 5. a3 Bxc3+ 6. bxc3 Ne7
800	C19	French	Winawer, Advance, Smyslov Variation 	1. e4 e6 2. d4 d5 3. Nc3 Bb4 4. e5 c5 5. a3 Bxc3+ 6. bxc3 Ne7 7. a4
801	C19	French	Winawer, Advance, positional Main line	1. e4 e6 2. d4 d5 3. Nc3 Bb4 4. e5 c5 5. a3 Bxc3+ 6. bxc3 Ne7 7. Nf3
802	C19	French	Winawer, Advance, poisoned pawn Variation 	1. e4 e6 2. d4 d5 3. Nc3 Bb4 4. e5 c5 5. a3 Bxc3+ 6. bxc3 Ne7 7. Qg4
803	C19	French	Winawer, Advance, poisoned pawn, Euwe-Gligoric Variation 	1. e4 e6 2. d4 d5 3. Nc3 Bb4 4. e5 c5 5. a3 Bxc3+ 6. bxc3 Ne7 7. Qg4 Qc7 8. Qxg7 Rg8 9. Qxh7 cxd4 10. Kd1
804	C20	King's pawn game	Winawer, Advance, poisoned pawn, Konstantinopolsky Variation 	1. e4 e6 2. d4 d5 3. Nc3 Bb4 4. e5 c5 5. a3 Bxc3+ 6. bxc3 Ne7 7. Qg4 Qc7 8. Qxg7 Rg8 9. Qxh7 cxd4 10. Ne2
805	C20	KP	N/A	1. e4 e5
806	C20	KP	Indian Opening	1. e4 e5 2. d3
807	C20	KP	Mengarini's Opening	1. e4 e5 2. a3
808	C20	KP	King's head Opening	1. e4 e5 2. f3
809	C20	KP	Patzer Opening	1. e4 e5 2. Qh5
810	C20	KP	Napoleon's Opening	1. e4 e5 2. Qf3
811	C20	Alapin's Opening	Lopez Opening	1. e4 e5 2. c3
812	C21	center game	N/A	1. e4 e5 2. Ne2
813	C21	center game, Kieseritsky Variation 	N/A	1. e4 e5 2. d4 exd4
814	C21	Halasz gambit	N/A	1. e4 e5 2. d4 exd4 3. Nf3 c5 4. Bc4 b5
815	C21	Danish gambit	N/A	1. e4 e5 2. d4 exd4 3. f4
816	C21	Danish gambit	N/A	1. e4 e5 2. d4 exd4 3. c3
817	C21	Danish gambit	Collijn defense	1. e4 e5 2. d4 exd4 3. c3 dxc3 4. Bc4 cxb2 5. Bxb2 Qe7
818	C21	Danish gambit	Schlechter defense	1. e4 e5 2. d4 exd4 3. c3 dxc3 4. Bc4 cxb2 5. Bxb2 d5
819	C21	center game	Soerensen defense	1. e4 e5 2. d4 exd4 3. c3 d5
820	C22	center game	N/A	1. e4 e5 2. d4 exd4 3. Qxd4
821	C22	center game	N/A	1. e4 e5 2. d4 exd4 3. Qxd4 Nc6
822	C22	center game	Paulsen attack	1. e4 e5 2. d4 exd4 3. Qxd4 Nc6 4. Qe3
823	C22	center game	Charousek Variation 	1. e4 e5 2. d4 exd4 3. Qxd4 Nc6 4. Qe3 Bb4+ 5. c3 Be7
824	C22	center game	l'Hermet Variation 	1. e4 e5 2. d4 exd4 3. Qxd4 Nc6 4. Qe3 f5
825	C22	center game	Berger Variation 	1. e4 e5 2. d4 exd4 3. Qxd4 Nc6 4. Qe3 Nf6
826	C22	center game	Kuprå)ðððk Variation 	1. e4 e5 2. d4 exd4 3. Qxd4 Nc6 4. Qe3 Nf6 5. Nc3 Bb4 6. Bd2 O-O 7. O-O-O Re8 8. Bc4 d6 9. Nh3
827	C23	Bishop's Opening	Hall Variation 	1. e4 e5 2. d4 exd4 3. Qxd4 Nc6 4. Qc4
828	C23	Bishop's Opening	N/A	1. e4 e5 2. Bc4
829	C23	Bishop's Opening	Philidor counter-attack	1. e4 e5 2. Bc4 c6
830	C23	Bishop's Opening	Lisitsyn Variation 	1. e4 e5 2. Bc4 c6 3. d4 d5 4. exd5 cxd5 5. Bb5+ Bd7 6. Bxd7+ Nxd7 7. dxe5 Nxe5 8. Ne2
831	C23	Bishop's Opening	Calabrese counter-gambit	1. e4 e5 2. Bc4 f5
832	C23	Bishop's Opening	Calabrese counter-gambit, Jaenisch Variation 	1. e4 e5 2. Bc4 f5 3. d3
833	C23	Bishop's Opening	Classical Variation 	1. e4 e5 2. Bc4 Bc5
834	C23	Bishop's Opening	Lopez gambit	1. e4 e5 2. Bc4 Bc5 3. Qe2 Nc6 4. c3 Nf6 5. f4
835	C23	Bishop's Opening	Philidor Variation 	1. e4 e5 2. Bc4 Bc5 3. c3
836	C23	Bishop's Opening	Pratt Variation 	1. e4 e5 2. Bc4 Bc5 3. c3 Nf6 4. d4 exd4 5. e5 d5 6. exf6 dxc4 7. Qh5 O-O
837	C23	Bishop's Opening	Lewis counter-gambit	1. e4 e5 2. Bc4 Bc5 3. c3 d5
838	C23	Bishop's Opening	del Rio Variation 	1. e4 e5 2. Bc4 Bc5 3. c3 Qg5
840	C23	Bishop's Opening	Wing gambit	1. e4 e5 2. Bc4 Bc5 3. b4
841	C23	Bishop's Opening	MacDonnell double gambit	1. e4 e5 2. Bc4 Bc5 3. b4 Bxb4 4. f4
842	C24	Bishop's Opening	Four pawns' gambit	1. e4 e5 2. Bc4 Bc5 3. b4 Bxb4 4. f4 exf4 5. Nf3 Be7 6. d4 Bh4+ 7. g3 fxg3 8. O-O gxh2+ 9. Kh1
843	C24	Bishop's Opening	Berlin defense	1. e4 e5 2. Bc4 Nf6
844	C24	Bishop's Opening	Greco gambit	1. e4 e5 2. Bc4 Nf6 3. f4
845	C24	Bishop's Opening	Ponziani gambit	1. e4 e5 2. Bc4 Nf6 3. d4
846	C24	Bishop's Opening	Urusov gambit	1. e4 e5 2. Bc4 Nf6 3. d4 exd4 4. Nf3
847	C25	Vienna game	Urusov gambit, Panov Variation 	1. e4 e5 2. Bc4 Nf6 3. d4 exd4 4. Nf3 d5 5. exd5 Bb4+ 6. c3 Qe7+
848	C25	Vienna	N/A	1. e4 e5 2. Nc3
849	C25	Vienna game, Max Lange defense	Zhuravlev countergambit	1. e4 e5 2. Nc3 Bb4 3. Qg4 Nf6
850	C25	Vienna	N/A	1. e4 e5 2. Nc3 Nc6
851	C25	Vienna	Paulsen Variation 	1. e4 e5 2. Nc3 Nc6 3. g3
852	C25	Vienna gambit	Fyfe gambit	1. e4 e5 2. Nc3 Nc6 3. d4
853	C25	Vienna	N/A	1. e4 e5 2. Nc3 Nc6 3. f4
854	C25	Vienna	Steinitz gambit	1. e4 e5 2. Nc3 Nc6 3. f4 exf4 4. d4
855	C25	Vienna	Steinitz gambit, Zukertort defense	1. e4 e5 2. Nc3 Nc6 3. f4 exf4 4. d4 Qh4+ 5. Ke2 d5
856	C25	Vienna gambit	Steinitz gambit, Fraser-Minckwitz Variation 	1. e4 e5 2. Nc3 Nc6 3. f4 exf4 4. d4 Qh4+ 5. Ke2 b6
857	C25	Vienna	N/A	1. e4 e5 2. Nc3 Nc6 3. f4 exf4 4. Nf3
858	C25	Vienna	Hamppe-Allgaier gambit	1. e4 e5 2. Nc3 Nc6 3. f4 exf4 4. Nf3 g5 5. h4 g4 6. Ng5
859	C25	Vienna	Hamppe-Allgaier gambit, Alapin Variation 	1. e4 e5 2. Nc3 Nc6 3. f4 exf4 4. Nf3 g5 5. h4 g4 6. Ng5 d6
860	C25	Vienna	Hamppe-Muzio gambit	1. e4 e5 2. Nc3 Nc6 3. f4 exf4 4. Nf3 g5 5. Bc4 g4 6. O-O
861	C25	Vienna	Hamppe-Muzio, Dubois Variation 	1. e4 e5 2. Nc3 Nc6 3. f4 exf4 4. Nf3 g5 5. Bc4 g4 6. O-O gxf3 7. Qxf3 Ne5 8. Qxf4 Qf6
862	C25	Vienna	Pierce gambit	1. e4 e5 2. Nc3 Nc6 3. f4 exf4 4. Nf3 g5 5. d4
863	C26	Vienna	Pierce gambit, Rushmere attack	1. e4 e5 2. Nc3 Nc6 3. f4 exf4 4. Nf3 g5 5. d4 g4 6. Bc4 gxf3 7. O-O d5 8. exd5 Bg4 9. dxc6
864	C26	Vienna	Falkbeer Variation 	1. e4 e5 2. Nc3 Nf6
865	C26	Vienna	Mengarini Variation 	1. e4 e5 2. Nc3 Nf6 3. a3
866	C26	Vienna game	Paulsen-Mieses Variation 	1. e4 e5 2. Nc3 Nf6 3. g3
867	C27	Vienna game	N/A	1. e4 e5 2. Nc3 Nf6 3. Bc4
868	C27	Vienna	N/A	1. e4 e5 2. Nc3 Nf6 3. Bc4 Nxe4
869	C27	Vienna	`Frankenstein-Dracula' Variation 	1. e4 e5 2. Nc3 Nf6 3. Bc4 Nxe4 4. Qh5 Nd6 5. Bb3 Nc6 6. Nb5 g6 7. Qf3 f5 8. Qd5 Qe7 9. Nxc7+ Kd8 10. Nxa8 b6
870	C27	Vienna game	Adams' gambit	1. e4 e5 2. Nc3 Nf6 3. Bc4 Nxe4 4. Qh5 Nd6 5. Bb3 Nc6 6. d4
871	C27	Vienna	N/A	1. e4 e5 2. Nc3 Nf6 3. Bc4 Nxe4 4. Qh5 Nd6 5. Bb3 Be7
872	C27	Boden-Kieseritsky gambit	Alekhine Variation 	1. e4 e5 2. Nc3 Nf6 3. Bc4 Nxe4 4. Qh5 Nd6 5. Bb3 Be7 6. Nf3 Nc6 7. Nxe5
873	C27	Boden-Kieseritsky gambit	N/A	1. e4 e5 2. Nc3 Nf6 3. Bc4 Nxe4 4. Nf3
874	C28	Vienna game	Lichtenhein defense	1. e4 e5 2. Nc3 Nf6 3. Bc4 Nxe4 4. Nf3 d5
875	C29	Vienna gambit	N/A	1. e4 e5 2. Nc3 Nf6 3. Bc4 Nc6
876	C29	Vienna gambit	N/A	1. e4 e5 2. Nc3 Nf6 3. f4 d5
877	C29	Vienna gambit	Kaufmann Variation 	1. e4 e5 2. Nc3 Nf6 3. f4 d5 4. fxe5 Nxe4 5. Nf3 Bg4 6. Qe2
878	C29	Vienna gambit	Breyer Variation 	1. e4 e5 2. Nc3 Nf6 3. f4 d5 4. fxe5 Nxe4 5. Nf3 Be7
879	C29	Vienna gambit	Paulsen attack	1. e4 e5 2. Nc3 Nf6 3. f4 d5 4. fxe5 Nxe4 5. Qf3
880	C29	Vienna gambit	Bardeleben Variation 	1. e4 e5 2. Nc3 Nf6 3. f4 d5 4. fxe5 Nxe4 5. Qf3 f5
881	C29	Vienna gambit	Heyde Variation 	1. e4 e5 2. Nc3 Nf6 3. f4 d5 4. fxe5 Nxe4 5. Qf3 f5 6. d4
882	C29	Vienna gambit, Wurzburger trap	N/A	1. e4 e5 2. Nc3 Nf6 3. f4 d5 4. fxe5 Nxe4 5. d3
883	C29	Vienna gambit, Steinitz Variation 	N/A	1. e4 e5 2. Nc3 Nf6 3. f4 d5 4. fxe5 Nxe4 5. d3 Qh4+ 6. g3 Nxg3 7. Nf3 Qh5 8. Nxd5
884	C30	King's gambit	N/A	1. e4 e5 2. Nc3 Nf6 3. f4 d5 4. d3
885	C30	KGD	N/A	1. e4 e5 2. f4
886	C30	KGD	Keene's defense	1. e4 e5 2. f4 Qh4+ 3. g3 Qe7
887	C30	KGD	Mafia defense	1. e4 e5 2. f4 c5
888	C30	KGD	Norwalde Variation 	1. e4 e5 2. f4 Qf6
889	C30	KGD	Norwalde Variation , Buecker gambit	1. e4 e5 2. f4 Qf6 3. Nf3 Qxf4 4. Nc3 Bb4 5. Bc4
890	C30	KGD	Classical Variation 	1. e4 e5 2. f4 Bc5
891	C30	KGD	Classical, Svenonius Variation 	1. e4 e5 2. f4 Bc5 3. Nf3 d6 4. Nc3 Nf6 5. Bc4 Nc6 6. d3 Bg4 7. h3 Bxf3 8. Qxf3 exf4
892	C30	KGD	Classical, Hanham Variation 	1. e4 e5 2. f4 Bc5 3. Nf3 d6 4. Nc3 Nd7
893	C30	KGD	Classical, 4.c3	1. e4 e5 2. f4 Bc5 3. Nf3 d6 4. c3
894	C30	KGD	Classical, Marshall attack	1. e4 e5 2. f4 Bc5 3. Nf3 d6 4. c3 Bg4 5. fxe5 dxe5 6. Qa4+
895	C30	KGD	Classical counter-gambit	1. e4 e5 2. f4 Bc5 3. Nf3 d6 4. c3 f5
896	C30	KGD	Classical, Reti Variation 	1. e4 e5 2. f4 Bc5 3. Nf3 d6 4. c3 f5 5. fxe5 dxe5 6. d4 exd4 7. Bc4
897	C30	KGD	Classical, SOldatenkov Variation 	1. e4 e5 2. f4 Bc5 3. Nf3 d6 4. fxe5
898	C30	KGD	Classical, Heath Variation 	1. e4 e5 2. f4 Bc5 3. Nf3 d6 4. b4
899	C31	KGD	2...Nf6	1. e4 e5 2. f4 Nf6
900	C31	KGD	Falkbeer counter-gambit	1. e4 e5 2. f4 d5
901	C31	KGD	Falkbeer, Tartakower Variation 	1. e4 e5 2. f4 d5 3. Nf3
902	C31	KGD	Falkbeer, Milner-Barry Variation 	1. e4 e5 2. f4 d5 3. Nc3
903	C31	KGD	Falkbeer counter-gambit	1. e4 e5 2. f4 d5 3. exd5
904	C31	KGD	Nimzovich counter-gambit	1. e4 e5 2. f4 d5 3. exd5 c6
905	C31	KGD	Falkbeer, 3...e4	1. e4 e5 2. f4 d5 3. exd5 e4
906	C31	KGD	Falkbeer, Rubinstein Variation 	1. e4 e5 2. f4 d5 3. exd5 e4 4. Nc3 Nf6 5. Qe2
907	C31	KGD	Falkbeer, Nimzovich Variation 	1. e4 e5 2. f4 d5 3. exd5 e4 4. Bb5+
908	C31	KGD	Falkbeer, 4.d3	1. e4 e5 2. f4 d5 3. exd5 e4 4. d3
909	C32	KGD	Falkbeer, Morphy gambit	1. e4 e5 2. f4 d5 3. exd5 e4 4. d3 Nf6 5. Nc3 Bb4 6. Bd2 e3
910	C32	KGD	Falkbeer, 5.de	1. e4 e5 2. f4 d5 3. exd5 e4 4. d3 Nf6 5. dxe4
911	C32	KGD	Falkbeer, Alapin Variation 	1. e4 e5 2. f4 d5 3. exd5 e4 4. d3 Nf6 5. dxe4 Nxe4 6. Nf3 Bc5 7. Qe2 Bf2+ 8. Kd1 Qxd5+ 9. Nfd2
1575	D22	QGA	Alekhine defense	1. d4 d5 2. c4 dxc4 3. Nf3 a6
912	C32	KGD	Falkbeer, Main line, 7...Bf5	1. e4 e5 2. f4 d5 3. exd5 e4 4. d3 Nf6 5. dxe4 Nxe4 6. Nf3 Bc5 7. Qe2 Bf5
913	C32	KGD	Falkbeer, Tarrasch Variation 	1. e4 e5 2. f4 d5 3. exd5 e4 4. d3 Nf6 5. dxe4 Nxe4 6. Nf3 Bc5 7. Qe2 Bf5 8. g4 O-O
914	C32	KGD	Falkbeer, Charousek gambit	1. e4 e5 2. f4 d5 3. exd5 e4 4. d3 Nf6 5. dxe4 Nxe4 6. Qe2
915	C32	KGD	Falkbeer, Charousek Variation 	1. e4 e5 2. f4 d5 3. exd5 e4 4. d3 Nf6 5. dxe4 Nxe4 6. Qe2 Qxd5 7. Nd2 f5 8. g4
916	C32	KGD	Falkbeer, Keres Variation 	1. e4 e5 2. f4 d5 3. exd5 e4 4. d3 Nf6 5. Nd2
917	C33	King's gambit accepted	Falkbeer, Reti Variation 	1. e4 e5 2. f4 d5 3. exd5 e4 4. d3 Nf6 5. Qe2
918	C33	KGA	N/A	1. e4 e5 2. f4 exf4
919	C33	KGA	Tumbleweed gambit	1. e4 e5 2. f4 exf4 3. Kf2
920	C33	KGA	Orsini gambit	1. e4 e5 2. f4 exf4 3. b3
921	C33	KGA	Pawn's gambit (Stamma gambit)	1. e4 e5 2. f4 exf4 3. h4
922	C33	KGA	Schurig gambit	1. e4 e5 2. f4 exf4 3. Bd3
923	C33	KGA	Carrera (Basman) gambit	1. e4 e5 2. f4 exf4 3. Qe2
924	C33	KGA	Villemson (Steinitz) gambit	1. e4 e5 2. f4 exf4 3. d4
925	C33	KGA	Keres (Mason-Steinitz) gambit	1. e4 e5 2. f4 exf4 3. Nc3
926	C33	KGA	Breyer gambit	1. e4 e5 2. f4 exf4 3. Qf3
927	C33	KGA	Lesser Bishop's (Petroff-Jaenisch-Tartakower) gambit	1. e4 e5 2. f4 exf4 3. Be2
928	C33	KGA	Bishop's gambit	1. e4 e5 2. f4 exf4 3. Bc4
929	C33	KGA	Bishop's gambit, Chigorin's attack	1. e4 e5 2. f4 exf4 3. Bc4 Qh4+ 4. Kf1 d5 5. Bxd5 g5 6. g3
930	C33	KGA	Bishop's gambit, Greco Variation 	1. e4 e5 2. f4 exf4 3. Bc4 Qh4+ 4. Kf1 Bc5
931	C33	KGA	Bishop's gambit, Classical defense	1. e4 e5 2. f4 exf4 3. Bc4 Qh4+ 4. Kf1 g5
932	C33	KGA	Bishop's gambit, Grimm attack	1. e4 e5 2. f4 exf4 3. Bc4 Qh4+ 4. Kf1 g5 5. Nc3 Bg7 6. d4 d6 7. e5
933	C33	KGA	Bishop's gambit, Classical defense	1. e4 e5 2. f4 exf4 3. Bc4 Qh4+ 4. Kf1 g5 5. Nc3 Bg7 6. d4 Ne7
934	C33	KGA	Bishop's gambit, McDonnell attack	1. e4 e5 2. f4 exf4 3. Bc4 Qh4+ 4. Kf1 g5 5. Nc3 Bg7 6. d4 Ne7 7. g3
935	C33	KGA	Bishop's gambit, McDonnell attack	1. e4 e5 2. f4 exf4 3. Bc4 Qh4+ 4. Kf1 g5 5. Nc3 Bg7 6. g3
936	C33	KGA	Bishop's gambit, Fraser Variation 	1. e4 e5 2. f4 exf4 3. Bc4 Qh4+ 4. Kf1 g5 5. Nc3 Bg7 6. g3 fxg3 7. Qf3
937	C33	KGA	Bishop's gambit, Classical defense, Cozio attack	1. e4 e5 2. f4 exf4 3. Bc4 Qh4+ 4. Kf1 g5 5. Qf3
938	C33	KGA	Bishop's gambit, Boden defense	1. e4 e5 2. f4 exf4 3. Bc4 Qh4+ 4. Kf1 Nc6
939	C33	KGA	Bishop's gambit, Bryan counter-gambit	1. e4 e5 2. f4 exf4 3. Bc4 Qh4+ 4. Kf1 b5
940	C33	KGA	Bishop's gambit, Bryan counter-gambit	1. e4 e5 2. f4 exf4 3. Bc4 b5
941	C33	KGA	Bishop's gambit, Steinitz defense	1. e4 e5 2. f4 exf4 3. Bc4 Ne7
942	C33	KGA	Bishop's gambit, Maurian defense	1. e4 e5 2. f4 exf4 3. Bc4 Nc6
943	C33	KGA	Bishop's gambit, Ruy Lopez defense	1. e4 e5 2. f4 exf4 3. Bc4 c6
944	C33	KGA	Bishop's gambit, Lopez-Gianutio counter-gambit	1. e4 e5 2. f4 exf4 3. Bc4 f5
945	C33	KGA	Lopez-Gianutio counter-gambit, Hein Variation 	1. e4 e5 2. f4 exf4 3. Bc4 f5 4. Qe2 Qh4+ 5. Kd1 fxe4 6. Nc3 Kd8
946	C33	KGA	Bishop's gambit, Bledow Variation 	1. e4 e5 2. f4 exf4 3. Bc4 d5
947	C33	KGA	Bishop's gambit, Gifford Variation 	1. e4 e5 2. f4 exf4 3. Bc4 d5 4. Bxd5 Qh4+ 5. Kf1 g5 6. g3
948	C33	KGA	Bishop's gambit, Boren-Svenonius Variation 	1. e4 e5 2. f4 exf4 3. Bc4 d5 4. Bxd5 Qh4+ 5. Kf1 Bd6
949	C33	KGA	Bishop's gambit, Anderssen Variation 	1. e4 e5 2. f4 exf4 3. Bc4 d5 4. Bxd5 c6
950	C33	KGA	Bishop's gambit, Morphy Variation 	1. e4 e5 2. f4 exf4 3. Bc4 d5 4. Bxd5 Nf6
951	C33	KGA	Bishop's gambit, Cozio (Morphy) defense	1. e4 e5 2. f4 exf4 3. Bc4 Nf6
952	C33	KGA	Bishop's gambit, Bogolyubov Variation 	1. e4 e5 2. f4 exf4 3. Bc4 Nf6 4. Nc3
953	C33	KGA	Bishop's gambit, Paulsen attack	1. e4 e5 2. f4 exf4 3. Bc4 Nf6 4. Nc3 Bb4 5. e5
954	C34	King's knight's gambit	Bishop's gambit, Jaenisch Variation 	1. e4 e5 2. f4 exf4 3. Bc4 Nf6 4. Nc3 c6
955	C34	KGA	N/A	1. e4 e5 2. f4 exf4 3. Nf3
956	C34	KGA	Bonsch-Osmolovsky Variation 	1. e4 e5 2. f4 exf4 3. Nf3 Ne7
957	C34	KGA	Gianutio counter-gambit	1. e4 e5 2. f4 exf4 3. Nf3 f5
958	C34	KGA	Fischer defense	1. e4 e5 2. f4 exf4 3. Nf3 d6
959	C34	KGA	Becker defense	1. e4 e5 2. f4 exf4 3. Nf3 h6
960	C35	KGA	Schallop defense	1. e4 e5 2. f4 exf4 3. Nf3 Nf6
961	C35	KGA	Cunningham defense	1. e4 e5 2. f4 exf4 3. Nf3 Be7
962	C35	KGA	Cunningham, Bertin gambit	1. e4 e5 2. f4 exf4 3. Nf3 Be7 4. Bc4 Bh4+ 5. g3
963	C35	KGA	Cunningham, Three pawns gambit	1. e4 e5 2. f4 exf4 3. Nf3 Be7 4. Bc4 Bh4+ 5. g3 fxg3 6. O-O gxh2+ 7. Kh1
964	C36	KGA	Cunningham, Euwe defense	1. e4 e5 2. f4 exf4 3. Nf3 Be7 4. Bc4 Nf6
965	C36	KGA	Abbazia defense (Classical defense, Modern defense[!])	1. e4 e5 2. f4 exf4 3. Nf3 d5
966	C36	KGA	Abbazia defense, Modern Variation 	1. e4 e5 2. f4 exf4 3. Nf3 d5 4. exd5 Nf6
967	C37	KGA	Abbazia defense, Botvinnik Variation 	1. e4 e5 2. f4 exf4 3. Nf3 d5 4. exd5 Nf6 5. Bb5+ c6 6. dxc6 bxc6 7. Bc4 Nd5
968	C37	KGA	Quaade gambit	1. e4 e5 2. f4 exf4 3. Nf3 g5 4. Nc3
969	C37	KGA	Rosentreter gambit	1. e4 e5 2. f4 exf4 3. Nf3 g5 4. d4
970	C37	KGA	Soerensen gambit	1. e4 e5 2. f4 exf4 3. Nf3 g5 4. d4 g4 5. Ne5
971	C37	KGA	King's knight's gambit	1. e4 e5 2. f4 exf4 3. Nf3 g5 4. Bc4
972	C37	KGA	Blachly gambit	1. e4 e5 2. f4 exf4 3. Nf3 g5 4. Bc4 Nc6
973	C37	KGA	Lolli gambit (wild Muzio gambit)	1. e4 e5 2. f4 exf4 3. Nf3 g5 4. Bc4 g4 5. Bxf7+
974	C37	KGA	Lolli gambit, Young Variation 	1. e4 e5 2. f4 exf4 3. Nf3 g5 4. Bc4 g4 5. Bxf7+ Kxf7 6. O-O gxf3 7. Qxf3 Qf6 8. d4 Qxd4+ 9. Be3 Qf6 10. Nc3
975	C37	KGA	Ghulam Kassim gambit	1. e4 e5 2. f4 exf4 3. Nf3 g5 4. Bc4 g4 5. d4
976	C37	KGA	MacDonnell gambit	1. e4 e5 2. f4 exf4 3. Nf3 g5 4. Bc4 g4 5. Nc3
977	C37	KGA	Salvio gambit	1. e4 e5 2. f4 exf4 3. Nf3 g5 4. Bc4 g4 5. Ne5
978	C37	KGA	Silberschmidt gambit	1. e4 e5 2. f4 exf4 3. Nf3 g5 4. Bc4 g4 5. Ne5 Qh4+ 6. Kf1 Nh6 7. d4 f3
979	C37	KGA	Salvio gambit, Anderssen counter-attack	1. e4 e5 2. f4 exf4 3. Nf3 g5 4. Bc4 g4 5. Ne5 Qh4+ 6. Kf1 Nh6 7. d4 d6
980	C37	KGA	Cochrane gambit	1. e4 e5 2. f4 exf4 3. Nf3 g5 4. Bc4 g4 5. Ne5 Qh4+ 6. Kf1 f3
981	C37	KGA	Herzfeld gambit	1. e4 e5 2. f4 exf4 3. Nf3 g5 4. Bc4 g4 5. Ne5 Qh4+ 6. Kf1 Nc6
982	C37	KGA	Muzio gambit	1. e4 e5 2. f4 exf4 3. Nf3 g5 4. Bc4 g4 5. O-O
983	C37	KGA	Muzio gambit, Paulsen Variation 	1. e4 e5 2. f4 exf4 3. Nf3 g5 4. Bc4 g4 5. O-O gxf3 6. Qxf3 Qf6 7. e5 Qxe5 8. d3 Bh6 9. Nc3 Ne7 10. Bd2 Nbc6 11. Rae1
984	C37	KGA	double Muzio gambit	1. e4 e5 2. f4 exf4 3. Nf3 g5 4. Bc4 g4 5. O-O gxf3 6. Qxf3 Qf6 7. e5 Qxe5 8. Bxf7+
985	C37	KGA	Muzio gambit, From defense	1. e4 e5 2. f4 exf4 3. Nf3 g5 4. Bc4 g4 5. O-O gxf3 6. Qxf3 Qe7
986	C37	KGA	Muzio gambit, Holloway defense	1. e4 e5 2. f4 exf4 3. Nf3 g5 4. Bc4 g4 5. O-O gxf3 6. Qxf3 Nc6
987	C37	KGA	Muzio gambit, Kling and Horwitz counter-attack	1. e4 e5 2. f4 exf4 3. Nf3 g5 4. Bc4 g4 5. O-O Qe7
988	C38	King's knight's gambit	Muzio gambit, Brentano defense	1. e4 e5 2. f4 exf4 3. Nf3 g5 4. Bc4 g4 5. O-O d5
989	C38	KGA	N/A	1. e4 e5 2. f4 exf4 3. Nf3 g5 4. Bc4 Bg7
990	C38	KGA	Hanstein gambit	1. e4 e5 2. f4 exf4 3. Nf3 g5 4. Bc4 Bg7 5. O-O
991	C38	KGA	Philidor gambit	1. e4 e5 2. f4 exf4 3. Nf3 g5 4. Bc4 Bg7 5. h4
992	C38	KGA	Greco gambit	1. e4 e5 2. f4 exf4 3. Nf3 g5 4. Bc4 Bg7 5. h4 h6 6. d4 d6 7. Nc3 c6 8. hxg5 hxg5 9. Rxh8 Bxh8 10. Ne5
993	C39	King's knight's gambit	Philidor gambit, Schultz Variation 	1. e4 e5 2. f4 exf4 3. Nf3 g5 4. Bc4 Bg7 5. h4 h6 6. d4 d6 7. Qd3
994	C39	KGA	N/A	1. e4 e5 2. f4 exf4 3. Nf3 g5 4. h4
995	C39	KGA	Allgaier gambit	1. e4 e5 2. f4 exf4 3. Nf3 g5 4. h4 g4 5. Ng5
996	C39	KGA	Allgaier, Horny defense	1. e4 e5 2. f4 exf4 3. Nf3 g5 4. h4 g4 5. Ng5 h6 6. Nxf7 Kxf7 7. Qxg4 Nf6 8. Qxf4 Bd6
997	C39	KGA	Allgaier, ThorOld Variation 	1. e4 e5 2. f4 exf4 3. Nf3 g5 4. h4 g4 5. Ng5 h6 6. Nxf7 Kxf7 7. d4
998	C39	KGA	Allgaier, Cook Variation 	1. e4 e5 2. f4 exf4 3. Nf3 g5 4. h4 g4 5. Ng5 h6 6. Nxf7 Kxf7 7. d4 d5 8. Bxf4 dxe4 9. Bc4+ Kg7 10. Be5+
999	C39	KGA	Allgaier, Blackburne gambit	1. e4 e5 2. f4 exf4 3. Nf3 g5 4. h4 g4 5. Ng5 h6 6. Nxf7 Kxf7 7. Nc3
1000	C39	KGA	Allgaier, Walker attack	1. e4 e5 2. f4 exf4 3. Nf3 g5 4. h4 g4 5. Ng5 h6 6. Nxf7 Kxf7 7. Bc4+
1001	C39	KGA	Allgaier, Urusov attack	1. e4 e5 2. f4 exf4 3. Nf3 g5 4. h4 g4 5. Ng5 h6 6. Nxf7 Kxf7 7. Bc4+ d5 8. Bxd5+ Kg7 9. d4
1002	C39	KGA	Allgaier, Schlechter defense	1. e4 e5 2. f4 exf4 3. Nf3 g5 4. h4 g4 5. Ng5 Nf6
1003	C39	KGA	Kieseritsky, Paulsen defense	1. e4 e5 2. f4 exf4 3. Nf3 g5 4. h4 g4 5. Ne5 Bg7
1004	C39	KGA	Kieseritsky, long whip (Stockwhip, Classical) defense	1. e4 e5 2. f4 exf4 3. Nf3 g5 4. h4 g4 5. Ne5 h5
1005	C39	KGA	Kieseritsky, long whip defense, Jaenisch Variation 	1. e4 e5 2. f4 exf4 3. Nf3 g5 4. h4 g4 5. Ne5 h5 6. Bc4 Rh7 7. d4 Bh6 8. Nc3
1006	C39	KGA	Kieseritsky, Brentano (Campbell) defense	1. e4 e5 2. f4 exf4 3. Nf3 g5 4. h4 g4 5. Ne5 d5
1007	C39	KGA	Kieseritsky, Brentano defense, Kaplanek Variation 	1. e4 e5 2. f4 exf4 3. Nf3 g5 4. h4 g4 5. Ne5 d5 6. d4 Nf6 7. exd5 Qxd5 8. Nc3 Bb4 9. Kf2
1008	C39	KGA	Kieseritsky, Brentano defense	1. e4 e5 2. f4 exf4 3. Nf3 g5 4. h4 g4 5. Ne5 d5 6. d4 Nf6 7. Bxf4
1009	C39	KGA	Kieseritsky, Brentano defense, Caro Variation 	1. e4 e5 2. f4 exf4 3. Nf3 g5 4. h4 g4 5. Ne5 d5 6. d4 Nf6 7. Bxf4 Nxe4 8. Nd2
1010	C39	KGA	Kieseritsky, Salvio (Rosenthal) defense	1. e4 e5 2. f4 exf4 3. Nf3 g5 4. h4 g4 5. Ne5 Qe7
1011	C39	KGA	Kieseritsky, Salvio defense, Cozio Variation 	1. e4 e5 2. f4 exf4 3. Nf3 g5 4. h4 g4 5. Ne5 Qe7 6. d4 f5 7. Bc4
1012	C39	KGA	Kieseritsky, Polerio defense	1. e4 e5 2. f4 exf4 3. Nf3 g5 4. h4 g4 5. Ne5 Be7
1013	C39	KGA	Kieseritsky, Neumann defense	1. e4 e5 2. f4 exf4 3. Nf3 g5 4. h4 g4 5. Ne5 Nc6
1014	C39	KGA	Kieseritsky, Kolisch defense	1. e4 e5 2. f4 exf4 3. Nf3 g5 4. h4 g4 5. Ne5 d6
1015	C39	KGA	Kieseritsky, Berlin defense	1. e4 e5 2. f4 exf4 3. Nf3 g5 4. h4 g4 5. Ne5 Nf6
1016	C39	KGA	Kieseritsky, Berlin defense, Riviere Variation 	1. e4 e5 2. f4 exf4 3. Nf3 g5 4. h4 g4 5. Ne5 Nf6 6. Nxg4 d5
1017	C39	KGA	Kieseritsky, Berlin defense, 6.Bc4	1. e4 e5 2. f4 exf4 3. Nf3 g5 4. h4 g4 5. Ne5 Nf6 6. Bc4
1018	C40	King's knight Opening	Kieseritsky, Rice gambit	1. e4 e5 2. f4 exf4 3. Nf3 g5 4. h4 g4 5. Ne5 Nf6 6. Bc4 d5 7. exd5 Bd6 8. O-O
1019	C40	Gunderam defense	N/A	1. e4 e5 2. Nf3
1020	C40	Greco defense	N/A	1. e4 e5 2. Nf3 Qe7
1021	C40	Damiano's defense	N/A	1. e4 e5 2. Nf3 Qf6
1022	C40	QP counter-gambit (elephant gambit)	N/A	1. e4 e5 2. Nf3 f6
1023	C40	QP counter-gambit	N/A	1. e4 e5 2. Nf3 d5
1024	C40	Latvian counter-gambit	Maroczy gambit	1. e4 e5 2. Nf3 d5 3. exd5 Bd6
1025	C40	Latvian	N/A	1. e4 e5 2. Nf3 f5
1026	C40	Latvian	Nimzovich Variation 	1. e4 e5 2. Nf3 f5 3. Nxe5 Qf6 4. d4 d6 5. Nc4 fxe4 6. Ne3
1027	C40	Latvian gambit, 3.Bc4	Fraser defense	1. e4 e5 2. Nf3 f5 3. Nxe5 Nc6
1028	C40	Latvian	N/A	1. e4 e5 2. Nf3 f5 3. Bc4
1029	C40	Latvian	Behting Variation 	1. e4 e5 2. Nf3 f5 3. Bc4 fxe4 4. Nxe5 Qg5 5. Nf7 Qxg2 6. Rf1 d5 7. Nxh8 Nf6
1030	C40	Latvian	Polerio Variation 	1. e4 e5 2. Nf3 f5 3. Bc4 fxe4 4. Nxe5 d5
1031	C41	Philidor's defense	corkscrew counter-gambit	1. e4 e5 2. Nf3 f5 3. Bc4 fxe4 4. Nxe5 Nf6
1032	C41	Philidor	N/A	1. e4 e5 2. Nf3 d6
1033	C41	Philidor	Steinitz Variation 	1. e4 e5 2. Nf3 d6 3. Bc4 Be7 4. c3
1034	C41	Philidor	Lopez counter-gambit	1. e4 e5 2. Nf3 d6 3. Bc4 f5
1035	C41	Philidor's defense	Lopez counter-gambit, Jaenisch Variation 	1. e4 e5 2. Nf3 d6 3. Bc4 f5 4. d4 exd4 5. Ng5 Nh6 6. Nxh7
1036	C41	Philidor	N/A	1. e4 e5 2. Nf3 d6 3. d4
1037	C41	Philidor	Philidor counter-gambit	1. e4 e5 2. Nf3 d6 3. d4 f5
1038	C41	Philidor	Philidor counter-gambit, del Rio attack	1. e4 e5 2. Nf3 d6 3. d4 f5 4. dxe5 fxe4 5. Ng5 d5 6. e6
1039	C41	Philidor	Philidor counter-gambit, Berger Variation 	1. e4 e5 2. Nf3 d6 3. d4 f5 4. dxe5 fxe4 5. Ng5 d5 6. e6 Bc5 7. Nc3
1040	C41	Philidor	Philidor counter-gambit, Zukertort Variation 	1. e4 e5 2. Nf3 d6 3. d4 f5 4. Nc3
1041	C41	Philidor	Exchange Variation 	1. e4 e5 2. Nf3 d6 3. d4 exd4
1042	C41	Philidor	Boden Variation 	1. e4 e5 2. Nf3 d6 3. d4 exd4 4. Qxd4 Bd7
1043	C41	Philidor	Exchange Variation 	1. e4 e5 2. Nf3 d6 3. d4 exd4 4. Nxd4
1044	C41	Philidor	Paulsen attack	1. e4 e5 2. Nf3 d6 3. d4 exd4 4. Nxd4 d5 5. exd5
1045	C41	Philidor	Exchange Variation 	1. e4 e5 2. Nf3 d6 3. d4 exd4 4. Nxd4 Nf6
1046	C41	Philidor	Berger Variation 	1. e4 e5 2. Nf3 d6 3. d4 exd4 4. Nxd4 Nf6 5. Nc3 Be7 6. Be2 O-O 7. O-O c5 8. Nf3 Nc6 9. Bg5 Be6 10. Re1
1047	C41	Philidor	Larsen Variation 	1. e4 e5 2. Nf3 d6 3. d4 exd4 4. Nxd4 g6
1048	C41	Philidor	Nimzovich (Jaené3ððð Variation 	1. e4 e5 2. Nf3 d6 3. d4 Nf6
1049	C41	Philidor	Improved Hanham Variation 	1. e4 e5 2. Nf3 d6 3. d4 Nf6 4. Nc3 Nbd7
1050	C41	Philidor	Nimzovich, Sozin Variation 	1. e4 e5 2. Nf3 d6 3. d4 Nf6 4. Nc3 Nbd7 5. Bc4 Be7 6. O-O O-O 7. Qe2 c6 8. a4 exd4
1051	C41	Philidor	Nimzovich, Larobok Variation 	1. e4 e5 2. Nf3 d6 3. d4 Nf6 4. Nc3 Nbd7 5. Bc4 Be7 6. Ng5 O-O 7. Bxf7+
1052	C41	Philidor	Nimzovich Variation 	1. e4 e5 2. Nf3 d6 3. d4 Nf6 4. dxe5
1053	C41	Philidor	Nimzovich, Sokolsky Variation 	1. e4 e5 2. Nf3 d6 3. d4 Nf6 4. dxe5 Nxe4 5. Nbd2
1054	C41	Philidor	Nimzovich, Rellstab Variation 	1. e4 e5 2. Nf3 d6 3. d4 Nf6 4. dxe5 Nxe4 5. Qd5
1055	C41	Philidor	Nimzovich, Locock Variation 	1. e4 e5 2. Nf3 d6 3. d4 Nf6 4. Ng5
1056	C41	Philidor	Nimzovich, Klein Variation 	1. e4 e5 2. Nf3 d6 3. d4 Nf6 4. Bc4
1057	C41	Philidor	Hanham Variation 	1. e4 e5 2. Nf3 d6 3. d4 Nd7
1058	C41	Philidor	Hanham, Krause Variation 	1. e4 e5 2. Nf3 d6 3. d4 Nd7 4. Bc4 c6 5. O-O
1059	C41	Philidor	Hanham, Steiner Variation 	1. e4 e5 2. Nf3 d6 3. d4 Nd7 4. Bc4 c6 5. O-O Be7 6. dxe5
1060	C41	Philidor	Hanham, Kmoch Variation 	1. e4 e5 2. Nf3 d6 3. d4 Nd7 4. Bc4 c6 5. Ng5
1061	C41	Philidor	Hanham, Berger Variation 	1. e4 e5 2. Nf3 d6 3. d4 Nd7 4. Bc4 c6 5. Ng5 Nh6 6. f4 Be7 7. O-O O-O 8. c3 d5
1062	C41	Philidor	Hanham, Schlechter Variation 	1. e4 e5 2. Nf3 d6 3. d4 Nd7 4. Bc4 c6 5. Nc3
1063	C42	Petrov's defense	Hanham, Delmar Variation 	1. e4 e5 2. Nf3 d6 3. d4 Nd7 4. Bc4 c6 5. c3
1064	C42	Petrov	N/A	1. e4 e5 2. Nf3 Nf6
1065	C42	Petrov	French attack	1. e4 e5 2. Nf3 Nf6 3. Nxe5 d6 4. Nf3 Nxe4 5. d3
1066	C42	Petrov	Kaufmann attack	1. e4 e5 2. Nf3 Nf6 3. Nxe5 d6 4. Nf3 Nxe4 5. c4
1067	C42	Petrov	Nimzovich attack	1. e4 e5 2. Nf3 Nf6 3. Nxe5 d6 4. Nf3 Nxe4 5. Nc3
1068	C42	Petrov	Cozio (Lasker) attack	1. e4 e5 2. Nf3 Nf6 3. Nxe5 d6 4. Nf3 Nxe4 5. Qe2
1069	C42	Petrov	Classical attack	1. e4 e5 2. Nf3 Nf6 3. Nxe5 d6 4. Nf3 Nxe4 5. d4
1070	C42	Petrov	Classical attack, Chigorin Variation 	1. e4 e5 2. Nf3 Nf6 3. Nxe5 d6 4. Nf3 Nxe4 5. d4 d5 6. Bd3 Be7 7. O-O Nc6 8. Re1
1071	C42	Petrov	Classical attack, Berger Variation 	1. e4 e5 2. Nf3 Nf6 3. Nxe5 d6 4. Nf3 Nxe4 5. d4 d5 6. Bd3 Be7 7. O-O Nc6 8. Re1 Bg4 9. c3 f5 10. Nbd2
1072	C42	Petrov	Classical attack, Krause Variation 	1. e4 e5 2. Nf3 Nf6 3. Nxe5 d6 4. Nf3 Nxe4 5. d4 d5 6. Bd3 Be7 7. O-O Nc6 8. Re1 Bg4 9. c3 f5 10. c4
1073	C42	Petrov	Classical attack, Maroczy Variation 	1. e4 e5 2. Nf3 Nf6 3. Nxe5 d6 4. Nf3 Nxe4 5. d4 d5 6. Bd3 Be7 7. O-O Nc6 8. Re1 Bg4 9. c3 f5 10. c4 Bh4
1074	C42	Petrov	Classical attack, Jaenisch Variation 	1. e4 e5 2. Nf3 Nf6 3. Nxe5 d6 4. Nf3 Nxe4 5. d4 d5 6. Bd3 Be7 7. O-O Nc6 8. c4
1075	C42	Petrov	Classical attack, Mason Variation 	1. e4 e5 2. Nf3 Nf6 3. Nxe5 d6 4. Nf3 Nxe4 5. d4 d5 6. Bd3 Be7 7. O-O O-O
1076	C42	Petrov	Classical attack, Marshall Variation 	1. e4 e5 2. Nf3 Nf6 3. Nxe5 d6 4. Nf3 Nxe4 5. d4 d5 6. Bd3 Bd6
1077	C42	Petrov	Classical attack, Tarrasch Variation 	1. e4 e5 2. Nf3 Nf6 3. Nxe5 d6 4. Nf3 Nxe4 5. d4 d5 6. Bd3 Bd6 7. O-O O-O 8. c4 Bg4
1078	C42	Petrov	Classical attack, Marshall trap	1. e4 e5 2. Nf3 Nf6 3. Nxe5 d6 4. Nf3 Nxe4 5. d4 d5 6. Bd3 Bd6 7. O-O O-O 8. c4 Bg4 9. cxd5 f5 10. Re1 Bxh2+
1079	C42	Petrov	Classical attack, close Variation 	1. e4 e5 2. Nf3 Nf6 3. Nxe5 d6 4. Nf3 Nxe4 5. d4 Nf6
1080	C42	Petrov	Cochrane gambit	1. e4 e5 2. Nf3 Nf6 3. Nxe5 d6 4. Nxf7
1081	C42	Petrov	Paulsen attack	1. e4 e5 2. Nf3 Nf6 3. Nxe5 d6 4. Nc4
1082	C42	Petrov Three knights game	Damiano Variation 	1. e4 e5 2. Nf3 Nf6 3. Nxe5 Nxe4
1083	C42	Petrov	N/A	1. e4 e5 2. Nf3 Nf6 3. Nc3
1084	C43	Petrov	Italian Variation 	1. e4 e5 2. Nf3 Nf6 3. Bc4
1085	C43	Petrov	Modern (Steinitz) attack	1. e4 e5 2. Nf3 Nf6 3. d4
1086	C43	Petrov	Modern attack, Main line	1. e4 e5 2. Nf3 Nf6 3. d4 exd4 4. e5 Ne4 5. Qxd4
1087	C43	Petrov	Modern attack, Steinitz Variation 	1. e4 e5 2. Nf3 Nf6 3. d4 exd4 4. e5 Ne4 5. Qe2
1088	C43	Petrov	Modern attack, Bardeleben Variation 	1. e4 e5 2. Nf3 Nf6 3. d4 exd4 4. e5 Ne4 5. Qe2 Nc5 6. Nxd4 Nc6
1089	C43	Petrov	Urusov gambit	1. e4 e5 2. Nf3 Nf6 3. d4 exd4 4. Bc4
1090	C43	Petrov	Modern attack, Symmetrical Variation 	1. e4 e5 2. Nf3 Nf6 3. d4 Nxe4
1091	C44	King's pawn game	Modern attack, Trifunovic Variation 	1. e4 e5 2. Nf3 Nf6 3. d4 Nxe4 4. Bd3 d5 5. Nxe5 Bd6 6. O-O O-O 7. c4 Bxe5
1092	C44	Irish (Chicago) gambit	N/A	1. e4 e5 2. Nf3 Nc6
1093	C44	Konstantinopolsky Opening	N/A	1. e4 e5 2. Nf3 Nc6 3. Nxe5 Nxe5 4. d4
1094	C44	Dresden Opening	N/A	1. e4 e5 2. Nf3 Nc6 3. g3
1095	C44	Inverted Hungarian	N/A	1. e4 e5 2. Nf3 Nc6 3. c4
1096	C44	Inverted Hanham	N/A	1. e4 e5 2. Nf3 Nc6 3. Be2
1097	C44	Tayler Opening	N/A	1. e4 e5 2. Nf3 Nc6 3. Be2 Nf6 4. d3 d5 5. Nbd2
1098	C44	Ponziani Opening	N/A	1. e4 e5 2. Nf3 Nc6 3. Be2 Nf6 4. d4
1099	C44	Ponziani	N/A	1. e4 e5 2. Nf3 Nc6 3. c3
1100	C44	Ponziani	Caro Variation 	1. e4 e5 2. Nf3 Nc6 3. c3 d5 4. Qa4 Bd7
1101	C44	Ponziani	Leonhardt Variation 	1. e4 e5 2. Nf3 Nc6 3. c3 d5 4. Qa4 Nf6
1102	C44	Ponziani	Steinitz Variation 	1. e4 e5 2. Nf3 Nc6 3. c3 d5 4. Qa4 f6
1103	C44	Ponziani	Jaenisch counter-attack	1. e4 e5 2. Nf3 Nc6 3. c3 Nf6
1104	C44	Ponziani	Fraser defense	1. e4 e5 2. Nf3 Nc6 3. c3 Nf6 4. d4 Nxe4 5. d5 Bc5
1105	C44	Ponziani	Reti Variation 	1. e4 e5 2. Nf3 Nc6 3. c3 Nge7
1106	C44	Ponziani counter-gambit	Romanishin Variation 	1. e4 e5 2. Nf3 Nc6 3. c3 Be7
1107	C44	Ponziani counter-gambit, Schmidt attack	N/A	1. e4 e5 2. Nf3 Nc6 3. c3 f5
1108	C44	Ponziani counter-gambit, Cordel Variation 	N/A	1. e4 e5 2. Nf3 Nc6 3. c3 f5 4. d4 d6 5. d5
1109	C44	Scotch Opening	N/A	1. e4 e5 2. Nf3 Nc6 3. c3 f5 4. d4 d6 5. d5 fxe4 6. Ng5 Nb8 7. Nxe4 Nf6 8. Bd3 Be7
1110	C44	Scotch	N/A	1. e4 e5 2. Nf3 Nc6 3. d4
1111	C44	Scotch	Lolli Variation 	1. e4 e5 2. Nf3 Nc6 3. d4 Nxd4
1112	C44	Scotch	Cochrane Variation 	1. e4 e5 2. Nf3 Nc6 3. d4 Nxd4 4. Nxe5 Ne6 5. Bc4 c6 6. O-O Nf6 7. Nxf7
1113	C44	Scotch	Relfsson gambit ('MacLopez')	1. e4 e5 2. Nf3 Nc6 3. d4 exd4 4. Bb5
1114	C44	Scotch	Goering gambit	1. e4 e5 2. Nf3 Nc6 3. d4 exd4 4. c3
1115	C44	Scotch	Sea-cadet mate	1. e4 e5 2. Nf3 Nc6 3. d4 exd4 4. c3 dxc3 5. Nxc3 d6 6. Bc4 Bg4 7. O-O Ne5 8. Nxe5 Bxd1 9. Bxf7+ Ke7 10. Nd5#
1116	C44	Scotch	Goering gambit	1. e4 e5 2. Nf3 Nc6 3. d4 exd4 4. c3 dxc3 5. Nxc3 Bb4
1117	C44	Scotch gambit	Goering gambit, Bardeleben Variation 	1. e4 e5 2. Nf3 Nc6 3. d4 exd4 4. c3 dxc3 5. Nxc3 Bb4 6. Bc4 Nf6
1118	C44	Scotch gambit	N/A	1. e4 e5 2. Nf3 Nc6 3. d4 exd4 4. Bc4
1119	C44	Scotch gambit	Anderssen (Paulsen, Suhle) counter-attack	1. e4 e5 2. Nf3 Nc6 3. d4 exd4 4. Bc4 Bc5 5. O-O d6 6. c3 Bg4
1120	C44	Scotch gambit	N/A	1. e4 e5 2. Nf3 Nc6 3. d4 exd4 4. Bc4 Bc5 5. Ng5
1121	C44	Scotch gambit	Cochrane-Shumov defense	1. e4 e5 2. Nf3 Nc6 3. d4 exd4 4. Bc4 Bc5 5. Ng5 Nh6 6. Nxf7 Nxf7 7. Bxf7+ Kxf7 8. Qh5+ g6 9. Qxc5 d5
1122	C44	Scotch gambit	Vitzhum attack	1. e4 e5 2. Nf3 Nc6 3. d4 exd4 4. Bc4 Bc5 5. Ng5 Nh6 6. Qh5
1123	C44	Scotch gambit	N/A	1. e4 e5 2. Nf3 Nc6 3. d4 exd4 4. Bc4 Bb4+
1124	C44	Scotch gambit	Hanneken Variation 	1. e4 e5 2. Nf3 Nc6 3. d4 exd4 4. Bc4 Bb4+ 5. c3 dxc3 6. O-O cxb2 7. Bxb2 Nf6 8. Ng5 O-O 9. e5 Nxe5
1125	C44	Scotch gambit	N/A	1. e4 e5 2. Nf3 Nc6 3. d4 exd4 4. Bc4 Bb4+ 5. c3 dxc3 6. bxc3
1126	C44	Scotch gambit	Cochrane Variation 	1. e4 e5 2. Nf3 Nc6 3. d4 exd4 4. Bc4 Bb4+ 5. c3 dxc3 6. bxc3 Ba5 7. e5
1127	C44	Scotch gambit	Benima defense	1. e4 e5 2. Nf3 Nc6 3. d4 exd4 4. Bc4 Be7
1128	C45	Scotch game	Dubois-Reti defense	1. e4 e5 2. Nf3 Nc6 3. d4 exd4 4. Bc4 Nf6
1129	C45	Scotch	N/A	1. e4 e5 2. Nf3 Nc6 3. d4 exd4 4. Nxd4
1130	C45	Scotch	Ghulam Kassim Variation 	1. e4 e5 2. Nf3 Nc6 3. d4 exd4 4. Nxd4 Nxd4 5. Qxd4 d6 6. Bd3
1131	C45	Scotch	Pulling counter-attack	1. e4 e5 2. Nf3 Nc6 3. d4 exd4 4. Nxd4 Qh4
1132	C45	Scotch	Horwitz attack	1. e4 e5 2. Nf3 Nc6 3. d4 exd4 4. Nxd4 Qh4 5. Nb5
1133	C45	Scotch game	Berger Variation 	1. e4 e5 2. Nf3 Nc6 3. d4 exd4 4. Nxd4 Qh4 5. Nb5 Bb4+ 6. Nd2 Qxe4+ 7. Be2 Qxg2 8. Bf3 Qh3 9. Nxc7+ Kd8 10. Nxa8 Nf6 11. a3
1134	C45	Scotch	N/A	1. e4 e5 2. Nf3 Nc6 3. d4 exd4 4. Nxd4 Qh4 5. Nb5 Bb4+ 6. Bd2
1135	C45	Scotch	Rosenthal Variation 	1. e4 e5 2. Nf3 Nc6 3. d4 exd4 4. Nxd4 Qh4 5. Nb5 Bb4+ 6. Bd2 Qxe4+ 7. Be2 Kd8 8. O-O Bxd2 9. Nxd2 Qg6
1136	C45	Scotch	Fraser attack	1. e4 e5 2. Nf3 Nc6 3. d4 exd4 4. Nxd4 Qh4 5. Nf3
1137	C45	Scotch	Steinitz Variation 	1. e4 e5 2. Nf3 Nc6 3. d4 exd4 4. Nxd4 Qh4 5. Nc3
1138	C45	Scotch	Schmidt Variation 	1. e4 e5 2. Nf3 Nc6 3. d4 exd4 4. Nxd4 Nf6
1139	C45	Scotch	Mieses Variation 	1. e4 e5 2. Nf3 Nc6 3. d4 exd4 4. Nxd4 Nf6 5. Nxc6 bxc6 6. e5
1140	C45	Scotch game	Tartakower Variation 	1. e4 e5 2. Nf3 Nc6 3. d4 exd4 4. Nxd4 Nf6 5. Nxc6 bxc6 6. Nd2
1141	C45	Scotch	N/A	1. e4 e5 2. Nf3 Nc6 3. d4 exd4 4. Nxd4 Bc5
1142	C45	Scotch	Blackburne attack	1. e4 e5 2. Nf3 Nc6 3. d4 exd4 4. Nxd4 Bc5 5. Be3 Qf6 6. c3 Nge7 7. Qd2
1143	C45	Scotch	Gottschall Variation 	1. e4 e5 2. Nf3 Nc6 3. d4 exd4 4. Nxd4 Bc5 5. Be3 Qf6 6. c3 Nge7 7. Qd2 d5 8. Nb5 Bxe3 9. Qxe3 O-O 10. Nxc7 Rb8 11. Nxd5 Nxd5 12. exd5 Nb4
1144	C45	Scotch	Paulsen attack	1. e4 e5 2. Nf3 Nc6 3. d4 exd4 4. Nxd4 Bc5 5. Be3 Qf6 6. c3 Nge7 7. Bb5
1145	C45	Scotch	Paulsen, Gunsberg defense	1. e4 e5 2. Nf3 Nc6 3. d4 exd4 4. Nxd4 Bc5 5. Be3 Qf6 6. c3 Nge7 7. Bb5 Nd8
1146	C45	Scotch	Meitner Variation 	1. e4 e5 2. Nf3 Nc6 3. d4 exd4 4. Nxd4 Bc5 5. Be3 Qf6 6. c3 Nge7 7. Nc2
1147	C45	Scotch	Blumenfeld attack	1. e4 e5 2. Nf3 Nc6 3. d4 exd4 4. Nxd4 Bc5 5. Be3 Qf6 6. Nb5
1148	C45	Scotch	Potter Variation 	1. e4 e5 2. Nf3 Nc6 3. d4 exd4 4. Nxd4 Bc5 5. Nb3
1149	C46	Three knights game	Romanishin Variation 	1. e4 e5 2. Nf3 Nc6 3. d4 exd4 4. Nxd4 Bc5 5. Nb3 Bb4+
1150	C46	Three knights	N/A	1. e4 e5 2. Nf3 Nc6 3. Nc3
1151	C46	Three knights	Schlechter Variation 	1. e4 e5 2. Nf3 Nc6 3. Nc3 Bb4 4. Nd5 Nf6
1152	C46	Three knights	Winawer defense (Gothic defense)	1. e4 e5 2. Nf3 Nc6 3. Nc3 f5
1153	C46	Three knights	Steinitz Variation 	1. e4 e5 2. Nf3 Nc6 3. Nc3 g6
1154	C46	Four knights game	Steinitz, Rosenthal Variation 	1. e4 e5 2. Nf3 Nc6 3. Nc3 g6 4. d4 exd4 5. Nd5
1155	C46	Four knights	N/A	1. e4 e5 2. Nf3 Nc6 3. Nc3 Nf6
1156	C46	Four knights	Schultze-Mueller gambit	1. e4 e5 2. Nf3 Nc6 3. Nc3 Nf6 4. Nxe5
1157	C46	Four knights	Italian Variation 	1. e4 e5 2. Nf3 Nc6 3. Nc3 Nf6 4. Bc4
1158	C47	Four knights	Gunsberg Variation 	1. e4 e5 2. Nf3 Nc6 3. Nc3 Nf6 4. a3
1159	C47	Four knights	Scotch Variation 	1. e4 e5 2. Nf3 Nc6 3. Nc3 Nf6 4. d4
1160	C47	Four knights	Scotch, Krause Variation 	1. e4 e5 2. Nf3 Nc6 3. Nc3 Nf6 4. d4 Bb4 5. Nxe5
1161	C47	Four knights	Scotch, 4...exd4	1. e4 e5 2. Nf3 Nc6 3. Nc3 Nf6 4. d4 exd4
1162	C48	Four knights	Belgrade gambit	1. e4 e5 2. Nf3 Nc6 3. Nc3 Nf6 4. d4 exd4 5. Nd5
1163	C48	Four knights	Spanish Variation 	1. e4 e5 2. Nf3 Nc6 3. Nc3 Nf6 4. Bb5
1164	C48	Four knights	Ranken Variation 	1. e4 e5 2. Nf3 Nc6 3. Nc3 Nf6 4. Bb5 a6 5. Bxc6
1165	C48	Four knights	Spielmann Variation 	1. e4 e5 2. Nf3 Nc6 3. Nc3 Nf6 4. Bb5 a6 5. Bxc6 dxc6 6. Nxe5 Nxe4 7. Nxe4 Qd4 8. O-O Qxe5 9. Re1 Be6 10. d4 Qd5
1166	C48	Four knights	Spanish, Classical defense	1. e4 e5 2. Nf3 Nc6 3. Nc3 Nf6 4. Bb5 Bc5
1167	C48	Four knights	Bardeleben Variation 	1. e4 e5 2. Nf3 Nc6 3. Nc3 Nf6 4. Bb5 Bc5 5. O-O O-O 6. Nxe5 Nxe5 7. d4 Bd6 8. f4 Nc6 9. e5 Bb4
1168	C48	Four knights	Marshall Variation 	1. e4 e5 2. Nf3 Nc6 3. Nc3 Nf6 4. Bb5 Bc5 5. O-O O-O 6. Nxe5 Nd4
1169	C48	Four knights	Rubinstein counter-gambit	1. e4 e5 2. Nf3 Nc6 3. Nc3 Nf6 4. Bb5 Nd4
1170	C48	Four knights	Rubinstein counter-gambit, Bogolyubov Variation 	1. e4 e5 2. Nf3 Nc6 3. Nc3 Nf6 4. Bb5 Nd4 5. Nxe5 Qe7 6. f4
1171	C48	Four knights	Rubinstein counter-gambit, 5.Be2	1. e4 e5 2. Nf3 Nc6 3. Nc3 Nf6 4. Bb5 Nd4 5. Be2
1172	C48	Four knights	Rubinstein counter-gambit Maroczy Variation 	1. e4 e5 2. Nf3 Nc6 3. Nc3 Nf6 4. Bb5 Nd4 5. Be2 Nxf3+ 6. Bxf3 Bc5 7. O-O O-O 8. d3 d6 9. Na4 Bb6
1173	C48	Four knights	Rubinstein counter-gambit, Exchange Variation 	1. e4 e5 2. Nf3 Nc6 3. Nc3 Nf6 4. Bb5 Nd4 5. Nxd4
1174	C49	Four knights	Rubinstein counter-gambit, Henneberger Variation 	1. e4 e5 2. Nf3 Nc6 3. Nc3 Nf6 4. Bb5 Nd4 5. O-O
1175	C49	Four knights	double Ruy Lopez	1. e4 e5 2. Nf3 Nc6 3. Nc3 Nf6 4. Bb5 Bb4
1176	C49	Four knights	Gunsberg counter-attack	1. e4 e5 2. Nf3 Nc6 3. Nc3 Nf6 4. Bb5 Bb4 5. O-O O-O 6. Nd5 Nxd5 7. exd5 e4
1177	C49	Four knights	double Ruy Lopez	1. e4 e5 2. Nf3 Nc6 3. Nc3 Nf6 4. Bb5 Bb4 5. O-O O-O 6. d3
1178	C49	Four knights	Alatortsev Variation 	1. e4 e5 2. Nf3 Nc6 3. Nc3 Nf6 4. Bb5 Bb4 5. O-O O-O 6. d3 Qe7 7. Ne2 d5
1179	C49	Four knights	N/A	1. e4 e5 2. Nf3 Nc6 3. Nc3 Nf6 4. Bb5 Bb4 5. O-O O-O 6. d3 Bxc3
1180	C49	Four knights	Janowski Variation 	1. e4 e5 2. Nf3 Nc6 3. Nc3 Nf6 4. Bb5 Bb4 5. O-O O-O 6. d3 Bxc3 7. bxc3 d6 8. Re1
1181	C49	Four knights	Svenonius Variation 	1. e4 e5 2. Nf3 Nc6 3. Nc3 Nf6 4. Bb5 Bb4 5. O-O O-O 6. d3 Bxc3 7. bxc3 d5
1182	C49	Four knights	Symmetrical Variation 	1. e4 e5 2. Nf3 Nc6 3. Nc3 Nf6 4. Bb5 Bb4 5. O-O O-O 6. d3 d6
1183	C49	Four knights	Symmetrical, Metger unpin	1. e4 e5 2. Nf3 Nc6 3. Nc3 Nf6 4. Bb5 Bb4 5. O-O O-O 6. d3 d6 7. Bg5 Bxc3 8. bxc3 Qe7
1184	C49	Four knights	Symmetrical, Capablanca Variation 	1. e4 e5 2. Nf3 Nc6 3. Nc3 Nf6 4. Bb5 Bb4 5. O-O O-O 6. d3 d6 7. Bg5 Bxc3 8. bxc3 Qe7 9. Re1 Nd8 10. d4 Bg4
1185	C49	Four knights	Symmetrical, Pillsbury Variation 	1. e4 e5 2. Nf3 Nc6 3. Nc3 Nf6 4. Bb5 Bb4 5. O-O O-O 6. d3 d6 7. Bg5 Ne7
1186	C49	Four knights	Symmetrical, Blake Variation 	1. e4 e5 2. Nf3 Nc6 3. Nc3 Nf6 4. Bb5 Bb4 5. O-O O-O 6. d3 d6 7. Bg5 Ne7 8. Nh4 c6 9. Bc4 d5 10. Bb3 Qd6
1187	C49	Four knights	Symmetrical, Tarrasch Variation 	1. e4 e5 2. Nf3 Nc6 3. Nc3 Nf6 4. Bb5 Bb4 5. O-O O-O 6. d3 d6 7. Bg5 Be6
1188	C49	Four knights	Symmetrical, Maroczy system	1. e4 e5 2. Nf3 Nc6 3. Nc3 Nf6 4. Bb5 Bb4 5. O-O O-O 6. d3 d6 7. Ne2
1189	C50	King's pawn game	Nimzovich (Paulsen) Variation 	1. e4 e5 2. Nf3 Nc6 3. Nc3 Nf6 4. Bb5 Bb4 5. O-O O-O 6. Bxc6
1190	C50	Blackburne shilling gambit	N/A	1. e4 e5 2. Nf3 Nc6 3. Bc4
1191	C50	Rousseau gambit	N/A	1. e4 e5 2. Nf3 Nc6 3. Bc4 Nd4 4. Nxe5 Qg5 5. Nxf7 Qxg2 6. Rf1 Qxe4+ 7. Be2 Nf3#
1192	C50	Hungarian defense	N/A	1. e4 e5 2. Nf3 Nc6 3. Bc4 f5
1193	C50	Hungarian defense	N/A	1. e4 e5 2. Nf3 Nc6 3. Bc4 Be7
1194	C50	Giuoco Piano	Tartakower Variation 	1. e4 e5 2. Nf3 Nc6 3. Bc4 Be7 4. d4 exd4 5. c3 Nf6 6. e5 Ne4
1195	C50	Giuoco Piano	N/A	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5
1196	C50	Giuoco Piano	Four knights Variation 	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5 4. Nc3 Nf6
1197	C50	Giuoco Pianissimo	Jerome gambit	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5 4. Bxf7+
1198	C50	Giuoco Pianissimo	N/A	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5 4. d3
1199	C50	Giuoco Pianissimo	Dubois Variation 	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5 4. d3 f5 5. Ng5 f4
1200	C50	Giuoco Pianissimo	N/A	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5 4. d3 Nf6
1201	C50	Giuoco Pianissimo	Italian Four knights Variation 	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5 4. d3 Nf6 5. Nc3
1202	C51	Evans gambit declined	Canal Variation 	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5 4. d3 Nf6 5. Nc3 d6 6. Bg5
1203	C51	Evans gambit declined, Lange Variation 	N/A	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5 4. b4
1204	C51	Evans gambit declined, Pavlov Variation 	N/A	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5 4. b4 Bb6 5. b5 Na5 6. Nxe5 Nh6
1205	C51	Evans gambit declined, Hirschbach Variation 	N/A	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5 4. b4 Bb6 5. b5 Na5 6. Nxe5 Nh6 7. d4 d6 8. Bxh6 dxe5 9. Bxg7 Rg8 10. Bxf7+ Kxf7 11. Bxe5 Qg5 12. Nd2
1206	C51	Evans gambit declined, Vasquez Variation 	N/A	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5 4. b4 Bb6 5. b5 Na5 6. Nxe5 Qg5
1207	C51	Evans gambit declined, Hicken Variation 	N/A	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5 4. b4 Bb6 5. b5 Na5 6. Nxe5 Qg5 7. Bxf7+ Ke7 8. Qh5
1208	C51	Evans gambit declined, 5.a4	N/A	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5 4. b4 Bb6 5. b5 Na5 6. Nxe5 Qg5 7. Qf3 Qxe5 8. Qxf7+ Kd8 9. Bb2
1209	C51	Evans gambit declined, Showalter Variation 	N/A	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5 4. b4 Bb6 5. a4
1210	C51	Evans gambit declined, Cordel Variation 	N/A	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5 4. b4 Bb6 5. a4 a6 6. Nc3
1211	C51	Evans counter-gambit	N/A	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5 4. b4 Bb6 5. Bb2
1212	C51	Evans gambit	N/A	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5 4. b4 d5
1213	C51	Evans gambit	N/A	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5 4. b4 Bxb4
1214	C51	Evans gambit	normal Variation 	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5 4. b4 Bxb4 5. c3 Bc5 6. d4 exd4 7. O-O d6 8. cxd4 Bb6
1215	C51	Evans gambit	Ulvestad Variation 	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5 4. b4 Bxb4 5. c3 Bc5 6. d4 exd4 7. O-O d6 8. cxd4 Bb6 9. d5 Na5 10. Bb2
1216	C51	Evans gambit	Paulsen Variation 	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5 4. b4 Bxb4 5. c3 Bc5 6. d4 exd4 7. O-O d6 8. cxd4 Bb6 9. d5 Na5 10. Bb2 Ne7
1217	C51	Evans gambit	Morphy attack	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5 4. b4 Bxb4 5. c3 Bc5 6. d4 exd4 7. O-O d6 8. cxd4 Bb6 9. Nc3
1218	C51	Evans gambit	Goering attack	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5 4. b4 Bxb4 5. c3 Bc5 6. d4 exd4 7. O-O d6 8. cxd4 Bb6 9. Nc3 Na5 10. Bg5
1219	C51	Evans gambit	Steinitz Variation 	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5 4. b4 Bxb4 5. c3 Bc5 6. d4 exd4 7. O-O d6 8. cxd4 Bb6 9. Nc3 Na5 10. Bg5 f6 11. Be3
1220	C51	Evans gambit	N/A	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5 4. b4 Bxb4 5. c3 Bc5 6. d4 exd4 7. O-O d6 8. cxd4 Bb6 9. Nc3 Bg4
1221	C51	Evans gambit	Fraser attack	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5 4. b4 Bxb4 5. c3 Bc5 6. d4 exd4 7. O-O d6 8. cxd4 Bb6 9. Nc3 Bg4 10. Qa4
1222	C51	Evans gambit	Fraser-Mortimer attack	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5 4. b4 Bxb4 5. c3 Bc5 6. d4 exd4 7. O-O d6 8. cxd4 Bb6 9. Nc3 Bg4 10. Qa4 Bd7 11. Qb3 Na5 12. Bxf7+ Kf8 13. Qc2
1223	C51	Evans gambit	Stone-Ware Variation 	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5 4. b4 Bxb4 5. c3 Bd6
1224	C51	Evans gambit	Mayet defense	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5 4. b4 Bxb4 5. c3 Bf8
1225	C51	Evans gambit	5...Be7	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5 4. b4 Bxb4 5. c3 Be7
1226	C52	Evans gambit	Cordel Variation 	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5 4. b4 Bxb4 5. c3 Be7 6. d4 Na5
1227	C52	Evans gambit	N/A	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5 4. b4 Bxb4 5. c3 Ba5
1228	C52	Evans gambit	compromised defense	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5 4. b4 Bxb4 5. c3 Ba5 6. d4 exd4 7. O-O dxc3
1229	C52	Evans gambit	compromised defense, Paulsen Variation 	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5 4. b4 Bxb4 5. c3 Ba5 6. d4 exd4 7. O-O dxc3 8. Qb3 Qf6 9. e5 Qg6 10. Nxc3 Nge7 11. Ba3
1230	C52	Evans gambit	compromised defense, Potter Variation 	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5 4. b4 Bxb4 5. c3 Ba5 6. d4 exd4 7. O-O dxc3 8. Qb3 Qf6 9. e5 Qg6 10. Nxc3 Nge7 11. Rd1
1231	C52	Evans gambit	Leonhardt Variation 	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5 4. b4 Bxb4 5. c3 Ba5 6. d4 b5
1232	C52	Evans gambit	N/A	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5 4. b4 Bxb4 5. c3 Ba5 6. d4 d6
1233	C52	Evans gambit	Tartakower attack	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5 4. b4 Bxb4 5. c3 Ba5 6. d4 d6 7. Qb3
1234	C52	Evans gambit	Levenfish Variation 	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5 4. b4 Bxb4 5. c3 Ba5 6. d4 d6 7. Qb3 Qd7 8. dxe5 dxe5 9. O-O Bb6 10. Ba3 Na5 11. Nxe5
1235	C52	Evans gambit	Sokolsky Variation 	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5 4. b4 Bxb4 5. c3 Ba5 6. d4 d6 7. Bg5
1236	C52	Evans gambit	N/A	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5 4. b4 Bxb4 5. c3 Ba5 6. O-O
1237	C52	Evans gambit	Richardson attack	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5 4. b4 Bxb4 5. c3 Ba5 6. O-O Nf6 7. d4 O-O 8. Nxe5
1238	C52	Evans gambit	N/A	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5 4. b4 Bxb4 5. c3 Ba5 6. O-O d6
1239	C52	Evans gambit	Waller attack	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5 4. b4 Bxb4 5. c3 Ba5 6. O-O d6 7. d4 exd4 8. Qb3
1240	C52	Evans gambit	Lasker defense	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5 4. b4 Bxb4 5. c3 Ba5 6. O-O d6 7. d4 Bb6
1241	C52	Evans gambit	Sanders-Alapin Variation 	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5 4. b4 Bxb4 5. c3 Ba5 6. O-O d6 7. d4 Bd7
1242	C53	Giuoco Piano	Alapin-Steinitz Variation 	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5 4. b4 Bxb4 5. c3 Ba5 6. O-O d6 7. d4 Bg4
1243	C53	Giuoco Piano	N/A	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5 4. c3
1244	C53	Giuoco Piano	LaBourdonnais Variation 	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5 4. c3 d6 5. d4 exd4 6. cxd4 Bb6
1245	C53	Giuoco Piano	close Variation 	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5 4. c3 Qe7
1246	C53	Giuoco Piano	center-hOlding Variation 	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5 4. c3 Qe7 5. d4 Bb6
1247	C53	Giuoco Piano	Tarrasch Variation 	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5 4. c3 Qe7 5. d4 Bb6 6. O-O Nf6 7. a4 a6 8. Re1 d6 9. h3
1248	C53	Giuoco Piano	Mestel Variation 	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5 4. c3 Qe7 5. d4 Bb6 6. Bg5
1249	C53	Giuoco Piano	Eisinger Variation 	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5 4. c3 Qe7 5. d4 Bb6 6. d5 Nb8 7. d6
1250	C53	Giuoco Piano	N/A	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5 4. c3 Nf6
1251	C53	Giuoco Piano	Bird's attack	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5 4. c3 Nf6 5. b4
1252	C53	Giuoco Piano	N/A	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5 4. c3 Nf6 5. d4
1253	C53	Giuoco Piano	Ghulam Kassim Variation 	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5 4. c3 Nf6 5. d4 exd4 6. e5 Ne4 7. Bd5 Nxf2 8. Kxf2 dxc3+ 9. Kg3
1254	C53	Giuoco Piano	N/A	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5 4. c3 Nf6 5. d4 exd4 6. e5 d5
1255	C54	Giuoco Piano	Anderssen Variation 	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5 4. c3 Nf6 5. d4 exd4 6. e5 d5 7. Bb5 Ne4 8. cxd4 Bb4+
1256	C54	Giuoco Piano	N/A	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5 4. c3 Nf6 5. d4 exd4 6. cxd4
1257	C54	Giuoco Piano	Krause Variation 	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5 4. c3 Nf6 5. d4 exd4 6. cxd4 Bb4+ 7. Bd2 Nxe4 8. Bxb4 Nxb4 9. Bxf7+ Kxf7 10. Qb3+ d5 11. Ne5+ Kf6 12. f3
1258	C54	Giuoco Piano	Cracow Variation 	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5 4. c3 Nf6 5. d4 exd4 6. cxd4 Bb4+ 7. Kf1
1259	C54	Giuoco Piano	Greco's attack	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5 4. c3 Nf6 5. d4 exd4 6. cxd4 Bb4+ 7. Nc3
1260	C54	Giuoco Piano	Greco Variation 	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5 4. c3 Nf6 5. d4 exd4 6. cxd4 Bb4+ 7. Nc3 Nxe4 8. O-O Nxc3
1261	C54	Giuoco Piano	Bernstein Variation 	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5 4. c3 Nf6 5. d4 exd4 6. cxd4 Bb4+ 7. Nc3 Nxe4 8. O-O Nxc3 9. bxc3 Bxc3 10. Qb3 d5
1262	C54	Giuoco Piano	Aitken Variation 	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5 4. c3 Nf6 5. d4 exd4 6. cxd4 Bb4+ 7. Nc3 Nxe4 8. O-O Nxc3 9. bxc3 Bxc3 10. Ba3
1263	C54	Giuoco Piano	N/A	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5 4. c3 Nf6 5. d4 exd4 6. cxd4 Bb4+ 7. Nc3 Nxe4 8. O-O Bxc3
1264	C54	Giuoco Piano	Steinitz Variation 	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5 4. c3 Nf6 5. d4 exd4 6. cxd4 Bb4+ 7. Nc3 Nxe4 8. O-O Bxc3 9. bxc3 d5 10. Ba3
1265	C54	Giuoco Piano	Moeller (Therkatz) attack	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5 4. c3 Nf6 5. d4 exd4 6. cxd4 Bb4+ 7. Nc3 Nxe4 8. O-O Bxc3 9. d5
1266	C54	Giuoco Piano	Therkatz-Herzog Variation 	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5 4. c3 Nf6 5. d4 exd4 6. cxd4 Bb4+ 7. Nc3 Nxe4 8. O-O Bxc3 9. d5 Bf6 10. Re1 Ne7 11. Rxe4 d6 12. Bg5 Bxg5 13. Nxg5 O-O 14. Nxh7
1267	C55	Two knights defense	Moeller, bayonet attack	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5 4. c3 Nf6 5. d4 exd4 6. cxd4 Bb4+ 7. Nc3 Nxe4 8. O-O Bxc3 9. d5 Bf6 10. Re1 Ne7 11. Rxe4 d6 12. g4
1268	C55	Giuoco piano	N/A	1. e4 e5 2. Nf3 Nc6 3. Bc4 Nf6
1269	C55	Giuoco piano	Rosentreter Variation 	1. e4 e5 2. Nf3 Nc6 3. Bc4 Nf6 4. O-O Bc5 5. d4 Bxd4 6. Nxd4 Nxd4 7. Bg5 h6 8. Bh4 g5 9. f4
1270	C55	Giuoco piano	N/A	1. e4 e5 2. Nf3 Nc6 3. Bc4 Nf6 4. O-O Bc5 5. d4 Bxd4 6. Nxd4 Nxd4 7. Bg5 d6
1271	C55	Two knights defense (Modern Bishop's Opening)	Holzhausen attack	1. e4 e5 2. Nf3 Nc6 3. Bc4 Nf6 4. O-O Bc5 5. d4 Bxd4 6. Nxd4 Nxd4 7. Bg5 d6 8. f4 Qe7 9. fxe5 dxe5 10. Nc3
1272	C55	Two knights defense	N/A	1. e4 e5 2. Nf3 Nc6 3. Bc4 Nf6 4. d3
1273	C55	Two knights defense, Keidanz Variation 	N/A	1. e4 e5 2. Nf3 Nc6 3. Bc4 Nf6 4. d4
1274	C55	Two knights defense, Perreux Variation 	N/A	1. e4 e5 2. Nf3 Nc6 3. Bc4 Nf6 4. d4 exd4 5. e5 d5 6. Bb5 Ne4 7. Nxd4 Bc5 8. Nxc6 Bxf2+ 9. Kf1 Qh4
1275	C55	Two knights defense	N/A	1. e4 e5 2. Nf3 Nc6 3. Bc4 Nf6 4. d4 exd4 5. Ng5
1276	C55	Two knights	N/A	1. e4 e5 2. Nf3 Nc6 3. Bc4 Nf6 4. d4 exd4 5. O-O
1277	C55	Two knights	Max Lange attack	1. e4 e5 2. Nf3 Nc6 3. Bc4 Nf6 4. d4 exd4 5. O-O Bc5 6. e5
1278	C55	Two knights	Max Lange attack, Berger Variation 	1. e4 e5 2. Nf3 Nc6 3. Bc4 Nf6 4. d4 exd4 5. O-O Bc5 6. e5 d5 7. exf6 dxc4 8. Re1+ Be6 9. Ng5 Qd5 10. Nc3 Qf5 11. g4 Qg6 12. Nce4 Bb6 13. f4 O-O-O
1279	C55	Two knights	Max Lange attack, Marshall Variation 	1. e4 e5 2. Nf3 Nc6 3. Bc4 Nf6 4. d4 exd4 5. O-O Bc5 6. e5 d5 7. exf6 dxc4 8. Re1+ Be6 9. Ng5 Qd5 10. Nc3 Qf5 11. Nce4
1280	C55	Two knights	Max Lange attack, Rubinstein Variation 	1. e4 e5 2. Nf3 Nc6 3. Bc4 Nf6 4. d4 exd4 5. O-O Bc5 6. e5 d5 7. exf6 dxc4 8. Re1+ Be6 9. Ng5 Qd5 10. Nc3 Qf5 11. Nce4 Bf8
1281	C55	Two knights	Max Lange attack, Loman defense	1. e4 e5 2. Nf3 Nc6 3. Bc4 Nf6 4. d4 exd4 5. O-O Bc5 6. e5 d5 7. exf6 dxc4 8. Re1+ Be6 9. Ng5 g6
1282	C55	Two knights	Max Lange attack, Schlechter Variation 	1. e4 e5 2. Nf3 Nc6 3. Bc4 Nf6 4. d4 exd4 5. O-O Bc5 6. e5 d5 7. exf6 dxc4 8. Re1+ Be6 9. fxg7
1283	C55	Two knights	Max Lange attack, Steinitz Variation 	1. e4 e5 2. Nf3 Nc6 3. Bc4 Nf6 4. d4 exd4 5. O-O Bc5 6. e5 Ng4
1284	C56	Two knights defense	Max Lange attack, Krause Variation 	1. e4 e5 2. Nf3 Nc6 3. Bc4 Nf6 4. d4 exd4 5. O-O Bc5 6. e5 Ng4 7. c3
1285	C56	Two knights defense	N/A	1. e4 e5 2. Nf3 Nc6 3. Bc4 Nf6 4. d4 exd4 5. O-O Nxe4
1286	C56	Two knights defense	Yurdansky attack	1. e4 e5 2. Nf3 Nc6 3. Bc4 Nf6 4. d4 exd4 5. O-O Nxe4 6. Re1 d5 7. Bxd5 Qxd5 8. Nc3 Qa5 9. Nxe4 Be6 10. Bg5 h6 11. Bh4 g5 12. Nf6+ Ke7 13. b4
1287	C57	Two knights defense	Canal Variation 	1. e4 e5 2. Nf3 Nc6 3. Bc4 Nf6 4. d4 exd4 5. O-O Nxe4 6. Re1 d5 7. Nc3
1288	C57	Two knights defense	N/A	1. e4 e5 2. Nf3 Nc6 3. Bc4 Nf6 4. Ng5
1289	C57	Two knights defense	Wilkes Barre (Traxler) Variation 	1. e4 e5 2. Nf3 Nc6 3. Bc4 Nf6 4. Ng5 Bc5
1290	C57	Two knights defense	Ulvestad Variation 	1. e4 e5 2. Nf3 Nc6 3. Bc4 Nf6 4. Ng5 d5 5. exd5 b5
1291	C57	Two knights defense	Fritz Variation 	1. e4 e5 2. Nf3 Nc6 3. Bc4 Nf6 4. Ng5 d5 5. exd5 Nd4
1292	C57	Two knights defense	Fritz, Gruber Variation 	1. e4 e5 2. Nf3 Nc6 3. Bc4 Nf6 4. Ng5 d5 5. exd5 Nd4 6. c3 b5 7. Bf1 Nxd5 8. Ne4
1293	C57	Two knights defense	Lolli attack	1. e4 e5 2. Nf3 Nc6 3. Bc4 Nf6 4. Ng5 d5 5. exd5 Nxd5 6. d4
1294	C57	Two knights defense	Pincus Variation 	1. e4 e5 2. Nf3 Nc6 3. Bc4 Nf6 4. Ng5 d5 5. exd5 Nxd5 6. d4 Bb4+
1295	C57	Two knights defense	Fegatello attack	1. e4 e5 2. Nf3 Nc6 3. Bc4 Nf6 4. Ng5 d5 5. exd5 Nxd5 6. Nxf7
1296	C57	Two knights defense	Fegatello attack, Leonhardt Variation 	1. e4 e5 2. Nf3 Nc6 3. Bc4 Nf6 4. Ng5 d5 5. exd5 Nxd5 6. Nxf7 Kxf7 7. Qf3+ Ke6 8. Nc3 Nb4 9. Qe4 c6 10. a3 Na6 11. d4 Nc7
1297	C58	Two knights defense	Fegatello attack, Polerio defense	1. e4 e5 2. Nf3 Nc6 3. Bc4 Nf6 4. Ng5 d5 5. exd5 Nxd5 6. Nxf7 Kxf7 7. Qf3+ Ke6 8. Nc3 Ne7
1298	C58	Two knights defense	N/A	1. e4 e5 2. Nf3 Nc6 3. Bc4 Nf6 4. Ng5 d5 5. exd5 Na5
1299	C58	Two knights defense	Kieseritsky Variation 	1. e4 e5 2. Nf3 Nc6 3. Bc4 Nf6 4. Ng5 d5 5. exd5 Na5 6. d3
1300	C58	Two knights defense	Yankovich Variation 	1. e4 e5 2. Nf3 Nc6 3. Bc4 Nf6 4. Ng5 d5 5. exd5 Na5 6. d3 h6 7. Nf3 e4 8. Qe2 Nxc4 9. dxc4 Bc5 10. Nfd2
1301	C58	Two knights defense	Maroczy Variation 	1. e4 e5 2. Nf3 Nc6 3. Bc4 Nf6 4. Ng5 d5 5. exd5 Na5 6. d3 h6 7. Nf3 e4 8. Qe2 Nxc4 9. dxc4 Be7
1302	C58	Two knights defense	N/A	1. e4 e5 2. Nf3 Nc6 3. Bc4 Nf6 4. Ng5 d5 5. exd5 Na5 6. Bb5+
1303	C58	Two knights defense	Bogolyubov Variation 	1. e4 e5 2. Nf3 Nc6 3. Bc4 Nf6 4. Ng5 d5 5. exd5 Na5 6. Bb5+ c6 7. dxc6 bxc6 8. Qf3
1304	C58	Two knights defense	Paoli Variation 	1. e4 e5 2. Nf3 Nc6 3. Bc4 Nf6 4. Ng5 d5 5. exd5 Na5 6. Bb5+ c6 7. dxc6 bxc6 8. Qf3 Qc7 9. Bd3
1305	C58	Two knights defense	Colman Variation 	1. e4 e5 2. Nf3 Nc6 3. Bc4 Nf6 4. Ng5 d5 5. exd5 Na5 6. Bb5+ c6 7. dxc6 bxc6 8. Qf3 Rb8
1306	C58	Two knights defense	Blackburne Variation 	1. e4 e5 2. Nf3 Nc6 3. Bc4 Nf6 4. Ng5 d5 5. exd5 Na5 6. Bb5+ c6 7. dxc6 bxc6 8. Qf3 cxb5
1307	C59	Two knights defense	N/A	1. e4 e5 2. Nf3 Nc6 3. Bc4 Nf6 4. Ng5 d5 5. exd5 Na5 6. Bb5+ c6 7. dxc6 bxc6 8. Be2
1308	C59	Two knights defense	N/A	1. e4 e5 2. Nf3 Nc6 3. Bc4 Nf6 4. Ng5 d5 5. exd5 Na5 6. Bb5+ c6 7. dxc6 bxc6 8. Be2 h6
1309	C59	Two knights defense	Knorre Variation 	1. e4 e5 2. Nf3 Nc6 3. Bc4 Nf6 4. Ng5 d5 5. exd5 Na5 6. Bb5+ c6 7. dxc6 bxc6 8. Be2 h6 9. Nf3 e4 10. Ne5 Bd6 11. d4 Qc7 12. Bd2
1310	C59	Two knights defense	Goering Variation 	1. e4 e5 2. Nf3 Nc6 3. Bc4 Nf6 4. Ng5 d5 5. exd5 Na5 6. Bb5+ c6 7. dxc6 bxc6 8. Be2 h6 9. Nf3 e4 10. Ne5 Qc7
1311	C60	Ruy Lopez (Spanish Opening)	Steinitz Variation 	1. e4 e5 2. Nf3 Nc6 3. Bc4 Nf6 4. Ng5 d5 5. exd5 Na5 6. Bb5+ c6 7. dxc6 bxc6 8. Be2 h6 9. Nh3
1312	C60	Ruy Lopez	N/A	1. e4 e5 2. Nf3 Nc6 3. Bb5
1313	C60	Ruy Lopez	Nuernberg Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 f6
1314	C60	Ruy Lopez	Pollock defense	1. e4 e5 2. Nf3 Nc6 3. Bb5 Na5
1315	C60	Ruy Lopez	Lucena defense	1. e4 e5 2. Nf3 Nc6 3. Bb5 Be7
1316	C60	Ruy Lopez	Vinogradov Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 Qe7
1317	C60	Ruy Lopez	Brentano defense	1. e4 e5 2. Nf3 Nc6 3. Bb5 g5
1318	C60	Ruy Lopez	Fianchetto (Smyslov/Barnes) defense	1. e4 e5 2. Nf3 Nc6 3. Bb5 g6
1319	C60	Ruy Lopez	Cozio defense	1. e4 e5 2. Nf3 Nc6 3. Bb5 Nge7
1320	C61	Ruy Lopez	Cozio defense, Paulsen Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 Nge7 4. Nc3 g6
1321	C61	Ruy Lopez	Bird's defense	1. e4 e5 2. Nf3 Nc6 3. Bb5 Nd4
1322	C62	Ruy Lopez	Bird's defense, Paulsen Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 Nd4 4. Nxd4 exd4 5. O-O Ne7
1323	C62	Ruy Lopez	Old Steinitz defense	1. e4 e5 2. Nf3 Nc6 3. Bb5 d6
1324	C62	Ruy Lopez	Old Steinitz defense, Nimzovich attack	1. e4 e5 2. Nf3 Nc6 3. Bb5 d6 4. d4 Bd7 5. Nc3 Nf6 6. Bxc6
1325	C63	Ruy Lopez	Old Steinitz defense, Semi-Duras Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 d6 4. d4 Bd7 5. c4
1326	C63	Ruy Lopez	Schliemann defense	1. e4 e5 2. Nf3 Nc6 3. Bb5 f5
1327	C64	Ruy Lopez	Schliemann defense, Berger Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 f5 4. Nc3
1328	C64	Ruy Lopez	Classical (Cordel) defense	1. e4 e5 2. Nf3 Nc6 3. Bb5 Bc5
1329	C64	Ruy Lopez	Classical defense, Zaitsev Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 Bc5 4. O-O Nd4 5. b4
1330	C64	Ruy Lopez	Classical defense, 4.c3	1. e4 e5 2. Nf3 Nc6 3. Bb5 Bc5 4. c3
1331	C64	Ruy Lopez	Classical defense, Benelux Variation  	1. e4 e5 2. Nf3 Nc6 3. Bb5 Bc5 4. c3 Nf6 5. O-O O-O 6. d4 Bb6
1332	C64	Ruy Lopez	Classical defense, Charousek Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 Bc5 4. c3 Bb6
1333	C64	Ruy Lopez	Classical defense, Boden Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 Bc5 4. c3 Qe7
1334	C65	Ruy Lopez	Cordel gambit	1. e4 e5 2. Nf3 Nc6 3. Bb5 Bc5 4. c3 f5
1335	C65	Ruy Lopez	Berlin defense	1. e4 e5 2. Nf3 Nc6 3. Bb5 Nf6
1336	C65	Ruy Lopez	Berlin defense, Nyholm attack	1. e4 e5 2. Nf3 Nc6 3. Bb5 Nf6 4. d4 exd4 5. O-O
1337	C65	Ruy Lopez	Berlin defense, Mortimer Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 Nf6 4. d3 Ne7
1338	C65	Ruy Lopez	Berlin defense, Mortimer trap	1. e4 e5 2. Nf3 Nc6 3. Bb5 Nf6 4. d3 Ne7 5. Nxe5 c6
1339	C65	Ruy Lopez	Berlin defense, Anderssen Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 Nf6 4. d3 d6 5. Bxc6+
1340	C65	Ruy Lopez	Berlin defense, Duras Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 Nf6 4. d3 d6 5. c4
1341	C65	Ruy Lopez	Berlin defense, Kaufmann Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 Nf6 4. d3 Bc5 5. Be3
1342	C65	Ruy Lopez	Berlin defense, 4.O-O	1. e4 e5 2. Nf3 Nc6 3. Bb5 Nf6 4. O-O
1343	C66	Ruy Lopez	Berlin defense, Beverwijk Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 Nf6 4. O-O Bc5
1344	C66	Ruy Lopez	Berlin defense, 4.O-O, d6	1. e4 e5 2. Nf3 Nc6 3. Bb5 Nf6 4. O-O d6
1345	C66	Ruy Lopez	Berlin defense, hedgehog Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 Nf6 4. O-O d6 5. d4 Bd7 6. Nc3 Be7
1346	C66	Ruy Lopez	Berlin defense, Tarrasch trap	1. e4 e5 2. Nf3 Nc6 3. Bb5 Nf6 4. O-O d6 5. d4 Bd7 6. Nc3 Be7 7. Re1 O-O
1347	C66	Ruy Lopez	Closed Berlin defense, Bernstein Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 Nf6 4. O-O d6 5. d4 Bd7 6. Nc3 Be7 7. Bg5
1348	C66	Ruy Lopez	Closed Berlin defense, Showalter Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 Nf6 4. O-O d6 5. d4 Bd7 6. Nc3 Be7 7. Bxc6
1349	C66	Ruy Lopez	Closed Berlin defense, Wolf Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 Nf6 4. O-O d6 5. d4 Bd7 6. Nc3 exd4
1350	C67	Ruy Lopez	Closed Berlin defense, Chigorin Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 Nf6 4. O-O d6 5. d4 Nd7
1351	C67	Ruy Lopez	Berlin defense, Open Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 Nf6 4. O-O Nxe4
1352	C67	Ruy Lopez	Open Berlin defense, l'Hermet Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 Nf6 4. O-O Nxe4 5. d4 Nd6 6. dxe5
1353	C67	Ruy Lopez	Open Berlin defense, Showalter Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 Nf6 4. O-O Nxe4 5. d4 Nd6 6. Ba4
1354	C67	Ruy Lopez	Open Berlin defense, 5...Be7	1. e4 e5 2. Nf3 Nc6 3. Bb5 Nf6 4. O-O Nxe4 5. d4 Be7
1355	C67	Ruy Lopez	Berlin defense, Rio de Janeiro Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 Nf6 4. O-O Nxe4 5. d4 Be7 6. Qe2 Nd6 7. Bxc6 bxc6 8. dxe5 Nb7 9. Nc3 O-O 10. Re1 Nc5 11. Nd4 Ne6 12. Be3 Nxd4 13. Bxd4 c5
1356	C67	Ruy Lopez	Berlin defense, Zukertort Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 Nf6 4. O-O Nxe4 5. d4 Be7 6. Qe2 Nd6 7. Bxc6 bxc6 8. dxe5 Nb7 9. c4
1357	C67	Ruy Lopez	Berlin defense, Pillsbury Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 Nf6 4. O-O Nxe4 5. d4 Be7 6. Qe2 Nd6 7. Bxc6 bxc6 8. dxe5 Nb7 9. b3
1358	C67	Ruy Lopez	Berlin defense, Winawer attack	1. e4 e5 2. Nf3 Nc6 3. Bb5 Nf6 4. O-O Nxe4 5. d4 Be7 6. Qe2 Nd6 7. Bxc6 bxc6 8. dxe5 Nb7 9. Nd4
1359	C67	Ruy Lopez	Berlin defense, Cordel Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 Nf6 4. O-O Nxe4 5. d4 Be7 6. Qe2 Nd6 7. Bxc6 bxc6 8. dxe5 Nf5
1360	C67	Ruy Lopez	Berlin defense, Trifunovic Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 Nf6 4. O-O Nxe4 5. d4 Be7 6. Qe2 d5
1361	C67	Ruy Lopez	Berlin defense, Minckwitz Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 Nf6 4. O-O Nxe4 5. d4 Be7 6. dxe5
1362	C68	Ruy Lopez	Berlin defense, Rosenthal Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 Nf6 4. O-O Nxe4 5. d4 a6
1363	C68	Ruy Lopez	Exchange Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Bxc6
1364	C68	Ruy Lopez	Exchange, Alekhine Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Bxc6 dxc6 5. d4 exd4 6. Qxd4 Qxd4 7. Nxd4 Bd7
1365	C68	Ruy Lopez	Exchange, Keres Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Bxc6 dxc6 5. Nc3
1366	C69	Ruy Lopez	Exchange, Romanovsky Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Bxc6 dxc6 5. Nc3 f6 6. d3
1367	C69	Ruy Lopez	Exchange Variation , 5.O-O	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Bxc6 dxc6 5. O-O
1368	C69	Ruy Lopez	Exchange Variation , Alapin gambit	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Bxc6 dxc6 5. O-O Bg4 6. h3 h5
1369	C69	Ruy Lopez	Exchange, Gligoric Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Bxc6 dxc6 5. O-O f6
1370	C70	Ruy Lopez	Exchange, Bronstein Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Bxc6 dxc6 5. O-O Qd6
1371	C70	Ruy Lopez	N/A	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4
1372	C70	Ruy Lopez	Fianchetto defense deferred	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 g6
1373	C70	Ruy Lopez	Cozio defense deferred	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nge7
1374	C70	Ruy Lopez	Bird's defense deferred	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nd4
1375	C70	Ruy Lopez	Alapin's defense deferred	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Bb4
1376	C70	Ruy Lopez	Classical defense deferred	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Bc5
1377	C70	Ruy Lopez	Caro Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 b5
1378	C70	Ruy Lopez	Graz Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 b5 5. Bb3 Bc5
1379	C70	Ruy Lopez	Taimanov (chase/wing/Accelerated counterthrust) Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 b5 5. Bb3 Na5
1380	C71	Ruy Lopez	Schliemann defense deferred	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 f5
1381	C71	Ruy Lopez	Modern Steinitz defense	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 d6
1382	C71	Ruy Lopez	Noah's ark trap	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 d6 5. d4 b5 6. Bb3 Nxd4 7. Nxd4 exd4 8. Qxd4 c5
1383	C71	Ruy Lopez	Modern Steinitz defense, Three knights Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 d6 5. Nc3
1384	C72	Ruy Lopez	Modern Steinitz defense, Duras (Keres) Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 d6 5. c4
1385	C73	Ruy Lopez	Modern Steinitz defense, 5.O-O	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 d6 5. O-O
1386	C73	Ruy Lopez	Modern Steinitz defense, Richter Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 d6 5. Bxc6+ bxc6 6. d4
1387	C74	Ruy Lopez	Modern Steinitz defense, Alapin Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 d6 5. Bxc6+ bxc6 6. d4 f6
1388	C74	Ruy Lopez	Modern Steinitz defense	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 d6 5. c3
1389	C74	Ruy Lopez	Modern Steinitz defense, siesta Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 d6 5. c3 f5
1390	C75	Ruy Lopez	Siesta, Kopayev Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 d6 5. c3 f5 6. exf5 Bxf5 7. O-O
1391	C75	Ruy Lopez	Modern Steinitz defense	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 d6 5. c3 Bd7
1392	C76	Ruy Lopez	Modern Steinitz defense, Rubinstein Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 d6 5. c3 Bd7 6. d4 Nge7
1393	C77	Ruy Lopez	Modern Steinitz defense, Fianchetto (Bronstein) Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 d6 5. c3 Bd7 6. d4 g6
1394	C77	Ruy Lopez	Morphy defense	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6
1395	C77	Ruy Lopez	Four knights (Tarrá3ððð Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. Nc3
1396	C77	Ruy Lopez	Treybal (Bayreuth) Variation (Exchange var. deferred)	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. Bxc6
1397	C77	Ruy Lopez	Wormald (Alapin) attack	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. Qe2
1398	C77	Ruy Lopez	Wormald attack, Gruenfeld Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. Qe2 b5 6. Bb3 Be7 7. d4 d6 8. c3 Bg4
1399	C77	Ruy Lopez	Anderssen Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. d3
1400	C78	Ruy Lopez	Morphy defense, Duras Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. d3 d6 6. c4
1401	C78	Ruy Lopez	5.O-O	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O
1402	C78	Ruy Lopez	Wing attack	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O b5 6. Bb3 Be7 7. a4
1403	C78	Ruy Lopez	...b5 & ...d6	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O b5 6. Bb3 d6
1404	C78	Ruy Lopez	Rabinovich Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O b5 6. Bb3 d6 7. Ng5 d5 8. exd5 Nd4 9. Re1 Bc5 10. Rxe5+ Kf8
1405	C78	Ruy Lopez	Archangelsk (counterthrust) Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O b5 6. Bb3 Bb7
1406	C79	Ruy Lopez	Moeller defense	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Bc5
1407	C79	Ruy Lopez	Steinitz defense deferred (Russian defense)	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O d6
1408	C79	Ruy Lopez	Steinitz defense deferred, Lipnitsky Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O d6 6. Bxc6+ bxc6 7. d4 Bg4
1409	C79	Ruy Lopez	Steinitz defense deferred, Rubinstein Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O d6 6. Bxc6+ bxc6 7. d4 Nxe4
1410	C80	Ruy Lopez	Steinitz defense deferred, Boleslavsky Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O d6 6. Bxc6+ bxc6 7. d4 Nxe4 8. Re1 f5 9. dxe5 d5 10. Nc3
1411	C80	Ruy Lopez	Open (Tarrasch) defense	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Nxe4
1412	C80	Ruy Lopez	Open, Tartakower Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Nxe4 6. Qe2
1413	C80	Ruy Lopez	Open, Knorre Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Nxe4 6. Nc3
1414	C80	Ruy Lopez	Open, 6.d4	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Nxe4 6. d4
1415	C80	Ruy Lopez	Open, Riga Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Nxe4 6. d4 exd4
1416	C80	Ruy Lopez	Open, 6.d4 b5	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Nxe4 6. d4 b5
1417	C80	Ruy Lopez	Open, Friess attack	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Nxe4 6. d4 b5 7. Nxe5
1418	C80	Ruy Lopez	Open, Richter Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Nxe4 6. d4 b5 7. d5
1419	C80	Ruy Lopez	Open, 7.Bb3	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Nxe4 6. d4 b5 7. Bb3
1420	C80	Ruy Lopez	Open, Schlechter defense	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Nxe4 6. d4 b5 7. Bb3 d5 8. a4 Nxd4
1421	C80	Ruy Lopez	Open, Berger Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Nxe4 6. d4 b5 7. Bb3 d5 8. a4 Nxd4 9. Nxd4 exd4 10. Nc3
1422	C80	Ruy Lopez	Open, Harksen gambit	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Nxe4 6. d4 b5 7. Bb3 d5 8. c4
1423	C80	Ruy Lopez	Open, 8.de	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Nxe4 6. d4 b5 7. Bb3 d5 8. dxe5
1424	C80	Ruy Lopez	Open, Zukertort Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Nxe4 6. d4 b5 7. Bb3 d5 8. dxe5 Ne7
1425	C80	Ruy Lopez	Open, 8...Be6	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Nxe4 6. d4 b5 7. Bb3 d5 8. dxe5 Be6
1426	C80	Ruy Lopez	Open, Bernstein Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Nxe4 6. d4 b5 7. Bb3 d5 8. dxe5 Be6 9. Nbd2
1427	C81	Ruy Lopez	Open, Bernstein Variation , Karpov gambit	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Nxe4 6. d4 b5 7. Bb3 d5 8. dxe5 Be6 9. Nbd2 Nc5 10. c3 d4 11. Ng5
1428	C81	Ruy Lopez	Open, Howell attack	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Nxe4 6. d4 b5 7. Bb3 d5 8. dxe5 Be6 9. Qe2
1429	C81	Ruy Lopez	Open, Howell attack, Ekstroem Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Nxe4 6. d4 b5 7. Bb3 d5 8. dxe5 Be6 9. Qe2 Be7 10. Rd1 O-O 11. c4 bxc4 12. Bxc4 Qd7
1430	C82	Ruy Lopez	Open, Howell attack, Adam Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Nxe4 6. d4 b5 7. Bb3 d5 8. dxe5 Be6 9. Qe2 Be7 10. c4
1431	C82	Ruy Lopez	Open, 9.c3	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Nxe4 6. d4 b5 7. Bb3 d5 8. dxe5 Be6 9. c3
1432	C82	Ruy Lopez	Open, Berlin Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Nxe4 6. d4 b5 7. Bb3 d5 8. dxe5 Be6 9. c3 Nc5
1433	C82	Ruy Lopez	Open, Italian Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Nxe4 6. d4 b5 7. Bb3 d5 8. dxe5 Be6 9. c3 Bc5
1434	C82	Ruy Lopez	Open, St. Petersburg Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Nxe4 6. d4 b5 7. Bb3 d5 8. dxe5 Be6 9. c3 Bc5 10. Nbd2
1435	C82	Ruy Lopez	Open, Dilworth Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Nxe4 6. d4 b5 7. Bb3 d5 8. dxe5 Be6 9. c3 Bc5 10. Nbd2 O-O 11. Bc2 Nxf2
1436	C82	Ruy Lopez	Open, Motzko attack	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Nxe4 6. d4 b5 7. Bb3 d5 8. dxe5 Be6 9. c3 Bc5 10. Qd3
1437	C83	Ruy Lopez	Open, Motzko attack, Nenarokov Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Nxe4 6. d4 b5 7. Bb3 d5 8. dxe5 Be6 9. c3 Bc5 10. Qd3 Ne7
1438	C83	Ruy Lopez	Open, Classical defense	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Nxe4 6. d4 b5 7. Bb3 d5 8. dxe5 Be6 9. c3 Be7
1439	C83	Ruy Lopez	Open, Malkin Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Nxe4 6. d4 b5 7. Bb3 d5 8. dxe5 Be6 9. c3 Be7 10. Nbd2 O-O 11. Qe2
1440	C83	Ruy Lopez	Open, 9...Be7, 10.Re1	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Nxe4 6. d4 b5 7. Bb3 d5 8. dxe5 Be6 9. c3 Be7 10. Re1
1441	C83	Ruy Lopez	Open, Tarrasch trap	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Nxe4 6. d4 b5 7. Bb3 d5 8. dxe5 Be6 9. c3 Be7 10. Re1 O-O 11. Nd4 Qd7 12. Nxe6 fxe6 13. Rxe4
1442	C84	Ruy Lopez	Open, Breslau Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Nxe4 6. d4 b5 7. Bb3 d5 8. dxe5 Be6 9. c3 Be7 10. Re1 O-O 11. Nd4 Nxe5
1443	C84	Ruy Lopez	Closed defense	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Be7
1444	C84	Ruy Lopez	Closed, center attack	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Be7 6. d4
1445	C85	Ruy Lopez	Closed, Basque gambit (North Spanish Variation )	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Be7 6. d4 exd4 7. e5 Ne4 8. c3
1446	C86	Ruy Lopez	Exchange Variation doubly deferred (DERLD)	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Be7 6. Bxc6
1447	C86	Ruy Lopez	Worrall attack	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Be7 6. Qe2
1448	C86	Ruy Lopez	Worrall attack, sharp line	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Be7 6. Qe2 b5 7. Bb3 O-O
1449	C87	Ruy Lopez	Worrall attack, solid line	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Be7 6. Qe2 b5 7. Bb3 d6
1450	C88	Ruy Lopez	Closed, Averbach Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Be7 6. Re1 d6
1451	C88	Ruy Lopez	Closed	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Be7 6. Re1 b5 7. Bb3
1452	C88	Ruy Lopez	Closed, Leonhardt Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Be7 6. Re1 b5 7. Bb3 d6 8. c3 Na5 9. Bc2 c5 10. d4 Qc7 11. h3 Nc6 12. d5 Nb8 13. Nbd2 g5
1453	C88	Ruy Lopez	Closed, Balla Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Be7 6. Re1 b5 7. Bb3 d6 8. c3 Na5 9. Bc2 c5 10. d4 Qc7 11. a4
1454	C88	Ruy Lopez	Closed, 7...d6, 8.d4	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Be7 6. Re1 b5 7. Bb3 d6 8. d4
1455	C88	Ruy Lopez	Noah's ark trap	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Be7 6. Re1 b5 7. Bb3 d6 8. d4 Nxd4 9. Nxd4 exd4 10. Qxd4 c5
1456	C88	Ruy Lopez	Trajkovic counter-attack	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Be7 6. Re1 b5 7. Bb3 Bb7
1457	C88	Ruy Lopez	Closed, 7...O-O	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Be7 6. Re1 b5 7. Bb3 O-O
1458	C88	Ruy Lopez	Closed, anti-Marshall 8.a4	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Be7 6. Re1 b5 7. Bb3 O-O 8. a4
1459	C89	Ruy Lopez	Closed, 8.c3	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Be7 6. Re1 b5 7. Bb3 O-O 8. c3
1460	C89	Ruy Lopez	Marshall counter-attack	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Be7 6. Re1 b5 7. Bb3 O-O 8. c3 d5
1461	C89	Ruy Lopez	Marshall counter-attack, 11...c6	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Be7 6. Re1 b5 7. Bb3 O-O 8. c3 d5 9. exd5 Nxd5 10. Nxe5 Nxe5 11. Rxe5 c6
1462	C89	Ruy Lopez	Marshall, Kevitz Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Be7 6. Re1 b5 7. Bb3 O-O 8. c3 d5 9. exd5 Nxd5 10. Nxe5 Nxe5 11. Rxe5 c6 12. Bxd5 cxd5 13. d4 Bd6 14. Re3
1463	C89	Ruy Lopez	Marshall, Main line, 12.d2d4	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Be7 6. Re1 b5 7. Bb3 O-O 8. c3 d5 9. exd5 Nxd5 10. Nxe5 Nxe5 11. Rxe5 c6 12. d4
1464	C89	Ruy Lopez	Marshall, Main line, 14...Qh3	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Be7 6. Re1 b5 7. Bb3 O-O 8. c3 d5 9. exd5 Nxd5 10. Nxe5 Nxe5 11. Rxe5 c6 12. d4 Bd6 13. Re1 Qh4 14. g3 Qh3
1465	C89	Ruy Lopez	Marshall, Main line, Spassky Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Be7 6. Re1 b5 7. Bb3 O-O 8. c3 d5 9. exd5 Nxd5 10. Nxe5 Nxe5 11. Rxe5 c6 12. d4 Bd6 13. Re1 Qh4 14. g3 Qh3 15. Be3 Bg4 16. Qd3 Rae8 17. Nd2 Re6 18. a4 Qh5
1466	C90	Ruy Lopez	Marshall, Herman Steiner Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Be7 6. Re1 b5 7. Bb3 O-O 8. c3 d5 9. exd5 e4
1467	C90	Ruy Lopez	Closed (with ...d6)	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Be7 6. Re1 b5 7. Bb3 O-O 8. c3 d6
1468	C90	Ruy Lopez	Closed, Pilnik Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Be7 6. Re1 b5 7. Bb3 O-O 8. c3 d6 9. d3
1469	C90	Ruy Lopez	Closed, Lutikov Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Be7 6. Re1 b5 7. Bb3 O-O 8. c3 d6 9. Bc2
1470	C91	Ruy Lopez	Closed, Suetin Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Be7 6. Re1 b5 7. Bb3 O-O 8. c3 d6 9. a3
1471	C91	Ruy Lopez	Closed, 9.d4	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Be7 6. Re1 b5 7. Bb3 O-O 8. c3 d6 9. d4
1472	C92	Ruy Lopez	Closed, Bogolyubov Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Be7 6. Re1 b5 7. Bb3 O-O 8. c3 d6 9. d4 Bg4
1473	C92	Ruy Lopez	Closed, 9.h3	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Be7 6. Re1 b5 7. Bb3 O-O 8. c3 d6 9. h3
1474	C92	Ruy Lopez	Closed, Keres (9...a5) Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Be7 6. Re1 b5 7. Bb3 O-O 8. c3 d6 9. h3 a5
1475	C92	Ruy Lopez	Closed, Kholmov Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Be7 6. Re1 b5 7. Bb3 O-O 8. c3 d6 9. h3 Be6
1476	C92	Ruy Lopez	Closed, Ragozin-Petrosian (`Keres') Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Be7 6. Re1 b5 7. Bb3 O-O 8. c3 d6 9. h3 Nd7
1477	C93	Ruy Lopez	Closed, Flohr-Zaitsev system (Lenzerheide Variation )	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Be7 6. Re1 b5 7. Bb3 O-O 8. c3 d6 9. h3 Bb7
1478	C94	Ruy Lopez	Closed, Smyslov defense	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Be7 6. Re1 b5 7. Bb3 O-O 8. c3 d6 9. h3 h6
1479	C95	Ruy Lopez	Closed, Breyer defense	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Be7 6. Re1 b5 7. Bb3 O-O 8. c3 d6 9. h3 Nb8
1480	C95	Ruy Lopez	Closed, Breyer, 10.d4	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Be7 6. Re1 b5 7. Bb3 O-O 8. c3 d6 9. h3 Nb8 10. d4
1481	C95	Ruy Lopez	Closed, Breyer, Borisenko Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Be7 6. Re1 b5 7. Bb3 O-O 8. c3 d6 9. h3 Nb8 10. d4 Nbd7
1482	C95	Ruy Lopez	Closed, Breyer, Gligoric Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Be7 6. Re1 b5 7. Bb3 O-O 8. c3 d6 9. h3 Nb8 10. d4 Nbd7 11. Nbd2 Bb7 12. Bc2 c5
1483	C96	Ruy Lopez	Closed, Breyer, Simagin Variation 	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Be7 6. Re1 b5 7. Bb3 O-O 8. c3 d6 9. h3 Nb8 10. d4 Nbd7 11. Nh4
1484	C96	Ruy Lopez	Closed (8...Na5)	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Be7 6. Re1 b5 7. Bb3 O-O 8. c3 d6 9. h3 Na5 10. Bc2
1485	C96	Ruy Lopez	Closed, Rossolimo defense	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Be7 6. Re1 b5 7. Bb3 O-O 8. c3 d6 9. h3 Na5 10. Bc2 c6 11. d4 Qc7
1486	C96	Ruy Lopez	Closed (10...c5)	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Be7 6. Re1 b5 7. Bb3 O-O 8. c3 d6 9. h3 Na5 10. Bc2 c5
1487	C96	Ruy Lopez	Closed, Borisenko defense	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Be7 6. Re1 b5 7. Bb3 O-O 8. c3 d6 9. h3 Na5 10. Bc2 c5 11. d4 Nc6
1488	C97	Ruy Lopez	Closed, Keres (...Nd7) defense	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Be7 6. Re1 b5 7. Bb3 O-O 8. c3 d6 9. h3 Na5 10. Bc2 c5 11. d4 Nd7
1489	C97	Ruy Lopez	Closed, Chigorin defense	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Be7 6. Re1 b5 7. Bb3 O-O 8. c3 d6 9. h3 Na5 10. Bc2 c5 11. d4 Qc7
1490	C98	Ruy Lopez	Closed, Chigorin, Yugoslav system	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Be7 6. Re1 b5 7. Bb3 O-O 8. c3 d6 9. h3 Na5 10. Bc2 c5 11. d4 Qc7 12. Nbd2 Bd7 13. Nf1 Rfe8 14. Ne3 g6
1491	C98	Ruy Lopez	Closed, Chigorin, 12...Nc6	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Be7 6. Re1 b5 7. Bb3 O-O 8. c3 d6 9. h3 Na5 10. Bc2 c5 11. d4 Qc7 12. Nbd2 Nc6
1492	C99	Ruy Lopez	Closed, Chigorin, Rauzer attack	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Be7 6. Re1 b5 7. Bb3 O-O 8. c3 d6 9. h3 Na5 10. Bc2 c5 11. d4 Qc7 12. Nbd2 Nc6 13. dxc5
1493	D00	Queen's pawn game	Closed, Chigorin, 12...c5d4	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Be7 6. Re1 b5 7. Bb3 O-O 8. c3 d6 9. h3 Na5 10. Bc2 c5 11. d4 Qc7 12. Nbd2 cxd4 13. cxd4
1494	D00	Queen's pawn, Mason Variation 	N/A	1. d4 d5
1495	D00	Queen's pawn, Mason Variation , Steinitz counter-gambit	N/A	1. d4 d5 2. Bf4
1496	D00	Levitsky attack (Queen's Bishop attack)	N/A	1. d4 d5 2. Bf4 c5
1497	D00	Blackmar gambit	N/A	1. d4 d5 2. Bg5
1498	D00	Queen's pawn	N/A	1. d4 d5 2. e4
1499	D00	Queen's pawn	Stonewall attack	1. d4 d5 2. e3 Nf6 3. Bd3
1500	D00	Queen's pawn	Chigorin Variation 	1. d4 d5 2. Nc3
1501	D00	Blackmar-Diemer gambit	Anti-Veresov	1. d4 d5 2. Nc3 Bg4
1502	D00	Blackmar-Diemer	N/A	1. d4 d5 2. Nc3 Nf6 3. e4
1503	D00	Blackmar-Diemer	Euwe defense	1. d4 d5 2. Nc3 Nf6 3. e4 dxe4 4. f3 exf3 5. Nxf3 e6
1504	D01	Richter-Veresov attack	Lemberg counter-gambit	1. d4 d5 2. Nc3 Nf6 3. e4 e5
1505	D01	Richter-Veresov attack, Veresov Variation 	N/A	1. d4 d5 2. Nc3 Nf6 3. Bg5
1506	D01	Richter-Veresov attack, Richter Variation 	N/A	1. d4 d5 2. Nc3 Nf6 3. Bg5 Bf5 4. Bxf6
1507	D02	Queen's pawn game	N/A	1. d4 d5 2. Nc3 Nf6 3. Bg5 Bf5 4. f3
1508	D02	Queen's pawn game, Chigorin Variation 	N/A	1. d4 d5 2. Nf3
1509	D02	Queen's pawn game, Krause Variation 	N/A	1. d4 d5 2. Nf3 Nc6
1510	D02	Queen's pawn game	N/A	1. d4 d5 2. Nf3 c5
1511	D02	Queen's Bishop game	N/A	1. d4 d5 2. Nf3 Nf6
1512	D03	Torre attack (Tartakower Variation )	N/A	1. d4 d5 2. Nf3 Nf6 3. Bf4
1513	D04	Queen's pawn game	N/A	1. d4 d5 2. Nf3 Nf6 3. Bg5
1514	D05	Queen's pawn game	N/A	1. d4 d5 2. Nf3 Nf6 3. e3
1515	D05	Queen's pawn game, Zukertort Variation 	N/A	1. d4 d5 2. Nf3 Nf6 3. e3 e6
1516	D05	Queen's pawn game	N/A	1. d4 d5 2. Nf3 Nf6 3. e3 e6 4. Nbd2 c5 5. b3
1517	D05	Queen's pawn game, Rubinstein (Colle-Zukertort) Variation 	N/A	1. d4 d5 2. Nf3 Nf6 3. e3 e6 4. Bd3
1518	D05	Colle system	N/A	1. d4 d5 2. Nf3 Nf6 3. e3 e6 4. Bd3 c5 5. b3
1519	D06	Queen's Gambit	N/A	1. d4 d5 2. Nf3 Nf6 3. e3 e6 4. Bd3 c5 5. c3
1520	D06	QGD	N/A	1. d4 d5 2. c4
1521	D06	QGD	Grau (Sahovic) defense	1. d4 d5 2. c4 Bf5
1522	D06	QGD	Marshall defense	1. d4 d5 2. c4 Nf6
1523	D07	QGD	Symmetrical (Austrian) defense	1. d4 d5 2. c4 c5
1524	D07	QGD	Chigorin defense	1. d4 d5 2. c4 Nc6
1525	D08	QGD	Chigorin defense, Janowski Variation 	1. d4 d5 2. c4 Nc6 3. Nc3 dxc4 4. Nf3
1526	D08	QGD	Albin counter-gambit	1. d4 d5 2. c4 e5
1527	D08	QGD	Albin counter-gambit, Lasker trap	1. d4 d5 2. c4 e5 3. dxe5 d4 4. e3 Bb4+ 5. Bd2 dxe3
1528	D08	QGD	Albin counter-gambit	1. d4 d5 2. c4 e5 3. dxe5 d4 4. Nf3
1529	D08	QGD	Albin counter-gambit, Alapin Variation 	1. d4 d5 2. c4 e5 3. dxe5 d4 4. Nf3 Nc6 5. Nbd2
1530	D08	QGD	Albin counter-gambit, Krenosz Variation 	1. d4 d5 2. c4 e5 3. dxe5 d4 4. Nf3 Nc6 5. Nbd2 Bg4 6. h3 Bxf3 7. Nxf3 Bb4+ 8. Bd2 Qe7
1531	D08	QGD	Albin counter-gambit, Janowski Variation 	1. d4 d5 2. c4 e5 3. dxe5 d4 4. Nf3 Nc6 5. Nbd2 f6
1532	D09	QGD	Albin counter-gambit, Balogh Variation 	1. d4 d5 2. c4 e5 3. dxe5 d4 4. Nf3 Nc6 5. Nbd2 Qe7
1533	D10	QGD Slav defense	Albin counter-gambit, 5.g3	1. d4 d5 2. c4 e5 3. dxe5 d4 4. Nf3 Nc6 5. g3
1534	D10	QGD Slav defense, Alekhine Variation 	N/A	1. d4 d5 2. c4 c6
1535	D10	QGD Slav	N/A	1. d4 d5 2. c4 c6 3. Nc3 dxc4 4. e4
1536	D10	QGD Slav defense	Winawer counter-gambit	1. d4 d5 2. c4 c6 3. Nc3 e5
1537	D11	QGD Slav	Exchange Variation 	1. d4 d5 2. c4 c6 3. cxd5
1538	D11	QGD Slav	3.Nf3	1. d4 d5 2. c4 c6 3. Nf3
1539	D11	QGD Slav	Breyer Variation 	1. d4 d5 2. c4 c6 3. Nf3 Nf6 4. Nbd2
1540	D12	QGD Slav	4.e3	1. d4 d5 2. c4 c6 3. Nf3 Nf6 4. e3
1541	D12	QGD Slav	4.e3 Bf5	1. d4 d5 2. c4 c6 3. Nf3 Nf6 4. e3 Bf5
1542	D12	QGD Slav	Landau Variation 	1. d4 d5 2. c4 c6 3. Nf3 Nf6 4. e3 Bf5 5. cxd5 cxd5 6. Qb3 Qc8 7. Bd2 e6 8. Na3
1543	D12	QGD Slav	Exchange Variation 	1. d4 d5 2. c4 c6 3. Nf3 Nf6 4. e3 Bf5 5. cxd5 cxd5 6. Nc3
1544	D13	QGD Slav	Amsterdam Variation 	1. d4 d5 2. c4 c6 3. Nf3 Nf6 4. e3 Bf5 5. cxd5 cxd5 6. Nc3 e6 7. Ne5 Nfd7
1545	D14	QGD Slav	Exchange Variation 	1. d4 d5 2. c4 c6 3. Nf3 Nf6 4. cxd5 cxd5
1546	D14	QGD Slav	Exchange Variation , 6.Bf4 Bf5	1. d4 d5 2. c4 c6 3. Nf3 Nf6 4. cxd5 cxd5 5. Nc3 Nc6 6. Bf4 Bf5
1547	D15	QGD Slav	Exchange, Trifunovic Variation 	1. d4 d5 2. c4 c6 3. Nf3 Nf6 4. cxd5 cxd5 5. Nc3 Nc6 6. Bf4 Bf5 7. e3 e6 8. Qb3 Bb4
1548	D15	QGD Slav	4.Nc3	1. d4 d5 2. c4 c6 3. Nf3 Nf6 4. Nc3
1549	D15	QGD Slav	Suechting Variation 	1. d4 d5 2. c4 c6 3. Nf3 Nf6 4. Nc3 Qb6
1550	D15	QGD Slav accepted	Schlechter Variation 	1. d4 d5 2. c4 c6 3. Nf3 Nf6 4. Nc3 g6
1551	D15	QGD Slav	N/A	1. d4 d5 2. c4 c6 3. Nf3 Nf6 4. Nc3 dxc4
1552	D15	QGD Slav	5.e3 (Alekhine Variation )	1. d4 d5 2. c4 c6 3. Nf3 Nf6 4. Nc3 dxc4 5. e3
1553	D15	QGD Slav	Slav gambit	1. d4 d5 2. c4 c6 3. Nf3 Nf6 4. Nc3 dxc4 5. e4
1554	D16	QGD Slav accepted	Tolush-Geller gambit	1. d4 d5 2. c4 c6 3. Nf3 Nf6 4. Nc3 dxc4 5. e4 b5 6. e5
1555	D16	QGD Slav	Alapin Variation 	1. d4 d5 2. c4 c6 3. Nf3 Nf6 4. Nc3 dxc4 5. a4
1556	D16	QGD Slav	Smyslov Variation 	1. d4 d5 2. c4 c6 3. Nf3 Nf6 4. Nc3 dxc4 5. a4 Na6 6. e4 Bg4
1557	D16	QGD Slav	Soultanbeieff Variation 	1. d4 d5 2. c4 c6 3. Nf3 Nf6 4. Nc3 dxc4 5. a4 e6
1558	D17	QGD Slav	Steiner Variation 	1. d4 d5 2. c4 c6 3. Nf3 Nf6 4. Nc3 dxc4 5. a4 Bg4
1559	D17	QGD Slav	Czech defense	1. d4 d5 2. c4 c6 3. Nf3 Nf6 4. Nc3 dxc4 5. a4 Bf5
1560	D17	QGD Slav	Krause attack	1. d4 d5 2. c4 c6 3. Nf3 Nf6 4. Nc3 dxc4 5. a4 Bf5 6. Ne5
1561	D17	QGD Slav	Carlsbad Variation 	1. d4 d5 2. c4 c6 3. Nf3 Nf6 4. Nc3 dxc4 5. a4 Bf5 6. Ne5 Nbd7 7. Nxc4 Qc7 8. g3 e5
1562	D18	QGD Slav	Wiesbaden Variation 	1. d4 d5 2. c4 c6 3. Nf3 Nf6 4. Nc3 dxc4 5. a4 Bf5 6. Ne5 e6
1563	D18	QGD Slav	Dutch Variation 	1. d4 d5 2. c4 c6 3. Nf3 Nf6 4. Nc3 dxc4 5. a4 Bf5 6. e3
1564	D19	QGD Slav	Dutch, Lasker Variation 	1. d4 d5 2. c4 c6 3. Nf3 Nf6 4. Nc3 dxc4 5. a4 Bf5 6. e3 Na6
1565	D19	QGD Slav	Dutch Variation 	1. d4 d5 2. c4 c6 3. Nf3 Nf6 4. Nc3 dxc4 5. a4 Bf5 6. e3 e6 7. Bxc4 Bb4 8. O-O
1566	D19	QGD Slav	Dutch Variation , Main line	1. d4 d5 2. c4 c6 3. Nf3 Nf6 4. Nc3 dxc4 5. a4 Bf5 6. e3 e6 7. Bxc4 Bb4 8. O-O O-O 9. Qe2
1567	D20	Queen's gambit accepted	Dutch, Saemisch Variation 	1. d4 d5 2. c4 c6 3. Nf3 Nf6 4. Nc3 dxc4 5. a4 Bf5 6. e3 e6 7. Bxc4 Bb4 8. O-O O-O 9. Qe2 Ne4 10. g4
1568	D20	QGA	N/A	1. d4 d5 2. c4 dxc4
1569	D20	QGA	3.e4	1. d4 d5 2. c4 dxc4 3. e4
1570	D20	QGA	Linares Variation 	1. d4 d5 2. c4 dxc4 3. e4 c5 4. d5 Nf6 5. Nc3 b5
1571	D21	QGA	Schwartz defense	1. d4 d5 2. c4 dxc4 3. e4 f5
1572	D21	QGA	3.Nf3	1. d4 d5 2. c4 dxc4 3. Nf3
1573	D21	QGA	Ericson Variation 	1. d4 d5 2. c4 dxc4 3. Nf3 b5
1574	D22	QGA	Alekhine defense, Borisenko-Furman Variation 	1. d4 d5 2. c4 dxc4 3. Nf3 a6 4. e4
1576	D22	QGA	Alekhine defense, Alatortsev Variation 	1. d4 d5 2. c4 dxc4 3. Nf3 a6 4. e3 Bg4 5. Bxc4 e6 6. d5
1577	D23	Queen's gambit accepted	Haberditz Variation 	1. d4 d5 2. c4 dxc4 3. Nf3 a6 4. e3 b5
1578	D23	QGA	N/A	1. d4 d5 2. c4 dxc4 3. Nf3 Nf6
1579	D24	QGA, 4.Nc3	Mannheim Variation 	1. d4 d5 2. c4 dxc4 3. Nf3 Nf6 4. Qa4+
1580	D24	QGA, Bogolyubov Variation 	N/A	1. d4 d5 2. c4 dxc4 3. Nf3 Nf6 4. Nc3
1581	D25	QGA, 4.e3	N/A	1. d4 d5 2. c4 dxc4 3. Nf3 Nf6 4. Nc3 a6 5. e4
1582	D25	QGA, Smyslov Variation 	N/A	1. d4 d5 2. c4 dxc4 3. Nf3 Nf6 4. e3
1583	D25	QGA, Janowsky-Larsen Variation 	N/A	1. d4 d5 2. c4 dxc4 3. Nf3 Nf6 4. e3 g6
1584	D25	QGA, Flohr Variation 	N/A	1. d4 d5 2. c4 dxc4 3. Nf3 Nf6 4. e3 Bg4
1585	D26	QGA	N/A	1. d4 d5 2. c4 dxc4 3. Nf3 Nf6 4. e3 Be6
1586	D26	QGA	4...e6	1. d4 d5 2. c4 dxc4 3. Nf3 Nf6 4. e3 e6
1587	D26	QGA	Classical Variation 	1. d4 d5 2. c4 dxc4 3. Nf3 Nf6 4. e3 e6 5. Bxc4 c5
1588	D26	QGA	Classical, Furman Variation 	1. d4 d5 2. c4 dxc4 3. Nf3 Nf6 4. e3 e6 5. Bxc4 c5 6. Qe2 a6 7. dxc5 Bxc5 8. O-O Nc6 9. e4 b5 10. e5
1589	D26	QGA	Classical Variation , 6.O-O	1. d4 d5 2. c4 dxc4 3. Nf3 Nf6 4. e3 e6 5. Bxc4 c5 6. O-O
1590	D27	QGA	Classical, Steinitz Variation 	1. d4 d5 2. c4 dxc4 3. Nf3 Nf6 4. e3 e6 5. Bxc4 c5 6. O-O cxd4
1591	D27	QGA	Classical, 6...a6	1. d4 d5 2. c4 dxc4 3. Nf3 Nf6 4. e3 e6 5. Bxc4 c5 6. O-O a6
1592	D27	QGA	Classical, Rubinstein Variation 	1. d4 d5 2. c4 dxc4 3. Nf3 Nf6 4. e3 e6 5. Bxc4 c5 6. O-O a6 7. a4
1593	D28	QGA	Classical, Geller Variation 	1. d4 d5 2. c4 dxc4 3. Nf3 Nf6 4. e3 e6 5. Bxc4 c5 6. O-O a6 7. e4
1594	D28	QGA	Classical, 7.Qe2	1. d4 d5 2. c4 dxc4 3. Nf3 Nf6 4. e3 e6 5. Bxc4 c5 6. O-O a6 7. Qe2
1595	D28	QGA	Classical, 7...b5	1. d4 d5 2. c4 dxc4 3. Nf3 Nf6 4. e3 e6 5. Bxc4 c5 6. O-O a6 7. Qe2 b5
1596	D29	QGA	Classical, Flohr Variation 	1. d4 d5 2. c4 dxc4 3. Nf3 Nf6 4. e3 e6 5. Bxc4 c5 6. O-O a6 7. Qe2 b5 8. Bb3 Nc6 9. Rd1 c4 10. Bc2 Nb4 11. Nc3 Nxc2 12. Qxc2 Bb7 13. d5 Qc7
1597	D29	QGA	Classical, 8...Bb7	1. d4 d5 2. c4 dxc4 3. Nf3 Nf6 4. e3 e6 5. Bxc4 c5 6. O-O a6 7. Qe2 b5 8. Bb3 Bb7
1598	D30	Queen's gambit declined	Classical, Smyslov Variation 	1. d4 d5 2. c4 dxc4 3. Nf3 Nf6 4. e3 e6 5. Bxc4 c5 6. O-O a6 7. Qe2 b5 8. Bb3 Bb7 9. Rd1 Nbd7 10. Nc3 Bd6
1599	D30	QGD Slav	N/A	1. d4 d5 2. c4 e6
1600	D30	QGD	N/A	1. d4 d5 2. c4 e6 3. Nf3 Nf6 4. e3 c6 5. Nbd2
1601	D30	QGD Slav	Stonewall Variation 	1. d4 d5 2. c4 e6 3. Nf3 Nf6 4. e3 c6 5. Nbd2 Ne4 6. Bd3 f5
1602	D30	QGD Slav	N/A	1. d4 d5 2. c4 e6 3. Nf3 Nf6 4. e3 c6 5. Nbd2 Nbd7
1603	D30	QGD	Semmering Variation 	1. d4 d5 2. c4 e6 3. Nf3 Nf6 4. e3 c6 5. Nbd2 Nbd7 6. Bd3 c5
1604	D30	QGD	Spielmann Variation 	1. d4 d5 2. c4 e6 3. Nf3 Nf6 4. e3 c6 5. Nbd2 g6
1605	D30	QGD	N/A	1. d4 d5 2. c4 e6 3. Nf3 Nf6 4. Bg5
1606	D30	QGD	Capablanca Variation 	1. d4 d5 2. c4 e6 3. Nf3 Nf6 4. Bg5 Nbd7 5. e3 c6 6. Nbd2
1607	D30	QGD	Vienna Variation 	1. d4 d5 2. c4 e6 3. Nf3 Nf6 4. Bg5 Bb4+
1608	D30	QGD	Capablanca-Duras Variation 	1. d4 d5 2. c4 e6 3. Nf3 Nf6 4. Bg5 h6
1609	D31	QGD	Hastings Variation 	1. d4 d5 2. c4 e6 3. Nf3 Nf6 4. Bg5 h6 5. Bxf6 Qxf6 6. Nc3 c6 7. Qb3
1610	D31	QGD	3.Nc3	1. d4 d5 2. c4 e6 3. Nc3
1611	D31	QGD	Janowski Variation 	1. d4 d5 2. c4 e6 3. Nc3 a6
1612	D31	QGD	Alapin Variation 	1. d4 d5 2. c4 e6 3. Nc3 b6
1613	D31	QGD	Charousek (Petrosian) Variation 	1. d4 d5 2. c4 e6 3. Nc3 Be7
1614	D31	QGD	Semi-Slav	1. d4 d5 2. c4 e6 3. Nc3 c6
1615	D31	QGD	Semi-Slav, Noteboom Variation 	1. d4 d5 2. c4 e6 3. Nc3 c6 4. Nf3 dxc4
1616	D31	QGD	Semi-Slav, Koomen Variation 	1. d4 d5 2. c4 e6 3. Nc3 c6 4. Nf3 dxc4 5. a4 Bb4 6. e3 b5 7. Bd2 Qe7
1617	D31	QGD	Semi-Slav, Junge Variation 	1. d4 d5 2. c4 e6 3. Nc3 c6 4. Nf3 dxc4 5. a4 Bb4 6. e3 b5 7. Bd2 Qb6
1618	D31	QGD	Semi-Slav, Abrahams Variation 	1. d4 d5 2. c4 e6 3. Nc3 c6 4. Nf3 dxc4 5. a4 Bb4 6. e3 b5 7. Bd2 a5
1619	D32	QGD	Semi-Slav, Marshall gambit	1. d4 d5 2. c4 e6 3. Nc3 c6 4. e4
1620	D32	QGD	Tarrasch defense	1. d4 d5 2. c4 e6 3. Nc3 c5
1621	D32	QGD	Tarrasch, von Hennig-Schara gambit	1. d4 d5 2. c4 e6 3. Nc3 c5 4. cxd5 cxd4
1622	D32	QGD	Tarrasch defense, 4.cd ed	1. d4 d5 2. c4 e6 3. Nc3 c5 4. cxd5 exd5
1623	D32	QGD	Tarrasch defense, Tarrasch gambit	1. d4 d5 2. c4 e6 3. Nc3 c5 4. cxd5 exd5 5. dxc5 d4 6. Na4 b5
1624	D32	QGD	Tarrasch defense, Marshall gambit	1. d4 d5 2. c4 e6 3. Nc3 c5 4. cxd5 exd5 5. e4
1625	D33	QGD	Tarrasch defense	1. d4 d5 2. c4 e6 3. Nc3 c5 4. cxd5 exd5 5. Nf3
1626	D33	QGD	Tarrasch, Schlechter-Rubinstein system	1. d4 d5 2. c4 e6 3. Nc3 c5 4. cxd5 exd5 5. Nf3 Nc6 6. g3
1627	D33	QGD	Tarrasch, Folkestone (Swedish) Variation 	1. d4 d5 2. c4 e6 3. Nc3 c5 4. cxd5 exd5 5. Nf3 Nc6 6. g3 c4
1628	D33	QGD	Tarrasch, Schlechter-Rubinstein system, Rey Ardid Variation 	1. d4 d5 2. c4 e6 3. Nc3 c5 4. cxd5 exd5 5. Nf3 Nc6 6. g3 c4 7. e4
1629	D33	QGD	Tarrasch, Prague Variation 	1. d4 d5 2. c4 e6 3. Nc3 c5 4. cxd5 exd5 5. Nf3 Nc6 6. g3 Nf6
1630	D34	QGD	Tarrasch, Wagner Variation 	1. d4 d5 2. c4 e6 3. Nc3 c5 4. cxd5 exd5 5. Nf3 Nc6 6. g3 Nf6 7. Bg2 Bg4
1631	D34	QGD	Tarrasch, Prague Variation , 7...Be7	1. d4 d5 2. c4 e6 3. Nc3 c5 4. cxd5 exd5 5. Nf3 Nc6 6. g3 Nf6 7. Bg2 Be7
1632	D34	QGD	Tarrasch, Prague Variation , Normal position	1. d4 d5 2. c4 e6 3. Nc3 c5 4. cxd5 exd5 5. Nf3 Nc6 6. g3 Nf6 7. Bg2 Be7 8. O-O O-O
1633	D34	QGD	Tarrasch, Reti Variation 	1. d4 d5 2. c4 e6 3. Nc3 c5 4. cxd5 exd5 5. Nf3 Nc6 6. g3 Nf6 7. Bg2 Be7 8. O-O O-O 9. dxc5 Bxc5 10. Na4
1634	D34	QGD	Tarrasch, Prague Variation , 9.Bg5	1. d4 d5 2. c4 e6 3. Nc3 c5 4. cxd5 exd5 5. Nf3 Nc6 6. g3 Nf6 7. Bg2 Be7 8. O-O O-O 9. Bg5
1635	D34	QGD	Tarrasch, Bogolyubov Variation 	1. d4 d5 2. c4 e6 3. Nc3 c5 4. cxd5 exd5 5. Nf3 Nc6 6. g3 Nf6 7. Bg2 Be7 8. O-O O-O 9. Bg5 Be6 10. Rc1 c4
1636	D35	QGD	Tarrasch, Stoltz Variation 	1. d4 d5 2. c4 e6 3. Nc3 c5 4. cxd5 exd5 5. Nf3 Nc6 6. g3 Nf6 7. Bg2 Be7 8. O-O O-O 9. Bg5 Be6 10. Rc1 b6
1637	D35	QGD	3...Nf6	1. d4 d5 2. c4 e6 3. Nc3 Nf6
1638	D35	QGD	Harrwitz attack	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Bf4
1639	D35	QGD	Exchange Variation 	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. cxd5
1640	D35	QGD	Exchange, Saemisch Variation 	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. cxd5 exd5 5. Nf3 Nbd7 6. Bf4
1641	D35	QGD	Exchange, positional line	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. cxd5 exd5 5. Bg5
1642	D35	QGD	Exchange, chameleon Variation 	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. cxd5 exd5 5. Bg5 Be7 6. e3 O-O 7. Bd3 Nbd7 8. Qc2 Re8 9. Nge2 Nf8 10. O-O-O
1643	D36	QGD	Exchange, positional line, 5...c6	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. cxd5 exd5 5. Bg5 c6
1644	D37	QGD	Exchange, positional line, 6.Qc2	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. cxd5 exd5 5. Bg5 c6 6. Qc2
1645	D37	QGD	4.Nf3	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Nf3
1646	D38	QGD	Classical Variation (5.Bf4)	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Nf3 Be7 5. Bf4
1647	D39	QGD	Ragozin Variation 	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Nf3 Bb4
1648	D40	QGD	Ragozin, Vienna Variation 	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Nf3 Bb4 5. Bg5 dxc4
1649	D40	QGD	Semi-Tarrasch defense	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Nf3 c5
1650	D40	QGD	Semi-Tarrasch, Symmetrical Variation 	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Nf3 c5 5. e3 Nc6 6. Bd3 Bd6 7. O-O O-O
1651	D40	QGD	Semi-Tarrasch, Levenfish Variation 	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Nf3 c5 5. e3 Nc6 6. Bd3 Bd6 7. O-O O-O 8. Qe2 Qe7 9. dxc5 Bxc5 10. e4
1652	D41	QGD	Semi-Tarrasch defense, Pillsbury Variation 	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Nf3 c5 5. Bg5
1653	D41	QGD	Semi-Tarrasch, 5.cd	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Nf3 c5 5. cxd5
1654	D41	QGD	Semi-Tarrasch, Kmoch Variation 	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Nf3 c5 5. cxd5 Nxd5 6. e4 Nxc3 7. bxc3 cxd4 8. cxd4 Bb4+ 9. Bd2 Bxd2+ 10. Qxd2 O-O 11. Bb5
1655	D41	QGD	Semi-Tarrasch, San Sebastian Variation 	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Nf3 c5 5. cxd5 Nxd5 6. e4 Nxc3 7. bxc3 cxd4 8. cxd4 Bb4+ 9. Bd2 Qa5
1656	D42	QGD	Semi-Tarrasch with e3	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Nf3 c5 5. cxd5 Nxd5 6. e3
1657	D43	QGD Semi-Slav	Semi-Tarrasch, 7.Bd3	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Nf3 c5 5. cxd5 Nxd5 6. e3 Nc6 7. Bd3
1658	D43	QGD Semi-Slav	N/A	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Nf3 c6
1659	D44	QGD Semi-Slav	Hastings Variation 	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Nf3 c6 5. Bg5 h6 6. Bxf6 Qxf6 7. Qb3
1660	D44	QGD Semi-Slav	5.Bg5 dc	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Nf3 c6 5. Bg5 dxc4
1661	D44	QGD Semi-Slav	Botvinnik system (anti-Meran)	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Nf3 c6 5. Bg5 dxc4 6. e4
1662	D44	QGD Semi-Slav	Ekstrom Variation 	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Nf3 c6 5. Bg5 dxc4 6. e4 b5 7. e5 h6 8. Bh4 g5 9. exf6 gxh4 10. Ne5
1663	D44	QGD Semi-Slav	Anti-Meran gambit	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Nf3 c6 5. Bg5 dxc4 6. e4 b5 7. e5 h6 8. Bh4 g5 9. Nxg5
1664	D44	QGD Semi-Slav	Anti-Meran, Lilienthal Variation 	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Nf3 c6 5. Bg5 dxc4 6. e4 b5 7. e5 h6 8. Bh4 g5 9. Nxg5 hxg5 10. Bxg5 Nbd7 11. g3
1665	D44	QGD Semi-Slav	Anti-Meran, Szabo Variation 	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Nf3 c6 5. Bg5 dxc4 6. e4 b5 7. e5 h6 8. Bh4 g5 9. Nxg5 hxg5 10. Bxg5 Nbd7 11. Qf3
1666	D45	QGD Semi-Slav	Anti-Meran, Alatortsev system	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Nf3 c6 5. Bg5 dxc4 6. e4 b5 7. e5 h6 8. Bh4 g5 9. Nxg5 Nd5
1667	D45	QGD Semi-Slav	5.e3	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Nf3 c6 5. e3
1668	D45	QGD Semi-Slav	Stonewall defense	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Nf3 c6 5. e3 Ne4 6. Bd3 f5
1669	D45	QGD Semi-Slav	Accelerated Meran (Alekhine Variation )	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Nf3 c6 5. e3 a6
1670	D45	QGD Semi-Slav	5...Nd7	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Nf3 c6 5. e3 Nbd7
1671	D45	QGD Semi-Slav	Stoltz Variation 	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Nf3 c6 5. e3 Nbd7 6. Qc2
1672	D46	QGD Semi-Slav	Rubinstein (anti-Meran) system	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Nf3 c6 5. e3 Nbd7 6. Ne5
1673	D46	QGD Semi-Slav	6.Bd3	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Nf3 c6 5. e3 Nbd7 6. Bd3
1674	D46	QGD Semi-Slav	Bogolyubov Variation 	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Nf3 c6 5. e3 Nbd7 6. Bd3 Be7
1675	D46	QGD Semi-Slav	Romih Variation 	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Nf3 c6 5. e3 Nbd7 6. Bd3 Bb4
1676	D47	QGD Semi-Slav	Chigorin defense	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Nf3 c6 5. e3 Nbd7 6. Bd3 Bd6
1677	D47	QGD Semi-Slav	7.Bc4	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Nf3 c6 5. e3 Nbd7 6. Bd3 dxc4 7. Bxc4
1678	D47	QGD Semi-Slav	Meran Variation 	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Nf3 c6 5. e3 Nbd7 6. Bd3 dxc4 7. Bxc4 b5
1679	D47	QGD Semi-Slav	neo-Meran (Lundin Variation )	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Nf3 c6 5. e3 Nbd7 6. Bd3 dxc4 7. Bxc4 b5 8. Bd3 b4
1680	D48	QGD Semi-Slav	Meran, Wade Variation 	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Nf3 c6 5. e3 Nbd7 6. Bd3 dxc4 7. Bxc4 b5 8. Bd3 Bb7
1681	D48	QGD Semi-Slav	Meran, 8...a6	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Nf3 c6 5. e3 Nbd7 6. Bd3 dxc4 7. Bxc4 b5 8. Bd3 a6
1682	D48	QGD Semi-Slav	Meran, Pirc Variation 	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Nf3 c6 5. e3 Nbd7 6. Bd3 dxc4 7. Bxc4 b5 8. Bd3 a6 9. e4 b4
1683	D48	QGD Semi-Slav	Meran	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Nf3 c6 5. e3 Nbd7 6. Bd3 dxc4 7. Bxc4 b5 8. Bd3 a6 9. e4 c5
1684	D48	QGD Semi-Slav	Meran, ReynOlds' Variation 	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Nf3 c6 5. e3 Nbd7 6. Bd3 dxc4 7. Bxc4 b5 8. Bd3 a6 9. e4 c5 10. d5
1685	D49	QGD Semi-Slav	Meran, Old Main line	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Nf3 c6 5. e3 Nbd7 6. Bd3 dxc4 7. Bxc4 b5 8. Bd3 a6 9. e4 c5 10. e5
1686	D49	QGD Semi-Slav	Meran, Blumenfeld Variation 	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Nf3 c6 5. e3 Nbd7 6. Bd3 dxc4 7. Bxc4 b5 8. Bd3 a6 9. e4 c5 10. e5 cxd4 11. Nxb5
1687	D49	QGD Semi-Slav	Meran, Rabinovich Variation 	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Nf3 c6 5. e3 Nbd7 6. Bd3 dxc4 7. Bxc4 b5 8. Bd3 a6 9. e4 c5 10. e5 cxd4 11. Nxb5 Ng4
1688	D49	QGD Semi-Slav	Meran, Sozin Variation 	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Nf3 c6 5. e3 Nbd7 6. Bd3 dxc4 7. Bxc4 b5 8. Bd3 a6 9. e4 c5 10. e5 cxd4 11. Nxb5 Nxe5
1689	D49	QGD Semi-Slav	Meran, Stahlberg Variation 	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Nf3 c6 5. e3 Nbd7 6. Bd3 dxc4 7. Bxc4 b5 8. Bd3 a6 9. e4 c5 10. e5 cxd4 11. Nxb5 Nxe5 12. Nxe5 axb5 13. Qf3
1690	D49	QGD Semi-Slav	Meran, Sozin Variation 	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Nf3 c6 5. e3 Nbd7 6. Bd3 dxc4 7. Bxc4 b5 8. Bd3 a6 9. e4 c5 10. e5 cxd4 11. Nxb5 Nxe5 12. Nxe5 axb5 13. O-O
1691	D50	QGD	Meran, Rellstab attack	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Nf3 c6 5. e3 Nbd7 6. Bd3 dxc4 7. Bxc4 b5 8. Bd3 a6 9. e4 c5 10. e5 cxd4 11. Nxb5 Nxe5 12. Nxe5 axb5 13. O-O Qd5 14. Qe2 Ba6 15. Bg5
1692	D50	QGD	4.Bg5	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Bg5
1693	D50	QGD	Been-Koomen Variation 	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Bg5 c5
1694	D50	QGD	Semi-Tarrasch, Krause Variation 	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Bg5 c5 5. Nf3 cxd4 6. Nxd4 e5 7. Ndb5 a6 8. Qa4
1695	D50	QGD	Semi-Tarrasch, Primitive Pillsbury Variation 	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Bg5 c5 5. Nf3 cxd4 6. Qxd4
1696	D50	QGD	Semi-Tarrasch	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Bg5 c5 5. cxd5
1697	D51	QGD	Canal (Venice) Variation 	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Bg5 c5 5. cxd5 Qb6
1698	D51	QGD	4.Bg5 Nbd7	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Bg5 Nbd7
1699	D51	QGD	Rochlin Variation 	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Bg5 Nbd7 5. Nf3 c6 6. Rc1 Qa5 7. Bd2
1700	D51	QGD	Alekhine Variation 	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Bg5 Nbd7 5. Nf3 c6 6. e4
1701	D51	QGD	N/A	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Bg5 Nbd7 5. e3
1702	D51	QGD	Manhattan Variation 	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Bg5 Nbd7 5. e3 Bb4
1703	D51	QGD	5...c6	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Bg5 Nbd7 5. e3 c6
1704	D52	QGD	Capablanca anti-Cambridge Springs Variation 	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Bg5 Nbd7 5. e3 c6 6. a3
1705	D52	QGD	N/A	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Bg5 Nbd7 5. e3 c6 6. Nf3
1706	D52	QGD	Cambridge Springs defense	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Bg5 Nbd7 5. e3 c6 6. Nf3 Qa5
1707	D52	QGD	Cambridge Springs defense, Bogoljubow Variation 	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Bg5 Nbd7 5. e3 c6 6. Nf3 Qa5 7. Nd2 Bb4 8. Qc2
1708	D52	QGD	Cambridge Springs defense, Argentine Variation 	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Bg5 Nbd7 5. e3 c6 6. Nf3 Qa5 7. Nd2 Bb4 8. Qc2 O-O 9. Bh4
1709	D52	QGD	Cambridge Springs defense, Rubinstein Variation 	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Bg5 Nbd7 5. e3 c6 6. Nf3 Qa5 7. Nd2 dxc4
1710	D52	QGD	Cambridge Springs defense, Capablanca Variation 	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Bg5 Nbd7 5. e3 c6 6. Nf3 Qa5 7. Bxf6
1711	D52	QGD	Cambridge Springs defense, 7.cd	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Bg5 Nbd7 5. e3 c6 6. Nf3 Qa5 7. cxd5
1712	D53	QGD	Cambridge Springs defense, Yugoslav Variation 	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Bg5 Nbd7 5. e3 c6 6. Nf3 Qa5 7. cxd5 Nxd5
1713	D53	QGD	4.Bg5 Be7	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Bg5 Be7
1714	D53	QGD	Lasker Variation 	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Bg5 Be7 5. e3 Ne4
1715	D54	QGD	4.Bg5 Be7, 5.e3 O-O	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Bg5 Be7 5. e3 O-O
1716	D55	QGD	Anti-neo-Orthodox Variation 	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Bg5 Be7 5. e3 O-O 6. Rc1
1717	D55	QGD	6.Nf3	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Bg5 Be7 5. e3 O-O 6. Nf3
1718	D55	QGD	Pillsbury attack	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Bg5 Be7 5. e3 O-O 6. Nf3 b6 7. Bd3 Bb7 8. cxd5 exd5 9. Ne5
1719	D55	QGD	Neo-Orthodox Variation 	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Bg5 Be7 5. e3 O-O 6. Nf3 h6
1720	D55	QGD	Neo-Orthodox Variation , 7.Bxf6	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Bg5 Be7 5. e3 O-O 6. Nf3 h6 7. Bxf6
1721	D55	QGD	Petrosian Variation 	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Bg5 Be7 5. e3 O-O 6. Nf3 h6 7. Bxf6 Bxf6 8. Rc1 c6 9. Bd3 Nd7 10. O-O dxc4 11. Bxc4
1722	D56	QGD	Neo-Orthodox Variation , 7.Bh4	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Bg5 Be7 5. e3 O-O 6. Nf3 h6 7. Bh4
1723	D56	QGD	Lasker defense	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Bg5 Be7 5. e3 O-O 6. Nf3 h6 7. Bh4 Ne4
1724	D56	QGD	Lasker defense, Teichmann Variation 	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Bg5 Be7 5. e3 O-O 6. Nf3 h6 7. Bh4 Ne4 8. Bxe7 Qxe7 9. Qc2
1725	D57	QGD	Lasker defense, Russian Variation 	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Bg5 Be7 5. e3 O-O 6. Nf3 h6 7. Bh4 Ne4 8. Bxe7 Qxe7 9. Qc2 Nf6 10. Bd3 dxc4 11. Bxc4 c5 12. O-O Nc6 13. Rfd1 Bd7
1726	D57	QGD	Lasker defense, Main line	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Bg5 Be7 5. e3 O-O 6. Nf3 h6 7. Bh4 Ne4 8. Bxe7 Qxe7 9. cxd5 Nxc3 10. bxc3
1727	D58	QGD	Lasker defense, Bernstein Variation 	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Bg5 Be7 5. e3 O-O 6. Nf3 h6 7. Bh4 Ne4 8. Bxe7 Qxe7 9. cxd5 Nxc3 10. bxc3 exd5 11. Qb3 Qd6
1728	D59	QGD	Tartakower (Makagonov-Bondarevsky) system	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Bg5 Be7 5. e3 O-O 6. Nf3 h6 7. Bh4 b6
1729	D59	QGD	Tartakower (Makagonov-Bondarevsky) system, 8.cd Nxd5	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Bg5 Be7 5. e3 O-O 6. Nf3 h6 7. Bh4 b6 8. cxd5 Nxd5
1730	D60	QGD	Tartakower Variation 	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Bg5 Be7 5. e3 O-O 6. Nf3 h6 7. Bh4 b6 8. cxd5 Nxd5 9. Bxe7 Qxe7 10. Nxd5 exd5 11. Rc1 Be6
1731	D60	QGD	Orthodox defense	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Bg5 Be7 5. e3 O-O 6. Nf3 Nbd7
1732	D60	QGD	Orthodox defense, Botvinnik Variation 	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Bg5 Be7 5. e3 O-O 6. Nf3 Nbd7 7. Bd3
1733	D61	QGD	Orthodox defense, Rauzer Variation 	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Bg5 Be7 5. e3 O-O 6. Nf3 Nbd7 7. Qb3
1734	D62	QGD	Orthodox defense, Rubinstein Variation 	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Bg5 Be7 5. e3 O-O 6. Nf3 Nbd7 7. Qc2
1735	D63	QGD	Orthodox defense, 7.Qc2 c5, 8.cd (Rubinstein)	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Bg5 Be7 5. e3 O-O 6. Nf3 Nbd7 7. Qc2 c5 8. cxd5
1736	D63	QGD	Orthodox defense, 7.Rc1	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Bg5 Be7 5. e3 O-O 6. Nf3 Nbd7 7. Rc1
1737	D63	QGD	Orthodox defense, Pillsbury attack	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Bg5 Be7 5. e3 O-O 6. Nf3 Nbd7 7. Rc1 b6 8. cxd5 exd5 9. Bd3
1738	D63	QGD	Orthodox defense, Capablanca Variation 	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Bg5 Be7 5. e3 O-O 6. Nf3 Nbd7 7. Rc1 b6 8. cxd5 exd5 9. Bb5
1739	D63	QGD	Orthodox defense, Swiss (Henneberger) Variation 	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Bg5 Be7 5. e3 O-O 6. Nf3 Nbd7 7. Rc1 a6
1740	D63	QGD	Orthodox defense, Swiss, Karlsbad Variation 	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Bg5 Be7 5. e3 O-O 6. Nf3 Nbd7 7. Rc1 a6 8. cxd5
1741	D64	QGD	Orthodox defense	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Bg5 Be7 5. e3 O-O 6. Nf3 Nbd7 7. Rc1 c6
1742	D64	QGD	Orthodox defense, Rubinstein attack (with Rc1)	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Bg5 Be7 5. e3 O-O 6. Nf3 Nbd7 7. Rc1 c6 8. Qc2
1743	D64	QGD	Orthodox defense, Rubinstein attack, Wolf Variation 	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Bg5 Be7 5. e3 O-O 6. Nf3 Nbd7 7. Rc1 c6 8. Qc2 Ne4
1744	D64	QGD	Orthodox defense, Rubinstein attack, Karlsbad Variation 	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Bg5 Be7 5. e3 O-O 6. Nf3 Nbd7 7. Rc1 c6 8. Qc2 a6
1745	D65	QGD	Orthodox defense, Rubinstein attack, Gruenfeld Variation 	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Bg5 Be7 5. e3 O-O 6. Nf3 Nbd7 7. Rc1 c6 8. Qc2 a6 9. a3
1746	D66	QGD	Orthodox defense, Rubinstein attack, Main line	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Bg5 Be7 5. e3 O-O 6. Nf3 Nbd7 7. Rc1 c6 8. Qc2 a6 9. cxd5
1747	D66	QGD	Orthodox defense, Bd3 line	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Bg5 Be7 5. e3 O-O 6. Nf3 Nbd7 7. Rc1 c6 8. Bd3
1748	D67	QGD	Orthodox defense, Bd3 line, Fianchetto Variation 	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Bg5 Be7 5. e3 O-O 6. Nf3 Nbd7 7. Rc1 c6 8. Bd3 dxc4 9. Bxc4 b5
1749	D67	QGD	Orthodox defense, Bd3 line, Capablanca freeing manoevre	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Bg5 Be7 5. e3 O-O 6. Nf3 Nbd7 7. Rc1 c6 8. Bd3 dxc4 9. Bxc4 Nd5
1750	D67	QGD	Orthodox defense, Bd3 line, Janowski Variation 	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Bg5 Be7 5. e3 O-O 6. Nf3 Nbd7 7. Rc1 c6 8. Bd3 dxc4 9. Bxc4 Nd5 10. h4
1751	D67	QGD	Orthodox defense, Bd3 line	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Bg5 Be7 5. e3 O-O 6. Nf3 Nbd7 7. Rc1 c6 8. Bd3 dxc4 9. Bxc4 Nd5 10. Bxe7 Qxe7
1752	D67	QGD	Orthodox defense, Bd3 line, Alekhine Variation 	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Bg5 Be7 5. e3 O-O 6. Nf3 Nbd7 7. Rc1 c6 8. Bd3 dxc4 9. Bxc4 Nd5 10. Bxe7 Qxe7 11. Ne4
1753	D68	QGD	Orthodox defense, Bd3 line, 11.O-O	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Bg5 Be7 5. e3 O-O 6. Nf3 Nbd7 7. Rc1 c6 8. Bd3 dxc4 9. Bxc4 Nd5 10. Bxe7 Qxe7 11. O-O
1754	D68	QGD	Orthodox defense, Classical Variation 	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Bg5 Be7 5. e3 O-O 6. Nf3 Nbd7 7. Rc1 c6 8. Bd3 dxc4 9. Bxc4 Nd5 10. Bxe7 Qxe7 11. O-O Nxc3 12. Rxc3 e5
1755	D68	QGD	Orthodox defense, Classical, 13.d1b1 (Maroczy)	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Bg5 Be7 5. e3 O-O 6. Nf3 Nbd7 7. Rc1 c6 8. Bd3 dxc4 9. Bxc4 Nd5 10. Bxe7 Qxe7 11. O-O Nxc3 12. Rxc3 e5 13. Qb1
1756	D69	QGD	Orthodox defense, Classical, 13.d1c2 (Vidmar)	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Bg5 Be7 5. e3 O-O 6. Nf3 Nbd7 7. Rc1 c6 8. Bd3 dxc4 9. Bxc4 Nd5 10. Bxe7 Qxe7 11. O-O Nxc3 12. Rxc3 e5 13. Qc2
1757	D70	Neo-Gruenfeld defense	Orthodox defense, Classical, 13.de	1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Bg5 Be7 5. e3 O-O 6. Nf3 Nbd7 7. Rc1 c6 8. Bd3 dxc4 9. Bxc4 Nd5 10. Bxe7 Qxe7 11. O-O Nxc3 12. Rxc3 e5 13. dxe5 Nxe5 14. Nxe5 Qxe5
1758	D70	Neo-Gruenfeld (Kemeri) defense	N/A	1. d4 Nf6 2. c4 g6 3. f3 d5
1759	D71	Neo-Gruenfeld, 5.cd	N/A	1. d4 Nf6 2. c4 g6 3. g3 d5
1760	D72	Neo-Gruenfeld, 5.cd, Main line	N/A	1. d4 Nf6 2. c4 g6 3. g3 d5 4. Bg2 Bg7 5. cxd5 Nxd5
1761	D73	Neo-Gruenfeld, 5.Nf3	N/A	1. d4 Nf6 2. c4 g6 3. g3 d5 4. Bg2 Bg7 5. cxd5 Nxd5 6. e4 Nb6 7. Ne2
1762	D74	Neo-Gruenfeld, 6.cd Nxd5, 7.O-O	N/A	1. d4 Nf6 2. c4 g6 3. g3 d5 4. Bg2 Bg7 5. Nf3
1763	D75	Neo-Gruenfeld, 6.cd Nxd5, 7.O-O c5, 8.Nc3	N/A	1. d4 Nf6 2. c4 g6 3. g3 d5 4. Bg2 Bg7 5. Nf3 O-O 6. cxd5 Nxd5 7. O-O
1764	D75	Neo-Gruenfeld, 6.cd Nxd5, 7.O-O c5, 8.dc	N/A	1. d4 Nf6 2. c4 g6 3. g3 d5 4. Bg2 Bg7 5. Nf3 O-O 6. cxd5 Nxd5 7. O-O c5 8. Nc3
1765	D76	Neo-Gruenfeld, 6.cd Nxd5, 7.O-O Nb6	N/A	1. d4 Nf6 2. c4 g6 3. g3 d5 4. Bg2 Bg7 5. Nf3 O-O 6. cxd5 Nxd5 7. O-O c5 8. dxc5
1766	D77	Neo-Gruenfeld, 6.O-O	N/A	1. d4 Nf6 2. c4 g6 3. g3 d5 4. Bg2 Bg7 5. Nf3 O-O 6. cxd5 Nxd5 7. O-O Nb6
1767	D78	Neo-Gruenfeld, 6.O-O c6	N/A	1. d4 Nf6 2. c4 g6 3. g3 d5 4. Bg2 Bg7 5. Nf3 O-O 6. O-O
1768	D79	Neo-Gruenfeld, 6.O-O, Main line	N/A	1. d4 Nf6 2. c4 g6 3. g3 d5 4. Bg2 Bg7 5. Nf3 O-O 6. O-O c6
1769	D80	Gruenfeld defense	N/A	1. d4 Nf6 2. c4 g6 3. g3 d5 4. Bg2 Bg7 5. Nf3 O-O 6. O-O c6 7. cxd5 cxd5
1770	D80	Gruenfeld	N/A	1. d4 Nf6 2. c4 g6 3. Nc3 d5
1771	D80	Gruenfeld	Spike gambit	1. d4 Nf6 2. c4 g6 3. Nc3 d5 4. g4
1772	D80	Gruenfeld	Stockholm Variation 	1. d4 Nf6 2. c4 g6 3. Nc3 d5 4. Bg5
1773	D81	Gruenfeld	Lundin Variation 	1. d4 Nf6 2. c4 g6 3. Nc3 d5 4. Bg5 Ne4 5. Nxe4 dxe4 6. Qd2 c5
1774	D82	Gruenfeld	Russian Variation 	1. d4 Nf6 2. c4 g6 3. Nc3 d5 4. Qb3
1775	D83	Gruenfeld	4.Bf4	1. d4 Nf6 2. c4 g6 3. Nc3 d5 4. Bf4
1776	D83	Gruenfeld	Gruenfeld gambit	1. d4 Nf6 2. c4 g6 3. Nc3 d5 4. Bf4 Bg7 5. e3 O-O
1777	D83	Gruenfeld	Gruenfeld gambit, Capablanca Variation 	1. d4 Nf6 2. c4 g6 3. Nc3 d5 4. Bf4 Bg7 5. e3 O-O 6. Rc1
1778	D84	Gruenfeld	Gruenfeld gambit, Botvinnik Variation 	1. d4 Nf6 2. c4 g6 3. Nc3 d5 4. Bf4 Bg7 5. e3 O-O 6. Rc1 c5 7. dxc5 Be6
1779	D85	Gruenfeld	Gruenfeld gambit accepted	1. d4 Nf6 2. c4 g6 3. Nc3 d5 4. Bf4 Bg7 5. e3 O-O 6. cxd5 Nxd5 7. Nxd5 Qxd5 8. Bxc7
1780	D85	Gruenfeld	Exchange Variation 	1. d4 Nf6 2. c4 g6 3. Nc3 d5 4. cxd5 Nxd5
1781	D86	Gruenfeld	Modern Exchange Variation 	1. d4 Nf6 2. c4 g6 3. Nc3 d5 4. cxd5 Nxd5 5. e4 Nxc3 6. bxc3 Bg7 7. Nf3
1782	D86	Gruenfeld	Exchange, Classical Variation 	1. d4 Nf6 2. c4 g6 3. Nc3 d5 4. cxd5 Nxd5 5. e4 Nxc3 6. bxc3 Bg7 7. Bc4
1783	D86	Gruenfeld	Exchange, Larsen Variation 	1. d4 Nf6 2. c4 g6 3. Nc3 d5 4. cxd5 Nxd5 5. e4 Nxc3 6. bxc3 Bg7 7. Bc4 O-O 8. Ne2 Qd7 9. O-O b6
1784	D86	Gruenfeld	Exchange, Simagin's lesser Variation 	1. d4 Nf6 2. c4 g6 3. Nc3 d5 4. cxd5 Nxd5 5. e4 Nxc3 6. bxc3 Bg7 7. Bc4 O-O 8. Ne2 b6
1785	D87	Gruenfeld	Exchange, Simagin's improved Variation 	1. d4 Nf6 2. c4 g6 3. Nc3 d5 4. cxd5 Nxd5 5. e4 Nxc3 6. bxc3 Bg7 7. Bc4 O-O 8. Ne2 Nc6
1786	D87	Gruenfeld	Exchange, Spassky Variation 	1. d4 Nf6 2. c4 g6 3. Nc3 d5 4. cxd5 Nxd5 5. e4 Nxc3 6. bxc3 Bg7 7. Bc4 O-O 8. Ne2 c5
1787	D88	Gruenfeld	Exchange, Seville Variation 	1. d4 Nf6 2. c4 g6 3. Nc3 d5 4. cxd5 Nxd5 5. e4 Nxc3 6. bxc3 Bg7 7. Bc4 O-O 8. Ne2 c5 9. O-O Nc6 10. Be3 Bg4 11. f3 Na5 12. Bxf7+
1788	D89	Gruenfeld	Spassky Variation , Main line, 10...cd, 11.cd	1. d4 Nf6 2. c4 g6 3. Nc3 d5 4. cxd5 Nxd5 5. e4 Nxc3 6. bxc3 Bg7 7. Bc4 O-O 8. Ne2 c5 9. O-O Nc6 10. Be3 cxd4 11. cxd4
1789	D89	Gruenfeld	Spassky Variation , Main line, 13.Bd3	1. d4 Nf6 2. c4 g6 3. Nc3 d5 4. cxd5 Nxd5 5. e4 Nxc3 6. bxc3 Bg7 7. Bc4 O-O 8. Ne2 c5 9. O-O Nc6 10. Be3 cxd4 11. cxd4 Bg4 12. f3 Na5 13. Bd3 Be6
1790	D90	Gruenfeld	Exchange, Sokolsky Variation 	1. d4 Nf6 2. c4 g6 3. Nc3 d5 4. cxd5 Nxd5 5. e4 Nxc3 6. bxc3 Bg7 7. Bc4 O-O 8. Ne2 c5 9. O-O Nc6 10. Be3 cxd4 11. cxd4 Bg4 12. f3 Na5 13. Bd3 Be6 14. d5
1791	D90	Gruenfeld	Three knights Variation 	1. d4 Nf6 2. c4 g6 3. Nc3 d5 4. Nf3
1792	D90	Gruenfeld	Schlechter Variation 	1. d4 Nf6 2. c4 g6 3. Nc3 d5 4. Nf3 c6
1793	D90	Gruenfeld	Three knights Variation 	1. d4 Nf6 2. c4 g6 3. Nc3 d5 4. Nf3 Bg7
1794	D91	Gruenfeld	Flohr Variation 	1. d4 Nf6 2. c4 g6 3. Nc3 d5 4. Nf3 Bg7 5. Qa4+
1795	D92	Gruenfeld	5.Bg5	1. d4 Nf6 2. c4 g6 3. Nc3 d5 4. Nf3 Bg7 5. Bg5
1796	D93	Gruenfeld with Bf4    e3	5.Bf4	1. d4 Nf6 2. c4 g6 3. Nc3 d5 4. Nf3 Bg7 5. Bf4
1797	D94	Gruenfeld	N/A	1. d4 Nf6 2. c4 g6 3. Nc3 d5 4. Nf3 Bg7 5. Bf4 O-O 6. e3
1798	D94	Gruenfeld	5.e3	1. d4 Nf6 2. c4 g6 3. Nc3 d5 4. Nf3 Bg7 5. e3
1799	D94	Gruenfeld	Makogonov Variation 	1. d4 Nf6 2. c4 g6 3. Nc3 d5 4. Nf3 Bg7 5. e3 O-O 6. b4
1800	D94	Gruenfeld with e3    Bd3	Opovcensky Variation 	1. d4 Nf6 2. c4 g6 3. Nc3 d5 4. Nf3 Bg7 5. e3 O-O 6. Bd2
1801	D94	Gruenfeld	N/A	1. d4 Nf6 2. c4 g6 3. Nc3 d5 4. Nf3 Bg7 5. e3 O-O 6. Bd3
1802	D94	Gruenfeld	Smyslov defense	1. d4 Nf6 2. c4 g6 3. Nc3 d5 4. Nf3 Bg7 5. e3 O-O 6. Bd3 c6 7. O-O Bg4
1803	D95	Gruenfeld with e3 & Qb3	Flohr defense	1. d4 Nf6 2. c4 g6 3. Nc3 d5 4. Nf3 Bg7 5. e3 O-O 6. Bd3 c6 7. O-O Bf5
1804	D95	Gruenfeld	N/A	1. d4 Nf6 2. c4 g6 3. Nc3 d5 4. Nf3 Bg7 5. e3 O-O 6. Qb3
1805	D95	Gruenfeld	Botvinnik Variation 	1. d4 Nf6 2. c4 g6 3. Nc3 d5 4. Nf3 Bg7 5. e3 O-O 6. Qb3 e6
1806	D96	Gruenfeld	Pachman Variation 	1. d4 Nf6 2. c4 g6 3. Nc3 d5 4. Nf3 Bg7 5. e3 O-O 6. Qb3 dxc4 7. Bxc4 Nbd7 8. Ng5
1807	D97	Gruenfeld	Russian Variation 	1. d4 Nf6 2. c4 g6 3. Nc3 d5 4. Nf3 Bg7 5. Qb3
1808	D97	Gruenfeld	Russian Variation with e4	1. d4 Nf6 2. c4 g6 3. Nc3 d5 4. Nf3 Bg7 5. Qb3 dxc4 6. Qxc4 O-O 7. e4
1809	D97	Gruenfeld	Russian, Alekhine (Hungarian) Variation 	1. d4 Nf6 2. c4 g6 3. Nc3 d5 4. Nf3 Bg7 5. Qb3 dxc4 6. Qxc4 O-O 7. e4 a6
1810	D97	Gruenfeld	Russian, Szabo (Boleslavsky) Variation 	1. d4 Nf6 2. c4 g6 3. Nc3 d5 4. Nf3 Bg7 5. Qb3 dxc4 6. Qxc4 O-O 7. e4 c6
1811	D97	Gruenfeld	Russian, Levenfish Variation 	1. d4 Nf6 2. c4 g6 3. Nc3 d5 4. Nf3 Bg7 5. Qb3 dxc4 6. Qxc4 O-O 7. e4 b6
1812	D97	Gruenfeld	Russian, Byrne (Simagin) Variation 	1. d4 Nf6 2. c4 g6 3. Nc3 d5 4. Nf3 Bg7 5. Qb3 dxc4 6. Qxc4 O-O 7. e4 Nc6
1813	D98	Gruenfeld	Russian, Prins Variation 	1. d4 Nf6 2. c4 g6 3. Nc3 d5 4. Nf3 Bg7 5. Qb3 dxc4 6. Qxc4 O-O 7. e4 Na6
1814	D98	Gruenfeld	Russian, Smyslov Variation 	1. d4 Nf6 2. c4 g6 3. Nc3 d5 4. Nf3 Bg7 5. Qb3 dxc4 6. Qxc4 O-O 7. e4 Bg4
1815	D99	Gruenfeld defense	Russian, Keres Variation 	1. d4 Nf6 2. c4 g6 3. Nc3 d5 4. Nf3 Bg7 5. Qb3 dxc4 6. Qxc4 O-O 7. e4 Bg4 8. Be3 Nfd7 9. Be2 Nb6 10. Qd3 Nc6 11. O-O-O
1816	D99	Gruenfeld defense	Smyslov, Main line	1. d4 Nf6 2. c4 g6 3. Nc3 d5 4. Nf3 Bg7 5. Qb3 dxc4 6. Qxc4 O-O 7. e4 Bg4 8. Be3 Nfd7 9. Qb3
1817	E00	Queen's pawn game	Smyslov, Yugoslav Variation 	1. d4 Nf6 2. c4 g6 3. Nc3 d5 4. Nf3 Bg7 5. Qb3 dxc4 6. Qxc4 O-O 7. e4 Bg4 8. Be3 Nfd7 9. Qb3 c5
1818	E00	Neo-Indian (Seirawan) attack	N/A	1. d4 Nf6 2. c4 e6
1819	E00	Catalan Opening	N/A	1. d4 Nf6 2. c4 e6 3. Bg5
1820	E01	Catalan	N/A	1. d4 Nf6 2. c4 e6 3. g3
1821	E02	Catalan	Closed	1. d4 Nf6 2. c4 e6 3. g3 d5 4. Bg2
1822	E03	Catalan	Open, 5.Qa4	1. d4 Nf6 2. c4 e6 3. g3 d5 4. Bg2 dxc4 5. Qa4+
1823	E03	Catalan	Open, Alekhine Variation 	1. d4 Nf6 2. c4 e6 3. g3 d5 4. Bg2 dxc4 5. Qa4+ Nbd7 6. Qxc4 a6 7. Qc2
1824	E04	Catalan	Open, 5.Qa4 Nbd7, 6.Qxc4	1. d4 Nf6 2. c4 e6 3. g3 d5 4. Bg2 dxc4 5. Qa4+ Nbd7 6. Qxc4
1825	E05	Catalan	Open, 5.Nf3	1. d4 Nf6 2. c4 e6 3. g3 d5 4. Bg2 dxc4 5. Nf3
1826	E06	Catalan	Open, Classical line	1. d4 Nf6 2. c4 e6 3. g3 d5 4. Bg2 dxc4 5. Nf3 Be7
1827	E07	Catalan	Closed, 5.Nf3	1. d4 Nf6 2. c4 e6 3. g3 d5 4. Bg2 Be7 5. Nf3
1828	E07	Catalan	Closed, 6...Nbd7	1. d4 Nf6 2. c4 e6 3. g3 d5 4. Bg2 Be7 5. Nf3 O-O 6. O-O Nbd7
1829	E08	Catalan	Closed, Botvinnik Variation 	1. d4 Nf6 2. c4 e6 3. g3 d5 4. Bg2 Be7 5. Nf3 O-O 6. O-O Nbd7 7. Nc3 c6 8. Qd3
1830	E08	Catalan	Closed, 7.Qc2	1. d4 Nf6 2. c4 e6 3. g3 d5 4. Bg2 Be7 5. Nf3 O-O 6. O-O Nbd7 7. Qc2
1831	E08	Catalan	Closed, Zagoryansky Variation 	1. d4 Nf6 2. c4 e6 3. g3 d5 4. Bg2 Be7 5. Nf3 O-O 6. O-O Nbd7 7. Qc2 c6 8. Rd1 b6 9. a4
1832	E08	Catalan	Closed, Qc2 & b3	1. d4 Nf6 2. c4 e6 3. g3 d5 4. Bg2 Be7 5. Nf3 O-O 6. O-O Nbd7 7. Qc2 c6 8. b3
1833	E09	Catalan	Closed, Spassky gambit	1. d4 Nf6 2. c4 e6 3. g3 d5 4. Bg2 Be7 5. Nf3 O-O 6. O-O Nbd7 7. Qc2 c6 8. b3 b6 9. Rd1 Bb7 10. Nc3 b5
1834	E09	Catalan	Closed, Main line	1. d4 Nf6 2. c4 e6 3. g3 d5 4. Bg2 Be7 5. Nf3 O-O 6. O-O Nbd7 7. Qc2 c6 8. Nbd2
1835	E10	Queen's pawn game	Closed, Sokolsky Variation 	1. d4 Nf6 2. c4 e6 3. g3 d5 4. Bg2 Be7 5. Nf3 O-O 6. O-O Nbd7 7. Qc2 c6 8. Nbd2 b6 9. b3 a5 10. Bb2 Ba6
1836	E10	Blumenfeld counter-gambit	N/A	1. d4 Nf6 2. c4 e6 3. Nf3
1837	E10	Blumenfeld counter-gambit accepted	N/A	1. d4 Nf6 2. c4 e6 3. Nf3 c5 4. d5 b5
1838	E10	Blumenfeld counter-gambit, Dus-Chotimursky Variation 	N/A	1. d4 Nf6 2. c4 e6 3. Nf3 c5 4. d5 b5 5. dxe6 fxe6 6. cxb5 d5
1839	E10	Blumenfeld counter-gambit, Spielmann Variation 	N/A	1. d4 Nf6 2. c4 e6 3. Nf3 c5 4. d5 b5 5. Bg5
1840	E10	Dzindzikhashvili defense	N/A	1. d4 Nf6 2. c4 e6 3. Nf3 c5 4. d5 b5 5. Bg5 exd5 6. cxd5 h6
1841	E10	Doery defense	N/A	1. d4 Nf6 2. c4 e6 3. Nf3 a6
1842	E11	Bogo-Indian defense	N/A	1. d4 Nf6 2. c4 e6 3. Nf3 Ne4
1843	E11	Bogo-Indian defense, Gruenfeld Variation 	N/A	1. d4 Nf6 2. c4 e6 3. Nf3 Bb4+
1844	E11	Bogo-Indian defense, Nimzovich Variation 	N/A	1. d4 Nf6 2. c4 e6 3. Nf3 Bb4+ 4. Nbd2
1845	E11	Bogo-Indian defense, Monticelli trap	N/A	1. d4 Nf6 2. c4 e6 3. Nf3 Bb4+ 4. Bd2 Qe7
1846	E12	Queen's Indian defense	N/A	1. d4 Nf6 2. c4 e6 3. Nf3 Bb4+ 4. Bd2 Bxd2+ 5. Qxd2 b6 6. g3 Bb7 7. Bg2 O-O 8. Nc3 Ne4 9. Qc2 Nxc3 10. Ng5
1847	E12	Queen's Indian	N/A	1. d4 Nf6 2. c4 e6 3. Nf3 b6
1848	E12	Queen's Indian	Miles Variation 	1. d4 Nf6 2. c4 e6 3. Nf3 b6 4. Bf4
1849	E12	Queen's Indian	Petrosian system	1. d4 Nf6 2. c4 e6 3. Nf3 b6 4. a3
1850	E12	Queen's Indian	4.Nc3	1. d4 Nf6 2. c4 e6 3. Nf3 b6 4. Nc3
1851	E13	Queen's Indian	4.Nc3, Botvinnik Variation 	1. d4 Nf6 2. c4 e6 3. Nf3 b6 4. Nc3 Bb7 5. Bg5 h6 6. Bh4 g5 7. Bg3 Nh5
1852	E14	Queen's Indian	4.Nc3, Main line	1. d4 Nf6 2. c4 e6 3. Nf3 b6 4. Nc3 Bb7 5. Bg5 h6 6. Bh4 Bb4
1853	E14	Queen's Indian	4.e3	1. d4 Nf6 2. c4 e6 3. Nf3 b6 4. e3
1854	E15	Queen's Indian	Averbakh Variation 	1. d4 Nf6 2. c4 e6 3. Nf3 b6 4. e3 Bb7 5. Bd3 c5 6. O-O Be7 7. b3 O-O 8. Bb2 cxd4 9. Nxd4
1855	E15	Queen's Indian	4.g3	1. d4 Nf6 2. c4 e6 3. Nf3 b6 4. g3
1856	E15	Queen's Indian	Nimzovich Variation (exaggerated Fianchetto)	1. d4 Nf6 2. c4 e6 3. Nf3 b6 4. g3 Ba6
1857	E15	Queen's Indian	4.g3 Bb7	1. d4 Nf6 2. c4 e6 3. Nf3 b6 4. g3 Bb7
1858	E15	Queen's Indian	Rubinstein Variation 	1. d4 Nf6 2. c4 e6 3. Nf3 b6 4. g3 Bb7 5. Bg2 c5 6. d5 exd5 7. Nh4
1859	E16	Queen's Indian	Buerger Variation 	1. d4 Nf6 2. c4 e6 3. Nf3 b6 4. g3 Bb7 5. Bg2 c5 6. d5 exd5 7. Ng5
1860	E16	Queen's Indian	Capablanca Variation 	1. d4 Nf6 2. c4 e6 3. Nf3 b6 4. g3 Bb7 5. Bg2 Bb4+
1861	E16	Queen's Indian	Yates Variation 	1. d4 Nf6 2. c4 e6 3. Nf3 b6 4. g3 Bb7 5. Bg2 Bb4+ 6. Bd2 a5
1862	E17	Queen's Indian	Riumin Variation 	1. d4 Nf6 2. c4 e6 3. Nf3 b6 4. g3 Bb7 5. Bg2 Bb4+ 6. Bd2 Be7
1863	E17	Queen's Indian	5.Bg2 Be7	1. d4 Nf6 2. c4 e6 3. Nf3 b6 4. g3 Bb7 5. Bg2 Be7
1864	E17	Queen's Indian	Anti-Queen's Indian system	1. d4 Nf6 2. c4 e6 3. Nf3 b6 4. g3 Bb7 5. Bg2 Be7 6. Nc3
1865	E17	Queen's Indian	Opovcensky Variation 	1. d4 Nf6 2. c4 e6 3. Nf3 b6 4. g3 Bb7 5. Bg2 Be7 6. Nc3 Ne4 7. Bd2
1866	E17	Queen's Indian	Old Main line, 6.O-O	1. d4 Nf6 2. c4 e6 3. Nf3 b6 4. g3 Bb7 5. Bg2 Be7 6. O-O
1867	E18	Queen's Indian	Euwe Variation 	1. d4 Nf6 2. c4 e6 3. Nf3 b6 4. g3 Bb7 5. Bg2 Be7 6. O-O O-O 7. b3
1868	E19	Queen's Indian	Old Main line, 7.Nc3	1. d4 Nf6 2. c4 e6 3. Nf3 b6 4. g3 Bb7 5. Bg2 Be7 6. O-O O-O 7. Nc3
1869	E20	Nimzo-Indian defense	Old Main line, 9.Qxc3	1. d4 Nf6 2. c4 e6 3. Nf3 b6 4. g3 Bb7 5. Bg2 Be7 6. O-O O-O 7. Nc3 Ne4 8. Qc2 Nxc3 9. Qxc3
1870	E20	Nimzo-Indian	N/A	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4
1871	E20	Nimzo-Indian	Kmoch Variation 	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4 4. f3
1872	E20	Nimzo-Indian	Mikenas attack	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4 4. Qd3
1873	E21	Nimzo-Indian	Romanishin-Kasparov (Steiner) system	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4 4. g3
1874	E21	Nimzo-Indian	Three knights Variation 	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4 4. Nf3
1875	E21	Nimzo-Indian	Three knights, Korchnoi Variation 	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4 4. Nf3 c5 5. d5
1876	E22	Nimzo-Indian	Three knights, Euwe Variation 	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4 4. Nf3 c5 5. d5 Ne4
1877	E23	Nimzo-Indian	Spielmann Variation 	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4 4. Qb3
1878	E23	Nimzo-Indian	Spielmann, 4...c5, 5.dc Nc6	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4 4. Qb3 c5 5. dxc5 Nc6
1879	E23	Nimzo-Indian	Spielmann, Karlsbad Variation 	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4 4. Qb3 c5 5. dxc5 Nc6 6. Nf3 Ne4 7. Bd2 Nxd2
1880	E23	Nimzo-Indian	Spielmann, San Remo Variation 	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4 4. Qb3 c5 5. dxc5 Nc6 6. Nf3 Ne4 7. Bd2 Nxc5
1881	E24	Nimzo-Indian	Spielmann, Staahlberg Variation 	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4 4. Qb3 c5 5. dxc5 Nc6 6. Nf3 Ne4 7. Bd2 Nxc5 8. Qc2 f5 9. g3
1882	E24	Nimzo-Indian	Saemisch Variation 	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4 4. a3 Bxc3+ 5. bxc3
1883	E25	Nimzo-Indian	Saemisch, Botvinnik Variation 	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4 4. a3 Bxc3+ 5. bxc3 c5 6. f3 d5 7. e3 O-O 8. cxd5 Nxd5
1884	E25	Nimzo-Indian	Saemisch Variation 	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4 4. a3 Bxc3+ 5. bxc3 c5 6. f3 d5 7. cxd5
1885	E25	Nimzo-Indian	Saemisch, Keres Variation 	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4 4. a3 Bxc3+ 5. bxc3 c5 6. f3 d5 7. cxd5 Nxd5 8. dxc5
1886	E26	Nimzo-Indian	Saemisch, Romanovsky Variation 	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4 4. a3 Bxc3+ 5. bxc3 c5 6. f3 d5 7. cxd5 Nxd5 8. dxc5 f5
1887	E26	Nimzo-Indian	Saemisch Variation 	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4 4. a3 Bxc3+ 5. bxc3 c5 6. e3
1888	E27	Nimzo-Indian	Saemisch, O'Kelly Variation 	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4 4. a3 Bxc3+ 5. bxc3 c5 6. e3 b6
1889	E28	Nimzo-Indian	Saemisch Variation 	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4 4. a3 Bxc3+ 5. bxc3 O-O
1890	E29	Nimzo-Indian	Saemisch Variation 	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4 4. a3 Bxc3+ 5. bxc3 O-O 6. e3
1891	E29	Nimzo-Indian	Saemisch, Main line	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4 4. a3 Bxc3+ 5. bxc3 O-O 6. e3 c5 7. Bd3 Nc6
1892	E30	Nimzo-Indian	Saemisch, Capablanca Variation 	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4 4. a3 Bxc3+ 5. bxc3 O-O 6. e3 c5 7. Bd3 Nc6 8. Ne2 b6 9. e4 Ne8
1893	E30	Nimzo-Indian	Leningrad Variation 	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4 4. Bg5
1894	E31	Nimzo-Indian	Leningrad, ...b5 gambit	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4 4. Bg5 h6 5. Bh4 c5 6. d5 b5
1895	E32	Nimzo-Indian	Leningrad, Main line	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4 4. Bg5 h6 5. Bh4 c5 6. d5 d6
1896	E32	Nimzo-Indian	Classical Variation 	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4 4. Qc2
1897	E33	Nimzo-Indian	Classical, Adorjan gambit	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4 4. Qc2 O-O 5. a3 Bxc3+ 6. Qxc3 b5
1898	E33	Nimzo-Indian	Classical, 4...Nc6	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4 4. Qc2 Nc6
1899	E34	Nimzo-Indian	Classical, Milner-Barry (Zurich) Variation 	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4 4. Qc2 Nc6 5. Nf3 d6
1900	E35	Nimzo-Indian	Classical, Noa Variation 	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4 4. Qc2 d5
1901	E36	Nimzo-Indian	Classical, Noa Variation , 5.cd ed	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4 4. Qc2 d5 5. cxd5 exd5
1902	E36	Nimzo-Indian	Classical, Noa Variation , 5.a3	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4 4. Qc2 d5 5. a3
1903	E36	Nimzo-Indian	Classical, Botvinnik Variation 	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4 4. Qc2 d5 5. a3 Bxc3+ 6. Qxc3 Nc6
1904	E37	Nimzo-Indian	Classical, Noa Variation , Main line	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4 4. Qc2 d5 5. a3 Bxc3+ 6. Qxc3 Ne4
1905	E37	Nimzo-Indian	Classical, Noa Variation , Main line, 7.Qc2	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4 4. Qc2 d5 5. a3 Bxc3+ 6. Qxc3 Ne4 7. Qc2
1906	E38	Nimzo-Indian	Classical, San Remo Variation 	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4 4. Qc2 d5 5. a3 Bxc3+ 6. Qxc3 Ne4 7. Qc2 Nc6 8. e3 e5
1907	E39	Nimzo-Indian	Classical, 4...c5	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4 4. Qc2 c5
1908	E40	Nimzo-Indian	Classical, Pirc Variation 	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4 4. Qc2 c5 5. dxc5 O-O
1909	E40	Nimzo-Indian	4.e3	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4 4. e3
1910	E41	Nimzo-Indian	4.e3, Taimanov Variation 	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4 4. e3 Nc6
1911	E41	Nimzo-Indian	4.e3 c5	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4 4. e3 c5
1912	E42	Nimzo-Indian	e3, Huebner Variation 	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4 4. e3 c5 5. Bd3 Nc6 6. Nf3 Bxc3+ 7. bxc3 d6
1913	E43	Nimzo-Indian	4.e3 c5, 5.Ne2 (Rubinstein)	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4 4. e3 c5 5. Ne2
1914	E44	Nimzo-Indian	Fischer Variation 	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4 4. e3 b6
1915	E45	Nimzo-Indian	Fischer Variation , 5.Ne2	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4 4. e3 b6 5. Ne2
1916	E46	Nimzo-Indian	4.e3, Bronstein (Byrne) Variation 	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4 4. e3 b6 5. Ne2 Ba6
1917	E46	Nimzo-Indian	4.e3 O-O	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4 4. e3 O-O
1918	E46	Nimzo-Indian	Reshevsky Variation 	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4 4. e3 O-O 5. Ne2
1919	E47	Nimzo-Indian	Simagin Variation 	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4 4. e3 O-O 5. Ne2 d5 6. a3 Bd6
1920	E48	Nimzo-Indian	4.e3 O-O, 5.Bd3	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4 4. e3 O-O 5. Bd3
1921	E49	Nimzo-Indian	4.e3 O-O, 5.Bd3 d5	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4 4. e3 O-O 5. Bd3 d5
1922	E50	Nimzo-Indian	4.e3, Botvinnik system	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4 4. e3 O-O 5. Bd3 d5 6. a3 Bxc3+ 7. bxc3
1923	E51	Nimzo-Indian	4.e3 e8g8, 5.Nf3, without ...d5	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4 4. e3 O-O 5. Nf3
1924	E51	Nimzo-Indian	4.e3 e8g8, 5.Nf3 d7d5	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4 4. e3 O-O 5. Nf3 d5
1925	E52	Nimzo-Indian	4.e3, Ragozin Variation 	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4 4. e3 O-O 5. Nf3 d5 6. Bd3 Nc6 7. O-O dxc4
1926	E53	Nimzo-Indian	4.e3, Main line with ...b6	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4 4. e3 O-O 5. Nf3 d5 6. Bd3 b6
1927	E53	Nimzo-Indian	4.e3, Main line with ...c5	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4 4. e3 O-O 5. Nf3 d5 6. Bd3 c5
1928	E53	Nimzo-Indian	4.e3, Keres Variation 	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4 4. e3 O-O 5. Nf3 d5 6. Bd3 c5 7. O-O b6
1929	E54	Nimzo-Indian	4.e3, Gligoric system with 7...Nbd7	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4 4. e3 O-O 5. Nf3 d5 6. Bd3 c5 7. O-O Nbd7
1930	E54	Nimzo-Indian	4.e3, Gligoric system with 7...dc	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4 4. e3 O-O 5. Nf3 d5 6. Bd3 c5 7. O-O dxc4 8. Bxc4
1931	E55	Nimzo-Indian	4.e3, Gligoric system, Smyslov Variation 	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4 4. e3 O-O 5. Nf3 d5 6. Bd3 c5 7. O-O dxc4 8. Bxc4 Qe7
1932	E56	Nimzo-Indian	4.e3, Gligoric system, Bronstein Variation 	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4 4. e3 O-O 5. Nf3 d5 6. Bd3 c5 7. O-O dxc4 8. Bxc4 Nbd7
1933	E57	Nimzo-Indian	4.e3, Main line with 7...Nc6	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4 4. e3 O-O 5. Nf3 d5 6. Bd3 c5 7. O-O Nc6
1934	E58	Nimzo-Indian	4.e3, Main line with 8...dc and 9...cd	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4 4. e3 O-O 5. Nf3 d5 6. Bd3 c5 7. O-O Nc6 8. a3 dxc4 9. Bxc4 cxd4
1935	E59	Nimzo-Indian	4.e3, Main line with 8...Bxc3	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4 4. e3 O-O 5. Nf3 d5 6. Bd3 c5 7. O-O Nc6 8. a3 Bxc3 9. bxc3
1936	E60	King's Indian defense	4.e3, Main line	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4 4. e3 O-O 5. Nf3 d5 6. Bd3 c5 7. O-O Nc6 8. a3 Bxc3 9. bxc3 dxc4 10. Bxc4
1937	E60	King's Indian, 3.Nf3	N/A	1. d4 Nf6 2. c4 g6
1938	E60	Queen's pawn	N/A	1. d4 Nf6 2. c4 g6 3. Nf3
1939	E60	King's Indian	Mengarini attack	1. d4 Nf6 2. c4 g6 3. Qc2
1940	E60	King's Indian	Anti-Gruenfeld	1. d4 Nf6 2. c4 g6 3. d5
1941	E60	King's Indian	Danube gambit	1. d4 Nf6 2. c4 g6 3. d5 b5
1942	E60	King's Indian	3.g3	1. d4 Nf6 2. c4 g6 3. g3
1943	E61	King's Indian defense, 3.Nc3	3.g3, counterthrust Variation 	1. d4 Nf6 2. c4 g6 3. g3 Bg7 4. Bg2 d5
1944	E61	King's Indian	N/A	1. d4 Nf6 2. c4 g6 3. Nc3
1945	E62	King's Indian	Smyslov system	1. d4 Nf6 2. c4 g6 3. Nc3 Bg7 4. Nf3 d6 5. Bg5
1946	E62	King's Indian	Fianchetto Variation 	1. d4 Nf6 2. c4 g6 3. Nc3 Bg7 4. Nf3 d6 5. g3
1947	E62	King's Indian	Fianchetto, Larsen system	1. d4 Nf6 2. c4 g6 3. Nc3 Bg7 4. Nf3 d6 5. g3 O-O 6. Bg2 c6 7. O-O Bf5
1948	E62	King's Indian	Fianchetto, Kavalek (Bronstein) Variation 	1. d4 Nf6 2. c4 g6 3. Nc3 Bg7 4. Nf3 d6 5. g3 O-O 6. Bg2 c6 7. O-O Qa5
1949	E62	King's Indian	Fianchetto with ...Nc6	1. d4 Nf6 2. c4 g6 3. Nc3 Bg7 4. Nf3 d6 5. g3 O-O 6. Bg2 Nc6
1950	E62	King's Indian	Fianchetto, Uhlmann (Szabo) Variation 	1. d4 Nf6 2. c4 g6 3. Nc3 Bg7 4. Nf3 d6 5. g3 O-O 6. Bg2 Nc6 7. O-O e5
1951	E62	King's Indian	Fianchetto, lesser Simagin (Spassky) Variation 	1. d4 Nf6 2. c4 g6 3. Nc3 Bg7 4. Nf3 d6 5. g3 O-O 6. Bg2 Nc6 7. O-O Bf5
1952	E63	King's Indian	Fianchetto, Simagin Variation 	1. d4 Nf6 2. c4 g6 3. Nc3 Bg7 4. Nf3 d6 5. g3 O-O 6. Bg2 Nc6 7. O-O Bg4
1953	E64	King's Indian	Fianchetto, Panno Variation 	1. d4 Nf6 2. c4 g6 3. Nc3 Bg7 4. Nf3 d6 5. g3 O-O 6. Bg2 Nc6 7. O-O a6
1954	E65	King's Indian	Fianchetto, Yugoslav system	1. d4 Nf6 2. c4 g6 3. Nc3 Bg7 4. Nf3 d6 5. g3 O-O 6. Bg2 c5
1955	E66	King's Indian	Fianchetto, Yugoslav, 7.O-O	1. d4 Nf6 2. c4 g6 3. Nc3 Bg7 4. Nf3 d6 5. g3 O-O 6. Bg2 c5 7. O-O
1956	E67	King's Indian	Fianchetto, Yugoslav Panno	1. d4 Nf6 2. c4 g6 3. Nc3 Bg7 4. Nf3 d6 5. g3 O-O 6. Bg2 c5 7. O-O Nc6 8. d5
1957	E67	King's Indian	Fianchetto with ...Nd7	1. d4 Nf6 2. c4 g6 3. Nc3 Bg7 4. Nf3 d6 5. g3 O-O 6. Bg2 Nbd7
1958	E68	King's Indian	Fianchetto, Classical Variation 	1. d4 Nf6 2. c4 g6 3. Nc3 Bg7 4. Nf3 d6 5. g3 O-O 6. Bg2 Nbd7 7. O-O e5
1959	E69	King's Indian	Fianchetto, Classical Variation , 8.e4	1. d4 Nf6 2. c4 g6 3. Nc3 Bg7 4. Nf3 d6 5. g3 O-O 6. Bg2 Nbd7 7. O-O e5 8. e4
1960	E70	King's Indian	Fianchetto, Classical Main line	1. d4 Nf6 2. c4 g6 3. Nc3 Bg7 4. Nf3 d6 5. g3 O-O 6. Bg2 Nbd7 7. O-O e5 8. e4 c6 9. h3
1961	E70	King's Indian	4.e4	1. d4 Nf6 2. c4 g6 3. Nc3 Bg7 4. e4
1962	E70	King's Indian	Kramer system	1. d4 Nf6 2. c4 g6 3. Nc3 Bg7 4. e4 d6 5. Nge2
1963	E71	King's Indian	Accelerated Averbakh system	1. d4 Nf6 2. c4 g6 3. Nc3 Bg7 4. e4 d6 5. Bg5
1964	E72	King's Indian with e4 & g3	Makagonov system (5.h3)	1. d4 Nf6 2. c4 g6 3. Nc3 Bg7 4. e4 d6 5. h3
1965	E72	King's Indian	N/A	1. d4 Nf6 2. c4 g6 3. Nc3 Bg7 4. e4 d6 5. g3
1966	E73	King's Indian	Pomar system	1. d4 Nf6 2. c4 g6 3. Nc3 Bg7 4. e4 d6 5. g3 O-O 6. Bg2 e5 7. Nge2
1967	E73	King's Indian	5.Be2	1. d4 Nf6 2. c4 g6 3. Nc3 Bg7 4. e4 d6 5. Be2
1968	E73	King's Indian	Semi-Averbakh system	1. d4 Nf6 2. c4 g6 3. Nc3 Bg7 4. e4 d6 5. Be2 O-O 6. Be3
1969	E74	King's Indian	Averbakh system	1. d4 Nf6 2. c4 g6 3. Nc3 Bg7 4. e4 d6 5. Be2 O-O 6. Bg5
1970	E75	King's Indian	Averbakh, 6...c5	1. d4 Nf6 2. c4 g6 3. Nc3 Bg7 4. e4 d6 5. Be2 O-O 6. Bg5 c5
1971	E76	King's Indian	Averbakh, Main line	1. d4 Nf6 2. c4 g6 3. Nc3 Bg7 4. e4 d6 5. Be2 O-O 6. Bg5 c5 7. d5 e6
1972	E76	King's Indian	Four pawns attack	1. d4 Nf6 2. c4 g6 3. Nc3 Bg7 4. e4 d6 5. f4
1973	E77	King's Indian	Four pawns attack, dynamic line	1. d4 Nf6 2. c4 g6 3. Nc3 Bg7 4. e4 d6 5. f4 O-O 6. Nf3 c5 7. d5
1974	E77	King's Indian	Four pawns attack, 6.Be2	1. d4 Nf6 2. c4 g6 3. Nc3 Bg7 4. e4 d6 5. f4 O-O 6. Be2
1975	E77	King's Indian	Six pawns attack	1. d4 Nf6 2. c4 g6 3. Nc3 Bg7 4. e4 d6 5. f4 O-O 6. Be2 c5 7. d5 e6 8. dxe6 fxe6 9. g4 Nc6 10. h4
1976	E77	King's Indian	Four pawns attack	1. d4 Nf6 2. c4 g6 3. Nc3 Bg7 4. e4 d6 5. f4 O-O 6. Be2 c5 7. d5 e6 8. Nf3
1977	E78	King's Indian	Four pawns attack, Florentine gambit	1. d4 Nf6 2. c4 g6 3. Nc3 Bg7 4. e4 d6 5. f4 O-O 6. Be2 c5 7. d5 e6 8. Nf3 exd5 9. e5
1978	E79	King's Indian	Four pawns attack, with Be2 and Nf3	1. d4 Nf6 2. c4 g6 3. Nc3 Bg7 4. e4 d6 5. f4 O-O 6. Be2 c5 7. Nf3
1979	E80	King's Indian	Four pawns attack, Main line	1. d4 Nf6 2. c4 g6 3. Nc3 Bg7 4. e4 d6 5. f4 O-O 6. Be2 c5 7. Nf3 cxd4 8. Nxd4 Nc6 9. Be3
1980	E81	King's Indian	Saemisch Variation 	1. d4 Nf6 2. c4 g6 3. Nc3 Bg7 4. e4 d6 5. f3
1981	E81	King's Indian	Saemisch, 5...O-O	1. d4 Nf6 2. c4 g6 3. Nc3 Bg7 4. e4 d6 5. f3 O-O
1982	E82	King's Indian	Saemisch, Byrne Variation 	1. d4 Nf6 2. c4 g6 3. Nc3 Bg7 4. e4 d6 5. f3 O-O 6. Be3 c6 7. Bd3 a6
1983	E83	King's Indian	Saemisch, double Fianchetto Variation 	1. d4 Nf6 2. c4 g6 3. Nc3 Bg7 4. e4 d6 5. f3 O-O 6. Be3 b6
1984	E83	King's Indian	Saemisch, 6...Nc6	1. d4 Nf6 2. c4 g6 3. Nc3 Bg7 4. e4 d6 5. f3 O-O 6. Be3 Nc6
1985	E83	King's Indian	Saemisch, Ruban Variation 	1. d4 Nf6 2. c4 g6 3. Nc3 Bg7 4. e4 d6 5. f3 O-O 6. Be3 Nc6 7. Nge2 Rb8
1986	E84	King's Indian	Saemisch, Panno formation	1. d4 Nf6 2. c4 g6 3. Nc3 Bg7 4. e4 d6 5. f3 O-O 6. Be3 Nc6 7. Nge2 a6
1987	E85	King's Indian	Saemisch, Panno Main line	1. d4 Nf6 2. c4 g6 3. Nc3 Bg7 4. e4 d6 5. f3 O-O 6. Be3 Nc6 7. Nge2 a6 8. Qd2 Rb8
1988	E86	King's Indian	Saemisch, Orthodox Variation 	1. d4 Nf6 2. c4 g6 3. Nc3 Bg7 4. e4 d6 5. f3 O-O 6. Be3 e5
1989	E87	King's Indian	Saemisch, Orthodox, 7.Nge2 c6	1. d4 Nf6 2. c4 g6 3. Nc3 Bg7 4. e4 d6 5. f3 O-O 6. Be3 e5 7. Nge2 c6
1990	E87	King's Indian	Saemisch, Orthodox, 7.d5	1. d4 Nf6 2. c4 g6 3. Nc3 Bg7 4. e4 d6 5. f3 O-O 6. Be3 e5 7. d5
1991	E88	King's Indian	Saemisch, Orthodox, Bronstein Variation 	1. d4 Nf6 2. c4 g6 3. Nc3 Bg7 4. e4 d6 5. f3 O-O 6. Be3 e5 7. d5 Nh5 8. Qd2 Qh4+ 9. g3 Nxg3 10. Qf2 Nxf1 11. Qxh4 Nxe3 12. Ke2 Nxc4
1992	E89	King's Indian	Saemisch, Orthodox, 7.d5 c6	1. d4 Nf6 2. c4 g6 3. Nc3 Bg7 4. e4 d6 5. f3 O-O 6. Be3 e5 7. d5 c6
1993	E90	King's Indian	Saemisch, Orthodox Main line	1. d4 Nf6 2. c4 g6 3. Nc3 Bg7 4. e4 d6 5. f3 O-O 6. Be3 e5 7. d5 c6 8. Nge2 cxd5
1994	E90	King's Indian	5.Nf3	1. d4 Nf6 2. c4 g6 3. Nc3 Bg7 4. e4 d6 5. Nf3
1995	E90	King's Indian	Larsen Variation 	1. d4 Nf6 2. c4 g6 3. Nc3 Bg7 4. e4 d6 5. Nf3 O-O 6. Be3
1996	E91	King's Indian	Zinnowitz Variation 	1. d4 Nf6 2. c4 g6 3. Nc3 Bg7 4. e4 d6 5. Nf3 O-O 6. Bg5
1997	E91	King's Indian	6.Be2	1. d4 Nf6 2. c4 g6 3. Nc3 Bg7 4. e4 d6 5. Nf3 O-O 6. Be2
1998	E92	King's Indian	Kazakh Variation 	1. d4 Nf6 2. c4 g6 3. Nc3 Bg7 4. e4 d6 5. Nf3 O-O 6. Be2 Na6
1999	E92	King's Indian	Classical Variation 	1. d4 Nf6 2. c4 g6 3. Nc3 Bg7 4. e4 d6 5. Nf3 O-O 6. Be2 e5
2000	E92	King's Indian	Andersson Variation 	1. d4 Nf6 2. c4 g6 3. Nc3 Bg7 4. e4 d6 5. Nf3 O-O 6. Be2 e5 7. dxe5
2001	E92	King's Indian	Gligoric-Taimanov system	1. d4 Nf6 2. c4 g6 3. Nc3 Bg7 4. e4 d6 5. Nf3 O-O 6. Be2 e5 7. Be3
2002	E92	King's Indian	Petrosian system	1. d4 Nf6 2. c4 g6 3. Nc3 Bg7 4. e4 d6 5. Nf3 O-O 6. Be2 e5 7. d5
2003	E93	King's Indian	Petrosian system, Stein Variation 	1. d4 Nf6 2. c4 g6 3. Nc3 Bg7 4. e4 d6 5. Nf3 O-O 6. Be2 e5 7. d5 a5
2004	E93	King's Indian	Petrosian system, Main line	1. d4 Nf6 2. c4 g6 3. Nc3 Bg7 4. e4 d6 5. Nf3 O-O 6. Be2 e5 7. d5 Nbd7
2005	E94	King's Indian	Petrosian system, Keres Variation 	1. d4 Nf6 2. c4 g6 3. Nc3 Bg7 4. e4 d6 5. Nf3 O-O 6. Be2 e5 7. d5 Nbd7 8. Bg5 h6 9. Bh4 g5 10. Bg3 Nh5 11. h4
2006	E94	King's Indian	Orthodox Variation 	1. d4 Nf6 2. c4 g6 3. Nc3 Bg7 4. e4 d6 5. Nf3 O-O 6. Be2 e5 7. O-O
2007	E94	King's Indian	Orthodox, Donner Variation 	1. d4 Nf6 2. c4 g6 3. Nc3 Bg7 4. e4 d6 5. Nf3 O-O 6. Be2 e5 7. O-O c6
2008	E95	King's Indian	Orthodox, 7...Nbd7	1. d4 Nf6 2. c4 g6 3. Nc3 Bg7 4. e4 d6 5. Nf3 O-O 6. Be2 e5 7. O-O Nbd7
2009	E96	King's Indian	Orthodox, 7...Nbd7, 8.Re1	1. d4 Nf6 2. c4 g6 3. Nc3 Bg7 4. e4 d6 5. Nf3 O-O 6. Be2 e5 7. O-O Nbd7 8. Re1
2010	E97	King's Indian	Orthodox, 7...Nbd7, Main line	1. d4 Nf6 2. c4 g6 3. Nc3 Bg7 4. e4 d6 5. Nf3 O-O 6. Be2 e5 7. O-O Nbd7 8. Re1 c6 9. Bf1 a5
2011	E97	King's Indian	Orthodox, Aronin-Taimanov Variation (Yugoslav attack / Mar del Plata Variation )	1. d4 Nf6 2. c4 g6 3. Nc3 Bg7 4. e4 d6 5. Nf3 O-O 6. Be2 e5 7. O-O Nc6
2012	E98	King's Indian	Orthodox, Aronin-Taimanov, bayonet attack	1. d4 Nf6 2. c4 g6 3. Nc3 Bg7 4. e4 d6 5. Nf3 O-O 6. Be2 e5 7. O-O Nc6 8. d5 Ne7 9. b4
2013	E99	King's Indian	Orthodox, Aronin-Taimanov, 9.Ne1	1. d4 Nf6 2. c4 g6 3. Nc3 Bg7 4. e4 d6 5. Nf3 O-O 6. Be2 e5 7. O-O Nc6 8. d5 Ne7 9. Ne1
2014	E99	King's Indian	Orthodox, Aronin-Taimanov, Main line	1. d4 Nf6 2. c4 g6 3. Nc3 Bg7 4. e4 d6 5. Nf3 O-O 6. Be2 e5 7. O-O Nc6 8. d5 Ne7 9. Ne1 Nd7 10. f3 f5
\.


--
-- Name: chess_openings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.chess_openings_id_seq', 2014, true);


--
-- Name: chess_openings chess_openings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.chess_openings
    ADD CONSTRAINT chess_openings_pkey PRIMARY KEY (id);


--
-- Name: TABLE chess_openings; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.chess_openings TO will;


--
-- Name: SEQUENCE chess_openings_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.chess_openings_id_seq TO will;


--
-- PostgreSQL database dump complete
--

