--
-- PostgreSQL database dump
--

-- Dumped from database version 14.13 (Ubuntu 14.13-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.13 (Ubuntu 14.13-0ubuntu0.22.04.1)

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
-- Name: Orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Orders" (
    order_number integer NOT NULL,
    "order_total_cost_HT" numeric,
    order_total_quantity integer,
    create_at timestamp without time zone,
    deliver_ato timestamp without time zone,
    "user_UUID" uuid
);


ALTER TABLE public."Orders" OWNER TO postgres;

--
-- Name: Orders_order_number_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Orders_order_number_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Orders_order_number_seq" OWNER TO postgres;

--
-- Name: Orders_order_number_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Orders_order_number_seq" OWNED BY public."Orders".order_number;


--
-- Name: Products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Products" (
    "product_UUID" uuid,
    product_name text,
    product_description text,
    product_price numeric,
    product_quantity integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public."Products" OWNER TO postgres;

--
-- Name: Users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Users" (
    "user_UUID" uuid,
    user_pseudo character varying,
    username character varying,
    user_password character varying,
    created_at timestamp without time zone,
    deliver_at0 text
);


ALTER TABLE public."Users" OWNER TO postgres;

--
-- Name: orders; Type: TABLE; Schema: public; Owner: aubondeal
--

CREATE TABLE public.orders (
    order_number character varying(15),
    order_total_cost_ht numeric(10,2),
    order_total_quantity integer,
    created_at date,
    user_uuid uuid,
    deliver_ato date,
    CONSTRAINT orders_order_total_cost_ht_check CHECK ((order_total_cost_ht > (0)::numeric))
);


ALTER TABLE public.orders OWNER TO aubondeal;

--
-- Name: products; Type: TABLE; Schema: public; Owner: aubondeal
--

CREATE TABLE public.products (
    product_uuid uuid NOT NULL,
    product_name character varying(50),
    product_description character varying(200),
    product_quantity integer,
    created_at date,
    update_at date
);


ALTER TABLE public.products OWNER TO aubondeal;

--
-- Name: users; Type: TABLE; Schema: public; Owner: aubondeal
--

CREATE TABLE public.users (
    user_uuid uuid NOT NULL,
    user_pseudo character varying(50),
    username character varying(50),
    user_password character varying(30),
    created_at date
);


ALTER TABLE public.users OWNER TO aubondeal;

--
-- Name: Orders order_number; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Orders" ALTER COLUMN order_number SET DEFAULT nextval('public."Orders_order_number_seq"'::regclass);


--
-- Data for Name: Orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Orders" (order_number, "order_total_cost_HT", order_total_quantity, create_at, deliver_ato, "user_UUID") FROM stdin;
\.


--
-- Data for Name: Products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Products" ("product_UUID", product_name, product_description, product_price, product_quantity, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: Users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Users" ("user_UUID", user_pseudo, username, user_password, created_at, deliver_at0) FROM stdin;
\.


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: aubondeal
--

