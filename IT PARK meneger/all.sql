--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2
-- Dumped by pg_dump version 14.2

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
-- Name: backend; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.backend (
    id integer NOT NULL,
    full_name character varying NOT NULL,
    date text NOT NULL,
    phone character varying NOT NULL,
    "time" character varying NOT NULL
);


ALTER TABLE public.backend OWNER TO postgres;

--
-- Name: backend_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.backend_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.backend_id_seq OWNER TO postgres;

--
-- Name: backend_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.backend_id_seq OWNED BY public.backend.id;


--
-- Name: emritc_users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.emritc_users (
    id integer NOT NULL,
    name character varying NOT NULL,
    username character varying,
    user_id bigint NOT NULL,
    fani character varying
);


ALTER TABLE public.emritc_users OWNER TO postgres;

--
-- Name: english; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.english (
    id integer NOT NULL,
    full_name character varying NOT NULL,
    phone character varying NOT NULL,
    date text NOT NULL,
    "time" character varying NOT NULL
);


ALTER TABLE public.english OWNER TO postgres;

--
-- Name: english_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.english_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.english_id_seq OWNER TO postgres;

--
-- Name: english_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.english_id_seq OWNED BY public.english.id;


--
-- Name: frontend; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.frontend (
    id integer NOT NULL,
    full_name character varying,
    phone character varying,
    date text,
    "time" character varying
);


ALTER TABLE public.frontend OWNER TO postgres;

--
-- Name: frontend_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.frontend_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.frontend_id_seq OWNER TO postgres;

--
-- Name: frontend_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.frontend_id_seq OWNED BY public.frontend.id;


--
-- Name: grafik_dizayn; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.grafik_dizayn (
    id integer NOT NULL,
    full_name character varying,
    phone character varying,
    date text,
    "time" character varying
);


ALTER TABLE public.grafik_dizayn OWNER TO postgres;

--
-- Name: grafik_dizayn_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.grafik_dizayn_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.grafik_dizayn_id_seq OWNER TO postgres;

--
-- Name: grafik_dizayn_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.grafik_dizayn_id_seq OWNED BY public.grafik_dizayn.id;


--
-- Name: kompyuter_savodxonligi; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.kompyuter_savodxonligi (
    "id " integer NOT NULL,
    full_name character varying NOT NULL,
    phone character varying NOT NULL,
    date character varying NOT NULL,
    "time" character varying NOT NULL
);


ALTER TABLE public.kompyuter_savodxonligi OWNER TO postgres;

--
-- Name: kompyuter_savodxonligi_id _seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."kompyuter_savodxonligi_id _seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."kompyuter_savodxonligi_id _seq" OWNER TO postgres;

--
-- Name: kompyuter_savodxonligi_id _seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."kompyuter_savodxonligi_id _seq" OWNED BY public.kompyuter_savodxonligi."id ";


--
-- Name: mobil_ilova; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mobil_ilova (
    id integer NOT NULL,
    full_name character varying,
    phone character varying,
    date text,
    "time" character varying
);


ALTER TABLE public.mobil_ilova OWNER TO postgres;

--
-- Name: uchd_dizayn; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.uchd_dizayn (
    id integer NOT NULL,
    full_name character varying,
    phone character varying,
    date text,
    "time" character varying
);


ALTER TABLE public.uchd_dizayn OWNER TO postgres;

--
-- Name: mobil_ilova_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mobil_ilova_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mobil_ilova_id_seq OWNER TO postgres;

--
-- Name: mobil_ilova_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mobil_ilova_id_seq OWNED BY public.uchd_dizayn.id;


--
-- Name: mritc_users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mritc_users (
    id integer NOT NULL,
    full_name character varying NOT NULL,
    phone character varying NOT NULL,
    course_info text NOT NULL
);


ALTER TABLE public.mritc_users OWNER TO postgres;

--
-- Name: mritc_users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mritc_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mritc_users_id_seq OWNER TO postgres;

--
-- Name: mritc_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mritc_users_id_seq OWNED BY public.emritc_users.id;


--
-- Name: mritc_users_id_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mritc_users_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mritc_users_id_seq1 OWNER TO postgres;