COPY public.orders (order_number, order_total_cost_ht, order_total_quantity, created_at, user_uuid, deliver_ato) FROM stdin;
1	4086.31	14	2023-12-27	9c91291f-cff9-5bd7-aea2-bfdfebcc876b	2023-12-27
2	5741.29	79	2024-08-25	f7e8418b-bd80-6773-bb74-9dffe30b6514	2024-08-25
3	4829.03	43	2024-04-14	c8aa7c47-99c0-0738-4733-14b4c888c219	2024-04-14
4	5356.60	64	2024-06-30	7991e1b6-4705-33c2-a2ab-a02fe5a49926	2024-06-30
5	4048.66	12	2023-12-22	fecde6a4-b620-e745-5d94-4bf877a984fa	2023-12-22
6	4803.97	42	2024-04-10	bbf1ce5e-024b-a48f-63fd-aa54bc35c0cc	2024-04-10
7	4424.46	27	2024-02-15	782b3b95-e5cb-f077-27ab-096f1163deb3	2024-02-15
8	5694.36	77	2024-08-19	782b3b95-e5cb-f077-27ab-096f1163deb3	2024-08-19
9	4154.61	17	2024-09-02	5fed838e-fe70-efc0-2544-ab725b35293e	2024-09-02
10	5795.78	82	2024-10-05	9cc8d1f3-6179-c63b-a9ba-711f98722156	2024-10-05
11	6021.63	90	2024-10-02	9cc8d1f3-6179-c63b-a9ba-711f98722156	2024-10-02
12	5997.49	90	2024-01-08	1f80d3f7-f1a1-3937-d686-f4110dd72f04	2024-01-08
13	4165.26	17	2024-01-19	9ad40324-4928-bb2f-7d52-959e3e94eb36	2024-01-19
14	4240.30	20	2024-10-23	815df73b-c0a6-692c-f895-95d7360f7439	2024-10-23
15	6143.17	95	2024-10-21	a3afbe4f-5f89-951e-7307-0ffa8d6ca067	2024-10-21
16	6131.25	95	2024-01-28	ee6e5ffa-d881-2b06-831b-7d3aff983ecb	2024-01-28
17	4307.12	23	2024-05-07	4687cc9c-8ff0-9402-b271-4113f2d83491	2024-05-07
18	4989.43	50	2024-10-30	65f80b6e-b60b-06ef-3980-cd18ee3fd49c	2024-10-30
19	5256.09	60	2023-12-10	2e18f3f4-eaca-1c2e-0884-0fcee408f87e	2023-12-10
20	4592.90	34	2024-11-05	ee6e5ffa-d881-2b06-831b-7d3aff983ecb	2024-11-05
21	6189.86	97	2024-10-29	c45d1852-9c3e-3b9b-67f1-96815a76cd1e	2024-10-29
22	3967.69	9	2024-02-02	54807c04-159e-057b-9fea-260a96b22488	2024-02-02
23	4868.36	45	2024-05-03	790578bf-602a-2df0-3f53-f49c77c74ee5	2024-05-03
24	6229.14	99	2024-07-09	74950407-e27e-7263-9ae5-d96d8ad87557	2024-07-09
25	6180.30	97	2024-04-20	4638777f-ae5c-771a-1566-00b9164da400	2024-04-20
26	4341.62	24	2024-08-21	8d78004c-f8ff-3559-4262-4488992c4587	2024-08-21
27	4962.85	49	2024-02-20	bbf1ce5e-024b-a48f-63fd-aa54bc35c0cc	2024-02-20
28	5417.99	67	2023-12-16	565a819b-8cac-9fbe-9867-124d0ba72686	2023-12-16
29	4871.34	45	2024-08-16	07bff28c-bbbc-d0c3-2617-c44a57d1d1a9	2024-08-16
30	5713.84	78	2024-03-29	54807c04-159e-057b-9fea-260a96b22488	2024-03-29
31	4461.68	29	2024-07-20	89387ef1-cc6a-bd4b-7a98-fbe9691a45ba	2024-07-20
32	4011.10	11	2024-01-25	e7ea0420-ce10-3980-5a88-fc66c0ad5d16	2024-01-25
33	5680.26	77	2024-11-07	fecde6a4-b620-e745-5d94-4bf877a984fa	2024-11-07
34	4721.63	39	2024-05-03	3004ae5a-530d-fef6-3b88-22a520415660	2024-05-03
35	5490.57	69	2024-03-06	1f80d3f7-f1a1-3937-d686-f4110dd72f04	2024-03-06
36	4282.81	22	2024-09-06	bb65621d-ff24-98f6-442c-8c6811964e9a	2024-09-06
37	6246.81	99	2024-04-10	4f39f496-39ea-068b-e883-d3e3fae443e4	2024-04-10
38	4960.38	48	2024-09-19	9c91291f-cff9-5bd7-aea2-bfdfebcc876b	2024-09-19
39	4564.55	33	2024-01-29	b90d60e9-b1e6-0d8b-52af-26d5c3f1aa5d	2024-01-29
40	5817.70	82	2024-04-13	998514f6-ba1b-77c4-ddb8-b53d1c66702a	2024-04-13
41	4801.93	42	2024-10-06	d6305bda-8e8f-93c7-945e-90d4c8e15fa9	2024-10-06
42	5907.24	86	2024-01-12	a3826063-df27-d684-702a-9fef58aa6dfb	2024-01-12
43	4308.54	23	2023-12-26	d8d6f7fb-db48-7847-fee2-f4cfed3ca960	2023-12-26
44	4822.68	43	2024-10-13	565a819b-8cac-9fbe-9867-124d0ba72686	2024-10-13
45	6025.40	91	2024-10-14	9c91291f-cff9-5bd7-aea2-bfdfebcc876b	2024-10-14
46	4192.04	18	2023-11-21	2700a08f-e516-b51f-2c93-57515c1de8be	2023-11-21
47	4076.09	13	2024-10-24	e87d7290-cb49-a6ed-61ec-a869358ba6ce	2024-10-24
48	6074.98	93	2024-07-16	4f39f496-39ea-068b-e883-d3e3fae443e4	2024-07-16
49	6080.51	93	2024-08-06	c154e3ca-cc39-8ea5-c2cd-776455e923bd	2024-08-06
50	3840.24	4	2024-10-19	f7e31795-a076-6394-c276-9f35c7140384	2024-10-19
51	6146.86	95	2024-07-18	74950407-e27e-7263-9ae5-d96d8ad87557	2024-07-18
52	5466.18	68	2023-12-27	58ebe234-d944-4690-6a3d-3f5deed62bc3	2023-12-27
53	5606.27	74	2024-06-19	65f80b6e-b60b-06ef-3980-cd18ee3fd49c	2024-06-19
54	6114.41	94	2024-09-29	782b3b95-e5cb-f077-27ab-096f1163deb3	2024-09-29
55	5477.41	69	2023-12-14	1f80d3f7-f1a1-3937-d686-f4110dd72f04	2023-12-14
56	4088.12	14	2024-01-11	3e1e3970-7685-b0c0-12bd-1844cd5b6a5c	2024-01-11
57	5280.51	61	2024-04-25	2f18db2d-5c86-356e-0177-3cde222a7ae0	2024-04-25
58	5977.80	89	2024-09-16	65f80b6e-b60b-06ef-3980-cd18ee3fd49c	2024-09-16
59	3994.72	10	2024-08-22	8318b2da-f6f5-ced2-d71b-8a6aa0fb930d	2024-08-22
60	4191.22	18	2024-05-16	665af6cb-5090-9dac-5f78-c6f016ceb2d6	2024-05-16
61	4905.96	46	2024-04-20	ef38d8ad-d511-7075-d0e8-096d14d48237	2024-04-20
62	5891.92	85	2024-01-07	82f2f7e3-a532-d5bb-c264-de8397f61b86	2024-01-07
63	5719.24	78	2023-11-14	782b3b95-e5cb-f077-27ab-096f1163deb3	2023-11-14
64	3862.99	5	2024-01-29	782b3b95-e5cb-f077-27ab-096f1163deb3	2024-01-29
65	5045.47	52	2024-06-28	9cc8d1f3-6179-c63b-a9ba-711f98722156	2024-06-28
66	4868.69	45	2024-07-13	975d2db8-5ae4-eb22-cb11-c579d93c70e9	2024-07-13
67	4157.91	17	2024-04-18	84ef0f9a-c338-dc42-b110-8f4a3c67e56b	2024-04-18
68	3795.12	2	2024-10-26	fecde6a4-b620-e745-5d94-4bf877a984fa	2024-10-26
69	4309.49	23	2024-02-04	1f80d3f7-f1a1-3937-d686-f4110dd72f04	2024-02-04
70	5344.41	64	2024-06-12	4638777f-ae5c-771a-1566-00b9164da400	2024-06-12
71	5444.14	68	2024-01-05	8318b2da-f6f5-ced2-d71b-8a6aa0fb930d	2024-01-05
72	4859.51	44	2024-04-09	c154e3ca-cc39-8ea5-c2cd-776455e923bd	2024-04-09
73	6163.47	96	2024-08-08	5fed838e-fe70-efc0-2544-ab725b35293e	2024-08-08
74	4350.20	24	2024-01-08	1f1d692b-3154-66b4-a306-8b5fe56f9de4	2024-01-08
75	3911.79	7	2024-10-21	1ebf6ec2-caa1-3b7a-4a48-4a8f78259392	2024-10-21
76	5235.74	59	2024-02-11	dd5469db-a448-bf40-239b-4e11dfa13eff	2024-02-11
77	4150.33	16	2024-02-26	c45d1852-9c3e-3b9b-67f1-96815a76cd1e	2024-02-26
78	4796.77	42	2024-04-11	bb65621d-ff24-98f6-442c-8c6811964e9a	2024-04-11
79	5623.88	75	2024-01-28	8d78004c-f8ff-3559-4262-4488992c4587	2024-01-28
80	4166.60	17	2024-02-21	3e1e3970-7685-b0c0-12bd-1844cd5b6a5c	2024-02-21
81	6125.74	95	2024-04-26	65f80b6e-b60b-06ef-3980-cd18ee3fd49c	2024-04-26
82	4402.09	26	2024-01-18	1f80d3f7-f1a1-3937-d686-f4110dd72f04	2024-01-18
83	4501.10	30	2024-01-24	d6305bda-8e8f-93c7-945e-90d4c8e15fa9	2024-01-24
84	4807.42	42	2023-11-28	74950407-e27e-7263-9ae5-d96d8ad87557	2023-11-28
85	4302.79	22	2024-07-28	3eccc48b-9895-b4f1-1cb7-3bba1da81ca2	2024-07-28
86	4465.88	29	2024-04-06	89387ef1-cc6a-bd4b-7a98-fbe9691a45ba	2024-04-06
87	6158.37	96	2023-12-20	4910a4e1-cec8-3598-45f9-7f76495c1e67	2023-12-20
88	4909.06	46	2024-02-02	d7b35269-fced-0c55-e7b1-a35f93bbe7f2	2024-02-02
89	4236.97	20	2024-08-04	d311f656-2e33-b722-550a-8f2a985d1ee1	2024-08-04
90	4273.46	21	2024-09-10	84ef0f9a-c338-dc42-b110-8f4a3c67e56b	2024-09-10
91	3884.56	6	2024-10-07	975d2db8-5ae4-eb22-cb11-c579d93c70e9	2024-10-07
92	5544.04	72	2023-12-16	ad64d831-5e1b-abad-eb02-971e590ab9d2	2023-12-16
93	4773.95	41	2024-06-27	54eaed78-8aba-a693-9117-660212170d12	2024-06-27
94	4038.40	12	2024-04-20	b618dd5a-b784-bc64-2a50-168637fb27e9	2024-04-20
95	4337.02	24	2024-01-29	d8d6f7fb-db48-7847-fee2-f4cfed3ca960	2024-01-29
96	5598.26	74	2024-07-15	98c6777e-68db-5dbe-eed2-6d2f5fd2da87	2024-07-15
97	5844.56	83	2024-08-21	ef38d8ad-d511-7075-d0e8-096d14d48237	2024-08-21
98	6031.91	91	2024-02-16	84ef0f9a-c338-dc42-b110-8f4a3c67e56b	2024-02-16
99	4009.61	11	2024-03-05	679b2c33-1a7b-3c61-c945-7519f07d5c67	2024-03-05
100	5334.89	63	2024-03-21	1321dbcb-9deb-f229-9b74-769afada5874	2024-03-21
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: aubondeal
--

COPY public.products (product_uuid, product_name, product_description, product_quantity, created_at, update_at) FROM stdin;
8218d88a-e9bd-62cd-b50c-3e8b24ae3073	Spicy Thai Noodles	Instant noodles with a spicy Thai sauce for quick meals.	802	2024-08-28	2024-08-28
041bb5f0-13f2-a4de-fb45-0851feac2525	Handcrafted Wooden Jewelry Box	Beautifully crafted jewelry box with compartments for storage.	449	2024-04-21	2024-04-21
1717463c-b534-4902-8f50-747980b0e19a	Chicken Parmesan Dinner Kit	A complete meal kit containing breaded chicken breast, marinara sauce, and pasta, perfect for a quick dinner.	869	2024-09-21	2024-09-21
8317bde2-252b-86e0-33ff-e28b23bfb0cd	Reusable Coffee Filter	Eco-friendly coffee filter for brewing.	145	2023-12-31	2023-12-31
4cbdeb5a-d77d-cded-29e1-d7f528b2ca64	Caramel Sauce	Rich sauce for desserts and ice cream.	8	2023-11-11	2023-11-11
d1362c24-46d5-7a85-cf8a-7596c26e3e39	Garlic Butter Shrimp	Frozen shrimp sautéed in garlic butter, ready to thaw and serve over pasta or rice.	605	2024-06-16	2024-06-16
28f96c65-98a8-dd7e-ca78-2eaf3e6034df	Peanut Butter Protein Balls	No-bake energy bites made with peanut butter and oats.	877	2024-08-28	2024-08-28
e4628314-71c1-202d-4627-6e0bf97b8b27	Honey Ginger Tea	Soothing tea with honey and ginger, great for relaxation.	803	2024-10-13	2024-10-13
23b359ed-df2e-ffdc-0bcf-74306074d8d5	Cereal Dispenser with Portion Control	Maintain freshness and dispense cereal easily.	928	2024-03-31	2024-03-31
1c5c0589-9682-b6e0-db81-c8b8e1b22002	Vanilla Ice Cream	Creamy and rich vanilla ice cream, a classic dessert.	393	2024-05-17	2024-05-17
ac91b029-3270-4ad6-0ddd-10300a2cdbfd	Ceramic Cookware Set	Durable and non-stick ceramic cookware for healthy cooking.	521	2024-05-07	2024-05-07
1019a8c8-72cc-4f6e-4fb1-f44fe595850b	Ginger Tea	A soothing herbal tea made from ginger root.	223	2024-09-22	2024-09-22
efb05b35-3469-7ae8-3c5a-7c56ac3cef7e	Pepperoni Pizza Rolls	Savory pizza rolls filled with pepperoni and cheese, ready to bake and enjoy in minutes.	495	2024-01-11	2024-01-11
e235c0d8-6db2-1e30-4ba0-390bd6f30d21	Fridge Magnet Set	Fun fridge magnets to decorate your kitchen.	871	2024-01-03	2024-01-03
7f1029ec-e4b8-fc59-35f6-acf4f39e5abd	Travel Makeup Organizer	Compact organizer for cosmetics during travel.	176	2024-09-19	2024-09-19
c32809ec-7f94-cfd4-8b2d-e8a9120b4d9e	Chilli Lime Corn on the Cob	Corn on the cob seasoned with chili and lime for a spicy kick.	154	2024-09-09	2024-09-09
7a6545d9-216d-3780-771d-6111b7c531ad	Rainbow Veggie Chips	Colorful veggie chips made from beets, carrots, and sweet potatoes.	863	2024-09-24	2024-09-24
721e4691-3fd8-3c33-1ded-d0eabc826844	Mediterranean Couscous	Flavored couscous with herbs and spices, perfect as a side dish or a base for salads.	835	2023-11-11	2023-11-11
4864e306-f006-c616-91d0-64d5c5154171	Multi-Tool	Versatile multi-tool with 15 different functions.	877	2024-09-09	2024-09-09
57cfcb65-87fc-158a-68b9-b7c8a7993d56	Vegetable Fried Rice Mix	A quick and easy fried rice mix with colorful veggies and savory seasoning.	8	2024-11-05	2024-11-05
00138d06-7948-c2cf-4ce0-97716d757f75	Active Racerback Tank	Lightweight and moisture-wicking racerback tank for workouts.	837	2024-04-14	2024-04-14
b3f6c0e9-dff3-2d83-04e1-0c2baa87a8ae	Luxury Bathrobe	Soft and cozy bathrobe perfect for relaxing at home.	991	2023-11-24	2023-11-24
3c192147-b16a-4ac4-f5cf-8306dbfe6a90	Hand Mixer	Compact hand mixer for easy baking.	430	2024-10-05	2024-10-05
9505c4e7-0768-1c76-3827-c09a4fcb9cf3	Buffalo Stilton Cheese	Spicy blue cheese with a hint of buffalo flavor.	45	2024-05-07	2024-05-07
948c289e-465d-2e8a-c19b-3a8736294dc6	Fresh Basil	Aromatic fresh basil, perfect for Italian cooking.	908	2024-01-16	2024-01-16
d7a2d910-3076-784c-3b2e-7a7565351c13	Overnight Duffle Bag	Spacious duffle bag for weekend getaways.	495	2023-12-25	2023-12-25
f8d58295-fea5-9c8f-ac10-579564ad036e	Pizza Stone	Ceramic pizza stone for homemade pizzas.	187	2024-03-16	2024-03-16
c1248cc5-f4c0-71f7-d3b1-a9e03207d47c	Deep Tissue Massage Gun	Rechargeable massage gun for relieving muscle soreness.	129	2024-08-05	2024-08-05
ef06a303-ad37-fb8d-3fe8-53be8199e9fe	Cranberry Pecan Granola	Crunchy granola with cranberries and pecans.	351	2024-09-07	2024-09-07
bd7ef697-d23f-655c-6eef-1c34b71946e9	Teriyaki Salmon Fillets	Frozen salmon fillets marinated in teriyaki sauce, ready to grill or bake.	739	2024-06-21	2024-06-21
99a6d685-7e78-06d7-7b88-8fbe657db5b2	Whole Wheat Pita Bread	Soft and fluffy whole wheat pita bread, great for wraps.	831	2024-05-09	2024-05-09
27086563-164c-f717-daee-be55df25ac1d	Beet Salad	Ready-to-eat beet salad with dressing, great side dish.	618	2024-07-12	2024-07-12
aff59e7c-2840-334d-6c32-faf001d19cbc	Spicy Salsa Verde	Green salsa with a spicy kick, great for dipping.	500	2024-01-20	2024-01-20
8df2cc46-45f0-4fed-54dd-1b8a009d460c	Non-Stick Baking Sheets	Set of baking sheets for effortless baking.	676	2024-02-14	2024-02-14
4ca5e40c-c2f6-f391-1765-e0e52a007427	Dog Walking Waist Pack	Hands-free waist pack for carrying essentials while walking your dog.	200	2024-04-18	2024-04-18
1830e74f-e852-a14c-73e3-49f4e826b56c	Pet Leash	Durable pet leash with comfortable handle.	267	2024-05-23	2024-05-23
803a6510-0bd5-5f80-1857-a3d1d9a654f8	Pet Training Clicker	Simple tool to train your pet with positive reinforcement.	88	2024-03-10	2024-03-10
48d82480-9ae2-669e-7c4e-1725bbec05d2	Granola Cereal	Crunchy granola with oats, nuts, and honey.	442	2024-08-31	2024-08-31
b7565d4e-3cd0-2e78-c8ec-9407560f887a	Heavy-Duty Utility Tote	Large, durable tote bag for shopping and outdoor activities.	539	2024-04-24	2024-04-24
11329635-e2b0-c604-2a25-397c1bd46fed	Apple Cinnamon Granola	A wholesome granola with bits of apple and a touch of cinnamon.	336	2024-05-13	2024-05-13
0ffb9f73-0292-0cda-e9ec-80d3ffbfbc85	Adjustable Garden Rake	Heavy-duty rake with adjustable width for different gardening needs.	811	2024-08-15	2024-08-15
2e40c318-8cd6-c87a-3a55-fc54d936a1a4	Roasted Garlic	Savory roasted garlic in a jar for easy use.	458	2024-06-01	2024-06-01
7935bc01-0307-7551-e629-4a10be81529b	Banana Peanut Butter Smoothie	Frozen smoothie mix with bananas and peanut butter for a quick drink.	512	2024-04-25	2024-04-25
113ba6ce-4b2f-166d-2353-ce6e9ecfd35c	Caramelized Onion Dip Mix	A mix to create a delicious onion dip for parties or snacking.	682	2024-10-21	2024-10-21
f67f8153-852a-6b61-ddcf-74e9e2ed7bac	Stylish Wireless Earbuds	True wireless earbuds with excellent sound quality.	766	2024-05-23	2024-05-23
12b42b9e-145e-2794-c0ed-566ee23253d1	Plaid Flannel Shirt	Soft flannel shirt with a timeless plaid pattern, perfect for layering.	564	2024-08-17	2024-08-17
3112ff47-5b30-b6d7-758d-d8c76e39bbf6	Vegetable Stir Fry Mix	A mix of fresh vegetables for quick stir-fries.	461	2024-02-25	2024-02-25
5a22aa73-daf2-bf81-f733-a2c54760954d	Caribbean Jerk Marinade	A spicy marinade perfect for chicken and fish.	951	2023-12-05	2023-12-05
189d0587-8d51-fc7d-5350-b148472b99c8	Digital Kitchen Timer	Easy-to-read digital kitchen timer with alarms.	539	2024-05-31	2024-05-31
bbdb9b99-246a-cd99-436e-2e5e764858fb	Zucchini Noodles	Spiralized zucchini, a healthy alternative to pasta.	774	2024-04-13	2024-04-13
f29ff25c-a4e5-b865-aa89-c9388cd837a5	Weighted Blanket for Adults	A calming blanket that provides gentle pressure for relaxation.	298	2024-10-27	2024-10-27
c7181301-705d-ad42-4bfc-e56f59942e68	Chiffon Blouse	Elegant chiffon blouse perfect for work or outings.	74	2024-05-04	2024-05-04
ba3496a1-5e99-c016-8f93-6348d4b392a9	Pumpkin Puree	Canned pumpkin puree, perfect for pies and soups.	560	2024-05-29	2024-05-29
49566513-0244-7efb-1c8f-9ade807ec4fb	Organic Tomato Soup	Hearty tomato soup made from organic ingredients.	429	2024-11-06	2024-11-06
de8097c9-02fb-786c-bdac-b2e764c55ba8	High-Speed HDMI Cable	Durable cable for connecting devices with high-definition video.	966	2024-03-19	2024-03-19
3c4af576-5853-ca66-9bc1-e0e74fc74e22	Teriyaki Tofu Stir-Fry	Tofu stir-fried with fresh vegetables in teriyaki sauce.	487	2024-10-06	2024-10-06
35ea2b61-dfdb-7095-3ee3-a26a6ff5bf8e	Coconut Cream Pie Mix	Creamy, sweet pie mix to make the perfect coconut cream pie.	554	2024-09-10	2024-09-10
1de43b65-8dae-f340-3eb2-1b2083860f7e	Portable Massage Table	Folding massage table for professional or home use.	995	2024-07-20	2024-07-20
73d25eb5-f41b-6e79-e0ea-97ee416e3eb3	Sustainable Wooden Toys	Eco-friendly toys for learning and imaginative play.	360	2023-12-12	2023-12-12
05a33c95-d11d-c5c6-380b-1cb5e6aae20f	Chocolate Coconut Protein Balls	No-bake protein balls with chocolate and coconut flavors.	911	2023-12-20	2023-12-20
86e6d2f3-1f2f-a717-f5ab-a5fc7d55afc6	Teriyaki Chicken Bowl	Ready-to-eat chicken bowl with teriyaki sauce and rice.	839	2024-02-26	2024-02-26
74c6f0a2-670c-df1f-f367-248fbf4d4dd7	Pet Bed	Comfortable pet bed for small to medium-sized dogs.	698	2024-10-12	2024-10-12
cb04ad3e-e73a-2b52-4d88-03fd3511a748	BBQ Sauce	A smoky barbecue sauce, ideal for grilling and dipping.	93	2023-11-25	2023-11-25
3411da55-741b-fcd2-569a-e2d7651a60fe	Electric Stool Heater	Heated stool cover for extra comfort during winter.	115	2024-06-04	2024-06-04
1b8759a3-1415-24fa-6df0-90ac3180d30d	Silicone Stretch Lids	Reusable silicone lids for covering food in bowls and storage containers.	301	2024-01-03	2024-01-03
32e6729c-3289-1c96-8ba7-97ccd7c12141	Pineapple Rings	Delicious canned pineapple rings for desserts or salads.	736	2024-02-25	2024-02-25
4273d8ba-964e-5725-d0ef-9700ac47aab8	High-Low Hem Tee	Trendy high-low tee with a relaxed fit, ideal for weekends.	927	2024-04-11	2024-04-11
e7d05827-f2b2-cbe5-3afc-52c3f2bf6316	Organic Honeycrisp Apples	Sweet and crisp apples, perfect for snacking.	47	2024-05-09	2024-05-09
8096141f-8768-307e-6bde-590a06ceb4a6	Basil Lemonade	Refreshing basil-infused lemonade for a cool drink.	570	2024-10-28	2024-10-28
29ba20e5-2d44-4936-f5da-6862352776a1	Almond Milk	Deliciously creamy almond milk, perfect for smoothies.	154	2024-06-21	2024-06-21
66169a59-e16b-851e-1f4b-5747cb0779fc	Ground Turkey	Lean and versatile ground turkey, perfect for various dishes.	299	2024-09-03	2024-09-03
33752a72-c7f4-fe40-bfba-b63d71004e0e	Camping Tent	Spacious 2-person camping tent with waterproof cover.	424	2024-04-28	2024-04-28
2b7d2aeb-f37c-946a-4eee-7f0ba1790923	Blueberry Oatmeal Cups	Instant oatmeal cups with blueberries for an easy breakfast.	501	2024-05-01	2024-05-01
e42d07f4-f19b-8f7a-ebbc-766d8ad81c7b	Maple Bacon Popcorn	Savory popcorn flavored with maple syrup and bacon bits.	970	2023-11-15	2023-11-15
ae53eb54-171e-4d43-fd17-6b974d1d7ea4	Whole Grain Cereal	Healthy whole grain cereal, great for breakfast.	618	2024-10-12	2024-10-12
259f1e46-e3cb-ce28-64c6-f65970fee76f	Brazil Nuts	Rich in selenium, perfect for snacking or baking.	820	2024-09-15	2024-09-15
a092c420-8574-7a16-5ebc-142e80e1469b	Pumpkin Spice Granola	Crunchy granola with pumpkin spice flavor.	469	2024-05-17	2024-05-17
beb72976-a7a7-5af9-8bf6-9ba8d40f7cb2	Marinated Artichokes	Artichoke hearts marinated in herbs and oil.	478	2024-05-01	2024-05-01
fb629560-d8c1-5efb-166c-c6fe5e0fefda	Electric Heat Press Machine	Ideal for creating custom designs on t-shirts and fabrics.	18	2024-06-30	2024-06-30
99fd9d29-94a5-79b7-b19e-88e26391ae30	Nature Explorer Lens Kit	Magical lens kit for kids to explore the outdoors.	927	2024-03-03	2024-03-03
0286587c-bd22-96fb-c453-2f50c31e7d59	Magnet Travel Fridge Magnets	Fun tourist magnets from around the world for your fridge.	851	2024-06-17	2024-06-17
d351f78a-1ec0-06e8-809f-0670519f92da	Creamy Coleslaw Mix	Shredded cabbage and carrots for coleslaw.	522	2024-04-12	2024-04-12
9adead12-2d28-6945-4f1b-300a2e995f65	Sliced Olives	Pitted black olives, perfect for salads and pizzas.	479	2024-03-26	2024-03-26
a8a1e46d-1fff-a788-2612-83a26edbf3b6	Honey Sesame Chicken	A delicious chicken dish featuring honey and sesame flavors.	643	2024-07-11	2024-07-11
d8365041-4708-f10a-37f7-ad3e0a59c0af	Utility Cargo Pants	Practical cargo pants with lots of pockets for functionality.	318	2024-06-07	2024-06-07
cbbae453-3356-ce44-3522-1acaa2ba2f27	Outdoor String Lights	Fairy lights perfect for decorating patios and backyards.	606	2024-09-02	2024-09-02
c1e21b34-fdbf-2c7e-752c-4bdb202913d9	Basmati Rice	Aromatic long-grain basmati rice, perfect for curries.	426	2024-09-11	2024-09-11
05290a46-55cb-9443-4a3a-857bd58d12f6	Traditional Hummus	Creamy chickpea dip blended with tahini and garlic.	362	2024-10-26	2024-10-26
cbbda4b9-5224-dc9f-84bf-0ab092ee3eaa	Rice Pudding	Creamy dessert made with rice and cinnamon.	380	2024-02-27	2024-02-27
31dcf06e-064f-290c-4df8-672cab538524	Leather Crossbody Bag	A chic leather crossbody bag for everyday use.	673	2024-05-06	2024-05-06
d670a1c0-03b7-b542-c6de-a8874b06366e	Wireless Keyboard and Mouse Combo	Compact wireless set for easy computer usability.	578	2024-08-21	2024-08-21
58b06ee6-3c91-bbd6-0b9d-68bedf59aa04	Luminous Night Light	Soft glow night light for children's rooms or bedside.	817	2024-06-15	2024-06-15
1fa50910-54df-c571-ed1c-9c528ece419e	Beard Grooming Kit	Everything you need for maintaining a healthy beard.	842	2024-11-01	2024-11-01
f673fb2f-a086-a8ed-ca5b-cf5cbf6529f0	Pet Leash	Durable pet leash with comfortable handle.	963	2024-04-01	2024-04-01
0aa25504-dbe3-54e1-3343-b9ae105ed867	Kale Salad Kit	Ready-to-eat salad with kale, lemon, and cheese.	506	2024-07-01	2024-07-01
27fed862-e1e9-dcac-9ed6-8842a13b7109	Faux Fur Coat	A luxurious faux fur coat that adds glamour to any outfit.	303	2024-04-05	2024-04-05
be54968c-632f-9e0a-9a8e-1dc89315d37e	Floral Wrap Top	A feminine wrap top with a beautiful floral print.	492	2023-12-10	2023-12-10
4fb5eea7-7c00-4622-1852-967edb08c401	Wall-Mounted Wine Rack	Stylish and modern holder for storing wine bottles on walls.	783	2024-07-07	2024-07-07
962e04cc-9ac2-2e99-6e97-9980e35fe325	Buffalo Wing Sauce	Spicy sauce perfect for chicken wings and dipping.	600	2024-11-01	2024-11-01
4eff94c9-f0fb-e47c-c130-9a5da5ecd997	Creative Puzzle Game	Challenging and fun puzzle game for all ages.	981	2024-11-02	2024-11-02
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: aubondeal
--