--
-- Name: mritc_users_id_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mritc_users_id_seq1 OWNED BY public.mritc_users.id;


--
-- Name: robototexnika; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.robototexnika (
    id integer NOT NULL,
    full_name character varying,
    phone character varying,
    date text,
    "time" character varying
);


ALTER TABLE public.robototexnika OWNER TO postgres;

--
-- Name: robototexnika_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.robototexnika_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.robototexnika_id_seq OWNER TO postgres;

--
-- Name: robototexnika_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.robototexnika_id_seq OWNED BY public.robototexnika.id;


--
-- Name: smm; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.smm (
    id integer NOT NULL,
    full_name character varying NOT NULL,
    phone character varying NOT NULL,
    date text NOT NULL,
    "time" text NOT NULL
);


ALTER TABLE public.smm OWNER TO postgres;

--
-- Name: smm_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.smm_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.smm_id_seq OWNER TO postgres;

--
-- Name: smm_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.smm_id_seq OWNED BY public.smm.id;


--
-- Name: subjects_info; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.subjects_info (
    id integer NOT NULL,
    kompyuter_savodxonligi text NOT NULL,
    backend text NOT NULL,
    frontend text NOT NULL,
    robototexnika text NOT NULL,
    mobil_ilova text NOT NULL,
    smm text NOT NULL,
    grafik_dizayn text NOT NULL,
    uchd_dizayn text NOT NULL,
    video_montaj text NOT NULL,
    english text NOT NULL
);


ALTER TABLE public.subjects_info OWNER TO postgres;

--
-- Name: subjects_info_ru; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.subjects_info_ru (
    id integer NOT NULL,
    kompyuter_savodxonligi text,
    backend text,
    frontend text,
    robototexnika text,
    mobil_ilova text,
    smm text,
    grafik_dizayn text,
    uchd_dizayn text,
    video_montaj text,
    english text
);


ALTER TABLE public.subjects_info_ru OWNER TO postgres;

--
-- Name: uchddizayn_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.uchddizayn_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.uchddizayn_id_seq OWNER TO postgres;

--
-- Name: uchddizayn_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.uchddizayn_id_seq OWNED BY public.mobil_ilova.id;


--
-- Name: video_montaj; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.video_montaj (
    id integer NOT NULL,
    full_name character varying,
    phone character varying,
    date text,
    "time" character varying
);


ALTER TABLE public.video_montaj OWNER TO postgres;

--
-- Name: video_montaj_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.video_montaj_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.video_montaj_id_seq OWNER TO postgres;

--
-- Name: video_montaj_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.video_montaj_id_seq OWNED BY public.video_montaj.id;


--
-- Name: backend id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend ALTER COLUMN id SET DEFAULT nextval('public.backend_id_seq'::regclass);


--
-- Name: emritc_users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.emritc_users ALTER COLUMN id SET DEFAULT nextval('public.mritc_users_id_seq'::regclass);


--
-- Name: english id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.english ALTER COLUMN id SET DEFAULT nextval('public.english_id_seq'::regclass);


--
-- Name: frontend id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.frontend ALTER COLUMN id SET DEFAULT nextval('public.frontend_id_seq'::regclass);


--
-- Name: grafik_dizayn id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grafik_dizayn ALTER COLUMN id SET DEFAULT nextval('public.grafik_dizayn_id_seq'::regclass);


--
-- Name: kompyuter_savodxonligi id ; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kompyuter_savodxonligi ALTER COLUMN "id " SET DEFAULT nextval('public."kompyuter_savodxonligi_id _seq"'::regclass);


--
-- Name: mobil_ilova id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mobil_ilova ALTER COLUMN id SET DEFAULT nextval('public.uchddizayn_id_seq'::regclass);


--
-- Name: mritc_users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mritc_users ALTER COLUMN id SET DEFAULT nextval('public.mritc_users_id_seq1'::regclass);


--
-- Name: robototexnika id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.robototexnika ALTER COLUMN id SET DEFAULT nextval('public.robototexnika_id_seq'::regclass);


--
-- Name: smm id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.smm ALTER COLUMN id SET DEFAULT nextval('public.smm_id_seq'::regclass);