COPY public.users (user_uuid, user_pseudo, username, user_password, created_at) FROM stdin;
06bdb13a-ee7c-af52-5c2a-1e22c0c8d492	wlauritzen50294	wlauritzen50294	43D7X%!**&	2024-03-05
1424bdd2-8ba1-7867-3300-b455e585c3fb	kraymont58524	kraymont58524	**$Nkt$7#1V*	2024-06-05
895f8d6e-62e2-9c89-bb66-364915770159	co'meara660	co'meara660	y!!$$C*U4	2024-04-04
998514f6-ba1b-77c4-ddb8-b53d1c66702a	ggurdon34628	ggurdon34628	!7v!#pG41&w!*	2024-11-02
58ebe234-d944-4690-6a3d-3f5deed62bc3	zhixley27527	zhixley27527	!8%%1#Zt**	2024-05-23
1f1d692b-3154-66b4-a306-8b5fe56f9de4	wruscoe30704	wruscoe30704	luNm7*NoV7****0q	2024-08-15
ef38d8ad-d511-7075-d0e8-096d14d48237	kswyne59687	kswyne59687	5**&53$$!D	2024-01-08
184a6349-9a34-31b0-b390-322c105e3079	dgallgher50127	dgallgher50127	*!@s$u!q*$*!	2024-06-01
4687cc9c-8ff0-9402-b271-4113f2d83491	calway7885	calway7885	%&!!*GI!$t%!	2024-08-13
679b2c33-1a7b-3c61-c945-7519f07d5c67	sgobat8939	sgobat8939	Z!$!pt!!m*#d*!V*	2024-07-23
8d78004c-f8ff-3559-4262-4488992c4587	vmeggison164	vmeggison164	*938!%!ot!	2024-09-30
dd5469db-a448-bf40-239b-4e11dfa13eff	dharsant15812	dharsant15812	1#*%gY6#oH@!!&l6	2024-04-24
34947d25-2dcb-7d81-1a8a-491a059ff170	mguyet44352	mguyet44352	8!D!5K8x!*bf!6	2024-01-26
9c91291f-cff9-5bd7-aea2-bfdfebcc876b	bmarch37798	bmarch37798	*4a5J9e*!*$	2024-07-17
6c7f16e5-9326-3cb8-5e8d-5e5b12460cfb	dlaxtonne52960	dlaxtonne52960	82*0h!#&*U&!3!	2024-04-29
b9b686dd-d301-c5cb-17a5-63118ba0de2e	rfeavers17894	rfeavers17894	*dL%7a0$	2023-11-12
782b3b95-e5cb-f077-27ab-096f1163deb3	cbote40147	cbote40147	$u*&1**!D$*	2024-06-02
4f39f496-39ea-068b-e883-d3e3fae443e4	vmockler19121	vmockler19121	k%&$13!**CY&*	2024-03-26
b618dd5a-b784-bc64-2a50-168637fb27e9	ilanfare14059	ilanfare14059	W!*v4Wi!b6&	2024-04-04
5fed838e-fe70-efc0-2544-ab725b35293e	esigne1793	esigne1793	*X!!!0!!q3*e	2024-05-19
1dc7e566-07c9-1f59-400c-8dd5ccae699d	jgristhwaite20234	jgristhwaite20234	$&!hP3!05!*	2024-02-08
07bff28c-bbbc-d0c3-2617-c44a57d1d1a9	ksommerton33227	ksommerton33227	!9*3#!6JzGj!de$7	2024-11-07
1f80d3f7-f1a1-3937-d686-f4110dd72f04	mclappson8116	mclappson8116	w#0b#*n72a@!*8	2024-05-11
c45d1852-9c3e-3b9b-67f1-96815a76cd1e	zspens23657	zspens23657	i0*!E**#*6	2024-04-17
665af6cb-5090-9dac-5f78-c6f016ceb2d6	beardley58701	beardley58701	%0%#*S!$!!ZYw!	2024-09-11
19338104-39e5-3c60-347e-d36b5a70db75	mvigours37522	mvigours37522	V#UJHQ*1	2024-04-10
975d2db8-5ae4-eb22-cb11-c579d93c70e9	fshuxsmith34005	fshuxsmith34005	2KlzF*uZ$l*!M	2024-07-28
3eccc48b-9895-b4f1-1cb7-3bba1da81ca2	sloughman53944	sloughman53944	AY!*c!**t!YV%	2024-11-01
4638777f-ae5c-771a-1566-00b9164da400	rgrannell29543	rgrannell29543	Cy!b#*%!	2024-08-25
e3bb2ff2-d92f-cd16-5177-51f7f7a31dff	hkilbane5725	hkilbane5725	j*!%Iw4*&%u*9!!	2024-01-14
84ef0f9a-c338-dc42-b110-8f4a3c67e56b	smacelroy63229	smacelroy63229	M%$$&G!$%	2024-04-27
d1724266-50d6-3676-de2d-17abd7a2c43d	pchattell60837	pchattell60837	*&&#%s&%X*940!	2024-07-22
89387ef1-cc6a-bd4b-7a98-fbe9691a45ba	dsycamore39501	dsycamore39501	J6&6*&&#&Fa5!W*$	2024-05-25
a3afbe4f-5f89-951e-7307-0ffa8d6ca067	rgilardone24744	rgilardone24744	!ev$v$!*	2024-09-29
f7e42453-f593-a6d4-5b30-b559ac6941ad	eserchwell1579	eserchwell1579	!f&9&l#*07e#*	2024-03-31
8ad53f74-0fb7-02ca-1b5f-715aa9e0eb21	wrosenwasser32503	wrosenwasser32503	*@*zos!y30m*u	2024-10-06
4910a4e1-cec8-3598-45f9-7f76495c1e67	tatteridge45419	tatteridge45419	**!#$#P$je	2024-08-10
54eaed78-8aba-a693-9117-660212170d12	spetracci11757	spetracci11757	L#*%1dPiZ0&f6v*	2024-02-05
464a87bb-2b78-ea42-8192-4d5db710138a	trumming30874	trumming30874	!*!O7*f4	2024-03-14
94811ecd-065e-eebe-9281-9631b136e1ce	jbeckham10564	jbeckham10564	%y%YI2%*$5L	2024-06-20
0dfbd608-6446-19db-2754-41d7e330d7cf	mheaslip15337	mheaslip15337	*!e7i!&VaRI!ux	2024-08-14
cc704010-8134-c750-8f55-4d0ac6260504	flively48291	flively48291	5$5#2$*7	2024-07-08
fecde6a4-b620-e745-5d94-4bf877a984fa	dkwietak42782	dkwietak42782	*#*b1**F!	2024-01-26
c8aa7c47-99c0-0738-4733-14b4c888c219	aborne32425	aborne32425	*idS5*$*	2023-11-14
65f80b6e-b60b-06ef-3980-cd18ee3fd49c	agoodsir49971	agoodsir49971	4R%5*&8g8DUa!%EX	2024-06-17
bc0ab388-3aa3-b325-d420-8cb99b097ff7	mfullard37646	mfullard37646	C!g1b6**h!	2023-12-22
c154e3ca-cc39-8ea5-c2cd-776455e923bd	nmoro35390	nmoro35390	%*g&2C&!	2024-07-12
4f3a0909-2e1c-b24a-ea33-eb44d6c2fb97	rwoollam20364	rwoollam20364	1x!!**n*!z	2024-09-10
54807c04-159e-057b-9fea-260a96b22488	rwhale5414	rwhale5414	K$4$a$s#3!*L	2024-03-24
9ad40324-4928-bb2f-7d52-959e3e94eb36	ckarlolczak30993	ckarlolczak30993	bV*emd%$	2024-04-24
eeb74fa2-3cd4-56d7-a85b-aef6a344e54a	lredmille53297	lredmille53297	B*t&F*%S!!**i2*	2023-12-28
8a6e15bf-87b9-abd6-5446-76aba944b2e0	sbasley43348	sbasley43348	*2J8*2uX!e&*$	2024-10-07
926a33a3-85db-0107-2bda-1ed87bf35b9c	ihazelby12715	ihazelby12715	2g!*n*!WR8*8%99	2024-10-18
a6aaaf5a-947f-857f-823d-a1e832e4ab65	scandey57948	scandey57948	#u*Nr3&!!aP0	2024-06-27
37924b02-4c9e-170c-129d-999bde560a4f	greese29203	greese29203	e#!&h!*#*	2023-12-16
82197e7f-4bae-5079-701f-6910367e8713	egillfillan37398	egillfillan37398	z%!7&&5!nu*m*$8n	2023-11-09
98c6777e-68db-5dbe-eed2-6d2f5fd2da87	mshimuk25749	mshimuk25749	qw4!28$98!!4*k	2023-12-10
463b83aa-db67-3edb-70ae-ad2f6b873a37	cmixworthy37570	cmixworthy37570	w!*F%v%*!C!*$&2	2024-11-07
bf551dac-ba51-cc81-313f-ee6e70f37231	upinwell14751	upinwell14751	i0g1!**t*%&!t	2024-02-11
82f2f7e3-a532-d5bb-c264-de8397f61b86	kcivitillo13778	kcivitillo13778	Ak*D0*d*21%*	2024-04-10
815df73b-c0a6-692c-f895-95d7360f7439	ctredwell8293	ctredwell8293	W0#n2**!o@T$0	2024-04-25
2700a08f-e516-b51f-2c93-57515c1de8be	wkytter30308	wkytter30308	R!rJ*!#!5!*!	2024-02-04
3302dbda-ce2e-ccfe-3f4f-9dfcc4f591dc	dle bosse20814	dle bosse20814	jl!*s*G*T&p!x*	2024-02-24
3e1e3970-7685-b0c0-12bd-1844cd5b6a5c	ablaszczyk6205	ablaszczyk6205	5Q4!Xj!*480	2024-07-31
7991e1b6-4705-33c2-a2ab-a02fe5a49926	dtoulch27991	dtoulch27991	d!!#!*M3*5*&!w	2023-12-22
2af81753-4759-d374-291c-dbba3496b548	mphelips40425	mphelips40425	ZM1!F&9w!q*%g0!	2024-04-04
790578bf-602a-2df0-3f53-f49c77c74ee5	zshillito59443	zshillito59443	!#*B**q*	2024-09-07
2f18db2d-5c86-356e-0177-3cde222a7ae0	pbrunsdon38479	pbrunsdon38479	A!w*i!&*Cq*c	2024-08-23
d6305bda-8e8f-93c7-945e-90d4c8e15fa9	pholleworth39639	pholleworth39639	O*%8u!$*U	2023-12-26
565a819b-8cac-9fbe-9867-124d0ba72686	btallowin4381	btallowin4381	!c**HwN*Ed	2024-06-12
d7b35269-fced-0c55-e7b1-a35f93bbe7f2	fmarkovich4107	fmarkovich4107	qC&4v1!j#!6#%	2024-04-03
1ebf6ec2-caa1-3b7a-4a48-4a8f78259392	cbratton38471	cbratton38471	u$!*!&*4W%6	2024-06-06
8814efb5-911e-6eba-a73a-41ab652ffe59	gkendrick29974	gkendrick29974	*A0!7!*!!!1z%*pe	2023-12-04
ae972a34-970f-12d6-df6f-b1fffead24bd	akingdon45229	akingdon45229	Sa*FBM6kWT	2024-02-12
a3826063-df27-d684-702a-9fef58aa6dfb	scoopey38714	scoopey38714	3v2KX!CtD*	2024-05-23
36634dfc-b6a7-c8dc-1a23-80d57e8a3391	gdecayette11792	gdecayette11792	*%c*7V*#*k$Z	2024-08-07
ad64d831-5e1b-abad-eb02-971e590ab9d2	jcakes58465	jcakes58465	1!&G*Rn!!!6&881	2024-09-16
bbf1ce5e-024b-a48f-63fd-aa54bc35c0cc	ldikle10054	ldikle10054	#Gr9Ek!&!7a3	2024-08-31
74950407-e27e-7263-9ae5-d96d8ad87557	sedmonds42014	sedmonds42014	X!!0n5t!%gWO*#!c	2024-03-02
f7e8418b-bd80-6773-bb74-9dffe30b6514	gqueste51858	gqueste51858	v#!F*$2**F*z67!	2023-11-14
926d8362-f274-b865-4263-ba048926aa24	cborwick43086	cborwick43086	#Q**qx**!x!*	2024-02-16
8215a83a-63db-2a70-9a65-22db793a2a81	aceeley30491	aceeley30491	*!*Q!Hn*!	2024-01-27
e7ea0420-ce10-3980-5a88-fc66c0ad5d16	jvasechkin47523	jvasechkin47523	##Y!1Y!bI#!%	2023-12-15
d311f656-2e33-b722-550a-8f2a985d1ee1	dphilip50414	dphilip50414	3Q*4%$4!!n1f	2024-10-15
af188777-07eb-4ba2-d255-7626b830404d	amatschuk15246	amatschuk15246	BYI!R67x$#***	2024-06-19
f7e31795-a076-6394-c276-9f35c7140384	dfrancesch50750	dfrancesch50750	$$*m8#q*4OKo$3	2024-01-01
3004ae5a-530d-fef6-3b88-22a520415660	sscranny53593	sscranny53593	!!f!oY1&m7	2024-10-27
de133617-e5f5-0fcf-5951-e035462a6ecd	cgillard56926	cgillard56926	g!!*$q**2Hs!K*!*	2024-07-02
1321dbcb-9deb-f229-9b74-769afada5874	gmcowen47037	gmcowen47037	t*%#%!20	2024-02-23
e87d7290-cb49-a6ed-61ec-a869358ba6ce	ehurley43412	ehurley43412	6q*5S13q*!gp&	2024-06-12
1df088f9-529c-3e45-28c1-00a6432b4fe4	gpfeiffer11019	gpfeiffer11019	7wzx*!q*b9*!LWRI	2024-05-02
bb65621d-ff24-98f6-442c-8c6811964e9a	wdudin42679	wdudin42679	&$w!!!%#&!	2024-05-21
065db2df-fd32-8595-70d3-101a29b417cc	lbouttell22039	lbouttell22039	n&JQo&**!	2024-01-15
b90d60e9-b1e6-0d8b-52af-26d5c3f1aa5d	nszymczyk57984	nszymczyk57984	!*#02Yy37!A*1&!	2024-01-25
d8d6f7fb-db48-7847-fee2-f4cfed3ca960	brichardson9935	brichardson9935	*7Z!5&2&	2024-09-11
9cc8d1f3-6179-c63b-a9ba-711f98722156	creaper29887	creaper29887	5!tl#%f***9&fd*	2024-02-23
8318b2da-f6f5-ced2-d71b-8a6aa0fb930d	sbare28288	sbare28288	*9!#!3*d*!0!y	2024-09-10
ee6e5ffa-d881-2b06-831b-7d3aff983ecb	tsimoneschi27120	tsimoneschi27120	Ci!*c10*7U*!!**	2024-09-24
46f054f2-6cbb-bbf8-3f25-9defe867a1c9	sforesight22331	sforesight22331	t!*23J!$J!*Q*b94	2023-11-18
2e18f3f4-eaca-1c2e-0884-0fcee408f87e	rbath4804	rbath4804	!*%%!&&l!*3&	2024-06-18
\.


--
-- Name: Orders_order_number_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Orders_order_number_seq"', 1, false);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: aubondeal
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (product_uuid);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: aubondeal
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_uuid);


--
-- Name: orders orders_user_uuid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: aubondeal
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_user_uuid_fkey FOREIGN KEY (user_uuid) REFERENCES public.users(user_uuid);


--
-- PostgreSQL database dump complete
--