--
-- Name: uchd_dizayn id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.uchd_dizayn ALTER COLUMN id SET DEFAULT nextval('public.mobil_ilova_id_seq'::regclass);


--
-- Name: video_montaj id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.video_montaj ALTER COLUMN id SET DEFAULT nextval('public.video_montaj_id_seq'::regclass);


--
-- Data for Name: backend; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.backend (id, full_name, date, phone, "time") FROM stdin;
1	/start	Понедельник_Среда_Пятница	/start	10:00-12:00
2	awdfa	Вторник_Четверг_Суботта	faf	18:00-20:00
3	Toshmatov Maqsud	Seshanba_Payshanba_Shanba	944874437	08:00-10:00
4	qaded	Вторник_Четверг_Суботта	efwedf	16:00-18:00
5	iob	Вторник_Четверг_Суботта	buib	08:00-10:00
6	aeeewewefwefwef	Понедельник_Среда_Пятница	wqewewefwer	18:00-20:00
7	Начальные курсы	None	Начальные курсы	Понедельник_Среда_Пятница
8	klnfdvd	Понедельник_Среда_Пятница	sdfg	14:00-16:00
9	duhjj bjgjgjj	Dushanba_Chorshanba_Juma	998990380971	18:00-20:00
10	Shoxrux Ernazarov	Dushanba_Chorshanba_Juma	+998933397730	08:00-10:00
11	Алижанов Бехруз	Вторник_Четверг_Суботта	+998905042141	18:00-20:00
12	Алижанов Бехруз	Вторник_Четверг_Суботта	+998905042141	18:00-20:00
13	Бек	Понедельник_Среда_Пятница	998905042141	14:00-16:00
14	Barot	Dushanba_Chorshanba_Juma	+19183085217	08:00-10:00
15	Shaxzod Samariddinov	Вторник_Четверг_Суботта	+998994483690	18:00-20:00
\.


--
-- Data for Name: emritc_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.emritc_users (id, name, username, user_id, fani) FROM stdin;
23	John Doe	mainROOTdevelopment	5260472719	BackEnd
26	Dilshodbek Ahmedov	hyperman0011	1610668492	SMM
41	ㅤㅤㅤㅤㅤ	murod_0429	271705403	3D
46	The_Great_Boy	The_Hacker2000	1049809213	savodxonlik
48	Рахимов Нуъмон	nomonzon	1010537107	video_montaj
49	Baxtiyor Elboyev	thisisbahhtee	601236655	mobil_ilova\n
54	𝓜𝓪𝓱𝓯𝓾𝔃	mahfuzazamatovna	1511547428	robototexnika\n
60	Максим Орлов	maks1morlov	5136115153	\N
73	Maqsud Toshmatov	maqsuditpark	301013514	\N
84	𝙰𝙱𝙳𝚄𝙹𝙰𝙱𝙱𝙾𝚁 𝚀𝙾𝙳𝙸𝚁𝙾𝚅	Mr_Abu_1212	714547525	\N
85	𝕄𝕦𝕣𝕠𝕕𝕛𝕠𝕟 𝕄𝕦𝕤𝕚𝕟𝕠𝕧	Internal_server_error404	5291768607	\N
86	Ismoil	None	5338425478	\N
87	𝓜𝓻. 𝓡𝓮𝓭.	Zohidjaan	1871081893	\N
88	Nuriddin	nuriddinshukurulloyev	5037280665	\N
89	Behruz	alizhanovbekhruz	511172905	\N
90	Barot👨‍💻	Xacker0921	5235865310	\N
94	Jovliyeva Umida	Shukrona1868	1018861186	\N
96	Shokhzod Samariddinov	shokhzod11	1009140400	\N
\.


--
-- Data for Name: english; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.english (id, full_name, phone, date, "time") FROM stdin;
1	ascascsac	asasc	Вторник_Четверг_Суботта	18:00-20:00
2	wefwef	wefwefw	Dushanba_Chorshanba_Juma	10:00-12:00
3	Maykil Jacson	+	Seshanba_Payshanba_Shanba	18:00-20:00
\.


--
-- Data for Name: frontend; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.frontend (id, full_name, phone, date, "time") FROM stdin;
1	wefwef	wefwefwef	Dushanba_Chorshanba_Juma	16:00-18:00
\.


--
-- Data for Name: grafik_dizayn; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.grafik_dizayn (id, full_name, phone, date, "time") FROM stdin;
1	efwef	wefwe	Dushanba_Chorshanba_Juma	18:00-20:00
2	G	K	Seshanba_Payshanba_Shanba	16:00-18:00
\.


--
-- Data for Name: kompyuter_savodxonligi; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.kompyuter_savodxonligi ("id ", full_name, phone, date, "time") FROM stdin;
6	Ahmedov Dilshodek	+998990380971	toq_kunlar	14-16
7	wdkjvbkjdbvjkwbkvbdkov	iwneivbiwbviwbdv	Seshanba_Payshanba_Shanba	18:00-20:00
8	Murod Abdikaxorov	+998902279911	Seshanba_Payshanba_Shanba	18:00-20:00
9	Qwertf dfg	990380971	Seshanba_Payshanba_Shanba	18:00-20:00
10	adbsdsd	ads	Dushanba_Chorshanba_Juma	18:00-20:00
\.


--
-- Data for Name: mobil_ilova; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mobil_ilova (id, full_name, phone, date, "time") FROM stdin;
1	fewf	efwef	Seshanba_Payshanba_Shanba	18:00-20:00
2	Qodirov	+998930756606	Dushanba_Chorshanba_Juma	18:00-20:00
\.


--
-- Data for Name: mritc_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mritc_users (id, full_name, phone, course_info) FROM stdin;
1	Ahmedov Dilshodbek	+998990380971	kompyuter savodxonligi 8 dan 10 gacha
2	Kurslarga yozilish	+998993116096	Java
3	Rakhimov Nomonjon	+998993116096	afjaoefnokf
\.


--
-- Data for Name: robototexnika; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.robototexnika (id, full_name, phone, date, "time") FROM stdin;
1	Doston Ishanov	+998995849903	Seshanba_Payshanba_Shanba	08:00-10:00
2	wefewf	wefwefe	Dushanba_Chorshanba_Juma	18:00-20:00
\.


--
-- Data for Name: smm; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.smm (id, full_name, phone, date, "time") FROM stdin;
1	qwelufbiuwebfiubwe	webiubweub	Dushanba_Chorshanba_Juma	16:00-18:00
2	wefwef	wefwef	Seshanba_Payshanba_Shanba	16:00-18:00
\.


--
-- Data for Name: subjects_info; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.subjects_info (id, kompyuter_savodxonligi, backend, frontend, robototexnika, mobil_ilova, smm, grafik_dizayn, uchd_dizayn, video_montaj, english) FROM stdin;
1	KOMPYUTER SAVODXONLIGI:\n\nO'rgatiladigan tehnologiyalar:\n\n✅ Kompyuter nastroyka\n✅ Teskor klavshlar\n✅ Offis dasturlari\n✅ Operatsiyon tzimlar ustanovkasi\n✅ Internet bilan ishlash\n✅ Driver ustanovkalari\n✅ Printer bilan ishlash\n✅ Aktivatsiya qilish\n✅ Antivirus ustanovka qilish va baza yangilash\n\n\nKurs haqida malumot:\nKurs davomiyligi 2 oy shu 2 oy davomida yuqorida körsatilgan tehnologiyalarni o'rganasiz. Albatta bor kuch etiborni örganayotgan tehnologiyalarga qaratib örgansangiz sizda kompyter bilan ishlashda muammolar bo'lmaydi	BACKEND  DASTURLASH:\n\nO'rgatiladigan tehnologiyalar:\n\n✅ Python dasturlash tili\n✅ PostgreSql\n✅ Aiogram framework\n✅ Git\n✅ GitHub\n✅ Django framework\n\n\n\nKurs haqida malumot:\nKurs davomiyligi 6 oy va yana 2 oy amaliyot shu 8 oy davomida yuqorida körsatilgan tehnologiyalarni o'rganasiz. Albatta bor kuch etiborni örganayotgan tehnologiyalarga qaratib örgansangiz. Bu kursni tugatib Inshaalloh istalgan saytlarni tez va sifatli ishlab chiqarishingiz mumkun bo'ladi.	FRONTED DASTURLASH:\n\nO'rgatiladigan tehnologiyalar:\n✅ Html5\n✅ Css3\n✅ Bootstrap5\n✅ Sass\n✅ Photoshop bilan ishlash\n✅ Figma bilan ishlash\n✅ Javascript\n✅ Javascript OOP\n✅ Git\n✅ GitHub\n✅ ReactJs\n\nKurs haqida malumot:\nKurs davomiyligi 6 oy shu oy davomida yuqorida körsatilgan tehnologiyalarni o'rganasiz.Albatta bor kuch etiborni örganayotgan tehnologiyalarga qaratib örgansangiz.Bu kursni tugatib Inshaalloh mustaqil saytlarni tez va sifatli ishlab chiqaraolasiz	ROBOTOTEXNIKA:\n\nO'rgatiladigan texnologiyalar:\n\n✅ C++ dasturlash tili\n✅ Arduino \n✅ Lego Mindstrom\n✅ Sxematika\n✅ Mexanika\n✅ Scrach\n✅ NeoSoCo\n\n\nKurs haqida malumot:\nKurs davomiyligi 6 oy va shu 6 oy  davomida yuqorida körsatilgan texnologiyalarni o'rganasiz. Albatta bor kuch etiborni örganayotgan texnologiyalarga qaratib örgansangiz kelajakda yaxshi robotatexnik bo'lib chiqasiz	MOBIL ILOVALAR ISHLAB CHIQISH:\n\nConsole dan Play Store gacha!!\n\nO'rgatiladigan texnologiyalar:\n\n✅ Kotlin core & Kotlin OOP & Kotlin Advanced\n✅ Android SDK\n✅ Android Networking\n✅ Firebase Services\n✅ Architecture Components\n✅ +2 Real Projects\n\n\n\nKurs haqida malumot:\nKurs davomiyligi 6 oy va yana 2 oy amaliyot. 6 oy davomida Android ilovalar ishlab chiqish uchun kerakli barcha texnologiyalarni o'rganasiz. Barcha mavzularni muvaffaqiyatli yakunlagan bo'lajak dasturchilar 2 oylik amaliyot kursiga yo'naltiriladilar va bu vaqt davomida turli ilovalar yaratish ustida ishlaydilar.	SMM\n\nO'rgatiladigan texnologiyalar:\n\n✅Adobe Photoshop\n✅ Adobe After Effects\n✅ Google Trends\n✅ Google Business Suite\n✅ Facebook Business Suite\n✅ Targeting\n✅ Copywriting	GRAFIK DIZAYN\n\nO'rgatiladigan texnologiyalar:\n\n✅ Adobe Photoshop\n✅ Adobe Illustrator\n✅ Adobe XD & Figma\n✅ Real Projects\n	Xozircha Kurs mavjud emas 	Xozircha Kurs mavjud emas 	Ingliz tili kurslari\n \nGeneral English\nIELTS/Cefr\n\nKurslarda òrgatiladigan skillar:\n\n✅ Reading\n✅ Listening\n✅ Speaking\n✅ Writing\n\n\n\n\nKurs haqida malumot:\nKurs A1 darajadan boshlanib C1 darajagacha òtiladi. Har bir darajadagi kurslar davomiyligi 2 oy. Albatta bor kuch etiborni qaratib örgansangiz. Bu kurslarni tugatib Inshaalloh Ingliz tilini mukammal darajada òrganib C1 daraja ololasiz.
\.


--
-- Data for Name: subjects_info_ru; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.subjects_info_ru (id, kompyuter_savodxonligi, backend, frontend, robototexnika, mobil_ilova, smm, grafik_dizayn, uchd_dizayn, video_montaj, english) FROM stdin;
1	КОМПЬЮТЕРНАЯ ГРАМОТНОСТЬ:\n\nПреподаваемые технологии:\n\n✅ Настройки компьютера\n✅ Сочетания клавиш\n✅ Офисные программы\n✅ Установка операционных систем\n✅ Работа с интернетом\n✅ Установка драйверов\n✅ Работа с принтером\n✅ Активация\n✅ Установка антивируса и обновление баз\n\n\nИнформация о курсе:\nПродолжительность курса 2 месяца За эти 2 месяца вы освоите вышеперечисленные технологии. Конечно, если вы будете ориентироваться на изучаемую технологию, проблем с работой с компьютером у вас не возникнет.	BACKEND программирование:\n\nИзучаемые технологии:\n\n✅ Язык программирования Python\n✅ База данных PostgreSql\n✅ Фреймворк Aiogram\n✅ Git\n✅ GitHub\n✅ Фреймворк Django\n\n\n\nCведение о курсе:\nПродолжительность курса 6 месяцев и 2 месяца практики, в течении этих 8 месяцев вы будете изучать выше показанные технологии . Естественно вам нужно собрать все силы и концентрацию и направить их на наш курс. Закончив данный курс дай бог вы будете быстро и качественно разрабатывать сайты и не только.	FRONTED разработка:\n\nИзучаемые технологии:\n✅ Html5\n✅ Css3\n✅ Bootstrap5\n✅ Sass\n✅ Работа с Photoshop\n✅ Работать с Figma\n✅ Javascript\n✅ Javascript OOP\n✅ Git\n✅ GitHub\n✅ ReactJs\n\nСведение о курсе:\nНа протяжении 6 месяцев вы будете изучать выше показанные технологии. Вам нужно будет сконцентрировать свое внимание и вложить все силы в наш кур. Закончив данный курс дай бог вы быстро и качественно сможете выпускать сайты	РОБОТОТЕХНИКА:\n\nТехнологии обучения:\n\n✅ Язык программирования С++\n✅ Ардуино\n✅ Лего Майндстрем\n✅ Схемы\n✅ Механика\n✅ Скретч\n✅ НеоСоКо\n\n\nИнформация о курсе:\nПродолжительность курса составляет 6 месяцев, и в течение этих 6 месяцев вы будете изучать вышеперечисленные технологии. Конечно, если сосредоточиться на изучаемых технологиях, в будущем вы станете хорошим роботом.	РАЗРАБОТКА МОБИЛЬНЫХ ПРИЛОЖЕНИЙ:\n\nКонсоль и Play Store каждый !!\n\nТехнологии обучения:\n\n✅ Kotlin core, Kotlin OOP и Kotlin Advanced\n✅ SDK для Android\n✅ Сеть Android\n✅ Сервисы Firebase\n✅ Компоненты архитектуры\n✅ +2 реальных проекта\n\n\n\nИнформация о курсе:\nПродолжительность курса 6 месяцев и еще 2 месяца стажировки. За 6 месяцев вы изучите все технологии, необходимые для разработки приложений для Android. Будущие программисты, успешно завершившие все темы, будут направлены на 2-месячный курс стажировки, в течение которого они будут работать над созданием различных приложений.	СММ\n\nТехнологии обучения:\n\n✅ Adobe Фотошоп\n✅ Adobe After Effects\n✅ Google Тренды\n✅ Google Бизнес-пакет\n✅ Facebook Business Suite\n✅ Таргетинг\n✅ Копирайтинг	ГРАФИЧЕСКИЙ ДИЗАЙН\n\nТехнологии обучения:\n\n✅ Адоб Фотошоп\n✅ Adobe иллюстратор\n✅ Adobe XD и Figma\n✅ Реальные проекты	Курс пока недоступен	Курс пока недоступен	курсы английского языка\n \nОбщий английский\nIELTS / Цефр\n\nНавыки, которые изучаются на курсах:\n\n✅ Чтение\n✅ Прослушивание\n✅ Говоря\n✅ Написание\n\n\n\n\nИнформация о курсе:\nКурс начинается с уровня А1 до уровня С1. Продолжительность курсов на каждом уровне составляет 2 месяца. Конечно, есть сила, если вы научитесь сосредотачиваться. После прохождения этих курсов, иншаАллах, вы в совершенстве выучите английский язык и получите степень С1.
\.


--
-- Data for Name: uchd_dizayn; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.uchd_dizayn (id, full_name, phone, date, "time") FROM stdin;
1	aihfdviodfv	lksndklvns	Dushanba_Chorshanba_Juma	18:00-20:00
2	9874651	897645312	Вторник_Четверг_Суботта	18:00-20:00
3	wefwef	efwef	Seshanba_Payshanba_Shanba	18:00-20:00
\.


--
-- Data for Name: video_montaj; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.video_montaj (id, full_name, phone, date, "time") FROM stdin;
1	niwdvinwnviw	kwekwke nw	Dushanba_Chorshanba_Juma	16:00-18:00
2	wefw	efew	Dushanba_Chorshanba_Juma	16:00-18:00
3	Xudoyqulov Mirzohid	+998907212021	Dushanba_Chorshanba_Juma	18:00-20:00
\.


--
-- Name: backend_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.backend_id_seq', 15, true);


--
-- Name: english_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.english_id_seq', 3, true);


--
-- Name: frontend_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.frontend_id_seq', 1, true);


--
-- Name: grafik_dizayn_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.grafik_dizayn_id_seq', 2, true);


--
-- Name: kompyuter_savodxonligi_id _seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."kompyuter_savodxonligi_id _seq"', 10, true);


--
-- Name: mobil_ilova_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mobil_ilova_id_seq', 3, true);


--
-- Name: mritc_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mritc_users_id_seq', 97, true);


--
-- Name: mritc_users_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mritc_users_id_seq1', 3, true);


--
-- Name: robototexnika_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.robototexnika_id_seq', 2, true);


--
-- Name: smm_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.smm_id_seq', 2, true);


--
-- Name: uchddizayn_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.uchddizayn_id_seq', 2, true);


--
-- Name: video_montaj_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.video_montaj_id_seq', 3, true);


--
-- Name: backend backend_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend
    ADD CONSTRAINT backend_pkey PRIMARY KEY (id);


--
-- Name: english english_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.english
    ADD CONSTRAINT english_pkey PRIMARY KEY (id);


--
-- Name: frontend frontend_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.frontend
    ADD CONSTRAINT frontend_pkey PRIMARY KEY (id);


--
-- Name: grafik_dizayn grafik_dizayn_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grafik_dizayn
    ADD CONSTRAINT grafik_dizayn_pkey PRIMARY KEY (id);


--
-- Name: kompyuter_savodxonligi kompyuter_savodxonligi_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kompyuter_savodxonligi
    ADD CONSTRAINT kompyuter_savodxonligi_pkey PRIMARY KEY ("id ");


--
-- Name: uchd_dizayn mobil_ilova_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.uchd_dizayn
    ADD CONSTRAINT mobil_ilova_pkey PRIMARY KEY (id);


--
-- Name: emritc_users mritc_users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.emritc_users
    ADD CONSTRAINT mritc_users_pkey PRIMARY KEY (id);


--
-- Name: mritc_users mritc_users_pkey1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mritc_users
    ADD CONSTRAINT mritc_users_pkey1 PRIMARY KEY (id);


--
-- Name: robototexnika robototexnika_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.robototexnika
    ADD CONSTRAINT robototexnika_pkey PRIMARY KEY (id);


--
-- Name: smm smm_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.smm
    ADD CONSTRAINT smm_pkey PRIMARY KEY (id);


--
-- Name: subjects_info subjects_info_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subjects_info
    ADD CONSTRAINT subjects_info_pkey PRIMARY KEY (id);


--
-- Name: subjects_info_ru subjects_info_ru_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subjects_info_ru
    ADD CONSTRAINT subjects_info_ru_pkey PRIMARY KEY (id);


--
-- Name: mobil_ilova uchddizayn_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mobil_ilova
    ADD CONSTRAINT uchddizayn_pkey PRIMARY KEY (id);


--
-- Name: emritc_users uq_user_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.emritc_users
    ADD CONSTRAINT uq_user_id UNIQUE (user_id);


--
-- Name: video_montaj video_montaj_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.video_montaj
    ADD CONSTRAINT video_montaj_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

