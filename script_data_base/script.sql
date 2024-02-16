-- creación de la base de datos, y tablas, inserción de registros
-- CREATE DATABASE gammer;

-- TABLAS  
/*
CREATE TABLE CLASS(
id_level int NOT NULL,
id_CLASSint NOT NULL,
description varchar(200) NOT NULL,
CONSTRAINT PK_CLASSPRIMARY KEY (id_class,id_level)
);

-- Table: COMMENT

-- Table: COMMENTARY
CREATE TABLE COMMENTARY(
id_COMMENTARYint NOT NULL,
id_GAMEint NOT NULL,
id_SYSTEM_USERint NOT NULL,
comment_date date NOT NULL,
COMMENTARYvarchar(200) NOT NULL,
CONSTRAINT PK_COMMENTARYPRIMARY KEY
(id_commentary,id_game,id_system_user)
);

-- Table: GAME
CREATE TABLE GAME(
id_GAMEint NOT NULL,
name varchar(100) NOT NULL,
description varchar(300) NOT NULL,
id_level int NOT NULL,
id_CLASSint NOT NULL,
CONSTRAINT PK_GAMEPRIMARY KEY (id_game)
);

-- Table: LEVEL_GAME
CREATE TABLE LEVEL_GAME(
id_level int NOT NULL,
description varchar(200) NOT NULL,
CONSTRAINT PK_LEVEL_GAMEPRIMARY KEY (id_level)
);

-- Table: PLAY
CREATE TABLE PLAY(
id_GAMEint NOT NULL,
id_SYSTEM_USERint NOT NULL,
completed bool NOT NULL,
CONSTRAINT PK_PLAYPRIMARY KEY (id_game,id_system_user)
);

-- Table: SUGGEST
CREATE TABLE SUGGEST(
id_SUGGESTint NOT NULL,
email varchar(30) NOT NULL,
id_GAMEint NOT NULL,
id_SYSTEM_USERint NOT NULL,
CONSTRAINT PK_SUGGESTPRIMARY KEY (id_suggest)
);

-- Table: SYSTEM_USER
CREATE TABLE SYSTEM_USER(
id_SYSTEM_USERint NOT NULL,
first_name varchar(50) NOT NULL,
last_name varchar(50) NOT NULL,
email varchar(30) NOT NULL,
password varchar(30) NOT NULL,
id_USER_TYPEint NOT NULL,
CONSTRAINT PK_SYSTEM_USERPRIMARY KEY (id_system_user)
);

-- Table: USER_TYPE
CREATE TABLE USER_TYPE(
id_USER_TYPEint NOT NULL,
description varchar(200) NOT NULL,
CONSTRAINT PK_USER_TYPEPRIMARY KEY (id_user_type)
);

-- Table: VOTE
CREATE TABLE VOTE(
id_VOTEint NOT NULL,
value int NOT NULL,
id_GAMEint NOT NULL,
id_SYSTEM_USERint NOT NULL,
UNIQUE INDEX AK_VOTE(id_game,id_system_user),
CONSTRAINT PK_VOTEPRIMARY KEY (id_vote)
);
*/

-- RELACIONES
/*
-- foreign keys
-- Reference: FK_CLASS_LEVEL_GAME(table: CLASS)
ALTER TABLE CLASSADD CONSTRAINT FK_CLASS_LEVEL_GAMEFOREIGN KEY
FK_CLASS_LEVEL_GAME(id_level)
REFERENCES LEVEL_GAME(id_level);

-- Reference: FK_COMMENTARY_COMMENT(table: COMMENTARY)
ALTER TABLE COMMENTARYADD CONSTRAINT FK_COMMENTARY_COMMENTFOREIGN KEY
FK_COMMENTARY_COMMENT(id_game,id_system_user)
REFERENCES COMMENT(id_game,id_system_user);

-- Reference: FK_COMMENT_GAME(table: COMMENT)
ALTER TABLE COMMENTADD CONSTRAINT FK_COMMENT_GAMEFOREIGN KEY
FK_COMMENT_GAME(id_game)
REFERENCES GAME(id_game);

-- Reference: FK_COMMENT_SYSTEM_USER(table: COMMENT)
ALTER TABLE COMMENTADD CONSTRAINT FK_COMMENT_SYSTEM_USERFOREIGN KEY
FK_COMMENT_SYSTEM_USER(id_system_user)
REFERENCES SYSTEM_USER(id_system_user);

-- Reference: FK_PLAY_GAME(table: PLAY)
ALTER TABLE PLAYADD CONSTRAINT FK_PLAY_GAMEFOREIGN KEY FK_PLAY_GAME
(id_game)
REFERENCES GAME(id_game);

-- Reference: FK_PLAY_SYSTEM_USER(table: PLAY)
ALTER TABLE PLAYADD CONSTRAINT FK_PLAY_SYSTEM_USERFOREIGN KEY
FK_PLAY_SYSTEM_USER(id_system_user)
REFERENCES SYSTEM_USER(id_system_user);

-- Reference: FK_SUGGEST_PLAY(table: SUGGEST)
ALTER TABLE SUGGESTADD CONSTRAINT FK_SUGGEST_PLAYFOREIGN KEY
FK_SUGGEST_PLAY(id_game,id_system_user)
REFERENCES PLAY(id_game,id_system_user);

-- Reference: FK_USER_USER_TYPE(table: USER)
ALTER TABLE SYSTEM_USERADD CONSTRAINT FK_USER_USER_TYPEFOREIGN KEY
FK_USER_USER_TYPE(id_user_type)
REFERENCES USER_TYPE(id_user_type);

-- Reference: FK_VOTE_PLAY(table: VOTE)
ALTER TABLE VOTEADD CONSTRAINT FK_VOTE_PLAYFOREIGN KEY FK_VOTE_PLAY
(id_game,id_system_user)
REFERENCES PLAY(id_game,id_system_user);

-- Reference: GAME_CLASS(table: GAME)
ALTER TABLE GAMEADD CONSTRAINT GAME_CLASSFOREIGN KEY GAME_CLASS
(id_class,id_level)
REFERENCES CLASS(id_class, id_level);
*/

-- REGISTROS
/*
insert into LEVEL_GAME(id_level, description) values (1, 'level 1');
insert into LEVEL_GAME(id_level, description) values (2, 'level 2');
insert into LEVEL_GAME(id_level, description) values (3, 'level 3');
insert into LEVEL_GAME(id_level, description) values (4, 'level 4');
insert into LEVEL_GAME(id_level, description) values (5, 'level 5');
insert into LEVEL_GAME(id_level, description) values (6, 'level 6');
insert into LEVEL_GAME(id_level, description) values (7, 'level 7');
insert into LEVEL_GAME(id_level, description) values (8, 'level 8');
insert into LEVEL_GAME(id_level, description) values (9, 'level 9');
insert into LEVEL_GAME(id_level, description) values (10, 'level 10');
insert into LEVEL_GAME(id_level, description) values (11, 'level 11');
insert into LEVEL_GAME(id_level, description) values (12, 'level 12');
insert into LEVEL_GAME(id_level, description) values (13, 'level 13');
insert into LEVEL_GAME(id_level, description) values (14, 'level 14');
insert into LEVEL_GAME(id_level, description) values (15, 'level 15');
insert into CLASS(id_class, description, id_level) values (1,
'Action', 10);
insert into CLASS(id_class, description, id_level) values (5,
'Thriller', 10);
insert into CLASS(id_class, description, id_level) values (14,
'Children', 13);
insert into CLASS(id_class, description, id_level) values (18,
'Comedy', 2);
insert into CLASS(id_class, description, id_level) values (19,
'Romance', 8);
insert into CLASS(id_class, description, id_level) values (20,
'Drama', 8);
insert into CLASS(id_class, description, id_level) values (22,
'Documentary', 8);
insert into CLASS(id_class, description, id_level) values (25,
'Fantasy', 1);
insert into CLASS(id_class, description, id_level) values (29,
'Sci-Fi', 15);
insert into CLASS(id_class, description, id_level) values (31,
'Animation', 12);
insert into CLASS(id_class, description, id_level) values (34, 'War',
11);
insert into CLASS(id_class, description, id_level) values (36,
'Horror', 9);
insert into CLASS(id_class, description, id_level) values (39,
'Musical', 4);
insert into CLASS(id_class, description, id_level) values (41,
'Adventure', 11);
insert into CLASS(id_class, description, id_level) values (50,
'Documentary', 2);
insert into CLASS(id_class, description, id_level) values (72, 'IMAX',
9);
insert into CLASS(id_class, description, id_level) values (73,
'Action', 8);
insert into CLASS(id_class, description, id_level) values (77, 'Poetic
Documentary', 5);
insert into CLASS(id_class, description, id_level) values (80,
'Expository Documentary', 11);
insert into CLASS(id_class, description, id_level) values (81,
'Reflexive Documentary', 8);
insert into CLASS(id_class, description, id_level) values (89,
'Observational Documentary', 6);
insert into CLASS(id_class, description, id_level) values (90,
'Performative Documentary', 11);
insert into CLASS(id_class, description, id_level) values (91,
'Participatory Documentary', 10);
insert into CLASS(id_class, description, id_level) values (93,
'Adventure', 13);
insert into CLASS(id_class, description, id_level) values (101,
'Military Action', 1);
insert into CLASS(id_class, description, id_level) values (102, 'Spy',
9);
insert into CLASS(id_class, description, id_level) values (106,
'Espionage Action', 8);
insert into CLASS(id_class, description, id_level) values (108,
'Martial Arts Action', 14);
insert into CLASS(id_class, description, id_level) values (112,
'Action Hybrid Genres', 14);
insert into CLASS(id_class, description, id_level) values (115,
'Children literary adaptations', 12);
insert into CLASS(id_class, description, id_level) values (118,
'Romance literary adaptations', 3);
insert into CLASS(id_class, description, id_level) values (121,
'Satire', 5);
insert into CLASS(id_class, description, id_level) values (122,
'Straight drama', 14);
insert into CLASS(id_class, description, id_level) values (131,
'Psychological drama', 13);
insert into CLASS(id_class, description, id_level) values (135,
'Comedy-drama', 7);
insert into CLASS(id_class, description, id_level) values (137,
'Mystery', 15);
insert into CLASS(id_class, description, id_level) values (141,
'Hyperdrama', 5);
insert into CLASS(id_class, description, id_level) values (143,
'Traditional animation ', 2);
insert into CLASS(id_class, description, id_level) values (145, '2D
Animation', 7);
insert into CLASS(id_class, description, id_level) values (146, '3D
Animation', 10);
insert into CLASS(id_class, description, id_level) values (153,
'Motion Graphics', 6);
insert into CLASS(id_class, description, id_level) values (157,
'Stop-Motion animation', 9);
insert into CLASS(id_class, description, id_level) values (162,
'Typography Animation', 15);
insert into CLASS(id_class, description, id_level) values (165, 'Clay
animation', 2);
insert into CLASS(id_class, description, id_level) values (170,
'Digital 2D animation', 6);
insert into CLASS(id_class, description, id_level) values (173,
'Digital 3D animation', 11);
insert into CLASS(id_class, description, id_level) values (174,
'Mechanical Animation', 1);
insert into CLASS(id_class, description, id_level) values (175,
'Chuckimation', 4);
insert into CLASS(id_class, description, id_level) values (180,
'Puppetry Animation', 5);
insert into CLASS(id_class, description, id_level) values (181,
'Crime', 4);
insert into CLASS(id_class, description, id_level) values (185, 'Crime
comedy', 5);
insert into CLASS(id_class, description, id_level) values (192,
'Suspense-thriller', 7);
insert into CLASS(id_class, description, id_level) values (195,
'Police', 13);
insert into CLASS(id_class, description, id_level) values (197,
'Gangster', 1);
insert into CLASS(id_class, description, id_level) values (198,
'Pirate adventure', 4);
insert into CLASS(id_class, description, id_level) values (203,
'Horror adventure', 1);
insert into CLASS(id_class, description, id_level) values (205, 'War
adventure', 14);
insert into CLASS(id_class, description, id_level) values (207,
'Action adventure', 9);
insert into CLASS(id_class, description, id_level) values (208,
'Scary', 15);
insert into CLASS(id_class, description, id_level) values (217,
'Psychological horror', 1);
insert into CLASS(id_class, description, id_level) values (223,
'Classical musical', 15);
insert into CLASS(id_class, description, id_level) values (231, 'First
musical', 3);
insert into CLASS(id_class, description, id_level) values (236,
'Golden age musical', 8);
insert into CLASS(id_class, description, id_level) values (238,
'Spanish musical', 14);
insert into CLASS(id_class, description, id_level) values (240,
'Soviet musical', 4);
insert into CLASS(id_class, description, id_level) values (243, 'Opera
musical', 3);
insert into CLASS(id_class, description, id_level) values (245,
'American comedy', 4);
insert into CLASS(id_class, description, id_level) values (246, 'Mafia
comedy', 7);
insert into CLASS(id_class, description, id_level) values (257,
'Indian comedy', 6);
insert into CLASS(id_class, description, id_level) values (258,
'Classical comedy', 10);
insert into CLASS(id_class, description, id_level) values (260,
'Slapstick comedy', 11);
insert into CLASS(id_class, description, id_level) values (264,
'Stand-up', 7);
insert into CLASS(id_class, description, id_level) values (273,
'Situational comedy', 11);
insert into CLASS(id_class, description, id_level) values (275,
'Surreal comedy', 2);
insert into CLASS(id_class, description, id_level) values (276,
'Martial Arts Action', 2);
insert into CLASS(id_class, description, id_level) values (281,
'Fantasy comedy', 8);
insert into CLASS(id_class, description, id_level) values (285,
'Comedy horror', 2);
insert into CLASS(id_class, description, id_level) values (286,
'Romantic comedy', 2);
insert into CLASS(id_class, description, id_level) values (294, 'Sport
comedy', 11);
insert into CLASS(id_class, description, id_level) values (297,
'Italian comedy', 12);
insert into CLASS(id_class, description, id_level) values (300,
'British comedy', 11);
insert into GAME(id_game, name, description, id_class, id_level)
values (55, 'Kimetsu no Yaiba - The Hinokami Chronicles', '', 1, 10);
insert into GAME(id_game, name, description, id_class, id_level)
values (57, 'Elden Ring', 'etiam pretium iaculis', 5, 10);
insert into GAME(id_game, name, description, id_class, id_level)
values (49, 'FIFA 22: Ultimate Team', 'habitasse', 14, 13);
insert into GAME(id_game, name, description, id_class, id_level)
values (98, 'Call of Duty: Vanguard', 'odio donec vitae nisi', 14, 13);
insert into GAME(id_game, name, description, id_class, id_level)
values (8, 'Blue Reflection: Second Light', 'libero rutrum ac
lobortis', 18, 2);
insert into GAME(id_game, name, description, id_class, id_level)
values (93, 'Blast Brigade', 'in sapien iaculis congue vivamus', 19,
8);
insert into GAME(id_game, name, description, id_class, id_level)
values (23, 'The Dark Pictures: House Of Ashes', '', 20, 8);
insert into GAME(id_game, name, description, id_class, id_level)
values (65, 'Youtubers Life 2', 'lacus morbi quis', 22, 8);
insert into GAME(id_game, name, description, id_class, id_level)
values (87, 'First CLASSTrouble', 'ipsum primis in faucibus orci', 25,
1);
insert into GAME(id_game, name, description, id_class, id_level)
values (68, 'Saints & Sinners', 'placerat ante nulla justo', 29, 15);
insert into GAME(id_game, name, description, id_class, id_level)
values (59, 'Battlefield 2042', 'pede libero', 31, 12);
insert into GAME(id_game, name, description, id_class, id_level)
values (74, 'Back 4 Blood', 'pulvinar', 36, 9);
insert into GAME(id_game, name, description, id_class, id_level)
values (44, 'First CLASSTrouble', '', 39, 4);
insert into GAME(id_game, name, description, id_class, id_level)
values (86, 'Riders Republic', 'lobortis est', 39, 4);
insert into GAME(id_game, name, description, id_class, id_level)
values (89, 'UnMetal', 'at turpis', 41, 11);
insert into GAME(id_game, name, description, id_class, id_level)
values (5, 'Age of Empires IV', '', 50, 2);
insert into GAME(id_game, name, description, id_class, id_level)
values (70, 'Rainbow Six: Siege', 'curae duis faucibus accumsan', 72,
9);
insert into GAME(id_game, name, description, id_class, id_level)
values (43, 'Dungeon Encounters', '', 73, 8);
insert into GAME(id_game, name, description, id_class, id_level)
values (91, 'Bright Memory: Infinite', '', 77, 5);
insert into GAME(id_game, name, description, id_class, id_level)
values (95, 'The Dark Pictures: House Of Ashes', 'aenean lectus
pellentesque eget nunc', 80, 11);
insert into GAME(id_game, name, description, id_class, id_level)
values (81, 'Mafia: Edición Definitiva', 'augue vel accumsan', 81, 8);
insert into GAME(id_game, name, description, id_class, id_level)
values (52, 'Knockout City', '', 89, 6);
insert into GAME(id_game, name, description, id_class, id_level)
values (9, 'Darkest Dungeon II', 'erat nulla', 90, 11);
insert into GAME(id_game, name, description, id_class, id_level)
values (42, 'Marvels Guardianes de la Galaxia', 'lectus suspendisse',
91, 10);
insert into GAME(id_game, name, description, id_class, id_level)
values (27, 'Iron Harvest: Complete Edition', 'pellentesque eget nunc
donec quis', 93, 13);
insert into GAME(id_game, name, description, id_class, id_level)
values (41, 'Lost Ark', 'sapien quis libero', 93, 13);
insert into GAME(id_game, name, description, id_class, id_level)
values (54, 'Kena: Bridge of Spirits', 'pellentesque at', 101, 1);
insert into GAME(id_game, name, description, id_class, id_level)
values (39, 'Crysis Remastered Trilogy', 'volutpat convallis', 102, 9);
insert into GAME(id_game, name, description, id_class, id_level)
values (45, 'FIFA 22', 'tempor convallis nulla neque libero', 106, 8);
insert into GAME(id_game, name, description, id_class, id_level)
values (60, 'Jurassic World Evolution 2', '', 106, 8);
insert into GAME(id_game, name, description, id_class, id_level)
values (29, 'The Elder Scrolls V: Skyrim Anniversary Edition', 'proin
at', 108, 14);
insert into GAME(id_game, name, description, id_class, id_level)
values (19, 'Marvels Guardianes de la Galaxia', 'in ante vestibulum
ante ipsum', 112, 14);
insert into GAME(id_game, name, description, id_class, id_level)
values (72, 'Grand Theft Auto: The Trilogy - The Definitive Edition',
'ac consequat metus sapien ut', 112, 14);
insert into GAME(id_game, name, description, id_class, id_level)
values (58, 'Grand Theft Auto: The Trilogy - The Definitive Edition',
'integer tincidunt', 115, 12);
insert into GAME(id_game, name, description, id_class, id_level)
values (100, 'Cyberpunk 2077', '', 115, 12);
insert into GAME(id_game, name, description, id_class, id_level)
values (25, 'Call of Duty: Vanguard', 'in felis eu sapien', 118, 3);
insert into GAME(id_game, name, description, id_class, id_level)
values (53, 'God of War', 'sit amet diam in', 121, 5);
insert into GAME(id_game, name, description, id_class, id_level)
values (83, 'The Last of Us 2', 'quam turpis adipiscing', 122, 14);
insert into GAME(id_game, name, description, id_class, id_level)
values (26, 'Disciples: Liberation', 'non lectus aliquam sit amet',
131, 13);
insert into GAME(id_game, name, description, id_class, id_level)
values (92, 'Project Zero: Maiden of Black Water', '', 135, 7);
insert into GAME(id_game, name, description, id_class, id_level)
values (46, 'Alan Wake Remastered', 'dui luctus rutrum nulla tellus',
137, 15);
insert into GAME(id_game, name, description, id_class, id_level)
values (33, 'Call of Duty: Vanguard', 'proin eu', 141, 5);
insert into GAME(id_game, name, description, id_class, id_level)
values (1, 'Forza Horizon 5', 'odio donec', 143, 2);
insert into GAME(id_game, name, description, id_class, id_level)
values (17, 'Mario Party Superstars', 'pellentesque ultrices phasellus
id', 145, 7);
insert into GAME(id_game, name, description, id_class, id_level)
values (84, 'Dragon Age: Inquisition', 'auctor gravida sem praesent
id', 146, 10);
insert into GAME(id_game, name, description, id_class, id_level)
values (2, 'Call of Duty: Vanguard', 'morbi non', 153, 6);
insert into GAME(id_game, name, description, id_class, id_level)
values (34, 'Elden Ring', 'nec molestie sed justo', 153, 6);
insert into GAME(id_game, name, description, id_class, id_level)
values (51, 'Battlefield 2042', '', 153, 6);
insert into GAME(id_game, name, description, id_class, id_level)
values (76, 'Fast & Furious: Spy Racers El Retorno de SH1FT3R', 'ligula
sit amet eleifend pede', 157, 9);
insert into GAME(id_game, name, description, id_class, id_level)
values (96, 'Project Zero: Maiden of Black Water', 'ac nulla', 162,
15);
insert into GAME(id_game, name, description, id_class, id_level)
values (22, 'Poppy Playtime', 'nulla elit ac nulla', 165, 2);
insert into GAME(id_game, name, description, id_class, id_level)
values (71, 'The Good Life', 'ultrices phasellus id sapien in', 170,
6);
insert into GAME(id_game, name, description, id_class, id_level)
values (7, 'Football Manager 22', 'mauris lacinia sapien quis libero',
173, 11);
insert into GAME(id_game, name, description, id_class, id_level)
values (77, 'Dragon Ball Z Kakarot', 'lorem', 174, 1);
insert into GAME(id_game, name, description, id_class, id_level)
values (75, 'Marvels Guardianes de la Galaxia', 'commodo placerat
praesent blandit nam', 175, 4);
insert into GAME(id_game, name, description, id_class, id_level)
values (85, 'Harry Potter: Magic Awakened', 'sed tristique in tempus',
180, 5);
insert into GAME(id_game, name, description, id_class, id_level)
values (36, 'Far Cry 6', '', 181, 4);
insert into GAME(id_game, name, description, id_class, id_level)
values (21, 'Forza Horizon 5', 'congue eget', 185, 5);
insert into GAME(id_game, name, description, id_class, id_level)
values (14, 'Gran Turismo 7', '', 192, 7);
insert into GAME(id_game, name, description, id_class, id_level)
values (47, 'Disco Elysium', 'in tempor', 195, 13);
insert into GAME(id_game, name, description, id_class, id_level)
values (88, 'It Takes Two', '', 195, 13);
insert into GAME(id_game, name, description, id_class, id_level)
values (62, 'Knights of the Old Republic', 'ipsum primis in faucibus
orci', 197, 1);
insert into GAME(id_game, name, description, id_class, id_level)
values (48, 'Back 4 Blood', 'ornare imperdiet sapien urna pretium',
198, 4);
insert into GAME(id_game, name, description, id_class, id_level)
values (37, 'Pokémon Diamante Brillante / Perla Reluciente', 'imperdiet
et commodo', 203, 1);
insert into GAME(id_game, name, description, id_class, id_level)
values (12, 'FIFA 22: Ultimate Team', 'suspendisse', 205, 14);
insert into GAME(id_game, name, description, id_class, id_level)
values (30, 'Assassins Creed Valhalla', 'vivamus', 207, 9);
insert into GAME(id_game, name, description, id_class, id_level)
values (11, 'Elden Ring', 'et ultrices posuere cubilia curae', 208,
15);
insert into GAME(id_game, name, description, id_class, id_level)
values (13, 'New World', 'potenti cras in', 208, 15);
insert into GAME(id_game, name, description, id_class, id_level)
values (99, 'Chernobylite', 'fermentum donec ut mauris eget', 217, 1);
insert into GAME(id_game, name, description, id_class, id_level)
values (18, 'Far Cry 6', 'ante vel ipsum praesent blandit', 223, 15);
insert into GAME(id_game, name, description, id_class, id_level)
values (38, 'Grand Theft Auto: The Trilogy - The Definitive Edition',
'praesent', 231, 3);
insert into GAME(id_game, name, description, id_class, id_level)
values (80, 'Kimetsu no Yaiba - The Hinokami Chronicles', 'sagittis
dui', 231, 3);
insert into GAME(id_game, name, description, id_class, id_level)
values (6, 'Football Manager 22', 'nulla suspendisse potenti', 236, 8);
insert into GAME(id_game, name, description, id_class, id_level)
values (67, 'Aven Colony', 'sollicitudin ut', 238, 14);
insert into GAME(id_game, name, description, id_class, id_level)
values (50, 'Far Cry 6', 'quis libero nullam sit', 240, 4);
insert into GAME(id_game, name, description, id_class, id_level)
values (3, 'Shin Megami Tensei 5', 'turpis integer aliquet massa id',
243, 3);
insert into GAME(id_game, name, description, id_class, id_level)
values (4, 'Marvels Guardianes de la Galaxia', 'lobortis sapien sapien
non mi', 245, 4);
insert into GAME(id_game, name, description, id_class, id_level)
values (15, 'Kingdoms of Amalur: Re-Reckoning', 'sit amet sapien
dignissim', 246, 7);
insert into GAME(id_game, name, description, id_class, id_level)
values (61, 'Echo Generation', 'elementum ligula', 257, 6);
insert into GAME(id_game, name, description, id_class, id_level)
values (94, 'Until You Fall', 'sollicitudin ut suscipit a feugiat',
258, 10);
insert into GAME(id_game, name, description, id_class, id_level)
values (28, 'Leyendas Pokémon: Arceus', 'vitae consectetuer eget rutrum
at', 260, 11);
insert into GAME(id_game, name, description, id_class, id_level)
values (20, 'Riders Republic', 'in', 264, 7);
insert into GAME(id_game, name, description, id_class, id_level)
values (31, 'Inscryption', '', 273, 11);
insert into GAME(id_game, name, description, id_class, id_level)
values (10, 'Voice of Cards', 'parturient montes nascetur', 275, 2);
insert into GAME(id_game, name, description, id_class, id_level)
values (35, 'Resident Evil 4 VR', 'magna', 275, 2);
insert into GAME(id_game, name, description, id_class, id_level)
values (56, 'PES 2022', 'mi pede', 276, 2);
insert into GAME(id_game, name, description, id_class, id_level)
values (40, 'Jurassic World Evolution 2', '', 281, 8);
insert into GAME(id_game, name, description, id_class, id_level)
values (90, 'Ghost of Tsushima', 'purus', 285, 2);
insert into GAME(id_game, name, description, id_class, id_level)
values (66, 'Ghost Recon: Frontline', 'habitasse', 286, 2);
insert into GAME(id_game, name, description, id_class, id_level)
values (63, 'Starfield', 'diam', 294, 11);
insert into GAME(id_game, name, description, id_class, id_level)
values (64, 'My Friend Peppa Pig', 'vel', 297, 12);
insert into GAME(id_game, name, description, id_class, id_level)
values (24, 'DokeV', 'vel', 300, 11);
insert into GAME(id_game, name, description, id_class, id_level)
values (32, 'Metroid Dread', '', 34, 11);
insert into GAME(id_game, name, description, id_class, id_level)
values (69, 'The Dark Pictures: House Of Ashes', '', 91, 10);
insert into GAME(id_game, name, description, id_class, id_level)
values (79, 'Grand Theft Auto: The Trilogy - The Definitive Edition',
'eu tincidunt in leo', 106, 8);
insert into GAME(id_game, name, description, id_class, id_level)
values (82, 'Xbox GAMEPass', 'eleifend pede libero quis', 112, 14);
insert into GAME(id_game, name, description, id_class, id_level)
values (78, 'Insurgency: Sandstorm', 'morbi a ipsum', 153, 6);
insert into GAME(id_game, name, description, id_class, id_level)
values (16, 'Project Zero: Maiden of Black Water', '', 205, 14);
insert into GAME(id_game, name, description, id_class, id_level)
values (73, 'Elden Ring', 'elementum pellentesque', 208, 15);
insert into GAME(id_game, name, description, id_class, id_level)
values (97, 'Actraiser Renaissance', 'viverra eget congue', 231, 3);
insert into USER_TYPE(id_user_type, description) values (1, 'rutrum
rutrum neque aenean auctor gravida sem praesent');
insert into USER_TYPE(id_user_type, description) values (2, 'volutpat
dui maecenas tristique est et');
insert into USER_TYPE(id_user_type, description) values (3, 'justo
sollicitudin ut suscipit a');
insert into USER_TYPE(id_user_type, description) values (4, 'donec
semper sapien a libero nam dui');
insert into USER_TYPE(id_user_type, description) values (5, 'habitasse
platea dictumst maecenas ut massa quis augue luctus');
insert into USER_TYPE(id_user_type, description) values (6, 'at turpis
donec posuere metus vitae ipsum aliquam non mauris');
insert into USER_TYPE(id_user_type, description) values (7, 'pede
justo lacinia eget tincidunt eget tempus');
insert into USER_TYPE(id_user_type, description) values (8, 'morbi
odio odio elementum eu interdum eu tincidunt');
insert into USER_TYPE(id_user_type, description) values (9, 'et
ultrices posuere cubilia curae donec pharetra magna vestibulum
aliquet');
insert into USER_TYPE(id_user_type, description) values (10, 'felis eu
sapien cursus vestibulum proin eu');
insert into USER_TYPE(id_user_type, description) values (11, 'arcu sed
augue aliquam erat');
insert into USER_TYPE(id_user_type, description) values (12, 'amet
consectetuer adipiscing elit proin risus praesent lectus vestibulum');
insert into USER_TYPE(id_user_type, description) values (13, 'sapien
varius ut blandit non interdum in ante vestibulum');
insert into USER_TYPE(id_user_type, description) values (14, 'nam
ultrices libero non mattis');
insert into USER_TYPE(id_user_type, description) values (15,
'pellentesque volutpat dui maecenas tristique est et tempus');
insert into USER_TYPE(id_user_type, description) values (16, 'felis ut
at dolor quis odio consequat');
insert into USER_TYPE(id_user_type, description) values (17, 'nibh
fusce lacus purus aliquet at feugiat non pretium quis');
insert into USER_TYPE(id_user_type, description) values (18, 'aliquet
maecenas leo odio condimentum');
insert into USER_TYPE(id_user_type, description) values (19,
'sollicitudin mi sit amet lobortis sapien');
insert into USER_TYPE(id_user_type, description) values (20, 'in
sapien iaculis congue vivamus metus arcu adipiscing molestie');
insert into USER_TYPE(id_user_type, description) values (21, 'blandit
mi in porttitor pede justo');
insert into USER_TYPE(id_user_type, description) values (22, 'justo in
hac habitasse platea dictumst etiam faucibus cursus');
insert into USER_TYPE(id_user_type, description) values (23, 'tempor
turpis nec euismod scelerisque quam');
insert into USER_TYPE(id_user_type, description) values (24, 'sed
justo pellentesque viverra pede ac diam cras');
insert into USER_TYPE(id_user_type, description) values (25, 'leo odio
porttitor id consequat in consequat ut nulla sed');
insert into USER_TYPE(id_user_type, description) values (26, 'cubilia
curae duis faucibus accumsan');
insert into USER_TYPE(id_user_type, description) values (27, 'amet
erat nulla tempus vivamus in');
insert into USER_TYPE(id_user_type, description) values (28, 'ultrices
posuere cubilia curae mauris viverra diam');
insert into USER_TYPE(id_user_type, description) values (29, 'erat id
mauris vulputate elementum nullam');
insert into USER_TYPE(id_user_type, description) values (30,
'consequat ut nulla sed accumsan felis ut at dolor quis');
insert into USER_TYPE(id_user_type, description) values (31, 'etiam
faucibus cursus urna ut tellus nulla');
insert into USER_TYPE(id_user_type, description) values (32, 'posuere
nonummy integer non velit donec diam neque vestibulum');
insert into USER_TYPE(id_user_type, description) values (33, 'turpis a
pede posuere nonummy');
insert into USER_TYPE(id_user_type, description) values (34, 'fusce
lacus purus aliquet at');
insert into USER_TYPE(id_user_type, description) values (35,
'penatibus et magnis dis parturient');
insert into USER_TYPE(id_user_type, description) values (36, 'quam a
odio in hac habitasse');
insert into USER_TYPE(id_user_type, description) values (37,
'vestibulum sit amet cursus id turpis');
insert into USER_TYPE(id_user_type, description) values (38, 'interdum
eu tincidunt in leo maecenas pulvinar lobortis');
insert into USER_TYPE(id_user_type, description) values (39, 'laoreet
ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui');
insert into USER_TYPE(id_user_type, description) values (40, 'at nunc
commodo placerat praesent blandit nam');
insert into USER_TYPE(id_user_type, description) values (41, 'nascetur
ridiculus mus vivamus vestibulum sagittis');
insert into USER_TYPE(id_user_type, description) values (42, 'est
risus auctor sed tristique in tempus sit amet sem');
insert into USER_TYPE(id_user_type, description) values (43, 'dis
parturient montes nascetur ridiculus mus vivamus vestibulum sagittis');
insert into USER_TYPE(id_user_type, description) values (44, 'ut at
dolor quis odio consequat varius');
insert into USER_TYPE(id_user_type, description) values (45, 'dictumst
etiam faucibus cursus urna ut tellus nulla ut erat');
insert into USER_TYPE(id_user_type, description) values (46,
'suspendisse accumsan tortor quis turpis sed');
insert into USER_TYPE(id_user_type, description) values (47, 'eget
tempus vel pede morbi porttitor');
insert into USER_TYPE(id_user_type, description) values (48, 'nullam
molestie nibh in lectus pellentesque at nulla');
insert into USER_TYPE(id_user_type, description) values (49, 'lacus
morbi quis tortor id nulla ultrices aliquet maecenas');
insert into USER_TYPE(id_user_type, description) values (50, 'ultrices
posuere cubilia curae duis faucibus accumsan odio curabitur');
insert into USER_TYPE(id_user_type, description) values (51, 'rhoncus
aliquet pulvinar sed nisl nunc rhoncus dui vel sem');
insert into USER_TYPE(id_user_type, description) values (52, 'nunc
purus phasellus in felis donec');
insert into USER_TYPE(id_user_type, description) values (53, 'ipsum
praesent blandit lacinia erat vestibulum sed magna at');
insert into USER_TYPE(id_user_type, description) values (54, 'semper
rutrum nulla nunc purus phasellus in felis donec');
insert into USER_TYPE(id_user_type, description) values (55, 'arcu sed
augue aliquam erat volutpat in congue');
insert into USER_TYPE(id_user_type, description) values (56, 'amet
lobortis sapien sapien non mi integer ac neque duis');
insert into USER_TYPE(id_user_type, description) values (57, 'sed
lacus morbi sem mauris laoreet ut');
insert into USER_TYPE(id_user_type, description) values (58, 'tortor
quis turpis sed ante vivamus tortor duis mattis egestas');
insert into USER_TYPE(id_user_type, description) values (59, 'pretium
iaculis diam erat fermentum justo nec condimentum neque');
insert into USER_TYPE(id_user_type, description) values (60, 'lobortis
sapien sapien non mi');
insert into USER_TYPE(id_user_type, description) values (61, 'est
risus auctor sed tristique in tempus sit amet');
insert into USER_TYPE(id_user_type, description) values (62, 'auctor
gravida sem praesent id massa');
insert into USER_TYPE(id_user_type, description) values (63, 'aliquam
augue quam sollicitudin vitae consectetuer eget');
insert into USER_TYPE(id_user_type, description) values (64, 'luctus
et ultrices posuere cubilia curae donec pharetra');
insert into USER_TYPE(id_user_type, description) values (65, 'ut
mauris eget massa tempor convallis');
insert into USER_TYPE(id_user_type, description) values (66, 'duis ac
nibh fusce lacus purus aliquet at');
insert into USER_TYPE(id_user_type, description) values (67, 'eget
elit sodales scelerisque mauris sit amet eros suspendisse');
insert into USER_TYPE(id_user_type, description) values (68, 'vel
dapibus at diam nam');
insert into USER_TYPE(id_user_type, description) values (69, 'dolor
quis odio consequat varius integer ac leo pellentesque ultrices');
insert into USER_TYPE(id_user_type, description) values (70, 'massa
donec dapibus duis at velit eu est congue');
insert into USER_TYPE(id_user_type, description) values (71, 'cursus
vestibulum proin eu mi nulla ac enim in tempor');
insert into USER_TYPE(id_user_type, description) values (72, 'vel pede
morbi porttitor lorem id');
insert into USER_TYPE(id_user_type, description) values (73,
'venenatis lacinia aenean sit amet justo morbi');
insert into USER_TYPE(id_user_type, description) values (74, 'posuere
felis sed lacus morbi sem mauris laoreet');
insert into USER_TYPE(id_user_type, description) values (75, 'lectus
in est risus auctor');
insert into USER_TYPE(id_user_type, description) values (76, 'non
velit donec diam neque vestibulum eget vulputate ut ultrices');
insert into USER_TYPE(id_user_type, description) values (77, 'nam
ultrices libero non mattis pulvinar nulla pede ullamcorper');
insert into USER_TYPE(id_user_type, description) values (78, 'pede
venenatis non sodales sed tincidunt eu felis fusce posuere');
insert into USER_TYPE(id_user_type, description) values (79, 'in
lectus pellentesque at nulla suspendisse');
insert into USER_TYPE(id_user_type, description) values (80, 'rhoncus
mauris enim leo rhoncus sed vestibulum');
insert into USER_TYPE(id_user_type, description) values (81, 'elit
proin interdum mauris non ligula pellentesque ultrices phasellus');
insert into USER_TYPE(id_user_type, description) values (82, 'quam
sapien varius ut blandit non interdum in');
insert into USER_TYPE(id_user_type, description) values (83, 'nulla
tellus in sagittis dui vel nisl');
insert into USER_TYPE(id_user_type, description) values (84, 'quis
lectus suspendisse potenti in eleifend');
insert into USER_TYPE(id_user_type, description) values (85, 'in
congue etiam justo etiam pretium iaculis justo in');
insert into USER_TYPE(id_user_type, description) values (86, 'dapibus
augue vel accumsan tellus nisi eu');
insert into USER_TYPE(id_user_type, description) values (87, 'orci
luctus et ultrices posuere cubilia');
insert into USER_TYPE(id_user_type, description) values (88, 'urna
pretium nisl ut volutpat sapien arcu sed augue aliquam');
insert into USER_TYPE(id_user_type, description) values (89, 'mattis
egestas metus aenean fermentum donec ut mauris eget');
insert into USER_TYPE(id_user_type, description) values (90, 'ut
mauris eget massa tempor convallis');
insert into USER_TYPE(id_user_type, description) values (91, 'vitae
quam suspendisse potenti nullam porttitor lacus at turpis donec');
insert into USER_TYPE(id_user_type, description) values (92, 'volutpat
quam pede lobortis ligula');
insert into USER_TYPE(id_user_type, description) values (93, 'praesent
blandit nam nulla integer');
insert into USER_TYPE(id_user_type, description) values (94,
'elementum in hac habitasse platea dictumst morbi');
insert into USER_TYPE(id_user_type, description) values (95, 'amet
erat nulla tempus vivamus in felis');
insert into USER_TYPE(id_user_type, description) values (96, 'primis
in faucibus orci luctus');
insert into USER_TYPE(id_user_type, description) values (97, 'donec
odio justo sollicitudin ut suscipit a');
insert into USER_TYPE(id_user_type, description) values (98, 'pede
ullamcorper augue a suscipit nulla');
insert into USER_TYPE(id_user_type, description) values (99, 'nascetur
ridiculus mus etiam vel');
insert into USER_TYPE(id_user_type, description) values (100, 'in est
risus auctor sed tristique in tempus');
insert into USER_TYPE(id_user_type, description) values (101,
'vestibulum vestibulum ante ipsum primis in faucibus');
insert into USER_TYPE(id_user_type, description) values (102, 'libero
quis orci nullam molestie nibh in');
insert into USER_TYPE(id_user_type, description) values (103, 'nisl
duis bibendum felis sed interdum');
insert into USER_TYPE(id_user_type, description) values (104,
'suscipit a feugiat et eros vestibulum ac est lacinia');
insert into USER_TYPE(id_user_type, description) values (105, 'in
felis donec semper sapien a libero');
insert into USER_TYPE(id_user_type, description) values (106, 'morbi
ut odio cras mi pede');
insert into USER_TYPE(id_user_type, description) values (107, 'et eros
vestibulum ac est');
insert into USER_TYPE(id_user_type, description) values (108, 'sodales
scelerisque mauris sit amet eros suspendisse accumsan tortor');
insert into USER_TYPE(id_user_type, description) values (109, 'morbi
vestibulum velit id pretium iaculis diam');
insert into USER_TYPE(id_user_type, description) values (110, 'felis
sed interdum venenatis turpis enim blandit mi in');
insert into USER_TYPE(id_user_type, description) values (111, 'lectus
in est risus auctor sed tristique in');
insert into USER_TYPE(id_user_type, description) values (112, 'orci
eget orci vehicula condimentum curabitur in libero ut');
insert into USER_TYPE(id_user_type, description) values (113, 'donec
ut mauris eget massa tempor convallis');
insert into USER_TYPE(id_user_type, description) values (114, 'in est
risus auctor sed tristique in tempus');
insert into USER_TYPE(id_user_type, description) values (115, 'amet
nunc viverra dapibus nulla');
insert into USER_TYPE(id_user_type, description) values (116, 'mattis
odio donec vitae nisi nam ultrices libero');
insert into USER_TYPE(id_user_type, description) values (117,
'sagittis dui vel nisl duis ac');
insert into USER_TYPE(id_user_type, description) values (118,
'lobortis vel dapibus at diam nam tristique');
insert into USER_TYPE(id_user_type, description) values (119, 'vel
augue vestibulum rutrum rutrum neque aenean auctor gravida');
insert into USER_TYPE(id_user_type, description) values (120, 'quam a
odio in hac habitasse');
insert into USER_TYPE(id_user_type, description) values (121, 'in
tempor turpis nec euismod scelerisque quam turpis adipiscing lorem');
insert into USER_TYPE(id_user_type, description) values (122, 'quis
odio consequat varius integer ac leo');
insert into USER_TYPE(id_user_type, description) values (123, 'tortor
sollicitudin mi sit amet lobortis sapien sapien non');
insert into USER_TYPE(id_user_type, description) values (124, 'nulla
nunc purus phasellus in felis donec');
insert into USER_TYPE(id_user_type, description) values (125,
'phasellus sit amet erat nulla');
insert into USER_TYPE(id_user_type, description) values (126, 'dui
maecenas tristique est et');
insert into USER_TYPE(id_user_type, description) values (127, 'rhoncus
sed vestibulum sit amet cursus id');
insert into USER_TYPE(id_user_type, description) values (128, 'cursus
vestibulum proin eu mi nulla ac enim');
insert into USER_TYPE(id_user_type, description) values (129, 'id
ligula suspendisse ornare consequat');
insert into USER_TYPE(id_user_type, description) values (130,
'sagittis sapien cum sociis natoque penatibus et magnis dis
parturient');
insert into USER_TYPE(id_user_type, description) values (131,
'convallis morbi odio odio elementum eu');
insert into USER_TYPE(id_user_type, description) values (132, 'ipsum
praesent blandit lacinia erat vestibulum');
insert into USER_TYPE(id_user_type, description) values (133,
'tristique in tempus sit amet sem fusce consequat');
insert into USER_TYPE(id_user_type, description) values (134, 'leo
pellentesque ultrices mattis odio');
insert into USER_TYPE(id_user_type, description) values (135, 'a pede
posuere nonummy integer non velit donec diam neque');
insert into USER_TYPE(id_user_type, description) values (136, 'curae
donec pharetra magna vestibulum');
insert into USER_TYPE(id_user_type, description) values (137, 'sit
amet turpis elementum ligula');
insert into USER_TYPE(id_user_type, description) values (138, 'duis
mattis egestas metus aenean fermentum');
insert into USER_TYPE(id_user_type, description) values (139, 'nibh in
quis justo maecenas rhoncus');
insert into USER_TYPE(id_user_type, description) values (140, 'quam
sapien varius ut blandit');
insert into USER_TYPE(id_user_type, description) values (141, 'ante
ipsum primis in faucibus orci luctus');
insert into USER_TYPE(id_user_type, description) values (142, 'dui vel
sem sed sagittis');
insert into USER_TYPE(id_user_type, description) values (143, 'nulla
ultrices aliquet maecenas leo');
insert into USER_TYPE(id_user_type, description) values (144, 'cubilia
curae nulla dapibus dolor vel est donec');
insert into USER_TYPE(id_user_type, description) values (145,
'convallis nunc proin at turpis a');
insert into USER_TYPE(id_user_type, description) values (146, 'ante
nulla justo aliquam quis turpis eget elit sodales');
insert into USER_TYPE(id_user_type, description) values (147, 'viverra
diam vitae quam suspendisse potenti nullam porttitor');
insert into USER_TYPE(id_user_type, description) values (148, 'erat
tortor sollicitudin mi sit amet lobortis sapien sapien non');
insert into USER_TYPE(id_user_type, description) values (149,
'elementum pellentesque quisque porta volutpat erat quisque erat
eros');
insert into USER_TYPE(id_user_type, description) values (150,
'praesent blandit lacinia erat vestibulum');
insert into USER_TYPE(id_user_type, description) values (151,
'volutpat quam pede lobortis ligula');
insert into USER_TYPE(id_user_type, description) values (152,
'nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum
neque');
insert into USER_TYPE(id_user_type, description) values (153, 'in
purus eu magna vulputate luctus');
insert into USER_TYPE(id_user_type, description) values (154, 'tempus
semper est quam pharetra magna ac consequat metus sapien');
insert into USER_TYPE(id_user_type, description) values (155, 'et
ultrices posuere cubilia curae nulla dapibus');
insert into USER_TYPE(id_user_type, description) values (156, 'mauris
laoreet ut rhoncus aliquet pulvinar sed');
insert into USER_TYPE(id_user_type, description) values (157, 'blandit
ultrices enim lorem ipsum dolor sit');
insert into USER_TYPE(id_user_type, description) values (158, 'quis
orci nullam molestie nibh in');
insert into USER_TYPE(id_user_type, description) values (159, 'non
velit donec diam neque vestibulum eget vulputate ut');
insert into USER_TYPE(id_user_type, description) values (160, 'nec
molestie sed justo pellentesque viverra pede ac diam cras');
insert into USER_TYPE(id_user_type, description) values (161, 'id
nulla ultrices aliquet maecenas leo odio');
insert into USER_TYPE(id_user_type, description) values (162, 'aliquet
ultrices erat tortor sollicitudin mi sit amet');
insert into USER_TYPE(id_user_type, description) values (163, 'mus
etiam vel augue vestibulum rutrum rutrum neque');
insert into USER_TYPE(id_user_type, description) values (164, 'sapien
dignissim vestibulum vestibulum ante ipsum');
insert into USER_TYPE(id_user_type, description) values (165,
'phasellus sit amet erat nulla tempus vivamus in');
insert into USER_TYPE(id_user_type, description) values (166, 'amet
erat nulla tempus vivamus in felis eu sapien');
insert into USER_TYPE(id_user_type, description) values (167, 'libero
nam dui proin leo');
insert into USER_TYPE(id_user_type, description) values (168, 'sit
amet nulla quisque arcu');
insert into USER_TYPE(id_user_type, description) values (169, 'ut
nulla sed accumsan felis ut');
insert into USER_TYPE(id_user_type, description) values (170,
'lobortis sapien sapien non mi integer ac neque');
insert into USER_TYPE(id_user_type, description) values (171, 'in
faucibus orci luctus et ultrices posuere cubilia curae donec');
insert into USER_TYPE(id_user_type, description) values (172, 'donec
ut mauris eget massa tempor convallis');
insert into USER_TYPE(id_user_type, description) values (173, 'posuere
cubilia curae duis faucibus accumsan odio curabitur convallis duis');
insert into USER_TYPE(id_user_type, description) values (174, 'aliquam
quis turpis eget elit sodales scelerisque mauris sit amet');
insert into USER_TYPE(id_user_type, description) values (175, 'proin
at turpis a pede posuere nonummy');
insert into USER_TYPE(id_user_type, description) values (176, 'ligula
vehicula consequat morbi a');
insert into USER_TYPE(id_user_type, description) values (177, 'ipsum
primis in faucibus orci luctus et ultrices posuere');
insert into USER_TYPE(id_user_type, description) values (178,
'bibendum morbi non quam nec dui luctus rutrum');
insert into USER_TYPE(id_user_type, description) values (179, 'hac
habitasse platea dictumst aliquam augue quam sollicitudin vitae');
insert into USER_TYPE(id_user_type, description) values (180, 'et
ultrices posuere cubilia curae');
insert into USER_TYPE(id_user_type, description) values (181,
'hendrerit at vulputate vitae nisl aenean');
insert into USER_TYPE(id_user_type, description) values (182, 'libero
rutrum ac lobortis vel dapibus');
insert into USER_TYPE(id_user_type, description) values (183, 'ante
ipsum primis in faucibus orci luctus et');
insert into USER_TYPE(id_user_type, description) values (184, 'sapien
ut nunc vestibulum ante');
insert into USER_TYPE(id_user_type, description) values (185, 'dapibus
duis at velit eu');
insert into USER_TYPE(id_user_type, description) values (186, 'odio in
hac habitasse platea dictumst maecenas');
insert into USER_TYPE(id_user_type, description) values (187, 'in
felis donec semper sapien a libero');
insert into USER_TYPE(id_user_type, description) values (188, 'sit
amet turpis elementum ligula vehicula');
insert into USER_TYPE(id_user_type, description) values (189, 'amet
justo morbi ut odio cras mi pede malesuada');
insert into USER_TYPE(id_user_type, description) values (190, 'augue a
suscipit nulla elit ac nulla sed');
insert into USER_TYPE(id_user_type, description) values (191, 'posuere
cubilia curae nulla dapibus dolor vel est');
insert into USER_TYPE(id_user_type, description) values (192,
'maecenas tristique est et tempus semper est quam pharetra');
insert into USER_TYPE(id_user_type, description) values (193, 'pede
posuere nonummy integer non velit donec diam neque');
insert into USER_TYPE(id_user_type, description) values (194, 'rhoncus
sed vestibulum sit amet cursus id turpis');
insert into USER_TYPE(id_user_type, description) values (195, 'in
faucibus orci luctus et');
insert into USER_TYPE(id_user_type, description) values (196,
'convallis nulla neque libero convallis eget eleifend luctus');
insert into USER_TYPE(id_user_type, description) values (197, 'tempus
sit amet sem fusce consequat');
insert into USER_TYPE(id_user_type, description) values (198, 'mauris
vulputate elementum nullam varius nulla');
insert into USER_TYPE(id_user_type, description) values (199,
'praesent lectus vestibulum quam sapien varius');
insert into USER_TYPE(id_user_type, description) values (200, 'varius
nulla facilisi cras non');
insert into USER_TYPE(id_user_type, description) values (201, 'id
massa id nisl venenatis lacinia aenean sit');
insert into USER_TYPE(id_user_type, description) values (202, 'et
ultrices posuere cubilia curae donec');
insert into USER_TYPE(id_user_type, description) values (203, 'semper
sapien a libero nam dui proin leo odio porttitor');
insert into USER_TYPE(id_user_type, description) values (204, 'lacus
morbi sem mauris laoreet ut');
insert into USER_TYPE(id_user_type, description) values (205, 'pretium
iaculis justo in hac habitasse platea');
insert into USER_TYPE(id_user_type, description) values (206,
'volutpat dui maecenas tristique est');
insert into USER_TYPE(id_user_type, description) values (207, 'dapibus
duis at velit eu est congue elementum');
insert into USER_TYPE(id_user_type, description) values (208, 'vel
lectus in quam fringilla rhoncus mauris enim leo rhoncus');
insert into USER_TYPE(id_user_type, description) values (209, 'cras mi
pede malesuada in imperdiet et');
insert into USER_TYPE(id_user_type, description) values (210, 'sit
amet nulla quisque arcu libero');
insert into USER_TYPE(id_user_type, description) values (211, 'metus
vitae ipsum aliquam non mauris morbi');
insert into USER_TYPE(id_user_type, description) values (212,
'facilisi cras non velit nec nisi vulputate nonummy maecenas
tincidunt');
insert into USER_TYPE(id_user_type, description) values (213, 'nisl
aenean lectus pellentesque eget nunc donec');
insert into USER_TYPE(id_user_type, description) values (214, 'ut
massa quis augue luctus tincidunt nulla mollis');
insert into USER_TYPE(id_user_type, description) values (215, 'est
phasellus sit amet erat nulla tempus vivamus in felis');
insert into USER_TYPE(id_user_type, description) values (216, 'ut
tellus nulla ut erat id');
insert into USER_TYPE(id_user_type, description) values (217, 'ipsum
primis in faucibus orci luctus et ultrices posuere');
insert into USER_TYPE(id_user_type, description) values (218,
'elementum nullam varius nulla facilisi cras');
insert into USER_TYPE(id_user_type, description) values (219,
'interdum eu tincidunt in leo maecenas pulvinar lobortis');
insert into USER_TYPE(id_user_type, description) values (220, 'nullam
molestie nibh in lectus');
insert into USER_TYPE(id_user_type, description) values (221,
'ultrices libero non mattis pulvinar nulla');
insert into USER_TYPE(id_user_type, description) values (222, 'vitae
quam suspendisse potenti nullam porttitor');
insert into USER_TYPE(id_user_type, description) values (223,
'consectetuer adipiscing elit proin risus praesent lectus vestibulum');
insert into USER_TYPE(id_user_type, description) values (224, 'pede
malesuada in imperdiet et commodo vulputate justo');
insert into USER_TYPE(id_user_type, description) values (225,
'faucibus orci luctus et ultrices posuere cubilia curae duis
faucibus');
insert into USER_TYPE(id_user_type, description) values (226, 'duis
aliquam convallis nunc proin');
insert into USER_TYPE(id_user_type, description) values (227, 'lacus
purus aliquet at feugiat non pretium quis lectus suspendisse');
insert into USER_TYPE(id_user_type, description) values (228, 'morbi
odio odio elementum eu');
insert into USER_TYPE(id_user_type, description) values (229, 'velit
nec nisi vulputate nonummy maecenas');
insert into USER_TYPE(id_user_type, description) values (230,
'consequat lectus in est risus auctor sed tristique in');
insert into USER_TYPE(id_user_type, description) values (231, 'a
suscipit nulla elit ac nulla sed vel enim sit');
insert into USER_TYPE(id_user_type, description) values (232, 'mollis
molestie lorem quisque ut erat curabitur gravida nisi at');
insert into USER_TYPE(id_user_type, description) values (233, 'eget
eros elementum pellentesque quisque porta');
insert into USER_TYPE(id_user_type, description) values (234,
'volutpat quam pede lobortis ligula');
insert into USER_TYPE(id_user_type, description) values (235, 'quis
orci eget orci vehicula condimentum');
insert into USER_TYPE(id_user_type, description) values (236, 'magnis
dis parturient montes nascetur ridiculus mus');
insert into USER_TYPE(id_user_type, description) values (237, 'mollis
molestie lorem quisque ut erat curabitur gravida');
insert into USER_TYPE(id_user_type, description) values (238, 'morbi
vel lectus in quam fringilla rhoncus mauris');
insert into USER_TYPE(id_user_type, description) values (239, 'orci
luctus et ultrices posuere');
insert into USER_TYPE(id_user_type, description) values (240, 'vel
nulla eget eros elementum pellentesque quisque porta');
insert into USER_TYPE(id_user_type, description) values (241, 'sit
amet erat nulla tempus vivamus in felis eu');
insert into USER_TYPE(id_user_type, description) values (242, 'nunc
nisl duis bibendum felis');
insert into USER_TYPE(id_user_type, description) values (243, 'turpis
donec posuere metus vitae ipsum aliquam non mauris');
insert into USER_TYPE(id_user_type, description) values (244, 'sed
vestibulum sit amet cursus');
insert into USER_TYPE(id_user_type, description) values (245, 'feugiat
non pretium quis lectus');
insert into USER_TYPE(id_user_type, description) values (246,
'consequat metus sapien ut nunc vestibulum ante ipsum primis');
insert into USER_TYPE(id_user_type, description) values (247, 'nunc
proin at turpis a pede posuere nonummy');
insert into USER_TYPE(id_user_type, description) values (248, 'aenean
lectus pellentesque eget nunc donec quis');
insert into USER_TYPE(id_user_type, description) values (249,
'pharetra magna vestibulum aliquet ultrices erat tortor');
insert into USER_TYPE(id_user_type, description) values (250, 'donec
dapibus duis at velit eu est congue elementum in');
insert into USER_TYPE(id_user_type, description) values (251, 'libero
quis orci nullam molestie');
insert into USER_TYPE(id_user_type, description) values (252, 'quam
sollicitudin vitae consectetuer eget rutrum at');
insert into USER_TYPE(id_user_type, description) values (253, 'at
velit eu est congue elementum in hac');
insert into USER_TYPE(id_user_type, description) values (254, 'congue
eget semper rutrum nulla nunc purus phasellus in');
insert into USER_TYPE(id_user_type, description) values (255, 'odio
cras mi pede malesuada in imperdiet et commodo vulputate');
insert into USER_TYPE(id_user_type, description) values (256, 'ac diam
cras pellentesque volutpat dui maecenas tristique');
insert into USER_TYPE(id_user_type, description) values (257,
'nascetur ridiculus mus etiam vel augue vestibulum rutrum');
insert into USER_TYPE(id_user_type, description) values (258, 'neque
vestibulum eget vulputate ut ultrices vel augue vestibulum ante');
insert into USER_TYPE(id_user_type, description) values (259, 'quis
lectus suspendisse potenti in eleifend quam');
insert into USER_TYPE(id_user_type, description) values (260, 'montes
nascetur ridiculus mus etiam');
insert into USER_TYPE(id_user_type, description) values (261, 'in
congue etiam justo etiam pretium iaculis justo in');
insert into USER_TYPE(id_user_type, description) values (262,
'convallis duis consequat dui nec nisi volutpat eleifend donec');
insert into USER_TYPE(id_user_type, description) values (263,
'venenatis non sodales sed tincidunt eu');
insert into USER_TYPE(id_user_type, description) values (264, 'nulla
quisque arcu libero rutrum ac lobortis');
insert into USER_TYPE(id_user_type, description) values (265,
'ridiculus mus etiam vel augue');
insert into USER_TYPE(id_user_type, description) values (266, 'etiam
faucibus cursus urna ut tellus nulla ut');
insert into USER_TYPE(id_user_type, description) values (267, 'cum
sociis natoque penatibus et magnis dis parturient montes nascetur');
insert into USER_TYPE(id_user_type, description) values (268, 'id
nulla ultrices aliquet maecenas leo odio condimentum');
insert into USER_TYPE(id_user_type, description) values (269, 'proin
eu mi nulla ac enim in tempor');
insert into USER_TYPE(id_user_type, description) values (270, 'in
congue etiam justo etiam pretium iaculis justo');
insert into USER_TYPE(id_user_type, description) values (271, 'quam
pede lobortis ligula sit amet eleifend pede');
insert into USER_TYPE(id_user_type, description) values (272, 'ut at
dolor quis odio');
insert into USER_TYPE(id_user_type, description) values (273, 'sem
fusce consequat nulla nisl nunc nisl duis');
insert into USER_TYPE(id_user_type, description) values (274, 'nam
ultrices libero non mattis pulvinar nulla');
insert into USER_TYPE(id_user_type, description) values (275,
'penatibus et magnis dis parturient');
insert into USER_TYPE(id_user_type, description) values (276, 'morbi
vestibulum velit id pretium iaculis diam erat');
insert into USER_TYPE(id_user_type, description) values (277, 'vel
augue vestibulum ante ipsum primis in faucibus');
insert into USER_TYPE(id_user_type, description) values (278, 'potenti
cras in purus eu magna');
insert into USER_TYPE(id_user_type, description) values (279, 'pretium
iaculis justo in hac habitasse platea dictumst etiam');
insert into USER_TYPE(id_user_type, description) values (280, 'aliquam
augue quam sollicitudin vitae consectetuer eget');
insert into USER_TYPE(id_user_type, description) values (281, 'id
mauris vulputate elementum nullam');
insert into USER_TYPE(id_user_type, description) values (282,
'lobortis convallis tortor risus dapibus');
insert into USER_TYPE(id_user_type, description) values (283, 'dis
parturient montes nascetur ridiculus mus etiam vel augue');
insert into USER_TYPE(id_user_type, description) values (284, 'ipsum
primis in faucibus orci luctus et ultrices posuere cubilia');
insert into USER_TYPE(id_user_type, description) values (285, 'nisl ut
volutpat sapien arcu sed augue aliquam erat volutpat');
insert into USER_TYPE(id_user_type, description) values (286,
'phasellus sit amet erat nulla tempus vivamus in felis eu');
insert into USER_TYPE(id_user_type, description) values (287, 'curae
nulla dapibus dolor vel');
insert into USER_TYPE(id_user_type, description) values (288, 'donec
diam neque vestibulum eget');
insert into USER_TYPE(id_user_type, description) values (289,
'maecenas pulvinar lobortis est phasellus sit');
insert into USER_TYPE(id_user_type, description) values (290, 'amet
eros suspendisse accumsan tortor quis');
insert into USER_TYPE(id_user_type, description) values (291, 'nec
condimentum neque sapien placerat ante nulla');
insert into USER_TYPE(id_user_type, description) values (292, 'nunc
donec quis orci eget');
insert into USER_TYPE(id_user_type, description) values (293, 'ac
neque duis bibendum morbi');
insert into USER_TYPE(id_user_type, description) values (294, 'sit
amet cursus id turpis integer aliquet massa id');
insert into USER_TYPE(id_user_type, description) values (295,
'elementum nullam varius nulla facilisi cras');
insert into USER_TYPE(id_user_type, description) values (296, 'feugiat
non pretium quis lectus suspendisse potenti in eleifend quam');
insert into USER_TYPE(id_user_type, description) values (297, 'sit
amet sem fusce consequat nulla nisl nunc');
insert into USER_TYPE(id_user_type, description) values (298, 'libero
nam dui proin leo odio porttitor id');
insert into USER_TYPE(id_user_type, description) values (299, 'velit
id pretium iaculis diam erat');
insert into USER_TYPE(id_user_type, description) values (300, 'sed
magna at nunc commodo placerat praesent blandit');
insert into USER_TYPE(id_user_type, description) values (301, 'fusce
posuere felis sed lacus morbi sem mauris laoreet ut');
insert into USER_TYPE(id_user_type, description) values (302, 'blandit
non interdum in ante vestibulum ante');
insert into USER_TYPE(id_user_type, description) values (303, 'lacus
morbi quis tortor id nulla ultrices');
insert into USER_TYPE(id_user_type, description) values (304, 'lacinia
aenean sit amet justo morbi ut');
insert into USER_TYPE(id_user_type, description) values (305, 'magna
at nunc commodo placerat praesent blandit');
insert into USER_TYPE(id_user_type, description) values (306, 'purus
aliquet at feugiat non');
insert into USER_TYPE(id_user_type, description) values (307,
'faucibus orci luctus et ultrices posuere cubilia');
insert into USER_TYPE(id_user_type, description) values (308,
'ultrices posuere cubilia curae mauris viverra diam vitae quam');
insert into USER_TYPE(id_user_type, description) values (309, 'orci
luctus et ultrices posuere cubilia curae');
insert into USER_TYPE(id_user_type, description) values (310, 'libero
ut massa volutpat convallis morbi odio odio');
insert into USER_TYPE(id_user_type, description) values (311, 'lorem
vitae mattis nibh ligula');
insert into USER_TYPE(id_user_type, description) values (312,
'vulputate ut ultrices vel augue vestibulum ante');
insert into USER_TYPE(id_user_type, description) values (313, 'ac
consequat metus sapien ut nunc vestibulum ante ipsum primis');
insert into USER_TYPE(id_user_type, description) values (314,
'penatibus et magnis dis parturient');
insert into USER_TYPE(id_user_type, description) values (315, 'id
ligula suspendisse ornare consequat lectus in est risus auctor');
insert into USER_TYPE(id_user_type, description) values (316, 'ante
vel ipsum praesent blandit lacinia erat');
insert into USER_TYPE(id_user_type, description) values (317, 'sit
amet lobortis sapien sapien non mi integer');
insert into USER_TYPE(id_user_type, description) values (318, 'rutrum
at lorem integer tincidunt ante vel ipsum praesent blandit');
insert into USER_TYPE(id_user_type, description) values (319, 'mattis
pulvinar nulla pede ullamcorper augue a suscipit');
insert into USER_TYPE(id_user_type, description) values (320,
'maecenas tincidunt lacus at velit vivamus vel nulla eget eros');
insert into USER_TYPE(id_user_type, description) values (321, 'purus
sit amet nulla quisque');
insert into USER_TYPE(id_user_type, description) values (322,
'elementum ligula vehicula consequat morbi a');
insert into USER_TYPE(id_user_type, description) values (323,
'tincidunt ante vel ipsum praesent blandit lacinia');
insert into USER_TYPE(id_user_type, description) values (324, 'donec
ut mauris eget massa tempor convallis nulla neque');
insert into USER_TYPE(id_user_type, description) values (325, 'id
luctus nec molestie sed justo');
insert into USER_TYPE(id_user_type, description) values (326, 'nec
nisi volutpat eleifend donec');
insert into USER_TYPE(id_user_type, description) values (327, 'rutrum
neque aenean auctor gravida sem praesent id');
insert into USER_TYPE(id_user_type, description) values (328, 'viverra
eget congue eget semper rutrum');
insert into USER_TYPE(id_user_type, description) values (329, 'in
lacus curabitur at ipsum');
insert into USER_TYPE(id_user_type, description) values (330, 'turpis
sed ante vivamus tortor duis mattis');
insert into USER_TYPE(id_user_type, description) values (331, 'proin
interdum mauris non ligula');
insert into USER_TYPE(id_user_type, description) values (332, 'tempus
sit amet sem fusce consequat nulla nisl nunc');
insert into USER_TYPE(id_user_type, description) values (333, 'mauris
laoreet ut rhoncus aliquet');
insert into USER_TYPE(id_user_type, description) values (334, 'sit
amet nunc viverra dapibus nulla suscipit');
insert into USER_TYPE(id_user_type, description) values (335,
'dictumst morbi vestibulum velit id pretium iaculis diam erat
fermentum');
insert into USER_TYPE(id_user_type, description) values (336, 'augue
luctus tincidunt nulla mollis molestie lorem quisque ut erat');
insert into USER_TYPE(id_user_type, description) values (337, 'mattis
pulvinar nulla pede ullamcorper augue a suscipit nulla elit');
insert into USER_TYPE(id_user_type, description) values (338, 'a ipsum
integer a nibh in quis');
insert into USER_TYPE(id_user_type, description) values (339, 'semper
interdum mauris ullamcorper purus sit amet');
insert into USER_TYPE(id_user_type, description) values (340, 'in ante
vestibulum ante ipsum primis in faucibus');
insert into USER_TYPE(id_user_type, description) values (341, 'tempus
sit amet sem fusce consequat nulla');
insert into USER_TYPE(id_user_type, description) values (342, 'ut
suscipit a feugiat et eros vestibulum ac est lacinia');
insert into USER_TYPE(id_user_type, description) values (343, 'nec
nisi vulputate nonummy maecenas tincidunt');
insert into USER_TYPE(id_user_type, description) values (344, 'orci
luctus et ultrices posuere cubilia curae donec');
insert into USER_TYPE(id_user_type, description) values (345, 'lacus
curabitur at ipsum ac tellus semper interdum mauris');
insert into USER_TYPE(id_user_type, description) values (346, 'eros
suspendisse accumsan tortor quis turpis sed');
insert into USER_TYPE(id_user_type, description) values (347, 'hac
habitasse platea dictumst maecenas');
insert into USER_TYPE(id_user_type, description) values (348, 'in
sapien iaculis congue vivamus metus arcu adipiscing');
insert into USER_TYPE(id_user_type, description) values (349,
'interdum mauris ullamcorper purus sit amet nulla quisque');
insert into USER_TYPE(id_user_type, description) values (350, 'mauris
eget massa tempor convallis');
insert into USER_TYPE(id_user_type, description) values (351, 'est
congue elementum in hac habitasse');
insert into USER_TYPE(id_user_type, description) values (352, 'id
turpis integer aliquet massa');
insert into USER_TYPE(id_user_type, description) values (353, 'non
mattis pulvinar nulla pede ullamcorper augue a suscipit');
insert into USER_TYPE(id_user_type, description) values (354,
'ultricies eu nibh quisque id justo sit amet sapien dignissim');
insert into USER_TYPE(id_user_type, description) values (355, 'leo
pellentesque ultrices mattis odio donec vitae nisi nam ultrices');
insert into USER_TYPE(id_user_type, description) values (356, 'odio
curabitur convallis duis consequat dui nec nisi');
insert into USER_TYPE(id_user_type, description) values (357, 'vel
dapibus at diam nam tristique tortor eu');
insert into USER_TYPE(id_user_type, description) values (358, 'aenean
sit amet justo morbi ut odio cras mi pede');
insert into USER_TYPE(id_user_type, description) values (359, 'duis
faucibus accumsan odio curabitur convallis duis consequat');
insert into USER_TYPE(id_user_type, description) values (360,
'pulvinar sed nisl nunc rhoncus dui vel sem sed');
insert into USER_TYPE(id_user_type, description) values (361,
'consequat lectus in est risus auctor');
insert into USER_TYPE(id_user_type, description) values (362, 'dis
parturient montes nascetur ridiculus');
insert into USER_TYPE(id_user_type, description) values (363, 'nulla
sed accumsan felis ut');
insert into USER_TYPE(id_user_type, description) values (364, 'nibh in
hac habitasse platea dictumst aliquam');
insert into USER_TYPE(id_user_type, description) values (365, 'nulla
neque libero convallis eget eleifend luctus ultricies');
insert into USER_TYPE(id_user_type, description) values (366, 'eu mi
nulla ac enim in');
insert into USER_TYPE(id_user_type, description) values (367, 'justo
pellentesque viverra pede ac diam cras pellentesque');
insert into USER_TYPE(id_user_type, description) values (368, 'pede
lobortis ligula sit amet eleifend pede libero');
insert into USER_TYPE(id_user_type, description) values (369, 'sapien
a libero nam dui proin');
insert into USER_TYPE(id_user_type, description) values (370, 'massa
id lobortis convallis tortor risus dapibus augue');
insert into USER_TYPE(id_user_type, description) values (371, 'nunc
proin at turpis a');
insert into USER_TYPE(id_user_type, description) values (372, 'quisque
porta volutpat erat quisque erat eros viverra eget');
insert into USER_TYPE(id_user_type, description) values (373, 'viverra
pede ac diam cras pellentesque volutpat');
insert into USER_TYPE(id_user_type, description) values (374, 'odio
condimentum id luctus nec');
insert into USER_TYPE(id_user_type, description) values (375, 'nulla
neque libero convallis eget eleifend luctus ultricies eu nibh');
insert into USER_TYPE(id_user_type, description) values (376, 'turpis
integer aliquet massa id lobortis convallis tortor risus');
insert into USER_TYPE(id_user_type, description) values (377,
'vestibulum sagittis sapien cum sociis');
insert into USER_TYPE(id_user_type, description) values (378, 'enim
leo rhoncus sed vestibulum sit amet');
insert into USER_TYPE(id_user_type, description) values (379, 'augue
quam sollicitudin vitae consectetuer');
insert into USER_TYPE(id_user_type, description) values (380, 'cubilia
curae duis faucibus accumsan odio curabitur convallis');
insert into USER_TYPE(id_user_type, description) values (381, 'vivamus
tortor duis mattis egestas metus aenean fermentum');
insert into USER_TYPE(id_user_type, description) values (382, 'orci
pede venenatis non sodales');
insert into USER_TYPE(id_user_type, description) values (383, 'metus
arcu adipiscing molestie hendrerit at');
insert into USER_TYPE(id_user_type, description) values (384, 'nunc
rhoncus dui vel sem sed sagittis');
insert into USER_TYPE(id_user_type, description) values (385,
'habitasse platea dictumst morbi vestibulum velit id');
insert into USER_TYPE(id_user_type, description) values (386, 'nulla
suscipit ligula in lacus curabitur at');
insert into USER_TYPE(id_user_type, description) values (387, 'neque
libero convallis eget eleifend luctus ultricies eu nibh');
insert into USER_TYPE(id_user_type, description) values (388, 'ac nibh
fusce lacus purus aliquet at feugiat non pretium');
insert into USER_TYPE(id_user_type, description) values (389, 'luctus
et ultrices posuere cubilia');
insert into USER_TYPE(id_user_type, description) values (390, 'dapibus
at diam nam tristique');
insert into USER_TYPE(id_user_type, description) values (391,
'sollicitudin mi sit amet lobortis');
insert into USER_TYPE(id_user_type, description) values (392, 'aliquam
erat volutpat in congue etiam justo');
insert into USER_TYPE(id_user_type, description) values (393, 'vel
enim sit amet nunc viverra dapibus');
insert into USER_TYPE(id_user_type, description) values (394, 'non
quam nec dui luctus rutrum nulla tellus in sagittis');
insert into USER_TYPE(id_user_type, description) values (395, 'dolor
sit amet consectetuer adipiscing elit proin interdum');
insert into USER_TYPE(id_user_type, description) values (396, 'erat
nulla tempus vivamus in');
insert into USER_TYPE(id_user_type, description) values (397, 'quisque
arcu libero rutrum ac lobortis');
insert into USER_TYPE(id_user_type, description) values (398, 'in
consequat ut nulla sed accumsan felis');
insert into USER_TYPE(id_user_type, description) values (399, 'feugiat
et eros vestibulum ac est');
insert into USER_TYPE(id_user_type, description) values (400, 'amet
nulla quisque arcu libero rutrum ac');
insert into USER_TYPE(id_user_type, description) values (401,
'bibendum morbi non quam nec dui luctus rutrum nulla tellus');
insert into USER_TYPE(id_user_type, description) values (402, 'mauris
morbi non lectus aliquam sit amet diam in');
insert into USER_TYPE(id_user_type, description) values (403, 'libero
convallis eget eleifend luctus ultricies');
insert into USER_TYPE(id_user_type, description) values (404, 'congue
vivamus metus arcu adipiscing molestie');
insert into USER_TYPE(id_user_type, description) values (405, 'nec
condimentum neque sapien placerat ante nulla justo');
insert into USER_TYPE(id_user_type, description) values (406, 'eu est
congue elementum in hac habitasse platea');
insert into USER_TYPE(id_user_type, description) values (407,
'faucibus orci luctus et ultrices posuere');
insert into USER_TYPE(id_user_type, description) values (408,
'faucibus orci luctus et ultrices posuere cubilia curae duis
faucibus');
insert into USER_TYPE(id_user_type, description) values (409, 'lorem
integer tincidunt ante vel ipsum praesent blandit lacinia erat');
insert into USER_TYPE(id_user_type, description) values (410,
'vestibulum ac est lacinia nisi venenatis tristique fusce congue
diam');
insert into USER_TYPE(id_user_type, description) values (411,
'parturient montes nascetur ridiculus mus vivamus');
insert into USER_TYPE(id_user_type, description) values (412,
'molestie nibh in lectus pellentesque at nulla suspendisse potenti
cras');
insert into USER_TYPE(id_user_type, description) values (413, 'platea
dictumst maecenas ut massa quis augue luctus tincidunt');
insert into USER_TYPE(id_user_type, description) values (414, 'est
donec odio justo sollicitudin ut');
insert into USER_TYPE(id_user_type, description) values (415, 'est
phasellus sit amet erat nulla');
insert into USER_TYPE(id_user_type, description) values (416, 'nibh
fusce lacus purus aliquet at');
insert into USER_TYPE(id_user_type, description) values (417, 'eu est
congue elementum in hac');
insert into USER_TYPE(id_user_type, description) values (418, 'nullam
orci pede venenatis non sodales sed tincidunt eu felis');
insert into USER_TYPE(id_user_type, description) values (419, 'nulla
justo aliquam quis turpis eget elit sodales');
insert into USER_TYPE(id_user_type, description) values (420, 'nulla
ut erat id mauris vulputate elementum nullam varius');
insert into USER_TYPE(id_user_type, description) values (421, 'rhoncus
aliquet pulvinar sed nisl nunc rhoncus dui');
insert into USER_TYPE(id_user_type, description) values (422,
'malesuada in imperdiet et commodo vulputate justo in');
insert into USER_TYPE(id_user_type, description) values (423, 'libero
quis orci nullam molestie nibh in lectus pellentesque');
insert into USER_TYPE(id_user_type, description) values (424, 'ligula
in lacus curabitur at ipsum');
insert into USER_TYPE(id_user_type, description) values (425, 'cras
pellentesque volutpat dui maecenas tristique est et tempus semper');
insert into USER_TYPE(id_user_type, description) values (426, 'luctus
et ultrices posuere cubilia curae donec pharetra magna');
insert into USER_TYPE(id_user_type, description) values (427, 'magna
vestibulum aliquet ultrices erat tortor');
insert into USER_TYPE(id_user_type, description) values (428, 'morbi
vel lectus in quam');
insert into USER_TYPE(id_user_type, description) values (429, 'rhoncus
mauris enim leo rhoncus sed vestibulum sit amet cursus');
insert into USER_TYPE(id_user_type, description) values (430, 'justo
sit amet sapien dignissim');
insert into USER_TYPE(id_user_type, description) values (431, 'justo
maecenas rhoncus aliquam lacus');
insert into USER_TYPE(id_user_type, description) values (432, 'nec sem
duis aliquam convallis nunc');
insert into USER_TYPE(id_user_type, description) values (433, 'dapibus
dolor vel est donec odio justo sollicitudin ut');
insert into USER_TYPE(id_user_type, description) values (434,
'consectetuer adipiscing elit proin interdum');
insert into USER_TYPE(id_user_type, description) values (435,
'accumsan felis ut at dolor quis odio consequat varius');
insert into USER_TYPE(id_user_type, description) values (436, 'cubilia
curae mauris viverra diam vitae quam suspendisse potenti');
insert into USER_TYPE(id_user_type, description) values (437, 'erat
tortor sollicitudin mi sit amet lobortis sapien sapien non');
insert into USER_TYPE(id_user_type, description) values (438, 'quis
augue luctus tincidunt nulla mollis molestie lorem quisque ut');
insert into USER_TYPE(id_user_type, description) values (439, 'ut
blandit non interdum in ante vestibulum ante ipsum primis');
insert into USER_TYPE(id_user_type, description) values (440, 'orci
luctus et ultrices posuere cubilia curae');
insert into USER_TYPE(id_user_type, description) values (441, 'aliquam
quis turpis eget elit sodales scelerisque mauris sit amet');
insert into USER_TYPE(id_user_type, description) values (442, 'lorem
vitae mattis nibh ligula nec sem duis aliquam convallis');
insert into USER_TYPE(id_user_type, description) values (443, 'non
velit donec diam neque');
insert into USER_TYPE(id_user_type, description) values (444, 'pede
justo lacinia eget tincidunt eget');
insert into USER_TYPE(id_user_type, description) values (445,
'sagittis sapien cum sociis natoque penatibus');
insert into USER_TYPE(id_user_type, description) values (446,
'phasellus id sapien in sapien iaculis congue vivamus metus');
insert into USER_TYPE(id_user_type, description) values (447, 'quis
turpis eget elit sodales scelerisque mauris sit');
insert into USER_TYPE(id_user_type, description) values (448, 'morbi
porttitor lorem id ligula suspendisse ornare');
insert into USER_TYPE(id_user_type, description) values (449,
'eleifend luctus ultricies eu nibh quisque');
insert into USER_TYPE(id_user_type, description) values (450, 'in
imperdiet et commodo vulputate justo in blandit ultrices enim');
insert into USER_TYPE(id_user_type, description) values (451,
'interdum mauris non ligula pellentesque ultrices');
insert into USER_TYPE(id_user_type, description) values (452, 'nec sem
duis aliquam convallis nunc proin at turpis a');
insert into USER_TYPE(id_user_type, description) values (453, 'in hac
habitasse platea dictumst maecenas ut massa quis');
insert into USER_TYPE(id_user_type, description) values (454, 'lectus
aliquam sit amet diam in magna');
insert into USER_TYPE(id_user_type, description) values (455, 'pede
libero quis orci nullam molestie nibh');
insert into USER_TYPE(id_user_type, description) values (456, 'at
dolor quis odio consequat varius integer ac leo pellentesque');
insert into USER_TYPE(id_user_type, description) values (457,
'habitasse platea dictumst maecenas ut massa quis');
insert into USER_TYPE(id_user_type, description) values (458,
'adipiscing elit proin interdum mauris non ligula pellentesque ultrices
phasellus');
insert into USER_TYPE(id_user_type, description) values (459, 'felis
sed interdum venenatis turpis enim blandit mi');
insert into USER_TYPE(id_user_type, description) values (460, 'lacus
at turpis donec posuere metus vitae ipsum');
insert into USER_TYPE(id_user_type, description) values (461, 'orci
luctus et ultrices posuere cubilia curae mauris viverra');
insert into USER_TYPE(id_user_type, description) values (462, 'mi sit
amet lobortis sapien sapien');
insert into USER_TYPE(id_user_type, description) values (463, 'id
sapien in sapien iaculis');
insert into USER_TYPE(id_user_type, description) values (464, 'fusce
posuere felis sed lacus morbi sem');
insert into USER_TYPE(id_user_type, description) values (465, 'in
libero ut massa volutpat');
insert into USER_TYPE(id_user_type, description) values (466, 'morbi
vel lectus in quam fringilla');
insert into USER_TYPE(id_user_type, description) values (467,
'consequat in consequat ut nulla sed');
insert into USER_TYPE(id_user_type, description) values (468, 'cursus
id turpis integer aliquet massa id lobortis convallis');
insert into USER_TYPE(id_user_type, description) values (469, 'in
eleifend quam a odio in hac');
insert into USER_TYPE(id_user_type, description) values (470,
'elementum eu interdum eu tincidunt in leo maecenas pulvinar
lobortis');
insert into USER_TYPE(id_user_type, description) values (471,
'volutpat quam pede lobortis ligula sit amet eleifend');
insert into USER_TYPE(id_user_type, description) values (472, 'lectus
in quam fringilla rhoncus mauris enim leo');
insert into USER_TYPE(id_user_type, description) values (473, 'sociis
natoque penatibus et magnis dis parturient montes');
insert into USER_TYPE(id_user_type, description) values (474, 'ut at
dolor quis odio consequat varius integer ac');
insert into USER_TYPE(id_user_type, description) values (475, 'at
turpis donec posuere metus vitae ipsum');
insert into USER_TYPE(id_user_type, description) values (476, 'hac
habitasse platea dictumst aliquam augue');
insert into USER_TYPE(id_user_type, description) values (477, 'mauris
laoreet ut rhoncus aliquet');
insert into USER_TYPE(id_user_type, description) values (478, 'ipsum
primis in faucibus orci');
insert into USER_TYPE(id_user_type, description) values (479, 'quis
turpis eget elit sodales scelerisque mauris');
insert into USER_TYPE(id_user_type, description) values (480,
'volutpat in congue etiam justo etiam pretium');
insert into USER_TYPE(id_user_type, description) values (481,
'lobortis convallis tortor risus dapibus augue vel accumsan tellus
nisi');
insert into USER_TYPE(id_user_type, description) values (482, 'laoreet
ut rhoncus aliquet pulvinar sed');
insert into USER_TYPE(id_user_type, description) values (483, 'varius
nulla facilisi cras non velit nec nisi vulputate nonummy');
insert into USER_TYPE(id_user_type, description) values (484,
'lobortis sapien sapien non mi integer');
insert into USER_TYPE(id_user_type, description) values (485, 'nec
condimentum neque sapien placerat');
insert into USER_TYPE(id_user_type, description) values (486, 'cursus
id turpis integer aliquet massa id lobortis convallis tortor');
insert into USER_TYPE(id_user_type, description) values (487, 'luctus
et ultrices posuere cubilia curae donec pharetra');
insert into USER_TYPE(id_user_type, description) values (488, 'sit
amet eros suspendisse accumsan tortor quis turpis');
insert into USER_TYPE(id_user_type, description) values (489, 'dapibus
duis at velit eu est congue elementum in hac');
insert into USER_TYPE(id_user_type, description) values (490,
'ultrices libero non mattis pulvinar nulla pede ullamcorper augue a');
insert into USER_TYPE(id_user_type, description) values (491, 'orci
nullam molestie nibh in lectus pellentesque at nulla');
insert into USER_TYPE(id_user_type, description) values (492, 'posuere
metus vitae ipsum aliquam non mauris morbi non lectus');
insert into USER_TYPE(id_user_type, description) values (493, 'sapien
placerat ante nulla justo aliquam quis turpis');
insert into USER_TYPE(id_user_type, description) values (494, 'justo
aliquam quis turpis eget elit');
insert into USER_TYPE(id_user_type, description) values (495, 'nulla
justo aliquam quis turpis eget elit sodales');
insert into USER_TYPE(id_user_type, description) values (496, 'enim
lorem ipsum dolor sit amet consectetuer');
insert into USER_TYPE(id_user_type, description) values (497, 'diam id
ornare imperdiet sapien urna pretium');
insert into USER_TYPE(id_user_type, description) values (498, 'dis
parturient montes nascetur ridiculus mus vivamus vestibulum');
insert into USER_TYPE(id_user_type, description) values (499, 'lorem
id ligula suspendisse ornare consequat lectus');
insert into USER_TYPE(id_user_type, description) values (500, 'rutrum
nulla nunc purus phasellus in felis');
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (1, 'Tyson', 'Besse',
'tbesse0@aboutads.info', 'VA3hLGlp', 143);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (2, 'Tam', 'Fransewich',
'tfransewich1@who.int', 'raX9Jch', 172);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (3, 'Rosamund', 'Barcroft',
'rbarcroft2@furl.net', 'YLskgD', 156);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (4, 'Bent', 'Husher', 'bhusher3@cbc.ca',
'k4I22qmvy', 462);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (5, 'Averell', 'Alliot',
'aalliot4@opensource.org', '0DtH1nK1G', 287);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (6, 'Aurora', 'Hannabus',
'ahannabus5@uiuc.edu', 'U0H0CPUNLv6', 337);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (7, 'Somerset', 'Fairlamb',
'sfairlamb6@webnode.com', 'gmsBTHSScu', 249);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (8, 'Victor', 'Maughan',
'vmaughan7@bloglovin.com', 'AJOQWDFbrW', 231);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (9, 'Coletta', 'Winkless',
'cwinkless8@narod.ru', 'uTYSXVFT0Z', 229);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (10, 'Carce', 'Petracco',
'cpetracco9@flickr.com', 'YNm8BEVusX0', 51);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (11, 'Kaitlynn', 'Burburough',
'kburburougha@umn.edu', 'Cy2RQTqwtYxU', 406);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (12, 'Dix', 'Randle',
'drandleb@rambler.ru', 'tZcDilfSEFD', 408);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (13, 'Sisile', 'Eminson',
'seminsonc@latimes.com', '5FPFX0yV9', 103);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (14, 'Osbert', 'Worthington',
'oworthingtond@google.es', 'lhOFHm7', 243);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (15, 'Ole', 'Maykin',
'omaykine@stanford.edu', 'kwmTrUxhZ', 155);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (16, 'Gilemette', 'Collough',
'gcolloughf@wikia.com', '4q6zWBEG', 161);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (17, 'Pavia', 'Blaxill',
'pblaxillg@nydailynews.com', 'I5qkMX', 265);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (18, 'Othilie', 'Rumbold',
'orumboldh@netscape.com', 'bY9KPEipwW', 30);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (19, 'Ashely', 'Johnes',
'ajohnesi@t.co', '9NUayrKPasa5', 481);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (20, 'Barbaraanne', 'Braznell',
'bbraznellj@va.gov', '1nOmZNr', 156);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (21, 'Hilde', 'Matresse',
'hmatressek@ifeng.com', 'ExVLH6EtI', 433);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (22, 'Maire', 'McKinnon',
'mmckinnonl@tuttocitta.it', 'Fjt2nv9', 114);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (23, 'Orelia', 'Dabernott',
'odabernottm@amazon.com', 'EHdzPqg7M', 332);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (24, 'Brook', 'Binnes',
'bbinnesn@bluehost.com', 'cnrPsdt', 487);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (25, 'Heath', 'Dargan',
'hdargano@ucsd.edu', 'dhKAxKe9K', 308);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (26, 'Adeline', 'Bartell',
'abartellp@mysql.com', 'qhfl0s', 262);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (27, 'Rockie', 'Dibling',
'rdiblingq@jugem.jp', 'b6SpjCCF', 355);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (28, 'Humfrey', 'Tibalt',
'htibaltr@si.edu', 'v6fzPN7poiXe', 414);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (29, 'Kerri', 'Vann',
'kvanns@geocities.com', 'wTPs4rXs5', 492);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (30, 'Jecho', 'Peperell',
'jpeperellt@admin.ch', 'TG0REM0MjHa', 372);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (31, 'Trisha', 'Blaymires',
'tblaymiresu@cam.ac.uk', 'moHrWiYGMj', 90);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (32, 'Cathe', 'Sinnott',
'csinnottv@upenn.edu', 'TaIcagCkVMKC', 449);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (33, 'Gaspar', 'Westwood',
'gwestwoodw@ftc.gov', 'tPswICMhWUv', 130);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (34, 'Candace', 'Willshear',
'cwillshearx@npr.org', 'fz2IGd7', 175);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (35, 'Ignazio', 'Ellings',
'iellingsy@wix.com', 'XrCQaa1j4', 121);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (36, 'Gratiana', 'Skippings',
'gskippingsz@naver.com', 'GiScqt', 237);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (37, 'Franny', 'Agott',
'fagott10@imageshack.us', 'uh3Z8K1vJ', 140);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (38, 'Hulda', 'MacScherie',
'hmacscherie11@rediff.com', '1N6wrFpPA67P', 110);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (39, 'Edmund', 'Willingale',
'ewillingale12@godaddy.com', '8rwR3feLJtGR', 450);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (40, 'Kore', 'Jaan', 'kjaan13@java.com',
'VY1DrxonRf', 15);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (41, 'Demetri', 'Willingam',
'dwillingam14@1688.com', 'OhBf10UgYJad', 149);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (42, 'Willamina', 'Hook',
'whook15@dailymotion.com', '0RsG1Se3MS', 404);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (43, 'Randolph', 'Bedson',
'rbedson16@yahoo.com', 'MNmSLNqy', 235);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (44, 'Marten', 'Coverlyn',
'mcoverlyn17@phpbb.com', 'oyRaxpa', 279);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (45, 'Jeffry', 'Carbine',
'jcarbine18@stanford.edu', 'gkNs2G', 245);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (46, 'Rochell', 'McKie',
'rmckie19@vistaprint.com', 'uvWnkfs0ki', 482);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (47, 'Shelden', 'Maddinon',
'smaddinon1a@icq.com', 'fCgtzRR', 208);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (48, 'Vitia', 'Staggs',
'vstaggs1b@artisteer.com', 'w0MCuE5e', 73);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (49, 'Deb', 'Cousen',
'dcousen1c@hugedomains.com', 'xdoTeEaIzaqj', 69);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (50, 'Myranda', 'D''Agostini',
'mdagostini1d@cpanel.net', 'oNJw03W9c1sX', 74);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (51, 'Lazar', 'Richarson',
'lricharson1e@parallels.com', 'X4fsqj', 365);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (52, 'Nita', 'Alekseev',
'nalekseev1f@about.com', 'B3iqJKV4q', 352);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (53, 'Kalil', 'Cockin',
'kcockin1g@lycos.com', 'zL8JxhuzF4K', 239);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (54, 'Veronica', 'Stanner',
'vstanner1h@businessweek.com', 'Qx4dTNHppl', 169);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (55, 'Emmye', 'Wretham',
'ewretham1i@csmonitor.com', 'j6wQrQ', 217);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (56, 'Gillie', 'O'' Finan',
'gofinan1j@list-manage.com', 'FwAEbIYVue1', 334);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (57, 'Annamaria', 'Wasbey',
'awasbey1k@bravesites.com', 'UEt0pF2', 420);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (58, 'Shandie', 'Chisholme',
'schisholme1l@nsw.gov.au', 'QKH936', 242);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (59, 'Alameda', 'Ludlow',
'aludlow1m@bandcamp.com', '3PoZAvgA5E', 296);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (60, 'Augie', 'Littlecote',
'alittlecote1n@google.com.au', 'tT8oVzrN9', 234);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (61, 'Rowan', 'Headingham',
'rheadingham1o@vistaprint.com', 'Qp2u3jn', 308);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (62, 'Naomi', 'Skells',
'nskells1p@barnesandnoble.com', 'HOeWWmTfK9u', 55);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (63, 'Leonard', 'Rableau',
'lrableau1q@illinois.edu', 'ogjNpL', 133);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (64, 'Orson', 'Buddell',
'obuddell1r@imgur.com', 'En3D4AdEuPD', 328);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (65, 'Lorinda', 'Leverton',
'lleverton1s@fema.gov', 'E2Ng65rTuYxd', 464);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (66, 'Lorilyn', 'Gallety',
'lgallety1t@nydailynews.com', 'SNIaH9', 381);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (67, 'Charline', 'Quinevan',
'cquinevan1u@weebly.com', '2fJiNi385W', 389);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (68, 'Brandyn', 'Brittan',
'bbrittan1v@myspace.com', 'tDkLA4cFY', 86);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (69, 'Boot', 'Freemantle',
'bfreemantle1w@last.fm', 'vikApH', 152);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (70, 'Ewan', 'Badrock',
'ebadrock1x@themeforest.net', 'FGGIfzkEku', 162);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (71, 'Reinaldos', 'La Grange',
'rlagrange1y@geocities.com', 'kwRTFzRi3lc9', 416);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (72, 'Robinet', 'Ilieve',
'rilieve1z@springer.com', 'LbRYI565K7e', 52);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (73, 'Lorilee', 'Thackray',
'lthackray20@ucoz.com', 'Wm1rYZj6t', 490);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (74, 'Leo', 'Corneliussen',
'lcorneliussen21@nifty.com', '7WqLr6T', 113);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (75, 'Kingsly', 'MacDearmont',
'kmacdearmont22@ehow.com', 'T25PT0', 419);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (76, 'Aldric', 'Hastewell',
'ahastewell23@goo.ne.jp', '687Txd', 113);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (77, 'Reggy', 'Klehyn',
'rklehyn24@spiegel.de', 'z9ntqwj', 293);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (78, 'Royce', 'Itzik',
'ritzik25@home.pl', 'yiNuqkh2E6W', 199);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (79, 'Emanuele', 'Barltrop',
'ebarltrop26@netscape.com', 'y3aygu', 379);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (80, 'Gawen', 'Quinion',
'gquinion27@marriott.com', 'U0SPw4wTDo', 78);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (81, 'Dot', 'Orta', 'dorta28@msu.edu',
'UK9rEHy2JT4', 347);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (82, 'Bonni', 'Priscott',
'bpriscott29@imageshack.us', '3XozxG', 390);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (83, 'Farley', 'Wix',
'fwix2a@house.gov', 'EozmU3', 302);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (84, 'Josepha', 'Merry',
'jmerry2b@cbsnews.com', 'M3XglYA', 268);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (85, 'Adriane', 'O''Noulane',
'aonoulane2c@hexun.com', 'hduZrV2tRl', 485);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (86, 'Jan', 'MacKnockiter',
'jmacknockiter2d@google.pl', 'GwKU9e3b5uq', 367);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (87, 'Jorrie', 'Antonsson',
'jantonsson2e@nasa.gov', 'YrXlyAxQfF', 385);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (88, 'Wakefield', 'Holah',
'wholah2f@ebay.co.uk', 'm6XouwnS', 85);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (89, 'Rafa', 'Egle',
'regle2g@yolasite.com', 'FAqjoL', 443);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (90, 'Arney', 'Gateshill',
'agateshill2h@bing.com', 'ik1XZUTkC4Q8', 211);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (91, 'Corrinne', 'Orniz',
'corniz2i@usnews.com', 'UrBCpK', 202);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (92, 'Dayle', 'Tettley',
'dtettley2j@china.com.cn', 'YRVztEI', 349);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (93, 'Lionel', 'Gallardo',
'lgallardo2k@nih.gov', 'ZjsnyT', 98);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (94, 'Les', 'Salmond',
'lsalmond2l@cbc.ca', 'Cutkz7bCe', 360);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (95, 'Constanta', 'Shipperbottom',
'cshipperbottom2m@eepurl.com', 'kRByt6', 82);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (96, 'Ingeberg', 'Verne',
'iverne2n@flickr.com', 'ZoIdUDxR', 305);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (97, 'Pollyanna', 'Colbeck',
'pcolbeck2o@nps.gov', 'XNqtymvO', 237);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (98, 'Neville', 'Schuricht',
'nschuricht2p@delicious.com', 'w4NuuNGsQdk', 222);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (99, 'Tedmund', 'Tapley',
'ttapley2q@oakley.com', '8zcvkUbZ3ZGZ', 333);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (100, 'Leela', 'Grishin',
'lgrishin2r@si.edu', 'Pcw3936fx8Qy', 93);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (101, 'Josiah', 'Duke',
'jduke2s@odnoklassniki.ru', 'ks7LKeFUly5n', 301);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (102, 'Phip', 'Dickerson',
'pdickerson2t@arstechnica.com', 'DfqwcKo', 427);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (103, 'Lorianna', 'McGiffin',
'lmcgiffin2u@nps.gov', 'eO0TjqDP', 57);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (104, 'Rowena', 'Pappi',
'rpappi2v@addtoany.com', 'LN9BjHypNUy', 337);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (105, 'Adelheid', 'Cowcha',
'acowcha2w@prnewswire.com', 'eiEOZmqOPg3', 160);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (106, 'Andreana', 'Dolby',
'adolby2x@pbs.org', 'Y869CX3e0U0d', 199);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (107, 'Joan', 'Alkins',
'jalkins2y@squidoo.com', 'X29Gfm', 291);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (108, 'Chloris', 'Hugnin',
'chugnin2z@tripadvisor.com', 'o5i3kj', 325);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (109, 'Larisa', 'Robak',
'lrobak30@csmonitor.com', '1j3WX2ucun', 367);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (110, 'Florella', 'Todaro',
'ftodaro31@adobe.com', 'GAkgqMn', 93);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (111, 'Lucas', 'Swetenham',
'lswetenham32@cafepress.com', '4zx7UwVU', 132);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (112, 'Bliss', 'Tirkin',
'btirkin33@samsung.com', '96XBC6RAp8', 405);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (113, 'Ugo', 'De Caville',
'udecaville34@geocities.jp', 'v6MQef', 289);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (114, 'Kelcey', 'Wakeford',
'kwakeford35@berkeley.edu', 'y57Z7UoJ', 386);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (115, 'Estella', 'Finney',
'efinney36@amazonaws.com', 'F2Zs4hDDn5SE', 376);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (116, 'Aldwin', 'Rootes',
'arootes37@narod.ru', 'y2VYinIG8m', 206);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (117, 'Rudiger', 'Knevit',
'rknevit38@vkontakte.ru', 'lZiEyz', 74);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (118, 'Cherie', 'Drysdell',
'cdrysdell39@photobucket.com', 'XnzF6o', 250);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (119, 'Nevin', 'Adamthwaite',
'nadam@elegantthemes.com', '5jeuUlYtJp', 87);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (120, 'Arney', 'Solway',
'asolway3b@techcrunch.com', 'OFwBhFamAdT', 129);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (121, 'Ernie', 'Posner',
'eposner3c@ed.gov', '4retXIs', 152);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (122, 'Othelia', 'Nisen',
'onisen3d@hugedomains.com', 'bZBnuqj', 474);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (123, 'Roseanne', 'Janowicz',
'rjanowicz3e@upenn.edu', 'Yltcvi', 332);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (124, 'Stephenie', 'Agett',
'sagett3f@nasa.gov', '3SBSIILbR', 205);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (125, 'Persis', 'Siddell',
'psiddell3g@irs.gov', 'HbcnAylW5rP', 166);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (126, 'Benedikt', 'Richfield',
'brichfield3h@wunderground.com', 'Yllq6SJLk8n', 32);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (127, 'Jedd', 'Shaddick',
'jshaddick3i@cdbaby.com', 'xbhP5QBmeQJL', 217);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (128, 'Jehu', 'Schurcke',
'jschurcke3j@printfriendly.com', 'olumfZMTByp', 486);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (129, 'Denny', 'Hoble',
'dhoble3k@google.com.hk', 'frAlzhBj0t', 202);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (130, 'Ginelle', 'Solly',
'gsolly3l@economist.com', 'og10T8p3QXb', 170);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (131, 'Sidnee', 'Bridgens',
'sbridgens3m@ehow.com', 'N7siAxEd', 39);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (132, 'Joete', 'Wray',
'jwray3n@fc2.com', 'V0caEm2uGO3v', 150);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (133, 'Roxi', 'Effaunt',
'reffaunt3o@cdbaby.com', 'oExLMPcaTF8', 245);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (134, 'Myer', 'Splevins',
'msplevins3p@seattletimes.com', '51VTES', 469);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (135, 'Lemar', 'Dahlback',
'ldahlback3q@tuttocitta.it', 'c85tjy7JF', 103);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (136, 'Howie', 'Diche',
'hdiche3r@desdev.cn', 'B21wcrZxAl', 456);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (137, 'Maddalena', 'Maclaine',
'mmaclaine3s@columbia.edu', 'GqwYnHm6Sab', 267);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (138, 'Roxana', 'Mara',
'rmara3t@skyrock.com', 'NdzeEszs9m7', 30);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (139, 'Leslie', 'Rosewarne',
'lrosewarne3u@businessweek.com', 'fU7EfjDx7S', 52);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (140, 'Vivi', 'Novelli',
'vnovelli3v@joomla.org', 'nENselN', 396);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (141, 'Burch', 'Mustin',
'bmustin3w@patch.com', 'sRKfhQ0O2htd', 157);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (142, 'Hally', 'Kruse',
'hkruse3x@ucoz.ru', 'QmT9oqFnV', 37);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (143, 'Bartolomeo', 'Warrack',
'bwarrack3y@ted.com', 'ktvatKBSZrY', 318);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (144, 'Davida', 'Hearl',
'dhearl3z@slideshare.net', 'QvTX2UPx', 99);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (145, 'Silvia', 'Trenam',
'strenam40@patch.com', 'DwMfLGjK', 220);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (146, 'Silvio', 'Godsell',
'sgodsell41@apache.org', 'Fr0TXa', 459);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (147, 'Seumas', 'Bugdall',
'sbugdall42@upenn.edu', 'blXUy1lGSKwh', 210);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (148, 'Bradford', 'Pietrzyk',
'bpietrzyk43@tuttocitta.it', 'P7Euo2', 42);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (149, 'Alikee', 'McMorran',
'amcmorran44@geocities.com', 'qQmHAD', 472);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (150, 'Alicia', 'Tickel',
'atickel45@dailymail.co.uk', 'e2xdlUI', 270);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (151, 'Marmaduke', 'Buckham',
'mbuckham46@slate.com', 'UAvJei', 363);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (152, 'Nicolai', 'Sprowles',
'nsprowles47@chronoengine.com', 'SpVPca', 376);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (153, 'Kean', 'Cleef',
'kcleef48@1688.com', 'Kq4rkD6Yx4', 63);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (154, 'Arlie', 'Tyrrell',
'atyrrell49@apple.com', '9R3gJVZ3aNY', 490);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (155, 'Karylin', 'Alldre',
'kalldre4a@tripadvisor.com', '0fdLmcg2fyA', 156);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (156, 'Eberto', 'Adrienne',
'eadrienne4b@oracle.com', '0hL3LQsKqimv', 392);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (157, 'Walt', 'Pavis',
'wpavis4c@blogs.com', 'KncXGpU', 89);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (158, 'Durant', 'Sesser',
'dsesser4d@bluehost.com', '63H2oK8tW6', 268);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (159, 'Waring', 'Creeber',
'wcreeber4e@about.me', 'kNW4GUAzgafN', 421);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (160, 'Mallissa', 'Cardello',
'mcardello4f@netscape.com', 'ezi45ClZmi', 13);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (161, 'Langston', 'Godden',
'lgodden4g@meetup.com', 'Xfdkk18I', 178);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (162, 'Flo', 'Johannes',
'fjohannes4h@google.es', 'nKdLXxLbUAb', 467);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (163, 'Edita', 'Mayfield',
'emayfield4i@google.ca', 'w3gxaA1NO', 174);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (164, 'Joshua', 'Boulder',
'jboulder4j@dell.com', 'OWzZOBUuyH', 416);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (165, 'Denver', 'Yurenev',
'dyurenev4k@hhs.gov', 'YT5lUCczfP', 25);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (166, 'Marjorie', 'Warr',
'mwarr4l@rambler.ru', 'nwhDk5m4Kefa', 481);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (167, 'Sam', 'Skocroft',
'sskocroft4m@cafepress.com', 'T0plF0JcGmnA', 266);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (168, 'Francyne', 'Yanov',
'fyanov4n@state.gov', 'yo5mfuZfl', 406);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (169, 'Ellynn', 'Jobe',
'ejobe4o@wikipedia.org', 'T1IIqus', 485);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (170, 'Lotty', 'Linham',
'llinham4p@dot.gov', 'mOsVre', 451);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (171, 'Gillie', 'Wauchope',
'gwauchope4q@discovery.com', 'Ez3dN9M6d1', 148);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (172, 'Kacie', 'Wyd',
'kwyd4r@slashdot.org', 'gfRGnsBLv0', 216);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (173, 'Kirk', 'Tows',
'ktows4s@shop-pro.jp', 'Lf3uZn9Kn1Q', 171);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (174, 'Edsel', 'Glason',
'eglason4t@photobucket.com', 'N8Yxy5PZin', 498);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (175, 'Tadeo', 'Rediers',
'trediers4u@usnews.com', 'rnVSH5YyCwQ', 329);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (176, 'Madelina', 'Kopps',
'mkopps4v@imgur.com', 'bNo0x3I', 189);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (177, 'Rita', 'Solomon',
'rsolomon4w@phpbb.com', 'l9Wsxsf', 128);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (178, 'Ludovika', 'Cesco',
'lcesco4x@unc.edu', 'VFmmxVrOtsy', 465);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (179, 'Eberhard', 'Aldiss',
'ealdiss4y@infoseek.co.jp', 'KggoFp', 49);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (180, 'Karlik', 'Strongman',
'kstrongman4z@networ.org', 'VJjNns5w1', 134);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (181, 'Marlin', 'Gorden',
'mgorden50@narod.ru', 'JHBwyOiHG', 124);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (182, 'Sandy', 'Grimestone',
'sgrimestone51@unicef.org', 'AnEcYy9tVay', 140);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (183, 'Wanda', 'Kenrat',
'wkenrat52@pbs.org', 'rJ68C01', 404);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (184, 'Webster', 'Spivey',
'wspivey53@phpbb.com', 'XAtwCjNlQp', 281);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (185, 'Melissa', 'Shermore',
'mshermore54@forbes.com', 'rk0IbPClN', 348);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (186, 'Langston', 'Ivanyushkin',
'livanyushkin55@phpbb.com', 'GbgjTg', 412);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (187, 'Maryrose', 'Stolting',
'mstolting56@cocolog-nifty.com', 'GDWtPk2', 394);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (188, 'Carlin', 'Axelbee',
'caxelbee57@usatoday.com', 'dxLRHBMdRM', 192);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (189, 'Enos', 'Landall',
'elandall58@ca.gov', '0rupHC5', 13);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (190, 'Joceline', 'Suffield',
'jsuffield59@smh.com.au', 't0UJzXCXrctn', 350);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (191, 'Daisie', 'Ettels',
'dettels5a@google.co.jp', '24USYtWE5Nu', 108);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (192, 'Fremont', 'McArtan',
'fmcartan5b@pbs.org', 'x8Lkrt1Lf3y', 436);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (193, 'Cristi', 'Aldrich',
'caldrich5c@yelp.com', '85YQuJ5emi', 209);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (194, 'Demetrius', 'Jennions',
'djennions5d@bizjournals.com', 'hJcXplRGI', 76);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (195, 'Michel', 'Cloy',
'mcloy5e@hao123.com', 'DQ7rjGGgKwTM', 491);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (196, 'Kerianne', 'Michelle',
'kmichelle5f@mediafire.com', 'xznQv0roFjwe', 380);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (197, 'Hollie', 'De Avenell',
'hdeavenell5g@w3.org', 'g9M7HF4X', 479);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (198, 'Sheelah', 'Longstaff',
'slongstaff5h@contact.com', 'SaQNV2rUE4f0', 197);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (199, 'Wyatt', 'Theaker',
'wtheaker5i@mapquest.com', 'NAnim5Fy', 304);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (200, 'Coretta', 'Boick',
'cboick5j@ehow.com', 'sOiS8xyGfKW', 13);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (201, 'Augy', 'Foch',
'afoch5k@china.com.cn', 'ec3pUaGtiT', 383);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (202, 'Dru', 'Jagiela',
'djagiela5l@earthlink.net', '9gbv59iUd', 443);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (203, 'Jaine', 'Pizer',
'jpizer5m@blogs.com', 'wWBLhaf1', 125);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (204, 'Bette-ann', 'Chasier',
'bchasier5n@typepad.com', 'rmkzufHLe', 213);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (205, 'Nero', 'Stansby',
'nstansby5o@wsj.com', 'DuNmarKyLkp', 159);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (206, 'Mace', 'Mattam',
'mmattam5p@miitbeian.gov.cn', 'yHTsPQydK', 97);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (207, 'Nikolos', 'Henrion',
'nhenrion5q@drupal.org', '2aRoIW', 313);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (208, 'Britteny', 'Lantaff',
'blantaff5r@economist.com', 'h5V0828RXrPf', 69);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (209, 'Ewell', 'Askell',
'easkell5s@google.cn', 'AyrRKOYNiR', 45);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (210, 'Garrott', 'De Meyer',
'gdemeyer5t@hc360.com', 'M7LL4nyWz', 409);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (211, 'Lem', 'Garaghan',
'lgaraghan5u@home.pl', '9ZUMsgF5R5', 200);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (212, 'Rinaldo', 'Reinert',
'rreinert5v@a8.net', 'qPhUQEW', 7);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (213, 'Charmine', 'D''Aeth',
'cdaeth5w@wisc.edu', 'fao0qorOBL9G', 341);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (214, 'Brooke', 'Muscroft',
'bmuscroft5x@craigslist.org', 'SB4cbn0y', 229);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (215, 'Margarette', 'Randlesome',
'mrandlesome5y@blogspot.com', 'mCxXn9N', 241);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (216, 'Giffer', 'Badcock',
'gbadcock5z@netscape.com', 'hjIomMe07k', 260);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (217, 'Lindsey', 'Scaddon',
'lscaddon60@pages.fr', 'hfb1PpGHnap', 228);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (218, 'Joanna', 'Murtagh',
'jmurtagh61@accuweather.com', 'NCAXqJ5c', 458);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (219, 'Michael', 'Berling',
'mberling62@harvard.edu', 'JBTsjSb', 325);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (220, 'Lanie', 'Barkes',
'lbarkes63@myspace.com', 'fc5QiGfq', 150);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (221, 'Yelena', 'Garling',
'ygarling64@ebay.com', 'dH5mxu3n89', 322);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (222, 'Erick', 'Gofforth',
'egofforth65@wordpress.com', 'Sn84CJy', 124);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (223, 'Pearce', 'Nurdin',
'pnurdin66@spotify.com', 'HSGaSM', 446);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (224, 'Desirae', 'Rauprich',
'drauprich67@google.cn', 'ahnGt4go4CN', 437);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (225, 'Upton', 'Capoun',
'ucapoun68@goo.ne.jp', 'HDkUCaHzA', 451);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (226, 'Ivie', 'Whatmough',
'iwhatmough69@sfgate.com', 'AdR1cV', 35);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (227, 'Lincoln', 'Stretton',
'lstretton6a@auda.org.au', 'lZLlx7CtkRQo', 294);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (228, 'Regen', 'Friedenbach',
'rfriedenbach6b@reuters.com', 'vOUj1YtE', 344);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (229, 'Egan', 'McMaster',
'emcmaster6c@google.com.au', '2AgtdmYuBn3', 82);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (230, 'Craggie', 'Swenson',
'cswenson6d@chicagotribune.com', 'GQvViISeH5Z', 61);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (231, 'Aprilette', 'McVane',
'amcvane6e@skype.com', '6FKQkvu1', 22);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (232, 'Wat', 'Pembridge',
'wpembridge6f@aol.com', '99JUSi', 151);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (233, 'Carree', 'Gorry',
'cgorry6g@surveymonkey.com', 'aKcO6810r', 499);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (234, 'Daren', 'Oxbrow',
'doxbrow6h@sogou.com', 'PCldxvOXp', 129);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (235, 'Brennan', 'Lordon',
'blordon6i@photobucket.com', 'ia6UDPBva', 362);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (236, 'Darnell', 'Gallehock',
'dgallehock6j@narod.ru', '9BD3MyLWk3', 415);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (237, 'Franchot', 'Fawloe',
'ffawloe6k@alibaba.com', 'EzIiwl7yU', 327);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (238, 'Tamiko', 'Sollett',
'tsollett6l@wsj.com', '35UaHb', 302);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (239, 'Clayson', 'Richards',
'crichards6m@vertising.org', '6sxpiwREMGy', 142);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (240, 'Donny', 'Edgeson',
'dedgeson6n@friendfeed.com', 'qyZ7Jh', 13);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (241, 'Meggie', 'Greenhalf',
'mgreenhalf6o@hexun.com', '9IN7LS', 343);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (242, 'Livvyy', 'Abbate',
'labbate6p@plala.or.jp', 'ZQEEHpN8itH', 457);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (243, 'Ambrosio', 'Robottham',
'arobottham6q@indiegogo.com', 'oTAjzSpYH533', 108);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (244, 'Cosette', 'Rouse',
'crouse6r@theglobeandmail.com', 'bjg3f6BkVa', 66);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (245, 'Dalenna', 'De Michetti',
'ddemichetti6s@wikispaces.com', 'CgcPWg', 38);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (246, 'Joshia', 'Covil',
'jcovil6t@naver.com', '6od6IG', 126);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (247, 'Bucky', 'Geaveny',
'bgeaveny6u@shutterfly.com', 'pQa6vu', 422);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (248, 'Rayshell', 'Adamowitz',
'radamowitz6v@ocn.ne.jp', '7ybWJjV8M', 475);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (249, 'Nelli', 'Hercules',
'nhercules6w@google.ca', 'QJxCw9jfsjqh', 131);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (250, 'Aridatha', 'Marquez',
'amarquez6x@linkedin.com', 'kmorXn5GZ', 54);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (251, 'Karlis', 'Hembrow',
'khembrow6y@princeton.edu', 'DmfU0VKTrPU', 179);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (252, 'Alexio', 'Ruddell',
'aruddell6z@amazon.co.jp', 'fLSxHd97o7I5', 437);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (253, 'Ferrell', 'Jzak',
'fjzak70@tripadvisor.com', 'DUdWhj', 220);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (254, 'Kevina', 'Coltart',
'kcoltart71@wufoo.com', 'VSeNPSRg', 216);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (255, 'Tybi', 'Lamplugh',
'tlamplugh72@xrea.com', 'K80t7De', 131);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (256, 'Tore', 'Ayres',
'tayres73@nymag.com', '0PqAOjJUlc', 354);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (257, 'Edi', 'Pawnsford',
'epawnsford74@istockphoto.com', 'hqpnW62qFAZ', 232);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (258, 'Flint', 'Barosch',
'fbarosch75@illinois.edu', '4hPem7inf', 482);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (259, 'Whit', 'Boxhill',
'wboxhill76@yahoo.co.jp', 'd3qky8TilB', 425);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (260, 'Tully', 'Gotcliff',
'tgotcliff77@msn.com', '148qgf', 274);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (261, 'Quinlan', 'Rickarsey',
'qrickarsey78@cyberchimps.com', 'kMGTMmNqs8', 251);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (262, 'Koren', 'Minchella',
'kminchella79@163.com', 'snp3rr', 95);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (263, 'Augy', 'Petett',
'apetett7a@histats.com', 'dZn1NB', 336);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (264, 'Lorine', 'Frere',
'lfrere7b@liveinternet.ru', '87k86ircJ', 70);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (265, 'Celia', 'Capoun',
'ccapoun7c@amazonaws.com', 'j3niNDUGI2', 201);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (266, 'Maye', 'Cerman',
'mcerman7d@deviantart.com', 'Cl8OEuIOd', 421);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (267, 'Zacharia', 'Birtchnell',
'zbirtchnell7e@aol.com', 'DwNGaVYJQ', 163);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (268, 'Kasey', 'Yates',
'kyates7f@livejournal.com', 'Vzyv0afsty9', 181);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (269, 'Gene', 'Gratten',
'ggratten7g@epa.gov', 'FTE3jK', 333);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (270, 'Juana', 'Adamolli',
'jadamolli7h@topsy.com', '5UxtMO', 428);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (271, 'Maisie', 'Mattingley',
'mmattingley7i@infoseek.co.jp', 'Jqs1YxX5v', 100);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (272, 'Goldia', 'Hearnes',
'ghearnes7j@tuttocitta.it', 'Ki5BWf6I7P', 85);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (273, 'Deina', 'MacWhan',
'dmacwhan7k@bloglines.com', 'rboXOf45', 399);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (274, 'Nathan', 'Poxson',
'npoxson7l@redcross.org', 'JpJLqAJrYHg', 224);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (275, 'Errick', 'Pedracci',
'epedracci7m@archive.org', '5mkEynf0f', 199);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (276, 'Vanya', 'Coleby',
'vcoleby7n@nature.com', 'WQJXSZ', 98);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (277, 'Freddy', 'Degoy',
'fdegoy7o@google.cn', '3DiCWO', 120);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (278, 'Korie', 'Stonner',
'kstonner7p@qq.com', 'rOCK2NwOh6G7', 305);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (279, 'Tynan', 'MacArthur',
'tmacarthur7q@wiley.com', '0CLOfPv', 499);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (280, 'Miran', 'Bails',
'mbails7r@weather.com', 'z5tAbFXxlbG', 185);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (281, 'Vidovik', 'Pearcehouse',
'vpearcehouse7s@market.com', 'gfodkxBjz', 434);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (282, 'Urbain', 'Mauger',
'umauger7t@wiley.com', '1OoPv58oTt', 276);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (283, 'Marthena', 'Breinlein',
'mbreinlein7u@squarespace.com', 'Dtf5ZqN8W', 65);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (284, 'Talbot', 'Rykert',
'trykert7v@shop-pro.jp', '3pOX8L', 324);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (285, 'Lila', 'Goaks',
'lgoaks7w@flickr.com', '3zZR00wy4B', 342);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (286, 'Rey', 'Bilbrooke',
'rbilbrooke7x@wikispaces.com', 'mQxGei5Q3gWc', 157);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (287, 'Gerardo', 'Huggan',
'ghuggan7y@yellowpages.com', 'pbBPchMUl', 299);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (288, 'Jordain', 'Bernardeschi',
'jbernardeschi7z@ft.com', 'wFJkdqqro', 99);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (289, 'Madeleine', 'Waddilove',
'mwaddilove80@wordpress.org', 'wexRwn', 192);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (290, 'Basilio', 'Bowcock',
'bbowcock81@yahoo.com', 's1SPNZB2d', 437);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (291, 'Berk', 'Hindmore',
'bhindmore82@addthis.com', 'YDCTby2zCq8N', 348);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (292, 'Mordy', 'Vickarman',
'mvickarman83@reference.com', 'EV4stvNO', 274);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (293, 'Micah', 'St. John',
'mstjohn84@nasa.gov', 'lpolje9zX8o', 191);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (294, 'Meagan', 'Tonnesen',
'mtonnesen85@howstuffworks.com', 'XuDlIns', 211);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (295, 'Dick', 'Spellissy',
'dspellissy86@ocn.ne.jp', 'b6ddb9kae', 132);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (296, 'Giacopo', 'Vaen',
'gvaen87@rakuten.co.jp', 'lfH2Icrb', 195);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (297, 'Jacob', 'Bolmann',
'jbolmann88@google.com.br', 'Uhxg9Sb0mgG', 291);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (298, 'Ronnie', 'Thornewill',
'rthornewill89@paypal.com', 'VZ3EEFhkPhFG', 428);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (299, 'Cordy', 'Judge',
'cjudge8a@upenn.edu', 'REwBLAKW2', 122);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (300, 'Crissie', 'Dyers',
'cdyers8b@rakuten.co.jp', '2UNXPXJ5tWm8', 449);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (301, 'Haroun', 'McConnel',
'hmcconnel8c@ocn.ne.jp', 'QDvfW0IqLhk', 201);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (302, 'Syman', 'Wintour',
'swintour8d@uiuc.edu', '4RzWXlUeGs', 150);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (303, 'Annie', 'Gellately',
'agellately8e@prnewswire.com', 'wO7p4bPBHM8', 116);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (304, 'Simeon', 'Liddall',
'sliddall8f@hatena.ne.jp', 'XyDFScfP', 205);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (305, 'Barbra', 'Talbot',
'btalbot8g@howstuffworks.com', 'zW2fxfm', 43);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (306, 'Romona', 'Grahlman',
'rgrahlman8h@scientific.com', '7GIv2cLgB', 220);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (307, 'Margie', 'Hylands',
'mhylands8i@360.cn', 'vnsOEFP', 270);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (308, 'Christie', 'Farman',
'cfarman8j@aboutads.info', '9g46zSUZ7UEg', 158);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (309, 'Paula', 'Simes',
'psimes8k@cnet.com', 'bSoC0u7un4Ns', 195);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (310, 'Reuben', 'Grombridge',
'rgrombridge8l@flickr.com', 'kVu7uGab9', 381);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (311, 'Buddie', 'Cafferty',
'bcafferty8m@hostgator.com', 'YAG7p7wLO', 212);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (312, 'Roz', 'Schruyer',
'rschruyer8n@answers.com', 'jeKjicwEPdB', 187);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (313, 'Garrott', 'Basindale',
'gbasindale8o@senate.gov', 'SCdXnhyc38', 246);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (314, 'Mala', 'Dwyer',
'mdwyer8p@ehow.com', 'Itxh2fB4Qh', 105);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (315, 'Jordana', 'Youngman',
'jyoungman8q@jimdo.com', '7bGND9eidP6R', 313);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (316, 'My', 'McCallion',
'mmccallion8r@dagondesign.com', 'VRGgHmv', 66);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (317, 'Frieda', 'Lambersen',
'flambersen8s@123-reg.co.uk', '1JtcReOzi', 33);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (318, 'Che', 'McWhirter',
'cmcwhirter8t@usgs.gov', 'HQraEMMBjR', 399);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (319, 'Theobald', 'Simmons',
'tsimmons8u@blogtalkradio.com', '8HJ57Bk8iMl', 36);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (320, 'Carlin', 'Camillo',
'ccamillo8v@soup.io', 'HAaSbTk', 91);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (321, 'Kare', 'Doohey',
'kdoohey8w@sphinn.com', '7gsfl0vgYlB', 31);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (322, 'Norine', 'Gason',
'ngason8x@tinyurl.com', 'DJpwtiZxZv3K', 267);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (323, 'Jakie', 'Surmon',
'jsurmon8y@exblog.jp', 'ljcLSt', 169);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (324, 'Corey', 'Dix',
'cdix8z@netvibes.com', 'mYNIMbG', 190);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (325, 'Ardelis', 'Dinnis',
'adinnis90@behance.net', 'tI4C8P2CrFZe', 123);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (326, 'Kalinda', 'Potteril',
'kpotteril91@hugedomains.com', 'gMDpWn', 116);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (327, 'Calida', 'Esom',
'cesom92@unblog.fr', 'db66SEMY0jtJ', 445);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (328, 'Lillian', 'Siss',
'lsiss93@mashable.com', '58gzOOK8FCOT', 390);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (329, 'Martainn', 'Girvin',
'mgirvin94@umn.edu', 'PzTp0VJECc', 251);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (330, 'Hans', 'Sleigh',
'hsleigh95@boston.com', 'gACQg1XtYNE', 301);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (331, 'Valle', 'O'' Dornan',
'vodornan96@japanpost.jp', '4gLgiMb', 105);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (332, 'Lannie', 'Vogelein',
'lvogelein97@spiegel.de', 'HYP0Yoe', 274);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (333, 'Fidole', 'Ayrs',
'fayrs98@360.cn', '4pS5cqDtGjX', 417);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (334, 'Lizzie', 'Pund',
'lpund99@godaddy.com', 'iaWdu0AjJ', 411);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (335, 'Abram', 'Semrad',
'asemrad9a@admin.ch', 'hcUYmQNCQr', 328);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (336, 'Doe', 'Bolgar',
'dbolgar9b@friendfeed.com', 'ShnApn46', 87);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (337, 'Darci', 'Cracoe',
'dcracoe9c@1und1.de', '8NDbXVPV', 198);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (338, 'Warden', 'Sinson',
'wsinson9d@noaa.gov', '0aoYqFPj3j', 172);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (339, 'Hew', 'Basset',
'hbasset9e@nature.com', 'NlF3Yk', 333);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (340, 'Dewey', 'Allatt',
'dallatt9f@paypal.com', 'aa6d9YP', 481);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (341, 'Franky', 'Shoubridge',
'fshoubridge9g@merriam.com', 'AG61Yz12', 33);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (342, 'Thom', 'Lysons',
'tlysons9h@yahoo.com', 'BQOcpHy', 49);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (343, 'Josefina', 'Kenwrick',
'jkenwrick9i@google.com.br', '3TMJ96ekrZiE', 494);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (344, 'Raychel', 'Shankster',
'rshankster9j@answers.com', 'akriC1hQ5H', 358);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (345, 'Porter', 'Kyrkeman',
'pkyrkeman9k@about.me', 'NoQCkp8qVv', 54);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (346, 'Calypso', 'Leaman',
'cleaman9l@globo.com', '1xjiJ0RX', 47);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (347, 'Ardine', 'Togher',
'atogher9m@imgur.com', 'Ni4HtRHtI', 300);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (348, 'Horacio', 'Alanbrooke',
'halanbrooke9n@opera.com', 'jHHmw9w', 321);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (349, 'Jasmin', 'Maddie',
'jmaddie9o@epa.gov', 'Cyjcgm', 247);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (350, 'Joline', 'Nabbs',
'jnabbs9p@shutterfly.com', 'sUO09H2mswe', 130);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (351, 'Averyl', 'Pinniger',
'apinniger9q@thetimes.co.uk', 'I4vQv5Um3bE', 65);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (352, 'Elfie', 'Castanyer',
'ecastanyer9r@cyberchimps.com', 'Tz7nU2', 155);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (353, 'Darrell', 'Langland',
'dlangland9s@trellian.com', 'UWSq4cU', 56);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (354, 'Timoteo', 'Whoston',
'twhoston9t@ask.com', 'QshkYWTppkp', 169);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (355, 'Giustina', 'Gillan',
'ggillan9u@yale.edu', 'ns0HHdU2ap', 126);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (356, 'Stefa', 'Redler',
'sredler9v@hatena.ne.jp', 'o5fbIB5BZxI6', 115);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (357, 'Gill', 'Roncelli',
'groncelli9w@163.com', 'oVW6IkhZlg', 482);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (358, 'Constantine', 'Annion',
'cannion9x@hud.gov', '7Ka6pjpMnx', 224);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (359, 'Garold', 'Cossington',
'gcossington9y@g.co', 'o3ZRxFYP1PvZ', 102);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (360, 'Iggie', 'MacMorland',
'imacmorland9z@house.gov', 'MDIzug', 294);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (361, 'Dylan', 'Finlay',
'dfinlaya0@blogspot.com', 'cbn86nxVy', 161);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (362, 'Roderic', 'Blancowe',
'rblancowea1@go.com', 'KPzE0Vvn', 238);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (363, 'Glenden', 'Sholl',
'gsholla2@epa.gov', 'hHvXeHW3L', 180);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (364, 'Rip', 'Scourfield',
'rscourfielda3@tripadvisor.com', 'E6RXjXHjzH', 175);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (365, 'Christabella', 'Sermin',
'csermina4@unblog.fr', 'QhoeGGm', 484);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (366, 'Willabella', 'McAdam',
'wmcadama5@smh.com.au', 'rIu5DLDFj', 462);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (367, 'Flora', 'Chismon',
'fchismona6@redcross.org', 'AiAgANeL4p', 302);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (368, 'Carlene', 'Traviss',
'ctravissa7@seesaa.net', 'ldjy4V7', 86);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (369, 'Winnah', 'Cuniam',
'wcuniama8@homestead.com', 'XDiwEnS2J4', 289);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (370, 'Corabel', 'Eard',
'cearda9@nytimes.com', 'rtwNo6lYH', 297);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (371, 'Chance', 'Traher',
'ctraheraa@hao123.com', '0tO3FsGY5Qd', 94);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (372, 'Ilario', 'Blanque',
'iblanqueab@1und1.de', 'YfcPcCJhU', 105);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (373, 'Charmion', 'Alloway',
'callowayac@va.gov', 'ARqZb23xs', 239);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (374, 'Lura', 'Vereker',
'lverekerad@hhs.gov', '6FICkezpYt6P', 25);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (375, 'Thelma', 'Cragg',
'tcraggae@ning.com', '1LxVJQxT', 450);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (376, 'Lisha', 'Fossitt',
'lfossittaf@vimeo.com', 'irNDuUh12QWa', 480);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (377, 'Pascale', 'Birchenough',
'pbirchenoughag@time.com', 'jjwH25lVABC', 164);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (378, 'Stephannie', 'Southwick',
'ssouthwickah@ucsd.edu', 'bXKbh6w', 107);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (379, 'Dynah', 'Sizland',
'dsizlandai@instagram.com', 'i0TEh2Y7CK', 474);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (380, 'Ashlen', 'Casey',
'acaseyaj@economist.com', 'BqYsQ34', 490);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (381, 'Merrilee', 'Aldersea',
'malderseaak@weebly.com', 'aW3RIw', 154);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (382, 'Kinnie', 'Pankethman',
'kpankethmanal@machines.org', 'SiWjhN6mla4', 302);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (383, 'Eamon', 'Olivier',
'eolivieram@phpbb.com', 'EPwKuiOH', 102);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (384, 'Darrick', 'Kirkbride',
'dkirkbridean@amazonaws.com', 'ug5zphe8', 307);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (385, 'Germaine', 'Bettesworth',
'gbettesworthao@si.edu', 'az6wPQAFT5z', 312);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (386, 'Ricoriki', 'Auguste',
'raugusteap@yellowpages.com', 'wH1Zu8Yl4', 415);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (387, 'Arnuad', 'Seth',
'asethaq@fda.gov', '8aGykJ4', 33);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (388, 'Pamella', 'Troubridge',
'ptroubridgear@phpbb.com', 'fhl5UXmhKx', 290);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (389, 'Lemuel', 'Bartoszek',
'lbartoszekas@yale.edu', 'GBlrKZ', 66);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (390, 'Bev', 'Owlner',
'bowlnerat@wikia.com', 'tfPUYSm', 70);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (391, 'Melissa', 'Luther',
'mlutherau@ox.ac.uk', '12Y2odrbwsBf', 83);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (392, 'Ignacio', 'Messum',
'imessumav@google.com.br', 'zCc21U4W', 153);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (393, 'Winfield', 'Tithecott',
'wtithecottaw@oracle.com', 't1Jrv8h', 293);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (394, 'Ilse', 'Carayol',
'icarayolax@baidu.com', 'BnCNzaEf', 112);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (395, 'Annabelle', 'Twinterman',
'atwintermanay@istockphoto.com', 'fNGgrpBL', 315);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (396, 'Jourdain', 'Huddlestone',
'jhuddlestoneaz@umn.edu', 'avKaKMgbgp', 101);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (397, 'Myrtia', 'Amoss',
'mamossb0@ed.gov', 'p9jFKZdL', 20);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (398, 'Klemens', 'Meriot',
'kmeriotb1@nasa.gov', '66wbVXADk', 118);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (399, 'Morley', 'Neve',
'mneveb2@twitpic.com', 'aR2eaet9A99', 247);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (400, 'Rosette', 'MacCambridge',
'rmaccambridgeb3@mediafire.com', 'bbFRLC5tA', 376);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (401, 'Sheena', 'Cleyburn',
'scleyburnb4@scribd.com', '6MaghOcV7tc', 415);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (402, 'Gertrude', 'Roath',
'groathb5@fotki.com', 'u8iknZKhQ', 360);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (403, 'Bertine', 'Accum',
'baccumb6@exblog.jp', 'bodSrBcTR', 43);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (404, 'Aylmer', 'Silveston',
'asilvestonb7@network.org', 'oEPukJv', 186);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (405, 'Perkin', 'Kedie',
'pkedieb8@about.me', '0ze7XBnGcP2C', 490);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (406, 'Trueman', 'Cattanach',
'tcattanachb9@blogspot.com', 'Xh3qrDK', 418);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (407, 'Forrester', 'Croney',
'fcroneyba@hao123.com', 'ImmTosy', 22);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (408, 'Dickie', 'Spragg',
'dspraggbb@baidu.com', '7lPLiS3', 383);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (409, 'Brunhilda', 'Goreisr',
'bgoreisrbc@auda.org.au', 'y9Qhk2ZEgG', 293);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (410, 'Edgar', 'Giblin',
'egiblinbd@huffingtonpost.com', 'ZQqOYOPa1p', 419);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (411, 'Sharla', 'Ilyinski',
'silyinskibe@altervista.org', 'NSgXo8t', 350);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (412, 'Rozamond', 'Fleetwood',
'rfleetwoodbf@shutterfly.com', '1JdxE60FNh', 369);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (413, 'Forster', 'Dickerline',
'fdickerlinebg@salon.com', 'o5XbdnFC', 143);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (414, 'Karlik', 'Espino',
'kespinobh@oakley.com', 'z5jayCkusP', 416);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (415, 'Sheffield', 'Vanyarkin',
'svanyarkinbi@stumbleupon.com', 'EZc9ivnR', 74);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (416, 'Diannne', 'Huston',
'dhustonbj@npr.org', 'BLVsYM', 33);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (417, 'Wilona', 'Slyvester',
'wslyvesterbk@so-net.ne.jp', 'EWytmdUfn', 447);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (418, 'Jeannine', 'Joddins',
'jjoddinsbl@thetimes.co.uk', 'v7NmmXAqSDd', 100);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (419, 'Ivory', 'Tidman',
'itidmanbm@posterous.com', 'rTUlC0', 243);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (420, 'Hillery', 'Curee',
'hcureebn@etsy.com', 'Cb2LqeLuIC', 94);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (421, 'Remy', 'Gierek',
'rgierekbo@mozilla.org', 'cQ6sin', 105);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (422, 'Angelle', 'Bloor',
'abloorbp@netlog.com', 'o4PcH1FSz', 49);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (423, 'Anastasia', 'Rippin',
'arippinbq@hostgator.com', 'poHgHCVegQB', 78);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (424, 'Arabelle', 'Stych',
'astychbr@accuweather.com', 'bCltHF3Gw9u', 267);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (425, 'Seana', 'Brosini',
'sbrosinibs@ca.gov', 'PIVxA4', 471);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (426, 'Sutherlan', 'Delia',
'sdeliabt@bloomberg.com', 'sqiDZT', 84);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (427, 'Gerti', 'McAlinden',
'gmcalindenbu@businessweek.com', '4xAD3wDNA', 460);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (428, 'Darsie', 'Orrom',
'dorrombv@reddit.com', 's3ZhI5S8y36', 50);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (429, 'Suzette', 'Izkovici',
'sizkovicibw@wikipedia.org', 'wkYwNwFH', 372);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (430, 'Elroy', 'Elleray',
'eelleraybx@quantcast.com', 'SXF9qQ6fyE2R', 300);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (431, 'Feliks', 'Becker',
'fbeckerby@unesco.org', '03iqDQbaw1C', 446);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (432, 'Ingeberg', 'Cossor',
'icossorbz@patch.com', 'Kalqw1', 237);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (433, 'Faina', 'O''Heyne',
'foheynec0@printfriendly.com', 'eHUVnTtZ', 104);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (434, 'Pascal', 'Siebert',
'psiebertc1@altervista.org', 'TSdEQz', 74);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (435, 'Cherise', 'Carty',
'ccartyc2@friendfeed.com', '7DXJBzY', 272);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (436, 'Rosalinda', 'Morley',
'rmorleyc3@usnews.com', 'xBlkMS82', 127);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (437, 'Nye', 'De Dei',
'ndedeic4@netscape.com', 'Viopa2B', 447);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (438, 'Kirbie', 'Faill',
'kfaillc5@columbia.edu', 'qgidNG', 283);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (439, 'Eda', 'Huban',
'ehubanc6@dedecms.com', 'jM7NwG', 457);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (440, 'Grant', 'Yair',
'gyairc7@google.pl', 'AQejToHqBD', 462);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (441, 'Germain', 'O''Dougherty',
'godoughertyc8@yahoo.co.jp', 'Sw3nFRUtSfg', 375);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (442, 'Hazlett', 'Janovsky',
'hjanovskyc9@twitpic.com', '8XT41jlkZb8', 140);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (443, 'Thedric', 'Oehme',
'toehmeca@squarespace.com', 'aVxFozmPSII', 206);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (444, 'Archer', 'Widdowson',
'awiddowsoncb@businessweek.com', '85suYQa4', 346);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (445, 'Archaimbaud', 'Ben',
'abencc@cbslocal.com', 'a4jRJn27rOS', 311);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (446, 'Alphonse', 'Elecum',
'aelecumcd@altervista.org', 'cG7dv33', 293);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (447, 'Dollie', 'Kervin',
'dkervince@hatena.ne.jp', 'P4Jrj7', 155);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (448, 'Manon', 'Wheble',
'mwheblecf@admin.ch', 'bvPndKa22', 55);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (449, 'Lib', 'Kelleway',
'lkellewaycg@wikimedia.org', 'drV3fmngW', 349);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (450, 'Maggie', 'Catonnet',
'mcatonnetch@vk.com', 'XhILTr', 325);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (451, 'Catrina', 'Eschelle',
'ceschelleci@ft.com', 'vWfBER7sO', 380);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (452, 'Cammie', 'Hiley',
'chileycj@php.net', 'zotpyu4fP8', 173);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (453, 'Christoper', 'Cathel',
'ccathelck@sourceforge.net', 'ohXsDvndkdJa', 380);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (454, 'Rik', 'Kirrens',
'rkirrenscl@cdbaby.com', 'wibYnIHn', 208);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (455, 'Jackqueline', 'Haycraft',
'jhaycraftcm@economist.com', 'VuyqqT', 143);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (456, 'Novelia', 'Vescovini',
'nvescovinicn@wiley.com', 'Sww9VtoUU', 347);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (457, 'Barb', 'Surmeir',
'bsurmeirco@opera.com', 'j8YP91H', 229);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (458, 'Alistair', 'McDarmid',
'amcdarmidcp@i2i.jp', 'MLleRHoNm', 351);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (459, 'Artemis', 'Krout',
'akroutcq@guardian.co.uk', 'sLKnvZ', 59);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (460, 'Darsie', 'Wilber',
'dwilbercr@hud.gov', 'y2c33P', 435);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (461, 'Ricca', 'Stive',
'rstivecs@google.pl', 'gVw0LE26', 136);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (462, 'Niki', 'Wix',
'nwixct@devhub.com', 'e04XPVSFT', 345);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (463, 'Noemi', 'Mackrell',
'nmackrellcu@imgur.com', 'uAuL0tEvK', 413);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (464, 'Danella', 'Knoton',
'dknotoncv@taobao.com', '8JobQWEllvx', 154);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (465, 'Donovan', 'Emsden',
'demsdencw@cloudflare.com', 'uNYhgUz', 62);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (466, 'Valina', 'Libbey',
'vlibbeycx@alexa.com', 'TeKH2KGJMRdi', 402);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (467, 'Hyatt', 'Royston',
'hroystoncy@over-blog.com', 'nYg5Qy8F', 472);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (468, 'Sibylla', 'Ruslin',
'sruslincz@taobao.com', '1elscdbuVBo', 383);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (469, 'Curr', 'Parmley',
'cparmleyd0@newsvine.com', 'Ns0bbS8m2XN', 415);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (470, 'Blithe', 'Figures',
'bfiguresd1@symantec.com', 'Pb2jp3dLVD', 308);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (471, 'Carlina', 'Antonietti',
'cantoniettid2@commons.org', '0rOVqFGUEdbT', 403);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (472, 'Caressa', 'Rhys',
'crhysd3@soup.io', 'pTWcpw', 416);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (473, 'Alexina', 'Landsman',
'alandsmand4@zdnet.com', 'djkPdr', 80);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (474, 'Almira', 'Zecchetti',
'azecchettid5@japanpost.jp', 'kA1u4HblFo', 193);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (475, 'Barri', 'Farrey',
'bfarreyd6@domainmarket.com', 'jL6UZr9w1m', 62);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (476, 'Charla', 'Fulleylove',
'cfulleyloved7@skyrock.com', 'NVv2d45SZRl', 68);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (477, 'Launce', 'Blamphin',
'lblamphind8@buzzfeed.com', 'nSLyYLn', 239);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (478, 'Rubia', 'Hay',
'rhayd9@marketwatch.com', 'uZz8wa0gLr9', 350);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (479, 'Emilia', 'Fettes',
'efettesda@google.com.hk', '7NX8Da', 7);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (480, 'Ami', 'Ianne',
'aiannedb@amazonaws.com', 'VunFWpWMa6', 206);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (481, 'Kristo', 'Figgen',
'kfiggendc@opera.com', 'cqyMaYk', 84);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (482, 'Tiebout', 'Wedmore.',
'twedmoredd@barnesandnoble.com', 'BD7Ahq', 260);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (483, 'Jeramey', 'Raspison',
'jraspisonde@bloomberg.com', 'yrWHQsZ5', 346);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (484, 'Cecily', 'Hamblington',
'chamblingtondf@fotki.com', '9xhovrmDimX', 106);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (485, 'Crissy', 'Dolden',
'cdoldendg@advertising.org', 'pMThPCkircYo', 387);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (486, 'Pavla', 'Mixhel',
'pmixheldh@ihg.com', 'KLDeSxG', 313);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (487, 'Giffy', 'Asche',
'gaschedi@smugmug.com', '0S6MCE', 121);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (488, 'Duffy', 'Ismead',
'dismeaddj@pbs.org', 'bK7nf7n', 219);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (489, 'Celestyna', 'Jelf',
'cjelfdk@army.mil', 'nRNM9g', 141);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (490, 'Minnaminnie', 'Farlam',
'mfarlamdl@nymag.com', 'qc4yOnwZ', 276);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (491, 'Sissy', 'Scanterbury',
'sscanterburydm@apache.org', 'c2HqAFlBe5z6', 172);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (492, 'Sherrie', 'Rodda',
'sroddadn@miibeian.gov.cn', '5kMTYPm4y4', 138);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (493, 'Peadar', 'Whithalgh',
'pwhithalghdo@ted.com', 'ZR4JO21C', 421);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (494, 'Lezlie', 'Brimming',
'lbrimmingdp@homestead.com', 'JklQWCjt8AK', 5);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (495, 'Genvieve', 'Austick',
'gaustickdq@chicagotribune.com', 'TeCPMjl', 335);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (496, 'Muire', 'Pammenter',
'mpammenterdr@wikispaces.com', '0nv3MD', 374);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (497, 'Arther', 'Monks',
'amonksds@smh.com.au', 'mVpqNgt8A6T', 482);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (498, 'Carry', 'Yurenin',
'cyurenindt@merriam-webster.com', 'AwBWOdA', 347);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (499, 'Garold', 'McKibbin',
'gmckibbindu@wordpress.org', 'L13uWFXiG1', 260);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (500, 'Annmaria', 'Burbury',
'aburburydv@is.gd', 'supD5Du', 373);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (501, 'Hobart', 'Gainsford',
'hgainsforddw@chronoengine.com', 'GiMaC49l8cm', 477);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (502, 'Ralf', 'Grainge',
'rgraingedx@wikipedia.org', 'Q9PxvRvx', 439);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (503, 'Emelita', 'Carleton',
'ecarletondy@delicious.com', 'Ioo2Q7S', 279);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (504, 'Dyanne', 'Carse',
'dcarsedz@example.com', 'Gl4MDmw3', 365);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (505, 'Margaret', 'Gate',
'mgatee0@ovh.net', 'PWqDJvV', 63);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (506, 'Wyatan', 'Hevner',
'whevnere1@java.com', '1dSuZG', 419);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (507, 'Lari', 'Gettins',
'lgettinse2@amazon.de', 'QOdhJbMz2Q', 179);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (508, 'Matthaeus', 'Antoniazzi',
'mantoniazzie3@marketwatch.com', '0v4KdzD4j1', 144);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (509, 'Karlyn', 'Dhenin',
'kdhenine4@tinypic.com', 'WCJefeJTO', 139);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (510, 'Trudy', 'Karby',
'tkarbye5@techcrunch.com', 'qai9yFfgz87k', 395);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (511, 'Glennis', 'Wixey',
'gwixeye6@google.co.jp', 'Zx7uYzIOqyBk', 66);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (512, 'Efren', 'Wilgar',
'ewilgare7@miitbeian.gov.cn', 'q1wNaaCkTY', 133);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (513, 'Roanne', 'Treneman',
'rtrenemane8@stumbleupon.com', 'FPZQFIMg', 104);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (514, 'Isabella', 'Malley',
'imalleye9@oracle.com', 'ECW7LEudVGf', 153);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (515, 'Kassey', 'De Cruz',
'kdecruzea@scribd.com', '6VxzwW', 181);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (516, 'Peadar', 'Murphy',
'pmurphyeb@vistaprint.com', 'sFodbnOi', 83);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (517, 'Aguie', 'Pavelin',
'apavelinec@engadget.com', 'YmuFLGjWjBQ', 476);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (518, 'Hortensia', 'Cassam',
'hcassamed@devhub.com', 'IakuUw', 481);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (519, 'Katalin', 'Filipov',
'kfilipovee@wufoo.com', 'ewnQQ9FjrvVP', 160);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (520, 'Bill', 'Itschakov',
'bitschakovef@tripadvisor.com', 'Dw8XAZ3', 98);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (521, 'Gibb', 'Gluyas',
'ggluyaseg@psu.edu', '0P1wOFjhGDlR', 467);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (522, 'Wait', 'Castagneri',
'wcastagnerieh@qq.com', 'qnv6DDdXBn', 387);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (523, 'Gus', 'Tarbath',
'gtarbathei@tumblr.com', 'v1ReMKJucXB', 287);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (524, 'Suzy', 'Seely',
'sseelyej@yandex.ru', '8DrJ0fG', 21);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (525, 'Mireielle', 'Faux',
'mfauxek@microsoft.com', 'NVavrps79', 396);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (526, 'Tymothy', 'Fradson',
'tfradsonel@ucoz.com', '5dof4V', 271);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (527, 'Kim', 'Barke',
'kbarkeem@umn.edu', 'xPgx3vrlXr', 44);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (528, 'Olympe', 'Franzke',
'ofranzkeen@pen.io', 'tpLXoL', 87);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (529, 'Juliane', 'Wigfield',
'jwigfieldeo@ca.gov', 'UcsFbKOVk9gH', 194);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (530, 'Raleigh', 'Feldberg',
'rfeldbergep@ucla.edu', 'fkeVbys3p', 244);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (531, 'Cherlyn', 'Nichols',
'cnicholseq@adobe.com', 'Uy5k2XZ', 119);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (532, 'Hatty', 'Roggerone',
'hroggeroneer@vk.com', 'tgCA5MSZsw', 63);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (533, 'Marley', 'Naul',
'mnaules@reference.com', 'UfrUly', 153);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (534, 'Rosco', 'Brandone',
'rbrandoneet@furl.net', '0U3wCgCAHGh', 374);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (535, 'Merwyn', 'Quarterman',
'mquartermaneu@irs.gov', 'dofu3y7FHKx', 457);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (536, 'Hollis', 'Triebner',
'htriebnerev@tinypic.com', 'xWiunYXQK', 30);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (537, 'Jeana', 'McKevitt',
'jmckevittew@blogs.com', 'gXgVDo7lnSaq', 415);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (538, 'Cobby', 'De Meyer',
'cdemeyerex@nasa.gov', 'rDXMl1CD3', 178);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (539, 'Auguste', 'Peddel',
'apeddeley@bloomberg.com', 'autmmITeh', 203);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (540, 'Eula', 'Hartropp',
'ehartroppez@goo.ne.jp', 'KcOauos', 107);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (541, 'Abigael', 'Haversham',
'ahavershamf0@nasa.gov', 'snQc7Bb', 173);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (542, 'Bendite', 'Talkington',
'btalkingtonf1@edublogs.org', 'dIKGbuYIz', 426);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (543, 'Priscella', 'Ferrier',
'pferrierf2@arizona.edu', 'uSqnso', 55);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (544, 'Bob', 'Dossantos',
'bdossantosf3@wisc.edu', 'kGT58AYcVFyq', 22);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (545, 'Ursuline', 'MacGilmartin',
'umacgilmartinf4@mtv.com', 'NdaaelhJIC8C', 441);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (546, 'Melli', 'Jee',
'mjeef5@spiegel.de', 'VVjoaiUtFa', 48);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (547, 'Noak', 'McAndrew',
'nmcandrewf6@slate.com', '0icm3YLS', 388);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (548, 'Nikaniki', 'Parradine',
'nparradinef7@jigsy.com', 'ud0erHRJK', 454);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (549, 'Shurlocke', 'Warby',
'swarbyf8@netscape.com', 'bGTebaxEZ3Sp', 271);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (550, 'Carmine', 'Kidstone',
'ckidstonef9@ifeng.com', 'by2hagKp', 132);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (551, 'Bram', 'Petrollo',
'bpetrollofa@mlb.com', 'aZ1vTCSR', 454);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (552, 'Geoff', 'Jinkin',
'gjinkinfb@ovh.net', 'L9jjQnc4', 294);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (553, 'Ara', 'Chafney',
'achafneyfc@barnesandnoble.com', 'CLsisiI', 277);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (554, 'Celestia', 'Deveraux',
'cdeverauxfd@1und1.de', 'Wdxo4jB8', 179);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (555, 'Eleanore', 'Boss',
'ebossfe@yahoo.co.jp', '6MiOyFg', 70);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (556, 'Brody', 'Cowup',
'bcowupff@amazon.com', 'JlstZ84e', 249);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (557, 'Nonah', 'Beverley',
'nbeverleyfg@pbs.org', 'hdZfAisW', 162);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (558, 'Cristin', 'Pilger',
'cpilgerfh@linkedin.com', 'U634fCN89', 224);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (559, 'Paddie', 'Gaul',
'pgaulfi@furl.net', 'hO6apU0', 440);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (560, 'Wanids', 'Reitenbach',
'wreitenbachfj@stumbleupon.com', 'S6UQD4rP', 53);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (561, 'Daile', 'Jorry',
'djorryfk@vinaora.com', 'mQUNktebim', 483);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (562, 'Horten', 'Dorwood',
'hdorwoodfl@nhs.uk', 'H8eO6vgPQ', 389);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (563, 'Janina', 'Benoit',
'jbenoitfm@w3.org', '5LztmNT', 254);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (564, 'Celestina', 'Tight',
'ctightfn@cornell.edu', 'p38SFdD', 99);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (565, 'Sherri', 'Whitnall',
'swhitnallfo@apple.com', '8WFpikp2mT', 436);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (566, 'Lindsay', 'McNabb',
'lmcnabbfp@edublogs.org', '2Vcw2bc', 441);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (567, 'Damian', 'Diggons',
'ddiggonsfq@jimdo.com', '21CMjfObf2tO', 102);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (568, 'Farica', 'Minchindon',
'fminchindonfr@sohu.com', 'MridDMPREX', 378);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (569, 'Atalanta', 'Frude',
'afrudefs@hatena.ne.jp', 'LtW7JgnkGKK', 325);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (570, 'Udale', 'Garfath',
'ugarfathft@wunderground.com', 'rfaN2vRMDvPo', 166);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (571, 'Belvia', 'Kiffe',
'bkiffefu@liveinternet.ru', 'HB7TiL', 372);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (572, 'Kennith', 'Trundler',
'ktrundlerfv@domainmarket.com', 'Gf3ROvySYZx', 182);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (573, 'Ranique', 'Gipps',
'rgippsfw@free.fr', '7C6NNWDMAKs8', 310);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (574, 'Fanechka', 'Tubritt',
'ftubrittfx@miitbeian.gov.cn', '9p7O708ABHIJ', 356);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (575, 'Livvyy', 'Pledge',
'lpledgefy@wired.com', 'LyJ4LLsP', 429);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (576, 'Rheba', 'Shadfourth',
'rshadfourthfz@earthlink.net', 'ad6gi7f', 22);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (577, 'Margalit', 'Hayfield',
'mhayfieldg0@wix.com', 'YVZLxQ', 389);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (578, 'Rockwell', 'Pimblott',
'rpimblottg1@si.edu', 'MSfAJf', 107);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (579, 'Simonette', 'Dmitr',
'sdmitrg2@vk.com', 'bRFGZOmx', 28);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (580, 'Lucienne', 'Sallis',
'lsallisg3@nytimes.com', '0OD4850F', 253);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (581, 'Marilyn', 'Simmonite',
'msimmoniteg4@shop-pro.jp', 'keyt68M', 297);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (582, 'Corrianne', 'Atkyns',
'catkynsg5@boston.com', 'uSFvJBq', 30);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (583, 'Kalie', 'Bresner',
'kbresnerg6@clickbank.net', 'IoQVBTJ', 499);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (584, 'Northrop', 'Rebichon',
'nrebichong7@ucoz.com', 'shz9tF2nC', 1);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (585, 'Darrin', 'Fishly',
'dfishlyg8@telegraph.co.uk', 'oGPDBNT4bvF', 387);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (586, 'Alano', 'Semrad',
'asemradg9@google.co.uk', 'ZfCnEdbm', 121);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (587, 'Alia', 'Michele',
'amichelega@e-recht24.de', 'I4tg8guA', 474);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (588, 'Rik', 'Endecott',
'rendecottgb@icio.us', 'trSKHShs7', 60);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (589, 'Drud', 'Phillipson',
'dphillipsongc@newsvine.com', 'ESS8cuWIn', 73);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (590, 'Hughie', 'Geer',
'hgeergd@uol.com.br', 'LTK9Hw', 62);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (591, 'Matilda', 'Heigho',
'mheighoge@advertising.org', 'J75yK9bcn', 311);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (592, 'Stephana', 'Vinter',
'svintergf@phoca.cz', 'QPksYKKLr', 384);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (593, 'Anitra', 'Gaitung',
'agaitunggg@bizjournals.com', 'wKb3QWl1CNm8', 205);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (594, 'Fay', 'Abrahmovici',
'fabrahmovicigh@scribd.com', '8drpzvZemEyw', 67);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (595, 'Maryann', 'Wrenn',
'mwrenngi@feedburner.com', 'odnRmX1tT', 134);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (596, 'Madelaine', 'Caulton',
'mcaultongj@samsung.com', '4UKLjHpzo', 470);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (597, 'Daven', 'Borrows',
'dborrowsgk@fastcompany.com', 'pqm3XdkaCz', 188);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (598, 'Cornie', 'McKintosh',
'cmckintoshgl@msu.edu', 'fDwwBerURz', 487);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (599, 'Beth', 'Fippe',
'bfippegm@msu.edu', 'gSuz3udp', 120);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (600, 'Donalt', 'Gamble',
'dgamblegn@wsj.com', '07VSE502vv1L', 124);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (601, 'Pauly', 'Huckel',
'phuckelgo@narod.ru', 'gFXYCMY', 385);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (602, 'Tova', 'Longhirst',
'tlonghirstgp@geocities.jp', 'jyWa7DO', 428);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (603, 'Tremain', 'Ragborne',
'tragbornegq@foxnews.com', 'AiBEavPQPX', 16);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (604, 'Amabel', 'Click',
'aclickgr@slideshare.net', 'bDkHFgH', 75);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (605, 'See', 'McAndrew',
'smcandrewgs@google.it', 'U8NcuAo', 139);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (606, 'Clair', 'Jarrard',
'cjarrardgt@tmall.com', 'c9Ydy1NyrZ', 486);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (607, 'Leandra', 'Elden',
'leldengu@abc.net.au', '9odwCxG', 252);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (608, 'Mikel', 'Haysom',
'mhaysomgv@cam.ac.uk', 'mDR6MlW8vkN', 198);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (609, 'Toby', 'Epton',
'teptongw@cmu.edu', 'lLPH9iHEAu8', 22);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (610, 'Tadeas', 'Dorricott',
'tdorricottgx@phoca.cz', 'FmWS5ElXy', 113);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (611, 'Devora', 'Abeau',
'dabeaugy@cdbaby.com', 'FUGDnK', 122);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (612, 'Bryon', 'Prandoni',
'bprandonigz@wufoo.com', 'IogNC0Awp', 82);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (613, 'Edythe', 'Tipton',
'etiptonh0@cpanel.net', 'j32wZLGoRh', 312);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (614, 'Pauli', 'Frow',
'pfrowh1@jiathis.com', 'wpHXbD6', 284);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (615, 'Sindee', 'Simondson',
'ssimondsonh2@rambler.ru', 'yNZYzG9', 373);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (616, 'Allsun', 'Ramsted',
'aramstedh3@jimdo.com', 'bxCGOrt', 199);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (617, 'Hinze', 'Hartless',
'hhartlessh4@reverbnation.com', 'z3VAjPp4jk', 30);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (618, 'Alain', 'Pettersen',
'apettersenh5@macromedia.com', '3miICYuM', 480);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (619, 'Doria', 'Rheubottom',
'drheubottomh6@wikispaces.com', 'IuxwkXUkpEq', 207);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (620, 'Lindi', 'Gerrelts',
'lgerreltsh7@g.co', 'WPMDfASY', 419);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (621, 'Loreen', 'Soro',
'lsoroh8@cpanel.net', 'R65CmIwTvy', 314);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (622, 'Barrie', 'Healings',
'bhealingsh9@mtv.com', 'HX5QemZb2Qn', 253);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (623, 'Turner', 'Mowson',
'tmowsonha@vistaprint.com', 'JFLGyjMcM', 39);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (624, 'Stacie', 'Stallwood',
'sstallwoodhb@vimeo.com', 'gAT1Xvb5n1Ve', 77);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (625, 'Nicolle', 'Gammack',
'ngammackhc@mysql.com', 'hNigcDt7y', 314);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (626, 'Aridatha', 'Patifield',
'apatifieldhd@tripod.com', 'surtyo', 136);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (627, 'Ruby', 'Burdekin',
'rburdekinhe@google.es', 'GKZ4oWH', 235);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (628, 'Jillian', 'Kadar',
'jkadarhf@wsj.com', 'MQjrxK9kd2', 353);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (629, 'Dalis', 'Griffoen',
'dgriffoenhg@elegantthemes.com', 'F8qBVY', 154);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (630, 'Alastair', 'Tilmouth',
'atilmouthhh@accuweather.com', '3ANtL187S', 28);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (631, 'Rochester', 'Simkovich',
'rsimkovichhi@archive.org', 'GoIDcV3qEv', 270);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (632, 'Nehemiah', 'Soppett',
'nsoppetthj@admin.ch', 'hlrAeI', 425);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (633, 'Nola', 'Pau',
'npauhk@cdbaby.com', '6dirLGpcm', 365);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (634, 'Iorgo', 'Flohard',
'iflohardhl@youtu.be', 'FzUaeeUxBG', 199);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (635, 'Rustin', 'Thinn',
'rthinnhm@github.io', 'HBTFDUk', 80);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (636, 'Bryanty', 'Willmott',
'bwillmotthn@msu.edu', 'Lm0aCnReKaZ', 347);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (637, 'Karlan', 'Buncom',
'kbuncomho@nyu.edu', 'LYhXhV9DXQ', 435);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (638, 'Mattie', 'Bockett',
'mbocketthp@paypal.com', 'EI9sZqoRoxce', 310);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (639, 'Nadean', 'Hughesdon',
'nhughesdonhq@hc360.com', 'gZ4QoJF', 329);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (640, 'Dorotea', 'Sidey',
'dsideyhr@youtu.be', '7ibqo66Y', 136);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (641, 'Sascha', 'Scottini',
'sscottinihs@independent.co.uk', 'TJ6QUu5', 272);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (642, 'Toiboid', 'Totton',
'ttottonht@reuters.com', 'h9puNwbZ', 358);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (643, 'Quintilla', 'Breeton',
'qbreetonhu@devhub.com', 'zL0X01rp4g', 20);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (644, 'Goddart', 'Erskine Sandys',
'gerskinesandyshv@qq.com', 'DUI5IjMf5', 348);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (645, 'Prentiss', 'Kissell',
'pkissellhw@ed.gov', 'weP5gd6fO8Kj', 28);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (646, 'Sisile', 'Di Meo',
'sdimeohx@spiegel.de', 'qW7GIw6Tk6', 392);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (647, 'Doro', 'Aicken',
'daickenhy@usa.gov', 'POlqHJti', 176);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (648, 'Regan', 'Liddy',
'rliddyhz@yahoo.co.jp', 'sO7OIFao', 144);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (649, 'Roley', 'Friett',
'rfrietti0@delicious.com', 'adK23Ln1fqeU', 446);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (650, 'Park', 'Weaver',
'pweaveri1@businessweek.com', 'mPx5XyRCgT', 59);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (651, 'Eleanora', 'Nesbit',
'enesbiti2@twitter.com', '6DTKHVR', 302);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (652, 'Jamal', 'Riggert',
'jriggerti3@usa.gov', 'cUzt65N4Jimu', 288);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (653, 'Earl', 'Lantaph',
'elantaphi4@nsw.gov.au', 'INz4VajyW', 428);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (654, 'Bryant', 'Rochewell',
'brochewelli5@geocities.jp', 'ulYWvJ8D9qra', 255);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (655, 'Maude', 'Kemwal',
'mkemwali6@newsvine.com', 'YvXHzx4HW', 224);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (656, 'Olivette', 'Helmke',
'ohelmkei7@usa.gov', '5A85EQHd1', 328);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (657, 'Quintana', 'Sysland',
'qsyslandi8@shareasale.com', 'V54UcQQvw2kQ', 62);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (658, 'Evania', 'De Malchar',
'edemalchari9@live.com', 'hEYUdfcyvJ', 380);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (659, 'Hali', 'Remnant',
'hremnantia@mail.ru', 'xbC38lP', 262);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (660, 'Rhea', 'Shillitto',
'rshillittoib@shutterfly.com', 'jVliw7n', 181);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (661, 'Rahel', 'Woolway',
'rwoolwayic@netlog.com', '7s1Sik', 212);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (662, 'Dulce', 'Trengrouse',
'dtrengrouseid@sakura.ne.jp', 'D9wXMHgTI', 439);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (663, 'Leon', 'Westcarr',
'lwestcarrie@ox.ac.uk', 'gNbuzG9e', 469);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (664, 'Tilda', 'Newlands',
'tnewlandsif@nsw.gov.au', 'DAKM7u', 168);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (665, 'Hanni', 'Romney',
'hromneyig@reference.com', '18k1LVRw', 75);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (666, 'Carlo', 'Mayoh',
'cmayohih@imageshack.us', 'Ag0faKwdeXi', 226);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (667, 'Audra', 'Roglieri',
'aroglieriii@adobe.com', 'fkEr0oGA', 280);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (668, 'Keary', 'Mimmack',
'kmimmackij@who.int', 'fgQ2BA19lW', 257);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (669, 'Haskell', 'Randalston',
'hrandalstonik@surveymonkey.com', '3NBhUxMVF', 305);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (670, 'Vitoria', 'Crich',
'vcrichil@gmpg.org', 'TFMC1Ta', 121);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (671, 'Wiley', 'Bitterton',
'wbittertonim@cloudflare.com', 'ZAAZdC', 464);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (672, 'Danice', 'Micklewicz',
'dmicklewiczin@hibu.com', 'VLkiQ7aF8', 73);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (673, 'Reinold', 'Humpage',
'rhumpageio@baidu.com', 'U1S9YXRgrmk', 344);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (674, 'Bernete', 'Livezley',
'blivezleyip@paginegialle.it', '9H90968hPd13', 210);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (675, 'Larry', 'Irlam',
'lirlamiq@bing.com', 'uMMgRqqv2wB', 280);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (676, 'Monika', 'Chellam',
'mchellamir@mail.ru', 'lKB2zpUY5', 193);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (677, 'Winnah', 'Brixey',
'wbrixeyis@mediafire.com', 'dWydh11v0rGK', 193);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (678, 'Kristin', 'Veall',
'kveallit@cloudflare.com', 'j0iCtA', 308);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (679, 'Issy', 'Ridger',
'iridgeriu@youtube.com', 'Czo6MZ', 75);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (680, 'Sybil', 'Janowicz',
'sjanowicziv@buzzfeed.com', 'fxtngMpawc4X', 303);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (681, 'Nickey', 'Gildea',
'ngildeaiw@jimdo.com', 'lzJRciC7', 265);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (682, 'Fanchette', 'MacDonagh',
'fmacdonaghix@slashdot.org', '1VPUhZqgzd', 358);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (683, 'Lyle', 'Salsberg',
'lsalsbergiy@a8.net', 'KL0KM6ABM', 479);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (684, 'Amitie', 'Danels',
'adanelsiz@fema.gov', 'jLXKJe', 319);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (685, 'Jule', 'Willerstone',
'jwillerstonej0@netlog.com', 'c9XBjh', 397);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (686, 'Giffer', 'Evered',
'geveredj1@oracle.com', '0yaqjSHQFFHp', 65);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (687, 'Marguerite', 'Wallis',
'mwallisj2@census.gov', 'UZmjfqo', 415);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (688, 'Raffarty', 'Rootes',
'rrootesj3@bbb.org', 'P0ruqk', 364);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (689, 'Standford', 'Kesey',
'skeseyj4@vk.com', 'iaQ72Man', 31);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (690, 'Modestia', 'Blampy',
'mblampyj5@themeforest.net', 'M8LG66JZ', 92);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (691, 'Olav', 'Cafferty',
'ocaffertyj6@wix.com', 'Rui3dNqqpo', 415);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (692, 'Rosanne', 'Dumingo',
'rdumingoj7@tmall.com', '5zhWVG7G', 309);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (693, 'Northrup', 'Axford',
'naxfordj8@bing.com', 'sppVNY8syfg', 46);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (694, 'Monroe', 'Pender',
'mpenderj9@shinystat.com', '8EMqDbhcoSMS', 335);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (695, 'Milli', 'Burnyate',
'mburnyateja@xinhuanet.com', 'W45YnkA', 411);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (696, 'Brittne', 'Kiehnlt',
'bkiehnltjb@mtv.com', 'KIb05L', 211);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (697, 'Archibaldo', 'Landeaux',
'alandeauxjc@harvard.edu', 'zv3kAomLjF0', 361);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (698, 'Tressa', 'Postgate',
'tpostgatejd@trellian.com', 'lHgwdGh', 219);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (699, 'Daphna', 'Chadney',
'dchadneyje@fastcompany.com', 'qqBKj2zHsORY', 29);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (700, 'Jereme', 'Boyn',
'jboynjf@domainmarket.com', '7ohcMz', 384);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (701, 'Carny', 'Aukland',
'cauklandjg@ucsd.edu', 'O4xTYx', 299);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (702, 'Jodee', 'Knath',
'jknathjh@sakura.ne.jp', '0QAoz7EjpV', 386);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (703, 'Roanne', 'Justun',
'rjustunji@tripadvisor.com', 'LEwqjK', 214);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (704, 'Amelina', 'Bovaird',
'abovairdjj@scientific.com', 'YwwQo33q', 194);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (705, 'Rikki', 'Collett',
'rcollettjk@hexun.com', '2DVlfzF', 160);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (706, 'Joanie', 'Bastian',
'jbastianjl@ehow.com', 'uUYmwiqUf', 378);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (707, 'Malina', 'Yanshonok',
'myanshonokjm@sogou.com', 'kzHnSvVFN', 28);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (708, 'Tiffie', 'Jewis',
'tjewisjn@hhs.gov', '8nGUQXC1puL', 416);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (709, 'Elsy', 'Darycott',
'edarycottjo@craigslist.org', 'JQmtiy', 494);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (710, 'Dicky', 'Barnewille',
'dbarnewillejp@mit.edu', 'sWh4SanGe', 311);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (711, 'Melitta', 'Haskett',
'mhaskettjq@sciencedaily.com', 'kEOV8LO', 265);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (712, 'Benson', 'Klima',
'bklimajr@nyu.edu', 'BQI4vjCV', 261);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (713, 'Alyda', 'Beri',
'aberijs@eventbrite.com', 'V3268sJpAVH5', 178);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (714, 'Brewer', 'Maass',
'bmaassjt@freewebs.com', 'txe0icEqa', 401);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (715, 'Antonio', 'Glancey',
'aglanceyju@ox.ac.uk', 'VbGSnCUEEGA', 238);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (716, 'Elisa', 'Betteridge',
'ebetteridgejv@illinois.edu', '8Tg7L1yD', 10);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (717, 'Gillie', 'Philippson',
'gphilippsonjw@wix.com', '3sPYMcloQtHp', 386);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (718, 'Lennard', 'Ferencowicz',
'lferencowiczjx@typepad.com', 'Lmzzeb', 17);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (719, 'Valentia', 'McDell',
'vmcdelljy@auda.org.au', 'JLhgOBXW6iUs', 301);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (720, 'Goddard', 'Hellewell',
'ghellewelljz@fda.gov', 'LKih1unqhe', 148);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (721, 'Dalston', 'Jencken',
'djenckenk0@histats.com', 'GfX2k0G4cm6F', 343);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (722, 'Freeman', 'Giral',
'fgiralk1@github.io', 'D6MqleRRp', 66);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (723, 'Bo', 'Kondrachenko',
'bkondrachenkok2@instagram.com', 'WZM5UQ', 337);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (724, 'Marchall', 'Maddison',
'mmaddisonk3@sakura.ne.jp', 'oT1scnuNgVk', 143);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (725, 'Joaquin', 'Jotham',
'jjothamk4@sakura.ne.jp', 'sgcU6Z', 220);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (726, 'Granthem', 'Grioli',
'ggriolik5@businessinsider.com', 's0jmkOaDHwdh', 250);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (727, 'Abagail', 'Jopke',
'ajopkek6@pcworld.com', 'VkKNe7Nzuj', 349);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (728, 'Bald', 'Chrishop',
'bchrishopk7@sohu.com', '1x2TLyUk54xx', 67);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (729, 'Erma', 'Cotgrove',
'ecotgrovek8@sourceforge.net', 'xe5sHfN', 112);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (730, 'Silvain', 'Ickovicz',
'sickoviczk9@meetup.com', 'caX43PH7brQ', 397);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (731, 'Chrisy', 'Alsop',
'calsopka@umn.edu', '4XgMClxCDu', 455);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (732, 'Vern', 'Isley',
'visleykb@reddit.com', '9WW44zPqCtD', 179);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (733, 'Madelon', 'Sein',
'mseinkc@mapy.cz', 'Ly9mj5Ms2Is', 192);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (734, 'Elana', 'Purvis',
'epurviskd@chicagotribune.com', '4heaRw', 380);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (735, 'Anne', 'Polk', 'apolkke@ted.com',
'om2jkJ0', 170);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (736, 'Nilson', 'Bows',
'nbowskf@samsung.com', '59MwxDkF', 465);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (737, 'Janice', 'Audrey',
'jaudreykg@cbsnews.com', 'cy8kKqNC', 47);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (738, 'Gar', 'Lunbech',
'glunbechkh@dropbox.com', 'vppE5oPn', 273);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (739, 'Josepha', 'Carrabott',
'jcarra@thisfirst_name.com', 'NXoGLk', 446);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (740, 'Alain', 'Coppeard',
'acoppeardkj@wsj.com', 'zUJKbbPnTBk3', 344);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (741, 'Marisa', 'Hegerty',
'mhegertykk@theglobeandmail.com', 'ga3xGwe', 350);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (742, 'Zacherie', 'Tarte',
'ztartekl@jimdo.com', 'esYp8r', 495);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (743, 'Sylas', 'Cranney',
'scranneykm@fema.gov', 'WI3iDV78L5SH', 236);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (744, 'Svend', 'Renwick',
'srenwickkn@ezinearticles.com', '3swsJYm', 288);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (745, 'Oliy', 'Hamprecht',
'ohamprechtko@so-net.ne.jp', 'yQPr0Smq2Q', 269);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (746, 'Valdemar', 'Blackaller',
'vblackallerkp@ustream.tv', 'qXjBtMEYL', 199);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (747, 'Broddy', 'Pepis',
'bpepiskq@live.com', 'npMNHxn9', 248);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (748, 'Katheryn', 'Gale',
'kgalekr@sun.com', 'uT1iUzFHzJg', 83);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (749, 'Laurie', 'Clibbery',
'lclibberyks@jigsy.com', 'UYDAV127KX7', 364);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (750, 'Fawn', 'Campagne',
'fcampagnekt@netlog.com', 'zuDPl74WZzj', 412);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (751, 'Jackelyn', 'Motto',
'jmottoku@apple.com', 'EhfFunMPEO', 316);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (752, 'Bernadene', 'Risebarer',
'brisebarerkv@mlb.com', 'O7xmvV5sW4', 421);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (753, 'Tana', 'Swinney',
'tswinneykw@blinklist.com', 'EmUXuvB86Wqa', 269);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (754, 'Fifi', 'Kneeshaw',
'fkneeshawkx@msu.edu', 'I2Xstc', 70);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (755, 'Merrilee', 'Schade',
'mschadeky@purevolume.com', 'JbgZXWEI', 233);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (756, 'Desiree', 'Felgate',
'dfelgatekz@gravatar.com', 'iCuUeFlj', 285);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (757, 'Fawn', 'Cappineer',
'fcappineerl0@bigcartel.com', 'f3rXjyY', 163);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (758, 'Janet', 'Queripel',
'jqueripell1@comcast.net', 'kgNgYly', 442);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (759, 'Ciel', 'Farrand',
'cfarrandl2@surveymonkey.com', 'b9RxkrA6x1sb', 208);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (760, 'Orelle', 'Coryndon',
'ocoryndonl3@phpbb.com', '8Gf1BHpgvGU2', 338);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (761, 'Darb', 'Exposito',
'dexpositol4@tinypic.com', 'uutVaaKe', 483);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (762, 'Michail', 'Junes',
'mjunesl5@unc.edu', 'dxqJZOY', 215);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (763, 'Carlos', 'Lundy',
'clundyl6@wikimedia.org', 'DRQ6M20c5', 205);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (764, 'Carolynn', 'Horrell',
'chorrelll7@weebly.com', '12MpzRGzKE', 193);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (765, 'Colver', 'Tayloe',
'ctayloel8@bbb.org', 'qZ9qck1nBs9S', 426);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (766, 'Jocelyne', 'Cronk',
'jcronkl9@psu.edu', '38Zmqk4LM6i3', 248);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (767, 'Pauly', 'Stennet',
'pstennetla@admin.ch', 'OWC0gbO', 314);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (768, 'Adan', 'Boothman',
'aboothmanlb@360.cn', 'cRQbNAZLx', 466);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (769, 'Samantha', 'Huish',
'shuishlc@guardian.co.uk', 'OMLuuTqu', 500);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (770, 'Glori', 'Kinneally',
'gkinneallyld@state.tx.us', 'MKmu3QzT', 61);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (771, 'Dylan', 'Barfitt',
'dbarfittle@army.mil', 'k0VgGMFa1', 373);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (772, 'Scotty', 'Collip',
'scolliplf@washingtonpost.com', 'Ys5YBo7AS9HN', 420);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (773, 'Georgi', 'Mingaud',
'gmingaudlg@statcounter.com', 'ADUOAfWf0HOs', 377);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (774, 'Denyse', 'Gillbard',
'dgillbardlh@state.gov', 'Fzn9Yo0UT', 284);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (775, 'Margeaux', 'Sturge',
'msturgeli@house.gov', 'MOUhtZG4', 266);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (776, 'Lilllie', 'Bretton',
'lbrettonlj@earthlink.net', '10ml3rpPXDJ', 363);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (777, 'Mar', 'Blumfield',
'mblumfieldlk@telegraph.co.uk', 'WSrGqBd0Kn', 486);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (778, 'Gabrielle', 'Stodit',
'gstoditll@surveymonkey.com', '1NESVU', 403);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (779, 'Dorie', 'Tommen',
'dtommenlm@state.tx.us', 'hGPCAjT', 297);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (780, 'Bruce', 'Kuschel',
'bkuschelln@technorati.com', '7tPn4S8Ug', 11);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (781, 'Stirling', 'Gaskall',
'sgaskalllo@twitter.com', 'AYVbhc', 65);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (782, 'Elle', 'Eagleston',
'eeaglestonlp@salon.com', 'cWC1YvG1F', 459);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (783, 'Karly', 'Boyes',
'kboyeslq@tuttocitta.it', 'bw1GhWow7', 179);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (784, 'Derry', 'Chadwick',
'dchadwicklr@topsy.com', 'F2DUhbhi', 79);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (785, 'Rakel', 'Alti',
'raltils@topsy.com', 'MIuiepv', 465);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (786, 'Garnet', 'Grand',
'ggrandlt@sbwire.com', '4qW2Lo7m2hk', 246);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (787, 'Yank', 'Stronach',
'ystronachlu@china.com.cn', '4a1dSV', 391);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (788, 'Karyn', 'Kenyam',
'kkenyamlv@webs.com', 'k11UO9qlw9h', 287);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (789, 'Lucretia', 'Bakes',
'lbakeslw@51.la', 'ttPGnixHO', 375);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (790, 'Claiborn', 'Awde',
'cawdelx@reuters.com', 'Oadjxmrky', 488);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (791, 'Andromache', 'Briers',
'abriersly@quantcast.com', 'XG1qENXMuX', 48);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (792, 'Carita', 'Kepling',
'ckeplinglz@statcounter.com', 'qMZaDO9WlB', 252);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (793, 'Marnie', 'Alliban',
'mallibanm0@tinyurl.com', '7ieHClSglVX', 246);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (794, 'Elissa', 'Hammelberg',
'ehammelbergm1@biblegateway.com', 'alGoPny', 353);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (795, 'Sandor', 'Atyeo',
'satyeom2@xinhuanet.com', 'BBAzTe', 246);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (796, 'Henryetta', 'Diver',
'hdiverm3@t.co', 'jWPBLl', 351);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (797, 'Meridel', 'Prudence',
'mprudencem4@myspace.com', 'B7uWni', 377);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (798, 'Siana', 'Minney',
'sminneym5@blogspot.com', '5KD3d8UoBk', 39);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (799, 'Dyane', 'Tonry',
'dtonrym6@latimes.com', 'AFCqAdAJ', 484);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (800, 'Amalie', 'Rosenblad',
'arosenbladm7@homestead.com', 'ImYSvs', 405);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (801, 'Shelby', 'Dufer',
'sduferm8@hp.com', 'lfILpKl', 418);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (802, 'Alfonso', 'Blankau',
'ablankaum9@addtoany.com', 'R8TCmbTcc0', 414);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (803, 'Maggee', 'Ubee',
'mubeema@google.de', '1fvkgnOO4Hk', 186);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (804, 'Leela', 'Floyde',
'lfloydemb@redcross.org', 'wjTVBxBF2L6Z', 137);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (805, 'Sandor', 'Sheeran',
'ssheeranmc@hubpages.com', 'SRbtQAtD', 174);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (806, 'Janka', 'Filliskirk',
'jfilliskirkmd@tonpost.com', 'MxxTTWM7B5', 41);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (807, 'Rem', 'Kynaston',
'rkynastonme@miitbeian.gov.cn', '8dYkxyLE7tqa', 84);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (808, 'Enrica', 'Beeden',
'ebeedenmf@feedburner.com', 'vgJEFupqab9k', 142);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (809, 'Henrie', 'Janouch',
'hjanouchmg@oakley.com', 'P6OKTMy5l', 242);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (810, 'Stepha', 'Goodliffe',
'sgoodliffemh@techcrunch.com', '90B4eZw', 165);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (811, 'Christopher', 'Portsmouth',
'cportsmouthmi@devhub.com', 'dY1nzFqs', 303);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (812, 'Cleopatra', 'Jarlmann',
'cjarlmannmj@dmoz.org', 'xpv3Hs8N5Z', 306);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (813, 'Giselle', 'Swinglehurst',
'gswinglehurstmk@chron.com', 'h7LGXrCl6WAu', 374);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (814, 'Philippe', 'Gornar',
'pgornarml@house.gov', 'vqSnrqPTn5D', 90);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (815, 'Jacqueline', 'Benitez',
'jbenitezmm@ihg.com', 'V1Vpkwc', 342);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (816, 'Rossy', 'Cassimer',
'rcassimermn@wired.com', 'PznlX8R6VSUW', 19);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (817, 'Virgina', 'Axon',
'vaxonmo@i2i.jp', 'FwJjBIge9', 198);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (818, 'Drucy', 'Stapylton',
'dstapyltonmp@alexa.com', 'S25U9TPgJ', 364);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (819, 'Florina', 'Elijah',
'felijahmq@thetimes.co.uk', 'PCrWtNdtjclD', 205);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (820, 'Antoine', 'Haggarty',
'ahaggartymr@moonfruit.com', 'r8094BB', 37);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (821, 'Fletch', 'Babin',
'fbabinms@yahoo.co.jp', 'jovFSWS5GJCl', 10);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (822, 'Drusilla', 'Lohrensen',
'dlohrensenmt@multiply.com', 'HtzQZc5', 93);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (823, 'Early', 'Cuningham',
'ecuninghammu@whitehouse.gov', 'Monu5FTLK2ug', 15);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (824, 'Josi', 'Breakey',
'jbreakeymv@taobao.com', 'iuRkPgbW', 405);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (825, 'Clarine', 'Frood',
'cfroodmw@behance.net', 'dWdGES', 342);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (826, 'Reinaldos', 'Bowshire',
'rbowshiremx@independent.co.uk', 'UqvL8D', 395);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (827, 'Honor', 'Fedder',
'hfeddermy@nps.gov', 'pTF3EshDDB', 9);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (828, 'Ladonna', 'Imbrey',
'limbreymz@stumbleupon.com', 'bBoFnHEQW', 488);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (829, 'Georas', 'Loosemore',
'gloosemoren0@hp.com', '36fzKW0xv', 104);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (830, 'Park', 'Haggus',
'phaggusn1@simplemachines.org', 'WVM3xRyw', 72);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (831, 'Delaney', 'Stainsby',
'dstainsbyn2@hibu.com', 'ue73QEEz0PG0', 22);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (832, 'Stefa', 'Dadge',
'sdadgen3@admin.ch', 'U5WwK8d4N', 486);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (833, 'Cherri', 'Algore',
'calgoren4@bizjournals.com', 'rfV7s6n', 479);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (834, 'Cassandry', 'Luchelli',
'cluchellin5@last.fm', 'NaZniSaN', 392);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (835, 'Emmery', 'Whoolehan',
'ewhoolehann6@nbcnews.com', 'sTmt1zF', 258);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (836, 'Percival', 'Gadsden',
'pgadsdenn7@miibeian.gov.cn', 'RYq1lNI', 427);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (837, 'Dniren', 'Esmead',
'desmeadn8@so-net.ne.jp', 'POuoLQ073J', 462);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (838, 'Maryanna', 'Knowlson',
'mknowlsonn9@theatlantic.com', '4uECJgXRJ1D', 32);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (839, 'Heindrick', 'Coulter',
'hcoulterna@bigcartel.com', 'z1Ny3J4', 417);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (840, 'Edgardo', 'Davidowich',
'edavidowichnb@plala.or.jp', 'ATpfai5', 108);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (841, 'Laurie', 'Hamblen',
'lhamblennc@indiatimes.com', 'ppTJc6WC1s57', 494);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (842, 'Lewiss', 'Belone',
'lbelonend@w3.org', 'Wd93kza2vrG6', 145);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (843, 'Carolus', 'Overil',
'coverilne@hud.gov', '5eoS1CHXS', 196);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (844, 'Clarisse', 'Worssam',
'cworssamnf@nih.gov', 'CQwNZbg0u', 495);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (845, 'Rhys', 'Segeswoeth',
'rsegeswoethng@bandcamp.com', 'nj1LrgQZFNO5', 350);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (846, 'Tilly', 'Pinnigar',
'tpinnigarnh@barnesandnoble.com', 'lYFj3rw6tbr', 351);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (847, 'Beryle', 'Backwell',
'bbackwellni@va.gov', '4Z4wE9', 282);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (848, 'Ruthann', 'Gofforth',
'rgofforthnj@omniture.com', 'SWvCt5A', 148);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (849, 'Rodina', 'Binner',
'rbinnernk@51.la', 'Cskqggtbw63', 355);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (850, 'Stan', 'Perrone',
'sperronenl@opera.com', 'IFdlFM6N', 112);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (851, 'Tedmund', 'L''Episcopi',
'tlepiscopinm@phpbb.com', 'NRcQTT9NYf', 145);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (852, 'Maggi', 'Monery',
'mmonerynn@miitbeian.gov.cn', 'zojrPtZkTWyP', 191);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (853, 'Marty', 'Wornum',
'mwornumno@comsenz.com', 'MmTd7rNrQLs', 386);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (854, 'Brook', 'Babb',
'bbabbnp@toplist.cz', 'eiYG6RnbHu', 227);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (855, 'Ferdinand', 'Poluzzi',
'fpoluzzinq@51.la', 'YBsYYOm3Dd', 67);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (856, 'Giacomo', 'Rankin',
'grankinnr@studiopress.com', 'x5qnH91', 115);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (857, 'Janos', 'Hanfrey',
'jhanfreyns@infoseek.co.jp', 'GQnj6p0AoJhq', 474);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (858, 'Reinaldos', 'Cowton',
'rcowtonnt@reuters.com', 'wOWeMfuYV', 383);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (859, 'Annabel', 'St. Ledger',
'astledgernu@homestead.com', '0w1momucE', 274);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (860, 'Will', 'Skingle',
'wskinglenv@google.cn', 'y1r6wc', 1);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (861, 'Marybeth', 'Luberti',
'mlubertinw@slate.com', '9m9kORgBLCh', 410);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (862, 'Alanna', 'Mapston',
'amapstonnx@trellian.com', 'NnrRHJEvIGE', 421);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (863, 'Zorina', 'Benninck',
'zbenninckny@oracle.com', 'duCEysPG9', 477);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (864, 'Kamillah', 'Postle',
'kpostlenz@phoca.cz', 'wSvBLFv8', 55);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (865, 'Inglis', 'Papes',
'ipapeso0@patch.com', 'JHjU94fBB0', 273);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (866, 'Corbet', 'Petriello',
'cpetrielloo1@xing.com', 'ttCPPDm', 19);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (867, 'Chariot', 'Kleiser',
'ckleisero2@technorati.com', 'VkghWZu9', 427);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (868, 'Shannah', 'Hinnerk',
'shinnerko3@studiopress.com', 'V6pq1DpJ', 354);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (869, 'Eduino', 'Hankinson',
'ehankinsono4@gizmodo.com', '7qrEuEzzl', 364);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (870, 'Adelheid', 'Davio',
'adavioo5@walmart.com', '07CSAzvovEZ', 286);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (871, 'Braden', 'Hourston',
'bhourstono6@abc.net.au', 'bLO8HXnZw', 360);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (872, 'Kennedy', 'Jenson',
'kjensono7@hp.com', 'E7YeIwMhlKf', 281);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (873, 'Leupold', 'Gillespie',
'lgillespieo8@japanpost.jp', 'wKzwlspU', 66);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (874, 'Mychal', 'Valdes',
'mvaldeso9@prnewswire.com', 'cILf3w', 494);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (875, 'Arline', 'Mc Harg',
'amchargoa@soup.io', 'sWYAhF', 46);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (876, 'Benetta', 'Heinz',
'bheinzob@shareasale.com', 'p20LRDrjy7', 360);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (877, 'Galvan', 'O''Cannon',
'gocannonoc@wordpress.org', 't1RwyZu', 263);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (878, 'Sharai', 'Leyninye',
'sleyninyeod@va.gov', 'Wdi8xllwd9', 23);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (879, 'Fionna', 'Camidge',
'fcamidgeoe@mac.com', 'YbsGAnUc7T', 158);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (880, 'Roderick', 'Amorts',
'ramortsof@independent.co.uk', 'xehRBvBfFIq', 10);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (881, 'Colman', 'Pendle',
'cpendleog@simplemachines.org', 'hJ2RL8EyClC', 246);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (882, 'Minta', 'Orry',
'morryoh@dot.gov', 'MfqTOz3L', 208);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (883, 'Stanton', 'Eggins',
'segginsoi@furl.net', 'vfQgegvuc', 492);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (884, 'Ansley', 'Gonning',
'agonningoj@sciencedirect.com', 'n7NjebaIjon', 396);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (885, 'Erasmus', 'McSharry',
'emcsharryok@youtu.be', 'tG3tB6wF9b', 218);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (886, 'Octavius', 'Warbys',
'owarbysol@sohu.com', '8bMEyKOiLrU', 324);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (887, 'Chaim', 'Sentance',
'csentanceom@ucoz.com', '4q9VSxMh6iRU', 309);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (888, 'Reinald', 'Tumini',
'rtuminion@google.com.hk', 'DiP0o0', 386);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (889, 'Mathe', 'Boots',
'mbootsoo@i2i.jp', 'pc2WTTA', 260);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (890, 'Jonis', 'Alfonsini',
'jalfonsiniop@a8.net', 'fipPv6WuN', 52);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (891, 'Silvan', 'Vidyapin',
'svidyapinoq@ebay.com', 'AXCYuJn7', 339);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (892, 'Shannon', 'Byard',
'sbyardor@liveinternet.ru', 'idNBV3aMSLY', 297);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (893, 'Celestia', 'Balke',
'cbalkeos@webnode.com', 'yPflIZboy0Z', 261);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (894, 'Dallas', 'Melloy',
'dmelloyot@gmpg.org', 'Gn5b5CxIKQlr', 289);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (895, 'Gaby', 'Bice',
'gbiceou@bizjournals.com', 'rtSsXSICTDi4', 433);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (896, 'Nariko', 'Pardi',
'npardiov@eepurl.com', 'c6gNrsAyt', 216);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (897, 'Desmond', 'Streatfield',
'dstreatfieldow@dailymail.co.uk', 'JOmVBC', 103);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (898, 'Rodina', 'Steger',
'rstegerox@delicious.com', 'JcY6E94l9Bj', 454);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (899, 'Rodolphe', 'McLeoid',
'rmcleoidoy@samsung.com', 'MWdx075te', 136);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (900, 'Rafaellle', 'Mathys',
'rmathysoz@com.com', 'C6M49WXQj', 330);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (901, 'Rurik', 'Bounds',
'rboundsp0@ebay.com', 'ljrZxzbw', 262);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (902, 'Mureil', 'Jarret',
'mjarretp1@rambler.ru', 'PiGWhv', 461);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (903, 'Vasilis', 'DeSousa',
'vdesousap2@scribd.com', 'g8PUgVp', 308);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (904, 'Jodee', 'McSharry',
'jmcsharryp3@google.ca', 'rsrbebDyk2c', 434);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (905, 'Nowell', 'Iddison',
'niddisonp4@chron.com', 'XL0hkCUiQjFW', 500);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (906, 'Nikkie', 'Danels',
'ndanelsp5@nifty.com', 'NSzweKMbT3', 289);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (907, 'Bartie', 'Hamfleet',
'bhamfleetp6@cisco.com', 'XZToPk9Um', 69);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (908, 'Hadria', 'Doe',
'hdoep7@bluehost.com', 'F6PYqJHRrCm8', 446);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (909, 'Elihu', 'Humphery',
'ehumpheryp8@behance.net', 'djoqVxvZA', 444);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (910, 'Rodi', 'Pickles',
'rpicklesp9@ifeng.com', 'VftEcATnN4Ro', 456);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (911, 'Kathlin', 'Morican',
'kmoricanpa@1und1.de', 'FTdKKLLdZ', 295);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (912, 'Petey', 'D''Enrico',
'pdenricopb@skype.com', 'HS2m92DMKTNX', 58);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (913, 'Wyndham', 'Hayden',
'whaydenpc@uiuc.edu', '2ZDGrQps', 453);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (914, 'Gerry', 'Chrichton',
'gchrichtonpd@imdb.com', 'WeQZ2Y', 496);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (915, 'Bev', 'Huckle',
'bhucklepe@diigo.com', 'X2AsoG3ofW', 335);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (916, 'Omero', 'Follit',
'ofollitpf@lulu.com', '7o5KaVL4eJC', 472);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (917, 'Hedwig', 'Sherrin',
'hsherrinpg@wikia.com', 'TVgDJ9', 1);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (918, 'Wally', 'Lathwell',
'wlathwellph@bravesites.com', 't7eK6v', 6);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (919, 'Zolly', 'Traill',
'ztraillpi@independent.co.uk', 'EjWX6cIUCnS', 348);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (920, 'Stepha', 'Dudek',
'sdudekpj@mtv.com', 'FVYk0zxH', 334);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (921, 'Anthia', 'Cherryman',
'acherrymanpk@rediff.com', 'in1exfaRzd8S', 262);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (922, 'Heindrick', 'Clopton',
'hcloptonpl@yolasite.com', '5Kc3ZpE8CdDC', 199);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (923, 'Ermanno', 'Kobierzycki',
'ekobierzyckipm@sohu.com', 'N5WOOd', 190);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (924, 'Dar', 'Sowthcote',
'dsowthcotepn@dropbox.com', 'WupbPkoKk5', 327);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (925, 'Bartholomeus', 'Woolerton',
'bwoolertonpo@google.it', '8tQJekm', 360);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (926, 'Lela', 'Cockburn',
'lcockburnpp@nsw.gov.au', '2s02YZj', 438);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (927, 'Hammad', 'Gallelli',
'hgallellipq@photobucket.com', '0dSWSu', 334);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (928, 'Amie', 'Aguirrezabala',
'aaguirrezabalapr@solutions.com', 'LEnseFjvoD', 342);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (929, 'Moshe', 'Tarbert',
'mtarbertps@foxnews.com', 's7b1VvQ', 405);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (930, 'Zabrina', 'Peirson',
'zpeirsonpt@multiply.com', 'KKwSOS', 251);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (931, 'Laurette', 'Yushankin',
'lyushankinpu@qq.com', 'OwxNVOYAfQEh', 421);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (932, 'Jennette', 'Gillibrand',
'jgillibrandpv@bbb.org', 'F8EbfQPFXhT', 268);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (933, 'Nobe', 'Conaghy',
'nconaghypw@csmonitor.com', 'juJKE0YL', 416);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (934, 'Gusella', 'McCartney',
'gmccartneypx@slate.com', '5dHTGUM', 316);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (935, 'Thorstein', 'Benham',
'tbenhampy@blinklist.com', 'YTRCWkM4Ha', 461);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (936, 'Charmane', 'Durtnall',
'cdurtnallpz@stanford.edu', 'fZ249B', 465);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (937, 'Ame', 'Lassell',
'alassellq0@independent.co.uk', 'JPGG2SW18G1', 368);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (938, 'Flossy', 'Smaling',
'fsmalingq1@unblog.fr', 'wIad6LrXDL', 436);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (939, 'Kimball', 'Slevin',
'kslevinq2@loc.gov', 'reNaapO', 440);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (940, 'Cindie', 'Summerside',
'csummersideq3@loc.gov', 'guQ5duE7pKC', 217);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (941, 'Lon', 'Slucock',
'lslucockq4@ca.gov', 'X6i6MDPM2', 222);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (942, 'Gale', 'Garfitt',
'ggarfittq5@wikipedia.org', '3bjWwX', 428);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (943, 'Gav', 'Zwicker',
'gzwickerq6@webeden.co.uk', '5WmgCR', 425);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (944, 'Lara', 'Yushkin',
'lyushkinq7@amazon.co.jp', 'MVKrEpIi3Yx', 314);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (945, 'Katherina', 'Peatt',
'kpeattq8@abc.net.au', 'sfXUcy', 325);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (946, 'Gabby', 'Cuttles',
'gcuttlesq9@jigsy.com', 'didjz5zsW7z', 261);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (947, 'Lily', 'Stower',
'lstowerqa@hao123.com', 'n8VfUG', 488);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (948, 'Nickie', 'Cavozzi',
'ncavozziqb@businesswire.com', 'ntvy3IEZCLa', 85);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (949, 'Shell', 'Margarson',
'smargarsonqc@twitpic.com', 'uKnX4BoPu', 111);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (950, 'Bryna', 'Ida',
'bidaqd@bizjournals.com', '5WcQc0CL', 437);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (951, 'Emmaline', 'Beynkn',
'ebeynknqe@jalbum.net', 'FabXDmQ', 359);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (952, 'Raphael', 'Pyett',
'rpyettqf@wunderground.com', 'w5rOCQH5q', 367);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (953, 'Thane', 'Pulbrook',
'tpulbrookqg@fc2.com', 'wXaBfzsl', 36);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (954, 'Ethel', 'Horry',
'ehorryqh@abc.net.au', 'c5obu8YzRbQ', 282);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (955, 'Magdaia', 'Fearney',
'mfearneyqi@ftc.gov', 'gSGBoYj', 88);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (956, 'Lexis', 'Thursby',
'lthursbyqj@godaddy.com', 'cS5rTT', 218);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (957, 'Masha', 'Southeran',
'msoutheranqk@vimeo.com', '4EMUoMd3lIH', 328);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (958, 'Iseabal', 'Mattiazzo',
'imattiazzoql@gov.uk', 'y9vWk7nSdQD', 412);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (959, 'Sheelagh', 'Ayris',
'sayrisqm@wired.com', 'BXOlEZ', 153);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (960, 'Abbe', 'St. John',
'astjohnqn@pinterest.com', 'TwFByoBg', 291);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (961, 'Arri', 'Arnauduc',
'aarnauducqo@xrea.com', 'vAhc3PbU', 224);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (962, 'Ephrayim', 'MacGeaney',
'emacgeaneyqp@sitemeter.com', 'sr3THB0ROdq', 138);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (963, 'Janice', 'Riddick',
'jriddickqq@chicagotribune.com', 'quIgTYb', 152);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (964, 'Wayland', 'Fitchew',
'wfitchewqr@reddit.com', '2M0bsH7HVo', 430);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (965, 'Darice', 'Mellows',
'dmellowsqs@360.cn', 'haQknL1nV', 214);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (966, 'Eulalie', 'Shearer',
'eshearerqt@github.com', 'BY3sHS52W10L', 404);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (967, 'Kendall', 'Sharville',
'ksharvillequ@taobao.com', '3IAf2NFy', 30);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (968, 'Siegfried', 'Ladbrooke',
'sladbrookeqv@deliciousdays.com', '2DcVqmWBZFv', 20);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (969, 'Rogerio', 'Knapper',
'rknapperqw@statcounter.com', '5jZhkhYSVF5F', 42);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (970, 'Vi', 'Reveley',
'vreveleyqx@exblog.jp', 'ySeOxnDIUZN', 102);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (971, 'Francesca', 'Janko',
'fjankoqy@google.com', '3Os6KQ4aywV', 480);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (972, 'Bowie', 'Oxberry',
'boxberryqz@bloglovin.com', 'YWzHBGzZ', 116);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (973, 'Viv', 'Bell',
'vbellr0@theglobeandmail.com', 'j979k7XGjg4K', 196);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (974, 'Tiler', 'Harback',
'tharbackr1@bbc.co.uk', 'bMKag0B91f', 434);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (975, 'Cicily', 'Maletratt',
'cmaletrattr2@qq.com', 'toeYdz', 290);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (976, 'Harwilll', 'Pencot',
'hpencotr3@ucla.edu', 'lXMCyOd', 259);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (977, 'Donny', 'Bilofsky',
'dbilofskyr4@bloglines.com', 'AmXAeJJuGls', 201);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (978, 'Daffie', 'Ballinger',
'dballingerr5@desdev.cn', 'FPrJOkrfvs', 490);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (979, 'Northrup', 'Lough',
'nloughr6@paginegialle.it', 'GOvjTW7mtF', 150);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (980, 'Silvio', 'Joblin',
'sjoblinr7@shinystat.com', 'aeCYGx', 29);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (981, 'Torey', 'Cutchie',
'tcutchier8@moonfruit.com', 'sgYdWuzY', 485);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (982, 'Llewellyn', 'Sinkinson',
'lsinkinsonr9@csmonitor.com', '3WYnUyW8ITn7', 174);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (983, 'Coriss', 'Chsteney',
'cchsteneyra@booking.com', 'Pxp3wPu1g', 424);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (984, 'Salim', 'Bryce',
'sbrycerb@constantcontact.com', 'aI9XfJQ8p0D', 187);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (985, 'Elie', 'Maestro',
'emaestrorc@amazon.co.uk', 'WODiZU', 20);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (986, 'Cesar', 'Yannikov',
'cyannikovrd@so-net.ne.jp', 'gi8hft', 96);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (987, 'Vina', 'Hlavac',
'vhlavacre@paypal.com', '3ack3i', 309);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (988, 'Ingeborg', 'Godlee',
'igodleerf@so-net.ne.jp', 'QxtBoBAZegEH', 209);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (989, 'Mia', 'Killough',
'mkilloughrg@fc2.com', 'nrn88fhDj', 68);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (990, 'Wileen', 'Tomalin',
'wtomalinrh@desdev.cn', 'gDUL3uPKvRO', 271);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (991, 'Andee', 'O''Sharry',
'aosharryri@scribd.com', 'o5GWA1Vxe', 239);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (992, 'Robyn', 'Garham',
'rgarhamrj@linkedin.com', 'RAESLJ8', 67);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (993, 'Dorothea', 'Eastlake',
'deastlakerk@redcross.org', 'pOgLTU', 128);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (994, 'Freida', 'Leonards',
'fleonardsrl@ebay.com', 'M8oBDaIz0Mv6', 130);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (995, 'Nat', 'Fitzgerald',
'nfitzgeraldrm@51.la', '298I6ggy1yRF', 9);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (996, 'Rutter', 'Pimmocke',
'rpimmockern@stumbleupon.com', 'RCD5Q86D9jip', 499);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (997, 'Izak', 'Grumley',
'igrumleyro@apache.org', '4IHhUvgs', 478);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (998, 'Belia', 'Arboin',
'barboinrp@washington.edu', 'mXleKgUdt', 443);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (999, 'Obie', 'Zimmerman',
'ozimmermanrq@cnet.com', 'G9OoCWPlF8', 477);
insert into SYSTEM_USER(id_system_user, first_name, last_name, email,
password, id_user_type) values (1000, 'Anselm', 'McVee',
'amcveerr@123-reg.co.uk', '4Q9af8oDGmW', 40);
insert into PLAY(id_game, id_system_user, completed) values (77, 850,
false);
insert into PLAY(id_game, id_system_user, completed) values (13, 501,
true);
insert into PLAY(id_game, id_system_user, completed) values (59, 375,
false);
insert into PLAY(id_game, id_system_user, completed) values (88, 218,
false);
insert into PLAY(id_game, id_system_user, completed) values (91, 127,
false);
insert into PLAY(id_game, id_system_user, completed) values (38, 728,
true);
insert into PLAY(id_game, id_system_user, completed) values (41, 980,
true);
insert into PLAY(id_game, id_system_user, completed) values (99, 33,
false);
insert into PLAY(id_game, id_system_user, completed) values (91, 432,
false);
insert into PLAY(id_game, id_system_user, completed) values (98, 940,
false);
insert into PLAY(id_game, id_system_user, completed) values (31, 38,
true);
insert into PLAY(id_game, id_system_user, completed) values (45, 695,
false);
insert into PLAY(id_game, id_system_user, completed) values (16, 175,
false);
insert into PLAY(id_game, id_system_user, completed) values (14, 492,
true);
insert into PLAY(id_game, id_system_user, completed) values (48, 116,
false);
insert into PLAY(id_game, id_system_user, completed) values (34, 269,
true);
insert into PLAY(id_game, id_system_user, completed) values (12, 182,
false);
insert into PLAY(id_game, id_system_user, completed) values (100, 612,
true);
insert into PLAY(id_game, id_system_user, completed) values (45, 408,
false);
insert into PLAY(id_game, id_system_user, completed) values (41, 712,
false);
insert into PLAY(id_game, id_system_user, completed) values (55, 952,
false);
insert into PLAY(id_game, id_system_user, completed) values (60, 39,
false);
insert into PLAY(id_game, id_system_user, completed) values (45, 738,
true);
insert into PLAY(id_game, id_system_user, completed) values (20, 168,
true);
insert into PLAY(id_game, id_system_user, completed) values (39, 903,
true);
insert into PLAY(id_game, id_system_user, completed) values (28, 597,
false);
insert into PLAY(id_game, id_system_user, completed) values (59, 252,
false);
insert into PLAY(id_game, id_system_user, completed) values (50, 52,
true);
insert into PLAY(id_game, id_system_user, completed) values (93, 155,
false);
insert into PLAY(id_game, id_system_user, completed) values (72, 964,
false);
insert into PLAY(id_game, id_system_user, completed) values (39, 963,
false);
insert into PLAY(id_game, id_system_user, completed) values (28, 584,
false);
insert into PLAY(id_game, id_system_user, completed) values (22, 516,
true);
insert into PLAY(id_game, id_system_user, completed) values (64, 443,
true);
insert into PLAY(id_game, id_system_user, completed) values (6, 176,
true);
insert into PLAY(id_game, id_system_user, completed) values (24, 34,
false);
insert into PLAY(id_game, id_system_user, completed) values (2, 82,
false);
insert into PLAY(id_game, id_system_user, completed) values (98, 142,
true);
insert into PLAY(id_game, id_system_user, completed) values (23, 90,
false);
insert into PLAY(id_game, id_system_user, completed) values (38, 527,
false);
insert into PLAY(id_game, id_system_user, completed) values (22, 486,
true);
insert into PLAY(id_game, id_system_user, completed) values (73, 678,
true);
insert into PLAY(id_game, id_system_user, completed) values (68, 775,
false);
insert into PLAY(id_game, id_system_user, completed) values (10, 959,
false);
insert into PLAY(id_game, id_system_user, completed) values (61, 896,
false);
insert into PLAY(id_game, id_system_user, completed) values (72, 726,
false);
insert into PLAY(id_game, id_system_user, completed) values (48, 375,
false);
insert into PLAY(id_game, id_system_user, completed) values (93, 389,
false);
insert into PLAY(id_game, id_system_user, completed) values (26, 775,
false);
insert into PLAY(id_game, id_system_user, completed) values (65, 948,
false);
insert into PLAY(id_game, id_system_user, completed) values (93, 320,
true);
insert into PLAY(id_game, id_system_user, completed) values (72, 320,
false);
insert into PLAY(id_game, id_system_user, completed) values (24, 560,
true);
insert into PLAY(id_game, id_system_user, completed) values (63, 488,
true);
insert into PLAY(id_game, id_system_user, completed) values (87, 774,
false);
insert into PLAY(id_game, id_system_user, completed) values (53, 827,
true);
insert into PLAY(id_game, id_system_user, completed) values (26, 852,
true);
insert into PLAY(id_game, id_system_user, completed) values (24, 586,
false);
insert into PLAY(id_game, id_system_user, completed) values (78, 441,
true);
insert into PLAY(id_game, id_system_user, completed) values (10, 329,
true);
insert into PLAY(id_game, id_system_user, completed) values (72, 484,
false);
insert into PLAY(id_game, id_system_user, completed) values (10, 206,
true);
insert into PLAY(id_game, id_system_user, completed) values (76, 346,
false);
insert into PLAY(id_game, id_system_user, completed) values (21, 34,
false);
insert into PLAY(id_game, id_system_user, completed) values (27, 131,
false);
insert into PLAY(id_game, id_system_user, completed) values (46, 256,
false);
insert into PLAY(id_game, id_system_user, completed) values (43, 952,
true);
insert into PLAY(id_game, id_system_user, completed) values (86, 757,
true);
insert into PLAY(id_game, id_system_user, completed) values (24, 718,
true);
insert into PLAY(id_game, id_system_user, completed) values (30, 996,
false);
insert into PLAY(id_game, id_system_user, completed) values (20, 269,
false);
insert into PLAY(id_game, id_system_user, completed) values (13, 605,
true);
insert into PLAY(id_game, id_system_user, completed) values (93, 757,
false);
insert into PLAY(id_game, id_system_user, completed) values (88, 431,
false);
insert into PLAY(id_game, id_system_user, completed) values (95, 935,
true);
insert into PLAY(id_game, id_system_user, completed) values (66, 266,
true);
insert into PLAY(id_game, id_system_user, completed) values (11, 459,
false);
insert into PLAY(id_game, id_system_user, completed) values (68, 716,
true);
insert into PLAY(id_game, id_system_user, completed) values (10, 267,
true);
insert into PLAY(id_game, id_system_user, completed) values (79, 362,
false);
insert into PLAY(id_game, id_system_user, completed) values (31, 786,
true);
insert into PLAY(id_game, id_system_user, completed) values (50, 464,
false);
insert into PLAY(id_game, id_system_user, completed) values (12, 528,
false);
insert into PLAY(id_game, id_system_user, completed) values (67, 222,
true);
insert into PLAY(id_game, id_system_user, completed) values (19, 192,
false);
insert into PLAY(id_game, id_system_user, completed) values (2, 979,
false);
insert into PLAY(id_game, id_system_user, completed) values (6, 659,
true);
insert into PLAY(id_game, id_system_user, completed) values (33, 751,
false);
insert into PLAY(id_game, id_system_user, completed) values (78, 381,
false);
insert into PLAY(id_game, id_system_user, completed) values (88, 349,
false);
insert into PLAY(id_game, id_system_user, completed) values (66, 36,
false);
insert into PLAY(id_game, id_system_user, completed) values (84, 820,
false);
insert into PLAY(id_game, id_system_user, completed) values (16, 252,
true);
insert into PLAY(id_game, id_system_user, completed) values (53, 141,
true);
insert into PLAY(id_game, id_system_user, completed) values (50, 844,
true);
insert into PLAY(id_game, id_system_user, completed) values (55, 747,
true);
insert into PLAY(id_game, id_system_user, completed) values (98, 798,
false);
insert into PLAY(id_game, id_system_user, completed) values (37, 436,
true);
insert into PLAY(id_game, id_system_user, completed) values (62, 39,
true);
insert into PLAY(id_game, id_system_user, completed) values (35, 118,
false);
insert into PLAY(id_game, id_system_user, completed) values (85, 358,
false);
insert into PLAY(id_game, id_system_user, completed) values (86, 593,
true);
insert into PLAY(id_game, id_system_user, completed) values (50, 60,
true);
insert into PLAY(id_game, id_system_user, completed) values (33, 164,
false);
insert into PLAY(id_game, id_system_user, completed) values (18, 427,
true);
insert into PLAY(id_game, id_system_user, completed) values (96, 201,
false);
insert into PLAY(id_game, id_system_user, completed) values
(82, 165, true);
insert into PLAY(id_game, id_system_user, completed) values (37, 97,
true);
insert into PLAY(id_game, id_system_user, completed) values (66, 343,
true);
insert into PLAY(id_game, id_system_user, completed) values (69, 806,
true);
insert into PLAY(id_game, id_system_user, completed) values (51, 496,
false);
insert into PLAY(id_game, id_system_user, completed) values (25, 547,
true);
insert into PLAY(id_game, id_system_user, completed) values (96, 810,
false);
insert into PLAY(id_game, id_system_user, completed) values (24, 975,
false);
insert into PLAY(id_game, id_system_user, completed) values (98, 809,
false);
insert into PLAY(id_game, id_system_user, completed) values (30, 154,
true);
insert into PLAY(id_game, id_system_user, completed) values (17, 382,
true);
insert into PLAY(id_game, id_system_user, completed) values (16, 256,
false);
insert into PLAY(id_game, id_system_user, completed) values (16, 436,
true);
insert into PLAY(id_game, id_system_user, completed) values (1, 614,
true);
insert into PLAY(id_game, id_system_user, completed) values (13, 916,
true);
insert into PLAY(id_game, id_system_user, completed) values (67, 661,
false);
insert into PLAY(id_game, id_system_user, completed) values (65, 480,
false);
insert into PLAY(id_game, id_system_user, completed) values (21, 317,
true);
insert into PLAY(id_game, id_system_user, completed) values (94, 405,
false);
insert into PLAY(id_game, id_system_user, completed) values (27, 411,
true);
insert into PLAY(id_game, id_system_user, completed) values (34, 360,
false);
insert into PLAY(id_game, id_system_user, completed) values (58, 899,
true);
insert into PLAY(id_game, id_system_user, completed) values (81, 365,
true);
insert into PLAY(id_game, id_system_user, completed) values (86, 478,
true);
insert into PLAY(id_game, id_system_user, completed) values (72, 629,
false);
insert into PLAY(id_game, id_system_user, completed) values (1, 281,
false);
insert into PLAY(id_game, id_system_user, completed) values (45, 778,
false);
insert into PLAY(id_game, id_system_user, completed) values (51, 583,
false);
insert into PLAY(id_game, id_system_user, completed) values (28, 981,
false);
insert into PLAY(id_game, id_system_user, completed) values (61, 580,
false);
insert into PLAY(id_game, id_system_user, completed) values (97, 658,
true);
insert into PLAY(id_game, id_system_user, completed) values (29, 15,
false);
insert into PLAY(id_game, id_system_user, completed) values (52, 329,
true);
insert into PLAY(id_game, id_system_user, completed) values (94, 848,
true);
insert into PLAY(id_game, id_system_user, completed) values (16, 425,
true);
insert into PLAY(id_game, id_system_user, completed) values (73, 732,
true);
insert into PLAY(id_game, id_system_user, completed) values (61, 776,
false);
insert into PLAY(id_game, id_system_user, completed) values (73, 670,
false);
insert into PLAY(id_game, id_system_user, completed) values (40, 921,
true);
insert into PLAY(id_game, id_system_user, completed) values (8, 814,
false);
insert into PLAY(id_game, id_system_user, completed) values (22, 862,
true);
insert into PLAY(id_game, id_system_user, completed) values (9, 437,
false);
insert into PLAY(id_game, id_system_user, completed) values (50, 261,
false);
insert into PLAY(id_game, id_system_user, completed) values (16, 891,
true);
insert into PLAY(id_game, id_system_user, completed) values (98, 181,
false);
insert into PLAY(id_game, id_system_user, completed) values (96, 95,
true);
insert into PLAY(id_game, id_system_user, completed) values (99, 174,
true);
insert into PLAY(id_game, id_system_user, completed) values (42, 638,
false);
insert into PLAY(id_game, id_system_user, completed) values (20, 21,
false);
insert into PLAY(id_game, id_system_user, completed) values (91, 752,
false);
insert into PLAY(id_game, id_system_user, completed) values (78, 979,
true);
insert into PLAY(id_game, id_system_user, completed) values (64, 549,
true);
insert into PLAY(id_game, id_system_user, completed) values (73, 12,
true);
insert into PLAY(id_game, id_system_user, completed) values (58, 52,
true);
insert into PLAY(id_game, id_system_user, completed) values (100, 289,
false);
insert into PLAY(id_game, id_system_user, completed) values (45, 176,
true);
insert into PLAY(id_game, id_system_user, completed) values (74, 602,
true);
insert into PLAY(id_game, id_system_user, completed) values (17, 897,
true);
insert into PLAY(id_game, id_system_user, completed) values (72, 471,
false);
insert into PLAY(id_game, id_system_user, completed) values (54, 42,
false);
insert into PLAY(id_game, id_system_user, completed) values (39, 720,
true);
insert into PLAY(id_game, id_system_user, completed) values (14, 638,
false);
insert into PLAY(id_game, id_system_user, completed) values (39, 971,
false);
insert into PLAY(id_game, id_system_user, completed) values (15, 23,
false);
insert into PLAY(id_game, id_system_user, completed) values (75, 37,
false);
insert into PLAY(id_game, id_system_user, completed) values (75, 926,
false);
insert into PLAY(id_game, id_system_user, completed) values (7, 55,
true);
insert into PLAY(id_game, id_system_user, completed) values (69, 928,
false);
insert into PLAY(id_game, id_system_user, completed) values (74, 815,
false);
insert into PLAY(id_game, id_system_user, completed) values (56, 689,
true);
insert into PLAY(id_game, id_system_user, completed) values (85, 265,
true);
insert into PLAY(id_game, id_system_user, completed) values (30, 44,
true);
insert into PLAY(id_game, id_system_user, completed) values (13, 845,
false);
insert into PLAY(id_game, id_system_user, completed) values (60, 400,
true);
insert into PLAY(id_game, id_system_user, completed) values (43, 911,
false);
insert into PLAY(id_game, id_system_user, completed) values (24, 365,
true);
insert into PLAY(id_game, id_system_user, completed) values (95, 541,
true);
insert into PLAY(id_game, id_system_user, completed) values (30, 737,
false);
insert into PLAY(id_game, id_system_user, completed) values (58, 701,
false);
insert into PLAY(id_game, id_system_user, completed) values (55, 104,
true);
insert into PLAY(id_game, id_system_user, completed) values (71, 75,
false);
insert into PLAY(id_game, id_system_user, completed) values (33, 182,
true);
insert into PLAY(id_game, id_system_user, completed) values (72, 948,
true);
insert into PLAY(id_game, id_system_user, completed) values (100, 576,
true);
insert into PLAY(id_game, id_system_user, completed) values (71, 662,
false);
insert into PLAY(id_game, id_system_user, completed) values (67, 15,
false);
insert into PLAY(id_game, id_system_user, completed) values (13, 719,
false);
insert into PLAY(id_game, id_system_user, completed) values (64, 78,
false);
insert into PLAY(id_game, id_system_user, completed) values (18, 742,
true);
insert into PLAY(id_game, id_system_user, completed) values (11, 825,
false);
insert into PLAY(id_game, id_system_user, completed) values (13, 995,
true);
insert into PLAY(id_game, id_system_user, completed) values (44, 362,
true);
insert into PLAY(id_game, id_system_user, completed) values (60, 323,
false);
insert into PLAY(id_game, id_system_user, completed) values (74, 766,
true);
insert into PLAY(id_game, id_system_user, completed) values (72, 96,
false);
insert into PLAY(id_game, id_system_user, completed) values (42, 966,
false);
insert into PLAY(id_game, id_system_user, completed) values (39, 585,
true);
insert into PLAY(id_game, id_system_user, completed) values (9, 325,
true);
insert into PLAY(id_game, id_system_user, completed) values (42, 169,
false);
insert into PLAY(id_game, id_system_user, completed) values (38, 480,
true);
insert into PLAY(id_game, id_system_user, completed) values (37, 703,
true);
insert into PLAY(id_game, id_system_user, completed) values (17, 252,
false);
insert into PLAY(id_game, id_system_user, completed) values (99, 138,
false);
insert into PLAY(id_game, id_system_user, completed) values (34, 418,
false);
insert into PLAY(id_game, id_system_user, completed) values (83, 137,
true);
insert into PLAY(id_game, id_system_user, completed) values (48, 669,
false);
insert into PLAY(id_game, id_system_user, completed) values (21, 683,
true);
insert into PLAY(id_game, id_system_user, completed) values (17, 630,
false);
insert into PLAY(id_game, id_system_user, completed) values (97, 990,
true);
insert into PLAY(id_game, id_system_user, completed) values (91, 721,
true);
insert into PLAY(id_game, id_system_user, completed) values (71, 827,
false);
insert into PLAY(id_game, id_system_user, completed) values (10, 435,
true);
insert into PLAY(id_game, id_system_user, completed) values (51, 62,
false);
insert into PLAY(id_game, id_system_user, completed) values (34, 668,
true);
insert into PLAY(id_game, id_system_user, completed) values (15, 501,
false);
insert into PLAY(id_game, id_system_user, completed) values (12, 634,
true);
insert into PLAY(id_game, id_system_user, completed) values (8, 655,
false);
insert into PLAY(id_game, id_system_user, completed) values (42, 392,
false);
insert into PLAY(id_game, id_system_user, completed) values (40, 415,
true);
insert into PLAY(id_game, id_system_user, completed) values (77, 130,
true);
insert into PLAY(id_game, id_system_user, completed) values (43, 198,
false);
insert into PLAY(id_game, id_system_user, completed) values (38, 723,
true);
insert into PLAY(id_game, id_system_user, completed) values (64, 7,
false);
insert into PLAY(id_game, id_system_user, completed) values (66, 763,
true);
insert into PLAY(id_game, id_system_user, completed) values (45, 824,
true);
insert into PLAY(id_game, id_system_user, completed) values (56, 370,
false);
insert into PLAY(id_game, id_system_user, completed) values (95, 508,
true);
insert into PLAY(id_game, id_system_user, completed) values (6, 638,
true);
insert into PLAY(id_game, id_system_user, completed) values (25, 542,
true);
insert into PLAY(id_game, id_system_user, completed) values (42, 865,
true);
insert into PLAY(id_game, id_system_user, completed) values (96, 680,
false);
insert into PLAY(id_game, id_system_user, completed) values (21, 617,
true);
insert into PLAY(id_game, id_system_user, completed) values (58, 732,
false);
insert into PLAY(id_game, id_system_user, completed) values (41, 332,
false);
insert into PLAY(id_game, id_system_user, completed) values (80, 490,
false);
insert into PLAY(id_game, id_system_user, completed) values (53, 8,
false);
insert into PLAY(id_game, id_system_user, completed) values (37, 250,
false);
insert into PLAY(id_game, id_system_user, completed) values (60, 741,
false);
insert into PLAY(id_game, id_system_user, completed) values (6, 633,
true);
insert into PLAY(id_game, id_system_user, completed) values (83, 918,
true);
insert into PLAY(id_game, id_system_user, completed) values (58, 822,
true);
insert into PLAY(id_game, id_system_user, completed) values (56, 10,
false);
insert into PLAY(id_game, id_system_user, completed) values (60, 528,
false);
insert into PLAY(id_game, id_system_user, completed) values (81, 239,
false);
insert into PLAY(id_game, id_system_user, completed) values (3, 569,
false);
insert into PLAY(id_game, id_system_user, completed) values (80, 132,
true);
insert into PLAY(id_game, id_system_user, completed) values (3, 58,
true);
insert into PLAY(id_game, id_system_user, completed) values (82, 963,
false);
insert into PLAY(id_game, id_system_user, completed) values (100, 869,
true);
insert into PLAY(id_game, id_system_user, completed) values (99, 219,
false);
insert into PLAY(id_game, id_system_user, completed) values (62, 48,
true);
insert into PLAY(id_game, id_system_user, completed) values (56, 378,
false);
insert into PLAY(id_game, id_system_user, completed) values (72, 401,
false);
insert into PLAY(id_game, id_system_user, completed) values (31, 579,
true);
insert into PLAY(id_game, id_system_user, completed) values (82, 945,
false);
insert into PLAY(id_game, id_system_user, completed) values (59, 839,
false);
insert into PLAY(id_game, id_system_user, completed) values (77, 980,
false);
insert into PLAY(id_game, id_system_user, completed) values (16, 865,
false);
insert into PLAY(id_game, id_system_user, completed) values (97, 584,
true);
insert into PLAY(id_game, id_system_user, completed) values (21, 787,
false);
insert into PLAY(id_game, id_system_user, completed) values (98, 52,
true);
insert into PLAY(id_game, id_system_user, completed) values (38, 977,
false);
insert into PLAY(id_game, id_system_user, completed) values (12, 766,
false);
insert into PLAY(id_game, id_system_user, completed) values (33, 561,
false);
insert into PLAY(id_game, id_system_user, completed) values (36, 494,
true);
insert into PLAY(id_game, id_system_user, completed) values (3, 269,
true);
insert into PLAY(id_game, id_system_user, completed) values (53, 899,
false);
insert into PLAY(id_game, id_system_user, completed) values (24, 898,
false);
insert into PLAY(id_game, id_system_user, completed) values (100, 527,
true);
insert into PLAY(id_game, id_system_user, completed) values (44, 459,
false);
insert into PLAY(id_game, id_system_user, completed) values (59, 322,
true);
insert into PLAY(id_game, id_system_user, completed) values (88, 249,
true);
insert into PLAY(id_game, id_system_user, completed) values (69, 287,
true);
insert into PLAY(id_game, id_system_user, completed) values (43, 221,
true);
insert into PLAY(id_game, id_system_user, completed) values (12, 165,
true);
insert into PLAY(id_game, id_system_user, completed) values (83, 52,
true);
insert into PLAY(id_game, id_system_user, completed) values (28, 362,
true);
insert into PLAY(id_game, id_system_user, completed) values (99, 812,
true);
insert into PLAY(id_game, id_system_user, completed) values (97, 708,
true);
insert into PLAY(id_game, id_system_user, completed) values (34, 322,
true);
insert into PLAY(id_game, id_system_user, completed) values (31, 605,
true);
insert into PLAY(id_game, id_system_user, completed) values (1, 944,
false);
insert into PLAY(id_game, id_system_user, completed) values (72, 966,
false);
insert into PLAY(id_game, id_system_user, completed) values (58, 340,
false);
insert into PLAY(id_game, id_system_user, completed) values (83, 687,
false);
insert into PLAY(id_game, id_system_user, completed) values (70, 795,
false);
insert into PLAY(id_game, id_system_user, completed) values (43, 67,
false);
insert into PLAY(id_game, id_system_user, completed) values (41, 321,
true);
insert into PLAY(id_game, id_system_user, completed) values (62, 397,
true);
insert into PLAY(id_game, id_system_user, completed) values (55, 787,
true);
insert into PLAY(id_game, id_system_user, completed) values (98, 704,
false);
insert into PLAY(id_game, id_system_user, completed) values (1, 145,
false);
insert into PLAY(id_game, id_system_user, completed) values (65, 206,
true);
insert into PLAY(id_game, id_system_user, completed) values (41, 123,
true);
insert into PLAY(id_game, id_system_user, completed) values (13, 90,
true);
insert into PLAY(id_game, id_system_user, completed) values (84, 325,
true);
insert into PLAY(id_game, id_system_user, completed) values (62, 281,
false);
insert into PLAY(id_game, id_system_user, completed) values (93, 139,
false);
insert into PLAY(id_game, id_system_user, completed) values (17, 244,
false);
insert into PLAY(id_game, id_system_user, completed) values (99, 329,
true);
insert into PLAY(id_game, id_system_user, completed) values (93, 671,
false);
insert into PLAY(id_game, id_system_user, completed) values (3, 876,
true);
insert into PLAY(id_game, id_system_user, completed) values (49, 3,
true);
insert into PLAY(id_game, id_system_user, completed) values (65, 234,
false);
insert into PLAY(id_game, id_system_user, completed) values (38, 750,
true);
insert into PLAY(id_game, id_system_user, completed) values (95, 301,
false);
insert into PLAY(id_game, id_system_user, completed) values (15, 795,
true);
insert into PLAY(id_game, id_system_user, completed) values (71, 188,
true);
insert into PLAY(id_game, id_system_user, completed) values (95, 774,
false);
insert into PLAY(id_game, id_system_user, completed) values (57, 637,
true);
insert into PLAY(id_game, id_system_user, completed) values (29, 754,
false);
insert into PLAY(id_game, id_system_user, completed) values (75, 522,
true);
insert into PLAY(id_game, id_system_user, completed) values (65, 249,
false);
insert into PLAY(id_game, id_system_user, completed) values (51, 593,
true);
insert into PLAY(id_game, id_system_user, completed) values (77, 5,
false);
insert into PLAY(id_game, id_system_user, completed) values (59, 260,
false);
insert into PLAY(id_game, id_system_user, completed) values (96, 223,
false);
insert into PLAY(id_game, id_system_user, completed) values (76, 514,
true);
insert into PLAY(id_game, id_system_user, completed) values (66, 218,
true);
insert into PLAY(id_game, id_system_user, completed) values (51, 837,
false);
insert into PLAY(id_game, id_system_user, completed) values (51, 720,
false);
insert into PLAY(id_game, id_system_user, completed) values (48, 762,
false);
insert into PLAY(id_game, id_system_user, completed) values (52, 979,
false);
insert into PLAY(id_game, id_system_user, completed) values (47, 2,
true);
insert into PLAY(id_game, id_system_user, completed) values (85, 571,
true);
insert into PLAY(id_game, id_system_user, completed) values (59, 316,
false);
insert into PLAY(id_game, id_system_user, completed) values (38, 938,
true);
insert into PLAY(id_game, id_system_user, completed) values (74, 685,
true);
insert into PLAY(id_game, id_system_user, completed) values (96, 502,
true);
insert into PLAY(id_game, id_system_user, completed) values (29, 554,
true);
insert into PLAY(id_game, id_system_user, completed) values (77, 141,
false);
insert into PLAY(id_game, id_system_user, completed) values (17, 159,
false);
insert into PLAY(id_game, id_system_user, completed) values (49, 78,
true);
insert into PLAY(id_game, id_system_user, completed) values (70, 507,
false);
insert into PLAY(id_game, id_system_user, completed) values (84, 516,
false);
insert into PLAY(id_game, id_system_user, completed) values (96, 480,
false);
insert into PLAY(id_game, id_system_user, completed) values (69, 925,
true);
insert into PLAY(id_game, id_system_user, completed) values (86, 721,
true);
insert into PLAY(id_game, id_system_user, completed) values (36, 59,
true);
insert into PLAY(id_game, id_system_user, completed) values (13, 683,
true);
insert into PLAY(id_game, id_system_user, completed) values (55, 28,
false);
insert into PLAY(id_game, id_system_user, completed) values (86, 364,
false);
insert into PLAY(id_game, id_system_user, completed) values (41, 543,
true);
insert into PLAY(id_game, id_system_user, completed) values (59, 872,
false);
insert into PLAY(id_game, id_system_user, completed) values (95, 33,
false);
insert into PLAY(id_game, id_system_user, completed) values (79, 650,
false);
insert into PLAY(id_game, id_system_user, completed) values (64, 650,
true);
insert into PLAY(id_game, id_system_user, completed) values (99, 644,
false);
insert into PLAY(id_game, id_system_user, completed) values (44, 487,
true);
insert into PLAY(id_game, id_system_user, completed) values (6, 897,
false);
insert into PLAY(id_game, id_system_user, completed) values (79, 427,
true);
insert into PLAY(id_game, id_system_user, completed) values (83, 755,
false);
insert into PLAY(id_game, id_system_user, completed) values (77, 650,
true);
insert into PLAY(id_game, id_system_user, completed) values (77, 367,
false);
insert into PLAY(id_game, id_system_user, completed) values (12, 799,
true);
insert into PLAY(id_game, id_system_user, completed) values (48, 331,
false);
insert into PLAY(id_game, id_system_user, completed) values (52, 600,
false);
insert into PLAY(id_game, id_system_user, completed) values (7, 317,
false);
insert into PLAY(id_game, id_system_user, completed) values (68, 82,
false);
insert into PLAY(id_game, id_system_user, completed) values (30, 174,
false);
insert into PLAY(id_game, id_system_user, completed) values (78, 747,
false);
insert into PLAY(id_game, id_system_user, completed) values (49, 567,
false);
insert into PLAY(id_game, id_system_user, completed) values (71, 45,
false);
insert into PLAY(id_game, id_system_user, completed) values (32, 119,
false);
insert into PLAY(id_game, id_system_user, completed) values (32, 54,
false);
insert into PLAY(id_game, id_system_user, completed) values (32, 902,
true);
insert into PLAY(id_game, id_system_user, completed) values (32, 708,
false);
insert into PLAY(id_game, id_system_user, completed) values (32, 13,
true);
insert into PLAY(id_game, id_system_user, completed) values (40, 429,
false);
insert into PLAY(id_game, id_system_user, completed) values (66, 703,
true);
insert into PLAY(id_game, id_system_user, completed) values (32, 70,
false);
insert into PLAY(id_game, id_system_user, completed) values (77, 763,
true);
insert into PLAY(id_game, id_system_user, completed) values (52, 844,
false);
insert into PLAY(id_game, id_system_user, completed) values (88, 531,
false);
insert into PLAY(id_game, id_system_user, completed) values (73, 682,
false);
insert into PLAY(id_game, id_system_user, completed) values (27, 786,
false);
insert into PLAY(id_game, id_system_user, completed) values (69, 283,
false);
insert into PLAY(id_game, id_system_user, completed) values (67, 834,
true);
insert into PLAY(id_game, id_system_user, completed) values (63, 950,
true);
insert into PLAY(id_game, id_system_user, completed) values (82, 408,
true);
insert into PLAY(id_game, id_system_user, completed) values (62, 404,
false);
insert into PLAY(id_game, id_system_user, completed) values (72, 936,
true);
insert into PLAY(id_game, id_system_user, completed) values (67, 404,
false);
insert into PLAY(id_game, id_system_user, completed) values (42, 212,
false);
insert into PLAY(id_game, id_system_user, completed) values (88, 416,
false);
insert into PLAY(id_game, id_system_user, completed) values (32, 703,
false);
insert into PLAY(id_game, id_system_user, completed) values (35, 442,
true);
insert into PLAY(id_game, id_system_user, completed) values (8, 310,
true);
insert into PLAY(id_game, id_system_user, completed) values (91, 722,
false);
insert into PLAY(id_game, id_system_user, completed) values (71, 249,
true);
insert into PLAY(id_game, id_system_user, completed) values (36, 161,
false);
insert into PLAY(id_game, id_system_user, completed) values (82, 321,
false);
insert into PLAY(id_game, id_system_user, completed) values (61, 201,
false);
insert into PLAY(id_game, id_system_user, completed) values (98, 632,
false);
insert into PLAY(id_game, id_system_user, completed) values (71, 86,
false);
insert into PLAY(id_game, id_system_user, completed) values (17, 807,
false);
insert into PLAY(id_game, id_system_user, completed) values (31, 506,
true);
insert into PLAY(id_game, id_system_user, completed) values (42, 187,
false);
insert into PLAY(id_game, id_system_user, completed) values (3, 897,
true);
insert into PLAY(id_game, id_system_user, completed) values (36, 255,
true);
insert into PLAY(id_game, id_system_user, completed) values (95, 920,
false);
insert into PLAY(id_game, id_system_user, completed) values (57, 294,
true);
insert into PLAY(id_game, id_system_user, completed) values (76, 833,
false);
insert into PLAY(id_game, id_system_user, completed) values (71, 8,
true);
insert into PLAY(id_game, id_system_user, completed) values (8, 648,
true);
insert into PLAY(id_game, id_system_user, completed) values (90, 293,
false);
insert into PLAY(id_game, id_system_user, completed) values (74, 53,
false);
insert into PLAY(id_game, id_system_user, completed) values (31, 210,
true);
insert into PLAY(id_game, id_system_user, completed) values (83, 128,
true);
insert into PLAY(id_game, id_system_user, completed) values (60, 845,
true);
insert into PLAY(id_game, id_system_user, completed) values (15, 826,
false);
insert into PLAY(id_game, id_system_user, completed) values (61, 543,
true);
insert into PLAY(id_game, id_system_user, completed) values (26, 308,
false);
insert into PLAY(id_game, id_system_user, completed) values (41, 706,
true);
insert into PLAY(id_game, id_system_user, completed) values (43, 206,
false);
insert into PLAY(id_game, id_system_user, completed) values (44, 192,
true);
insert into PLAY(id_game, id_system_user, completed) values (38, 385,
false);
insert into PLAY(id_game, id_system_user, completed) values (23, 430,
true);
insert into PLAY(id_game, id_system_user, completed) values (98, 113,
false);
insert into PLAY(id_game, id_system_user, completed) values (42, 322,
true);
insert into PLAY(id_game, id_system_user, completed) values (2, 405,
true);
insert into PLAY(id_game, id_system_user, completed) values (44, 233,
false);
insert into PLAY(id_game, id_system_user, completed) values (89, 464,
true);
insert into PLAY(id_game, id_system_user, completed) values (86, 469,
true);
insert into PLAY(id_game, id_system_user, completed) values (76, 315,
false);
insert into PLAY(id_game, id_system_user, completed) values (88, 48,
true);
insert into PLAY(id_game, id_system_user, completed) values (80, 295,
true);
insert into PLAY(id_game, id_system_user, completed) values (89, 615,
false);
insert into PLAY(id_game, id_system_user, completed) values (32, 53,
true);
insert into PLAY(id_game, id_system_user, completed) values (45, 379,
false);
insert into PLAY(id_game, id_system_user, completed) values (13, 425,
true);
insert into PLAY(id_game, id_system_user, completed) values (22, 406,
false);
insert into PLAY(id_game, id_system_user, completed) values (67, 823,
false);
insert into PLAY(id_game, id_system_user, completed) values (25, 865,
false);
insert into PLAY(id_game, id_system_user, completed) values (97, 401,
false);
insert into PLAY(id_game, id_system_user, completed) values (17, 699,
true);
insert into PLAY(id_game, id_system_user, completed) values (15, 345,
true);
insert into PLAY(id_game, id_system_user, completed) values (30, 113,
false);
insert into PLAY(id_game, id_system_user, completed) values (21, 650,
true);
insert into PLAY(id_game, id_system_user, completed) values (71, 708,
true);
insert into PLAY(id_game, id_system_user, completed) values (64, 464,
false);
insert into PLAY(id_game, id_system_user, completed) values (13, 201,
false);
insert into PLAY(id_game, id_system_user, completed) values (15, 730,
true);
insert into PLAY(id_game, id_system_user, completed) values (18, 252,
true);
insert into PLAY(id_game, id_system_user, completed) values (89, 705,
false);
insert into PLAY(id_game, id_system_user, completed) values (87, 290,
true);
insert into PLAY(id_game, id_system_user, completed) values (56, 38,
false);
insert into PLAY(id_game, id_system_user, completed) values (46, 13,
false);
insert into PLAY(id_game, id_system_user, completed) values (91, 832,
false);
insert into PLAY(id_game, id_system_user, completed) values (64, 155,
true);
insert into PLAY(id_game, id_system_user, completed) values (27, 350,
false);
insert into PLAY(id_game, id_system_user, completed) values (50, 665,
true);
insert into PLAY(id_game, id_system_user, completed) values (88, 796,
false);
insert into PLAY(id_game, id_system_user, completed) values (67, 492,
true);
insert into PLAY(id_game, id_system_user, completed) values (100, 547,
false);
insert into PLAY(id_game, id_system_user, completed) values (80, 786,
true);
insert into PLAY(id_game, id_system_user, completed) values (17, 362,
false);
insert into PLAY(id_game, id_system_user, completed) values (18, 814,
false);
insert into PLAY(id_game, id_system_user, completed) values (19, 761,
true);
insert into PLAY(id_game, id_system_user, completed) values (21, 187,
true);
insert into PLAY(id_game, id_system_user, completed) values (11, 273,
true);
insert into PLAY(id_game, id_system_user, completed) values (73, 799,
true);
insert into PLAY(id_game, id_system_user, completed) values (89, 487,
true);
insert into PLAY(id_game, id_system_user, completed) values (65, 336,
true);
insert into PLAY(id_game, id_system_user, completed) values (10, 832,
true);
insert into PLAY(id_game, id_system_user, completed) values (72, 829,
false);
insert into PLAY(id_game, id_system_user, completed) values (1, 905,
true);
insert into PLAY(id_game, id_system_user, completed) values (70, 909,
false);
insert into PLAY(id_game, id_system_user, completed) values (42, 948,
true);
insert into PLAY(id_game, id_system_user, completed) values (64, 989,
false);
insert into PLAY(id_game, id_system_user, completed) values (72, 451,
true);
insert into PLAY(id_game, id_system_user, completed) values (94, 824,
false);
insert into PLAY(id_game, id_system_user, completed) values (8, 217,
true);
insert into PLAY(id_game, id_system_user, completed) values (31, 42,
true);
insert into PLAY(id_game, id_system_user, completed) values (86, 614,
false);
insert into PLAY(id_game, id_system_user, completed) values (72, 959,
true);
insert into PLAY(id_game, id_system_user, completed) values (47, 665,
false);
insert into PLAY(id_game, id_system_user, completed) values (93, 456,
false);
insert into PLAY(id_game, id_system_user, completed) values (51, 804,
true);
insert into PLAY(id_game, id_system_user, completed) values (9, 393,
false);
insert into PLAY(id_game, id_system_user, completed) values (70, 148,
false);
insert into PLAY(id_game, id_system_user, completed) values (18, 927,
false);
insert into PLAY(id_game, id_system_user, completed) values (16, 742,
false);
insert into PLAY(id_game, id_system_user, completed) values (50, 113,
true);
insert into PLAY(id_game, id_system_user, completed) values (72, 728,
false);
insert into PLAY(id_game, id_system_user, completed) values (79, 839,
false);
insert into PLAY(id_game, id_system_user, completed) values (7, 235,
false);
insert into PLAY(id_game, id_system_user, completed) values (37, 340,
true);
insert into PLAY(id_game, id_system_user, completed) values (68, 324,
false);
insert into PLAY(id_game, id_system_user, completed) values (36, 221,
false);
insert into PLAY(id_game, id_system_user, completed) values (17, 1,
true);
insert into PLAY(id_game, id_system_user, completed) values (57, 94,
false);
insert into PLAY(id_game, id_system_user, completed) values (60, 754,
false);
insert into PLAY(id_game, id_system_user, completed) values (84, 605,
true);
insert into PLAY(id_game, id_system_user, completed) values (19, 520,
false);
insert into PLAY(id_game, id_system_user, completed) values (40, 951,
false);
insert into PLAY(id_game, id_system_user, completed) values (14, 249,
true);
insert into PLAY(id_game, id_system_user, completed) values (41, 846,
false);
insert into PLAY(id_game, id_system_user, completed) values (64, 472,
true);
insert into PLAY(id_game, id_system_user, completed) values (10, 963,
true);
insert into PLAY(id_game, id_system_user, completed) values (71, 796,
false);
insert into PLAY(id_game, id_system_user, completed) values (25, 766,
true);
insert into PLAY(id_game, id_system_user, completed) values (47, 992,
false);
insert into PLAY(id_game, id_system_user, completed) values (31, 131,
false);
insert into PLAY(id_game, id_system_user, completed) values (61, 47,
true);
insert into PLAY(id_game, id_system_user, completed) values (59, 773,
true);
insert into PLAY(id_game, id_system_user, completed) values (61, 320,
true);
insert into PLAY(id_game, id_system_user, completed) values (60, 274,
true);
insert into PLAY(id_game, id_system_user, completed) values (3, 69,
true);
insert into PLAY(id_game, id_system_user, completed) values (59, 343,
false);
insert into PLAY(id_game, id_system_user, completed) values (45, 789,
false);
insert into PLAY(id_game, id_system_user, completed) values (3, 751,
false);
insert into PLAY(id_game, id_system_user, completed) values (54, 946,
true);
insert into PLAY(id_game, id_system_user, completed) values (99, 289,
true);
insert into PLAY(id_game, id_system_user, completed) values (40, 697,
true);
insert into PLAY(id_game, id_system_user, completed) values (63, 960,
false);
insert into PLAY(id_game, id_system_user, completed) values (83, 812,
false);
insert into PLAY(id_game, id_system_user, completed) values (38, 844,
false);
insert into PLAY(id_game, id_system_user, completed) values (9, 829,
false);
insert into PLAY(id_game, id_system_user, completed) values (14, 161,
true);
insert into PLAY(id_game, id_system_user, completed) values (41, 895,
false);
insert into PLAY(id_game, id_system_user, completed) values (13, 753,
false);
insert into PLAY(id_game, id_system_user, completed) values (70, 888,
false);
insert into PLAY(id_game, id_system_user, completed) values (75, 797,
true);
insert into PLAY(id_game, id_system_user, completed) values (92, 830,
true);
insert into PLAY(id_game, id_system_user, completed) values (48, 823,
false);
insert into PLAY(id_game, id_system_user, completed) values (35, 989,
false);
insert into PLAY(id_game, id_system_user, completed) values (80, 701,
true);
insert into PLAY(id_game, id_system_user, completed) values (15, 9,
true);
insert into PLAY(id_game, id_system_user, completed) values (69, 497,
false);
insert into PLAY(id_game, id_system_user, completed) values (86, 984,
false);
insert into PLAY(id_game, id_system_user, completed) values (10, 26,
true);
insert into PLAY(id_game, id_system_user, completed) values (31, 533,
true);
insert into PLAY(id_game, id_system_user, completed) values (11, 905,
false);
insert into PLAY(id_game, id_system_user, completed) values (3, 171,
false);
insert into PLAY(id_game, id_system_user, completed) values (67, 914,
true);
insert into PLAY(id_game, id_system_user, completed) values (57, 792,
false);
insert into PLAY(id_game, id_system_user, completed) values (49, 728,
false);
insert into PLAY(id_game, id_system_user, completed) values (11, 873,
false);
insert into PLAY(id_game, id_system_user, completed) values (79, 68,
true);
insert into PLAY(id_game, id_system_user, completed) values (76, 452,
true);
insert into PLAY(id_game, id_system_user, completed) values (42, 489,
false);
insert into PLAY(id_game, id_system_user, completed) values (84, 873,
false);
insert into PLAY(id_game, id_system_user, completed) values (11, 797,
false);
insert into PLAY(id_game, id_system_user, completed) values (72, 251,
true);
insert into PLAY(id_game, id_system_user, completed) values (3, 438,
true);
insert into PLAY(id_game, id_system_user, completed) values (19, 256,
false);
insert into PLAY(id_game, id_system_user, completed) values (60, 394,
true);
insert into PLAY(id_game, id_system_user, completed) values (86, 328,
false);
insert into PLAY(id_game, id_system_user, completed) values (82, 238,
false);
insert into PLAY(id_game, id_system_user, completed) values (72, 593,
false);
insert into PLAY(id_game, id_system_user, completed) values (22, 966,
true);
insert into PLAY(id_game, id_system_user, completed) values (73, 683,
true);
insert into PLAY(id_game, id_system_user, completed) values (90, 423,
false);
insert into PLAY(id_game, id_system_user, completed) values (38, 372,
true);
insert into PLAY(id_game, id_system_user, completed) values (41, 793,
false);
insert into PLAY(id_game, id_system_user, completed) values (72, 208,
false);
insert into PLAY(id_game, id_system_user, completed) values (16, 860,
false);
insert into PLAY(id_game, id_system_user, completed) values (58, 940,
false);
insert into PLAY(id_game, id_system_user, completed) values (93, 918,
false);
insert into PLAY(id_game, id_system_user, completed) values (94, 929,
true);
insert into PLAY(id_game, id_system_user, completed) values (21, 483,
false);
insert into PLAY(id_game, id_system_user, completed) values (66, 245,
false);
insert into PLAY(id_game, id_system_user, completed) values (55, 762,
false);
insert into PLAY(id_game, id_system_user, completed) values (71, 172,
false);
insert into PLAY(id_game, id_system_user, completed) values (11, 147,
true);
insert into PLAY(id_game, id_system_user, completed) values (73, 986,
true);
insert into PLAY(id_game, id_system_user, completed) values (84, 457,
true);
insert into PLAY(id_game, id_system_user, completed) values (85, 481,
false);
insert into PLAY(id_game, id_system_user, completed) values (84, 638,
false);
insert into PLAY(id_game, id_system_user, completed) values (40, 356,
false);
insert into PLAY(id_game, id_system_user, completed) values (26, 552,
true);
insert into PLAY(id_game, id_system_user, completed) values (9, 72,
true);
insert into PLAY(id_game, id_system_user, completed) values (42, 157,
true);
insert into PLAY(id_game, id_system_user, completed) values (7, 783,
false);
insert into PLAY(id_game, id_system_user, completed) values (37, 572,
true);
insert into PLAY(id_game, id_system_user, completed) values (35, 998,
true);
insert into PLAY(id_game, id_system_user, completed) values (74, 89,
false);
insert into PLAY(id_game, id_system_user, completed) values (69, 838,
false);
insert into PLAY(id_game, id_system_user, completed) values (21, 165,
true);
insert into PLAY(id_game, id_system_user, completed) values (46, 689,
false);
insert into PLAY(id_game, id_system_user, completed) values (45, 941,
false);
insert into PLAY(id_game, id_system_user, completed) values (85, 387,
false);
insert into PLAY(id_game, id_system_user, completed) values (48, 332,
true);
insert into PLAY(id_game, id_system_user, completed) values (38, 517,
true);
insert into PLAY(id_game, id_system_user, completed) values (8, 286,
false);
insert into PLAY(id_game, id_system_user, completed) values (88, 366,
false);
insert into PLAY(id_game, id_system_user, completed) values (71, 835,
true);
insert into PLAY(id_game, id_system_user, completed) values (3, 810,
false);
insert into PLAY(id_game, id_system_user, completed) values (27, 429,
true);
insert into PLAY(id_game, id_system_user, completed) values (95, 684,
false);
insert into PLAY(id_game, id_system_user, completed) values (32, 98,
true);
insert into PLAY(id_game, id_system_user, completed) values (78, 962,
false);
insert into PLAY(id_game, id_system_user, completed) values (30, 117,
false);
insert into PLAY(id_game, id_system_user, completed) values (29, 408,
true);
insert into PLAY(id_game, id_system_user, completed) values (20, 335,
false);
insert into PLAY(id_game, id_system_user, completed) values (45, 145,
true);
insert into PLAY(id_game, id_system_user, completed) values (50, 973,
true);
insert into PLAY(id_game, id_system_user, completed) values (46, 202,
false);
insert into PLAY(id_game, id_system_user, completed) values (44, 356,
true);
insert into PLAY(id_game, id_system_user, completed) values (64, 773,
false);
insert into PLAY(id_game, id_system_user, completed) values (27, 423,
true);
insert into PLAY(id_game, id_system_user, completed) values (92, 848,
false);
insert into PLAY(id_game, id_system_user, completed) values (60, 637,
true);
insert into PLAY(id_game, id_system_user, completed) values (56, 165,
false);
insert into PLAY(id_game, id_system_user, completed) values (11, 784,
false);
insert into PLAY(id_game, id_system_user, completed) values (3, 470,
false);
insert into PLAY(id_game, id_system_user, completed) values (10, 775,
false);
insert into PLAY(id_game, id_system_user, completed) values (73, 501,
true);
insert into PLAY(id_game, id_system_user, completed) values (26, 572,
true);
insert into PLAY(id_game, id_system_user, completed) values (6, 612,
true);
insert into PLAY(id_game, id_system_user, completed) values (88, 662,
false);
insert into PLAY(id_game, id_system_user, completed) values (87, 610,
true);
insert into PLAY(id_game, id_system_user, completed) values (26, 965,
true);
insert into PLAY(id_game, id_system_user, completed) values (27, 810,
false);
insert into PLAY(id_game, id_system_user, completed) values (26, 612,
true);
insert into PLAY(id_game, id_system_user, completed) values (98, 252,
false);
insert into PLAY(id_game, id_system_user, completed) values (65, 130,
false);
insert into PLAY(id_game, id_system_user, completed) values (17, 341,
false);
insert into PLAY(id_game, id_system_user, completed) values (51, 67,
true);
insert into PLAY(id_game, id_system_user, completed) values (30, 128,
true);
insert into PLAY(id_game, id_system_user, completed) values (79, 842,
true);
insert into PLAY(id_game, id_system_user, completed) values (16, 938,
false);
insert into PLAY(id_game, id_system_user, completed) values (41, 587,
true);
insert into PLAY(id_game, id_system_user, completed) values (63, 765,
false);
insert into PLAY(id_game, id_system_user, completed) values (72, 632,
true);
insert into PLAY(id_game, id_system_user, completed) values (99, 41,
true);
insert into PLAY(id_game, id_system_user, completed) values (50, 352,
true);
insert into PLAY(id_game, id_system_user, completed) values (30, 501,
false);
insert into PLAY(id_game, id_system_user, completed) values (87, 775,
false);
insert into PLAY(id_game, id_system_user, completed) values (43, 374,
false);
insert into PLAY(id_game, id_system_user, completed) values (62, 460,
false);
insert into PLAY(id_game, id_system_user, completed) values (76, 393,
true);
insert into PLAY(id_game, id_system_user, completed) values (2, 852,
true);
insert into PLAY(id_game, id_system_user, completed) values (95, 348,
true);
insert into PLAY(id_game, id_system_user, completed) values (30, 940,
false);
insert into PLAY(id_game, id_system_user, completed) values (29, 286,
false);
insert into PLAY(id_game, id_system_user, completed) values (8, 81,
false);
insert into PLAY(id_game, id_system_user, completed) values (88, 600,
false);
insert into PLAY(id_game, id_system_user, completed) values (71, 759,
false);
insert into PLAY(id_game, id_system_user, completed) values (79, 375,
false);
insert into PLAY(id_game, id_system_user, completed) values (1, 62,
false);
insert into PLAY(id_game, id_system_user, completed) values (43, 7,
false);
insert into PLAY(id_game, id_system_user, completed) values (82, 207,
true);
insert into PLAY(id_game, id_system_user, completed) values (51, 768,
false);
insert into PLAY(id_game, id_system_user, completed) values (36, 516,
false);
insert into PLAY(id_game, id_system_user, completed) values (38, 902,
true);
insert into PLAY(id_game, id_system_user, completed) values (94, 127,
false);
insert into PLAY(id_game, id_system_user, completed) values (66, 853,
true);
insert into PLAY(id_game, id_system_user, completed) values (1, 717,
false);
insert into PLAY(id_game, id_system_user, completed) values (26, 737,
false);
insert into PLAY(id_game, id_system_user, completed) values (88, 668,
true);
insert into PLAY(id_game, id_system_user, completed) values (72, 988,
true);
insert into PLAY(id_game, id_system_user, completed) values (6, 274,
true);
insert into PLAY(id_game, id_system_user, completed) values (35, 409,
true);
insert into PLAY(id_game, id_system_user, completed) values (17, 642,
true);
insert into PLAY(id_game, id_system_user, completed) values (17, 632,
true);
insert into PLAY(id_game, id_system_user, completed) values (59, 593,
false);
insert into PLAY(id_game, id_system_user, completed) values (19, 566,
false);
insert into PLAY(id_game, id_system_user, completed) values (26, 893,
false);
insert into PLAY(id_game, id_system_user, completed) values (68, 706,
true);
insert into PLAY(id_game, id_system_user, completed) values (83, 202,
false);
insert into PLAY(id_game, id_system_user, completed) values (32, 490,
true);
insert into PLAY(id_game, id_system_user, completed) values (67, 754,
false);
insert into PLAY(id_game, id_system_user, completed) values (94, 834,
true);
insert into PLAY(id_game, id_system_user, completed) values (25, 155,
true);
insert into PLAY(id_game, id_system_user, completed) values (17, 812,
false);
insert into PLAY(id_game, id_system_user, completed) values (3, 89,
false);
insert into PLAY(id_game, id_system_user, completed) values (82, 50,
false);
insert into PLAY(id_game, id_system_user, completed) values (52, 179,
true);
insert into PLAY(id_game, id_system_user, completed) values (3, 982,
true);
insert into PLAY(id_game, id_system_user, completed) values (48, 241,
false);
insert into PLAY(id_game, id_system_user, completed) values (25, 372,
true);
insert into PLAY(id_game, id_system_user, completed) values (40, 114,
false);
insert into PLAY(id_game, id_system_user, completed) values (70, 442,
false);
insert into PLAY(id_game, id_system_user, completed) values (51, 913,
true);
insert into PLAY(id_game, id_system_user, completed) values (85, 906,
false);
insert into PLAY(id_game, id_system_user, completed) values (75, 563,
true);
insert into PLAY(id_game, id_system_user, completed) values (84, 39,
true);
insert into PLAY(id_game, id_system_user, completed) values (88, 582,
false);
insert into PLAY(id_game, id_system_user, completed) values (83, 31,
true);
insert into PLAY(id_game, id_system_user, completed) values (30, 778,
false);
insert into PLAY(id_game, id_system_user, completed) values (67, 891,
true);
insert into PLAY(id_game, id_system_user, completed) values (9, 347,
false);
insert into PLAY(id_game, id_system_user, completed) values (22, 505,
false);
insert into PLAY(id_game, id_system_user, completed) values (93, 184,
false);
insert into PLAY(id_game, id_system_user, completed) values (82, 257,
false);
insert into PLAY(id_game, id_system_user, completed) values (93, 551,
false);
insert into PLAY(id_game, id_system_user, completed) values (94, 637,
false);
insert into PLAY(id_game, id_system_user, completed) values (51, 577,
false);
insert into PLAY(id_game, id_system_user, completed) values (70, 912,
false);
insert into PLAY(id_game, id_system_user, completed) values (13, 786,
false);
insert into PLAY(id_game, id_system_user, completed) values (81, 638,
true);
insert into PLAY(id_game, id_system_user, completed) values (26, 364,
false);
insert into PLAY(id_game, id_system_user, completed) values (11, 894,
false);
insert into PLAY(id_game, id_system_user, completed) values (45, 360,
false);
insert into PLAY(id_game, id_system_user, completed) values (32, 393,
false);
insert into PLAY(id_game, id_system_user, completed) values (73, 946,
false);
insert into PLAY(id_game, id_system_user, completed) values (15, 26,
false);
insert into PLAY(id_game, id_system_user, completed) values (22, 480,
true);
insert into PLAY(id_game, id_system_user, completed) values (62, 809,
false);
insert into PLAY(id_game, id_system_user, completed) values (80, 729,
false);
insert into PLAY(id_game, id_system_user, completed) values (24, 973,
true);
insert into PLAY(id_game, id_system_user, completed) values (64, 874,
true);
insert into PLAY(id_game, id_system_user, completed) values (63, 564,
true);
insert into PLAY(id_game, id_system_user, completed) values (33, 739,
false);
insert into PLAY(id_game, id_system_user, completed) values (75, 529,
false);
insert into PLAY(id_game, id_system_user, completed) values (92, 878,
false);
insert into PLAY(id_game, id_system_user, completed) values (35, 734,
true);
insert into PLAY(id_game, id_system_user, completed) values (99, 154,
true);
insert into PLAY(id_game, id_system_user, completed) values (26, 194,
true);
insert into PLAY(id_game, id_system_user, completed) values (47, 475,
true);
insert into PLAY(id_game, id_system_user, completed) values (91, 491,
false);
insert into PLAY(id_game, id_system_user, completed) values (85, 878,
true);
insert into PLAY(id_game, id_system_user, completed) values (84, 715,
false);
insert into PLAY(id_game, id_system_user, completed) values (1, 135,
false);
insert into PLAY(id_game, id_system_user, completed) values (2, 898,
false);
insert into PLAY(id_game, id_system_user, completed) values (79, 407,
false);
insert into PLAY(id_game, id_system_user, completed) values (37, 793,
true);
insert into PLAY(id_game, id_system_user, completed) values (23, 927,
false);
insert into PLAY(id_game, id_system_user, completed) values (72, 289,
true);
insert into PLAY(id_game, id_system_user, completed) values (94, 403,
true);
insert into PLAY(id_game, id_system_user, completed) values (96, 921,
true);
insert into PLAY(id_game, id_system_user, completed) values (37, 937,
true);
insert into PLAY(id_game, id_system_user, completed) values (26, 788,
true);
insert into PLAY(id_game, id_system_user, completed) values (54, 94,
true);
insert into PLAY(id_game, id_system_user, completed) values (58, 235,
true);
insert into PLAY(id_game, id_system_user, completed) values (33, 854,
false);
insert into PLAY(id_game, id_system_user, completed) values (99, 48,
true);
insert into PLAY(id_game, id_system_user, completed) values (41, 122,
true);
insert into PLAY(id_game, id_system_user, completed) values (52, 549,
true);
insert into PLAY(id_game, id_system_user, completed) values (64, 818,
false);
insert into PLAY(id_game, id_system_user, completed) values (1, 876,
true);
insert into PLAY(id_game, id_system_user, completed) values (65, 52,
true);
insert into PLAY(id_game, id_system_user, completed) values (36, 461,
false);
insert into PLAY(id_game, id_system_user, completed) values (72, 636,
true);
insert into PLAY(id_game, id_system_user, completed) values (66, 569,
true);
insert into PLAY(id_game, id_system_user, completed) values (24, 631,
false);
insert into PLAY(id_game, id_system_user, completed) values (1, 263,
true);
insert into PLAY(id_game, id_system_user, completed) values (9, 566,
true);
insert into PLAY(id_game, id_system_user, completed) values (89, 315,
true);
insert into PLAY(id_game, id_system_user, completed) values (99, 113,
true);
insert into PLAY(id_game, id_system_user, completed) values (49, 317,
false);
insert into PLAY(id_game, id_system_user, completed) values (76, 517,
true);
insert into PLAY(id_game, id_system_user, completed) values (12, 376,
false);
insert into PLAY(id_game, id_system_user, completed) values (47, 846,
true);
insert into PLAY(id_game, id_system_user, completed) values (94, 923,
false);
insert into PLAY(id_game, id_system_user, completed) values (86, 775,
true);
insert into PLAY(id_game, id_system_user, completed) values (89, 661,
true);
insert into PLAY(id_game, id_system_user, completed) values (82, 761,
true);
insert into PLAY(id_game, id_system_user, completed) values (96, 627,
false);
insert into PLAY(id_game, id_system_user, completed) values (89, 845,
false);
insert into PLAY(id_game, id_system_user, completed) values (19, 370,
false);
insert into PLAY(id_game, id_system_user, completed) values (11, 973,
true);
insert into PLAY(id_game, id_system_user, completed) values (42, 867,
true);
insert into PLAY(id_game, id_system_user, completed) values (33, 461,
true);
insert into PLAY(id_game, id_system_user, completed) values (63, 187,
true);
insert into PLAY(id_game, id_system_user, completed) values (39, 516,
true);
insert into PLAY(id_game, id_system_user, completed) values (3, 750,
false);
insert into PLAY(id_game, id_system_user, completed) values (24, 729,
false);
insert into PLAY(id_game, id_system_user, completed) values (52, 411,
false);
insert into PLAY(id_game, id_system_user, completed) values (26, 592,
true);
insert into PLAY(id_game, id_system_user, completed) values (71, 57,
false);
insert into PLAY(id_game, id_system_user, completed) values (96, 632,
false);
insert into PLAY(id_game, id_system_user, completed) values (39, 61,
false);
insert into PLAY(id_game, id_system_user, completed) values (80, 692,
false);
insert into PLAY(id_game, id_system_user, completed) values (6, 265,
false);
insert into PLAY(id_game, id_system_user, completed) values (50, 350,
false);
insert into PLAY(id_game, id_system_user, completed) values (40, 916,
false);
insert into PLAY(id_game, id_system_user, completed) values (82, 409,
false);
insert into PLAY(id_game, id_system_user, completed) values (54, 999,
false);
insert into PLAY(id_game, id_system_user, completed) values (98, 35,
true);
insert into PLAY(id_game, id_system_user, completed) values (7, 71,
false);
insert into PLAY(id_game, id_system_user, completed) values (60, 869,
true);
insert into PLAY(id_game, id_system_user, completed) values (10, 451,
false);
insert into PLAY(id_game, id_system_user, completed) values (65, 156,
true);
insert into PLAY(id_game, id_system_user, completed) values (7, 360,
true);
insert into PLAY(id_game, id_system_user, completed) values (12, 218,
false);
insert into PLAY(id_game, id_system_user, completed) values (73, 563,
false);
insert into PLAY(id_game, id_system_user, completed) values (19, 187,
true);
insert into PLAY(id_game, id_system_user, completed) values (9, 480,
true);
insert into PLAY(id_game, id_system_user, completed) values (67, 205,
false);
insert into PLAY(id_game, id_system_user, completed) values (93, 988,
true);
insert into PLAY(id_game, id_system_user, completed) values (39, 862,
false);
insert into PLAY(id_game, id_system_user, completed) values (12, 813,
false);
insert into PLAY(id_game, id_system_user, completed) values (63, 847,
true);
insert into PLAY(id_game, id_system_user, completed) values (81, 327,
false);
insert into PLAY(id_game, id_system_user, completed) values (74, 682,
true);
insert into PLAY(id_game, id_system_user, completed) values (9, 313,
true);
insert into PLAY(id_game, id_system_user, completed) values (42, 378,
false);
insert into PLAY(id_game, id_system_user, completed) values (39, 81,
true);
insert into PLAY(id_game, id_system_user, completed) values (50, 456,
true);
insert into PLAY(id_game, id_system_user, completed) values (53, 570,
false);
insert into PLAY(id_game, id_system_user, completed) values (69, 417,
true);
insert into PLAY(id_game, id_system_user, completed) values (45, 899,
true);
insert into PLAY(id_game, id_system_user, completed) values (93, 720,
false);
insert into PLAY(id_game, id_system_user, completed) values (31, 674,
true);
insert into PLAY(id_game, id_system_user, completed) values (25, 930,
false);
insert into PLAY(id_game, id_system_user, completed) values (28, 569,
true);
insert into PLAY(id_game, id_system_user, completed) values (21, 564,
true);
insert into PLAY(id_game, id_system_user, completed) values (59, 454,
false);
insert into PLAY(id_game, id_system_user, completed) values (95, 452,
false);
insert into PLAY(id_game, id_system_user, completed) values (6, 303,
false);
insert into PLAY(id_game, id_system_user, completed) values (94, 818,
true);
insert into PLAY(id_game, id_system_user, completed) values (28, 86,
true);
insert into PLAY(id_game, id_system_user, completed) values (72, 893,
false);
insert into PLAY(id_game, id_system_user, completed) values (62, 294,
true);
insert into PLAY(id_game, id_system_user, completed) values (69, 555,
true);
insert into PLAY(id_game, id_system_user, completed) values (53, 82,
false);
insert into PLAY(id_game, id_system_user, completed) values (51, 119,
true);
insert into PLAY(id_game, id_system_user, completed) values (83, 790,
false);
insert into PLAY(id_game, id_system_user, completed) values (11, 123,
true);
insert into PLAY(id_game, id_system_user, completed) values (58, 742,
true);
insert into PLAY(id_game, id_system_user, completed) values (67, 941,
true);
insert into PLAY(id_game, id_system_user, completed) values (45, 720,
true);
insert into PLAY(id_game, id_system_user, completed) values (65, 303,
false);
insert into PLAY(id_game, id_system_user, completed) values (41, 589,
true);
insert into PLAY(id_game, id_system_user, completed) values (85, 763,
true);
insert into PLAY(id_game, id_system_user, completed) values (36, 309,
true);
insert into PLAY(id_game, id_system_user, completed) values (57, 461,
false);
insert into PLAY(id_game, id_system_user, completed) values (74, 3,
true);
insert into PLAY(id_game, id_system_user, completed) values (37, 869,
true);
insert into PLAY(id_game, id_system_user, completed) values (89, 380,
false);
insert into PLAY(id_game, id_system_user, completed) values (8, 236,
false);
insert into PLAY(id_game, id_system_user, completed) values (56, 676,
false);
insert into PLAY(id_game, id_system_user, completed) values (67, 357,
false);
insert into PLAY(id_game, id_system_user, completed) values (54, 300,
false);
insert into PLAY(id_game, id_system_user, completed) values (17, 879,
true);
insert into PLAY(id_game, id_system_user, completed) values (64, 13,
true);
insert into PLAY(id_game, id_system_user, completed) values (55, 192,
true);
insert into PLAY(id_game, id_system_user, completed) values (25, 48,
true);
insert into PLAY(id_game, id_system_user, completed) values (13, 998,
true);
insert into PLAY(id_game, id_system_user, completed) values (80, 135,
false);
insert into PLAY(id_game, id_system_user, completed) values (28, 697,
true);
insert into PLAY(id_game, id_system_user, completed) values (34, 772,
false);
insert into PLAY(id_game, id_system_user, completed) values (64, 410,
false);
insert into PLAY(id_game, id_system_user, completed) values (48, 3,
true);
insert into PLAY(id_game, id_system_user, completed) values (37, 228,
true);
insert into PLAY(id_game, id_system_user, completed) values (52, 109,
false);
insert into PLAY(id_game, id_system_user, completed) values (31, 144,
false);
insert into PLAY(id_game, id_system_user, completed) values (15, 271,
true);
insert into PLAY(id_game, id_system_user, completed) values (88, 139,
false);
insert into PLAY(id_game, id_system_user, completed) values (45, 388,
false);
insert into PLAY(id_game, id_system_user, completed) values (60, 815,
true);
insert into PLAY(id_game, id_system_user, completed) values (66, 900,
true);
insert into PLAY(id_game, id_system_user, completed) values (34, 271,
true);
insert into PLAY(id_game, id_system_user, completed) values (64, 981,
false);
insert into PLAY(id_game, id_system_user, completed) values (14, 585,
false);
insert into PLAY(id_game, id_system_user, completed) values (29, 390,
false);
insert into PLAY(id_game, id_system_user, completed) values (91, 424,
false);
insert into PLAY(id_game, id_system_user, completed) values (10, 742,
false);
insert into PLAY(id_game, id_system_user, completed) values (25, 87,
true);
insert into PLAY(id_game, id_system_user, completed) values (43, 276,
false);
insert into PLAY(id_game, id_system_user, completed) values (52, 886,
true);
insert into PLAY(id_game, id_system_user, completed) values (50, 869,
true);
insert into PLAY(id_game, id_system_user, completed) values (20, 883,
true);
insert into PLAY(id_game, id_system_user, completed) values (72, 28,
false);
insert into PLAY(id_game, id_system_user, completed) values (84, 759,
false);
insert into PLAY(id_game, id_system_user, completed) values (11, 361,
false);
insert into PLAY(id_game, id_system_user, completed) values (77, 712,
true);
insert into PLAY(id_game, id_system_user, completed) values (21, 766,
false);
insert into PLAY(id_game, id_system_user, completed) values (76, 535,
true);
insert into PLAY(id_game, id_system_user, completed) values (67, 777,
true);
insert into PLAY(id_game, id_system_user, completed) values (62, 766,
true);
insert into PLAY(id_game, id_system_user, completed) values (80, 376,
false);
insert into PLAY(id_game, id_system_user, completed) values (80, 927,
true);
insert into PLAY(id_game, id_system_user, completed) values (82, 433,
true);
insert into PLAY(id_game, id_system_user, completed) values (18, 499,
true);
insert into PLAY(id_game, id_system_user, completed) values (14, 162,
true);
insert into PLAY(id_game, id_system_user, completed) values (74, 793,
false);
insert into PLAY(id_game, id_system_user, completed) values (98, 989,
true);
insert into PLAY(id_game, id_system_user, completed) values (27, 586,
false);
insert into PLAY(id_game, id_system_user, completed) values (21, 790,
false);
insert into PLAY(id_game, id_system_user, completed) values (92, 488,
true);
insert into PLAY(id_game, id_system_user, completed) values (19, 961,
true);
insert into PLAY(id_game, id_system_user, completed) values (70, 316,
true);
insert into PLAY(id_game, id_system_user, completed) values (54, 645,
true);
insert into PLAY(id_game, id_system_user, completed) values (94, 528,
false);
insert into PLAY(id_game, id_system_user, completed) values (96, 957,
true);
insert into PLAY(id_game, id_system_user, completed) values (12, 487,
true);
insert into PLAY(id_game, id_system_user, completed) values (84, 424,
false);
insert into PLAY(id_game, id_system_user, completed) values (39, 527,
false);
insert into PLAY(id_game, id_system_user, completed) values (92, 903,
false);
insert into PLAY(id_game, id_system_user, completed) values (84, 425,
true);
insert into PLAY(id_game, id_system_user, completed) values (78, 356,
true);
insert into PLAY(id_game, id_system_user, completed) values (28, 716,
false);
insert into PLAY(id_game, id_system_user, completed) values (44, 838,
false);
insert into PLAY(id_game, id_system_user, completed) values (98, 752,
false);
insert into PLAY(id_game, id_system_user, completed) values (99, 676,
true);
insert into PLAY(id_game, id_system_user, completed) values (83, 863,
false);
insert into PLAY(id_game, id_system_user, completed) values (72, 984,
true);
insert into PLAY(id_game, id_system_user, completed) values (31, 913,
true);
insert into PLAY(id_game, id_system_user, completed) values (53, 177,
false);
insert into PLAY(id_game, id_system_user, completed) values (77, 915,
true);
insert into PLAY(id_game, id_system_user, completed) values (85, 552,
true);
insert into PLAY(id_game, id_system_user, completed) values (90, 306,
false);
insert into PLAY(id_game, id_system_user, completed) values (77, 633,
false);
insert into PLAY(id_game, id_system_user, completed) values (61, 54,
false);
insert into PLAY(id_game, id_system_user, completed) values (22, 782,
false);
insert into PLAY(id_game, id_system_user, completed) values (73, 843,
true);
insert into PLAY(id_game, id_system_user, completed) values (42, 158,
false);
insert into PLAY(id_game, id_system_user, completed) values (39, 460,
true);
insert into PLAY(id_game, id_system_user, completed) values (11, 572,
false);
insert into PLAY(id_game, id_system_user, completed) values (57, 230,
false);
insert into PLAY(id_game, id_system_user, completed) values (39, 538,
true);
insert into PLAY(id_game, id_system_user, completed) values (59, 478,
true);
insert into PLAY(id_game, id_system_user, completed) values (6, 672,
true);
insert into PLAY(id_game, id_system_user, completed) values (8, 277,
true);
insert into PLAY(id_game, id_system_user, completed) values (52, 331,
true);
insert into PLAY(id_game, id_system_user, completed) values (19, 470,
true);
insert into PLAY(id_game, id_system_user, completed) values (94, 755,
true);
insert into PLAY(id_game, id_system_user, completed) values (13, 124,
true);
insert into PLAY(id_game, id_system_user, completed) values (75, 180,
true);
insert into PLAY(id_game, id_system_user, completed) values (21, 943,
false);
insert into PLAY(id_game, id_system_user, completed) values (43, 546,
false);
insert into PLAY(id_game, id_system_user, completed) values (11, 386,
true);
insert into PLAY(id_game, id_system_user, completed) values (30, 499,
true);
insert into PLAY(id_game, id_system_user, completed) values (72, 325,
false);
insert into PLAY(id_game, id_system_user, completed) values (94, 238,
true);
insert into PLAY(id_game, id_system_user, completed) values (47, 912,
false);
insert into PLAY(id_game, id_system_user, completed) values (61, 832,
false);
insert into PLAY(id_game, id_system_user, completed) values (57, 291,
false);
insert into PLAY(id_game, id_system_user, completed) values (2, 577,
false);
insert into PLAY(id_game, id_system_user, completed) values (18, 586,
true);
insert into PLAY(id_game, id_system_user, completed) values (51, 507,
false);
insert into PLAY(id_game, id_system_user, completed) values (28, 682,
false);
insert into PLAY(id_game, id_system_user, completed) values (55, 857,
false);
insert into PLAY(id_game, id_system_user, completed) values (2, 817,
true);
insert into PLAY(id_game, id_system_user, completed) values (86, 45,
false);
insert into PLAY(id_game, id_system_user, completed) values (67, 835,
true);
insert into PLAY(id_game, id_system_user, completed) values (16, 597,
true);
insert into PLAY(id_game, id_system_user, completed) values (80, 482,
true);
insert into PLAY(id_game, id_system_user, completed) values (45, 36,
false);
insert into PLAY(id_game, id_system_user, completed) values (10, 426,
true);
insert into PLAY(id_game, id_system_user, completed) values (63, 339,
true);
insert into PLAY(id_game, id_system_user, completed) values (19, 848,
false);
insert into PLAY(id_game, id_system_user, completed) values (62, 598,
false);
insert into PLAY(id_game, id_system_user, completed) values (87, 145,
false);
insert into PLAY(id_game, id_system_user, completed) values (86, 742,
false);
insert into PLAY(id_game, id_system_user, completed) values (54, 839,
true);
insert into PLAY(id_game, id_system_user, completed) values (87, 617,
true);
insert into PLAY(id_game, id_system_user, completed) values (64, 374,
false);
insert into PLAY(id_game, id_system_user, completed) values (41, 42,
false);
insert into PLAY(id_game, id_system_user, completed) values (24, 577,
false);
insert into PLAY(id_game, id_system_user, completed) values (16, 617,
false);
insert into PLAY(id_game, id_system_user, completed) values (80, 140,
false);
insert into PLAY(id_game, id_system_user, completed) values (21, 114,
false);
insert into PLAY(id_game, id_system_user, completed) values (79, 617,
true);
insert into PLAY(id_game, id_system_user, completed) values (99, 300,
false);
insert into PLAY(id_game, id_system_user, completed) values (64, 334,
false);
insert into PLAY(id_game, id_system_user, completed) values (86, 200,
false);
insert into PLAY(id_game, id_system_user, completed) values (69, 331,
true);
insert into PLAY(id_game, id_system_user, completed) values (18, 265,
true);
insert into PLAY(id_game, id_system_user, completed) values (87, 185,
true);
insert into PLAY(id_game, id_system_user, completed) values (69, 812,
false);
insert into PLAY(id_game, id_system_user, completed) values (28, 27,
false);
insert into PLAY(id_game, id_system_user, completed) values (100, 627,
true);
insert into PLAY(id_game, id_system_user, completed) values (96, 962,
false);
insert into PLAY(id_game, id_system_user, completed) values (51, 68,
false);
insert into PLAY(id_game, id_system_user, completed) values (11, 128,
false);
insert into PLAY(id_game, id_system_user, completed) values (73, 776,
false);
insert into PLAY(id_game, id_system_user, completed) values (95, 650,
false);
insert into PLAY(id_game, id_system_user, completed) values (61, 991,
true);
insert into PLAY(id_game, id_system_user, completed) values (77, 544,
true);
insert into PLAY(id_game, id_system_user, completed) values (18, 32,
true);
insert into PLAY(id_game, id_system_user, completed) values (37, 878,
true);
insert into PLAY(id_game, id_system_user, completed) values (30, 62,
true);
insert into PLAY(id_game, id_system_user, completed) values (20, 378,
false);
insert into PLAY(id_game, id_system_user, completed) values (61, 602,
false);
insert into PLAY(id_game, id_system_user, completed) values (79, 547,
true);
insert into PLAY(id_game, id_system_user, completed) values (24, 304,
false);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(1, 'wmacken0@usa.gov', 77, 850);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(2, 'aney1@purevolume.com', 13, 501);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(3, 'tcaras2@bing.com', 59, 375);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(4, 'sduprey3@opera.com', 88, 218);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(5, 'bipgrave4@surveymonkey.com', 91, 127);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(6, 'chaile5@phpbb.com', 38, 728);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(7, 'kgroves6@kickstarter.com', 41, 980);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(8, 'gmilby7@com.com', 99, 33);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(9, 'gjerrems8@china.com.cn', 91, 432);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(10, 'swoodger9@ebay.co.uk', 32, 54);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(11, 'ssmalinga@toplist.cz', 98, 940);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(12, 'sgonb@cocolog-nifty.com', 31, 38);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(13, 'xbabinskic@tmall.com', 45, 695);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(14, 'clocknerd@quantcast.com', 16, 175);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(15, 'todegaarde@w3.org', 32, 902);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(16, 'nthamesf@reddit.com', 14, 492);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(17, 'adillimoreg@unblog.fr', 48, 116);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(18, 'kpeizerh@gov.uk', 34, 269);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(19, 'keloyi@nifty.com', 12, 182);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(20, 'dgoudiej@businessweek.com', 100, 612);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(21, 'mscrauniagek@ox.ac.uk', 45, 408);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(22, 'bdrakel@cnet.com', 41, 712);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(23, 'amerrellm@mozilla.com', 55, 952);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(24, 'ffeakn@indiegogo.com', 60, 39);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(25, 'tbodeno@parallels.com', 45, 738);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(26, 'jlehrmannp@etsy.com', 20, 168);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(27, 'phenfreq@ngraphic.com', 39, 903);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(28, 'rgerleitr@photobucket.com', 28, 597);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(29, 'kgiacopinis@usatoday.com', 59, 252);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(30, 'amcfarlandt@ebay.com', 50, 52);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(31, 'amacalpyneu@sciencedirect.com', 93, 155);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(32, 'sthurleyv@baidu.com', 72, 964);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(33, 'lruckw@answers.com', 39, 963);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(34, 'cmillinx@chronoengine.com', 28, 584);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(35, 'mgladbachy@pbs.org', 22, 516);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(36, 'llefrancz@globo.com', 64, 443);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(37, 'cwrinch10@surveymonkey.com', 6, 176);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(38, 'jferrand11@sbwire.com', 24, 34);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(39, 'bscini12@wikimedia.org', 2, 82);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(40, 'ggarretson13@home.pl', 98, 142);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(41, 'jhans14@blog.com', 23, 90);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(42, 'gdavidzon15@storify.com', 38, 527);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(43, 'bfarr16@admin.ch', 22, 486);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(44, 'dlyste17@columbia.edu', 73, 678);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(45, 'singray18@behance.net', 68, 775);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(46, 'lhirsch19@wunderground.com', 10, 959);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(47, 'dgomar1a@hp.com', 61, 896);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(48, 'fquidenham1b@ucoz.com', 72, 726);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(49, 'aduker1c@google.co.jp', 48, 375);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(50, 'yordidge1d@arizona.edu', 93, 389);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(51, 'eipplett1e@toplist.cz', 26, 775);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(52, 'shawton1f@ustream.tv', 65, 948);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(53, 'mruilton1g@blogspot.com', 93, 320);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(54, 'lkomorowski1h@paypal.com', 72, 320);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(55, 'scoughlin1i@unesco.org', 24, 560);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(56, 'brivers1j@issuu.com', 63, 488);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(57, 'vformigli1k@xinhuanet.com', 87, 774);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(58, 'ctomsu1l@fastcompany.com', 53, 827);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(59, 'etolworthie1m@dyndns.org', 26, 852);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(60, 'hkerswill1n@moonfruit.com', 24, 586);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(61, 'lkeitch1o@senate.gov', 78, 441);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(62, 'emulvagh1p@webeden.co.uk', 10, 329);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(63, 'lclarricoates1q@motion.com', 72, 484);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(64, 'rscaife1r@independent.co.uk', 32, 708);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(65, 'griehm1s@wisc.edu', 10, 206);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(66, 'sgerler1t@fc2.com', 76, 346);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(67, 'dtalkington1u@umich.edu', 21, 34);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(68, 'fgamage1v@nyu.edu', 27, 131);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(69, 'ezannolli1w@abc.net.au', 46, 256);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(70, 'sadamowitz1x@meetup.com', 43, 952);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(71, 'hdibley1y@weibo.com', 86, 757);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(72, 'lnayer1z@purevolume.com', 24, 718);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(73, 'bbolam20@dmoz.org', 30, 996);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(74, 'bsaffrin21@latimes.com', 20, 269);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(75, 'dbabinski22@360.cn', 13, 605);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(76, 'kroseborough23@rakuten.co.jp', 93, 757);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(77, 'ealeveque24@dagondesign.com', 88, 431);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(78, 'tmaffi25@paginegialle.it', 95, 935);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(79, 'crigney26@woothemes.com', 66, 266);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(80, 'cmulvagh27@dropbox.com', 11, 459);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(81, 'gheadrick28@discuz.net', 68, 716);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(82, 'nparren29@berkeley.edu', 10, 267);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(83, 'cshinn2a@elegantthemes.com', 79, 362);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(84, 'msimonetti2b@csmonitor.com', 31, 786);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(85, 'tproger2c@mlb.com', 50, 464);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(86, 'hgaucher2d@washington.edu', 12, 528);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(87, 'catger2e@a8.net', 67, 222);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(88, 'agronow2f@tumblr.com', 19, 192);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(89, 'lgiovannilli2g@reddit.com', 2, 979);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(90, 'cluther2h@uol.com.br', 6, 659);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(91, 'tsmitherham2i@xrea.com', 33, 751);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(92, 'gvinas2j@liveinternet.ru', 78, 381);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(93, 'aberesford2k@deliciousdays.com', 88, 349);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(94, 'rshiels2l@goodreads.com', 66, 36);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(95, 'mdesseine2m@ox.ac.uk', 84, 820);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(96, 'acallar2n@deviantart.com', 16, 252);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(97, 'swotherspoon2o@nytimes.com', 53, 141);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(98, 'clanglois2p@yolasite.com', 50, 844);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(99, 'dseger2q@ucoz.com', 55, 747);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(100, 'votterwell2r@cbsnews.com', 98, 798);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(101, 'escutchings2s@uiuc.edu', 37, 436);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(102, 'tandrys2t@istockphoto.com', 62, 39);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(103, 'vferens2u@github.io', 35, 118);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(104, 'athornley2v@dmail.com', 85, 358);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(105, 'khumby2w@creativecommons.org', 86, 593);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(106, 'jcleveland2x@opensource.org', 50, 60);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(107, 'tgoldhill2y@comsenz.com', 33, 164);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(108, 'jgradley2z@ft.com', 18, 427);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(109, 'dderrico30@state.tx.us', 96, 201);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(110, 'cneenan31@constantcontact.com', 82, 165);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(111, 'mscrivner32@github.io', 37, 97);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(112, 'hsimmen33@wordpress.org', 66, 343);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(113, 'cpiscotti34@scribd.com', 69, 806);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(114, 'gkerswill35@oracle.com', 51, 496);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(115, 'rtrusdale36@themeforest.net', 25, 547);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(116, 'gstratford37@ihg.com', 96, 810);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(117, 'vbrandom38@stumbleupon.com', 24, 975);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(118, 'mdamiata39@thetimes.co.uk', 98, 809);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(119, 'rellings3a@blogtalkradio.com', 30, 154);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(120, 'ckliche3b@myspace.com', 17, 382);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(121, 'mscone3c@weebly.com', 16, 256);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(122, 'melvins3d@meetup.com', 16, 436);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(123, 'ndonoghue3e@imdb.com', 1, 614);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(124, 'lnerval3f@1688.com', 13, 916);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(125, 'ldelagua3g@tinyurl.com', 67, 661);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(126, 'nbrimacombe3h@wunderground.com', 32, 703);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(127, 'afleet3i@themeforest.net', 65, 480);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(128, 'ecleve3j@ucla.edu', 21, 317);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(129, 'wjurn3k@nba.com', 94, 405);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(130, 'dcullinan3l@google.es', 27, 411);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(131, 'dthurstance3m@army.mil', 34, 360);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(132, 'eoliverpaull3n@twitpic.com', 58, 899);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(133, 'rjindra3o@nhs.uk', 81, 365);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(134, 'fhadye3p@bing.com', 86, 478);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(135, 'pkunneke3q@t-online.de', 72, 629);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(136, 'ccaldecutt3r@telegraph.co.uk', 1, 281);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(137, 'klightning3s@ifeng.com', 45, 778);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(138, 'cfrigout3t@europa.eu', 51, 583);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(139, 'ctotton3u@japanpost.jp', 28, 981);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(140, 'eseiter3v@linkedin.com', 61, 580);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(141, 'ymcrae3w@businesswire.com', 97, 658);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(143, 'jgiles3y@narod.ru', 29, 15);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(144, 'jcrix3z@gravatar.com', 52, 329);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(145, 'cquincey40@elegantthemes.com', 94, 848);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(146, 'mjoust41@imageshack.us', 16, 425);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(147, 'fabbys42@multiply.com', 73, 732);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(148, 'bredborn43@godaddy.com', 61, 776);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(149, 'mwollen44@bloglines.com', 73, 670);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(150, 'ghawkswood45@liveinternet.ru', 40, 921);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(151, 'sgiorgioni46@nasa.gov', 8, 814);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(152, 'alaing47@altervista.org', 22, 862);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(153, 'mmarciek48@theglobeandmail.com', 9, 437);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(154, 'gcawthery49@discuz.net', 50, 261);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(155, 'lwitherbed4a@rediff.com', 16, 891);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(156, 'jsowle4b@hexun.com', 98, 181);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(157, 'dharwin4c@storify.com', 96, 95);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(158, 'hmorson4d@feedburner.com', 99, 174);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(159, 'aaylmore4e@pinterest.com', 42, 638);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(160, 'krunsey4f@house.gov', 20, 21);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(161, 'dgaliford4g@senate.gov', 91, 752);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(162, 'ihodinton4h@skyrock.com', 78, 979);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(163, 'dvandenvelden4i@cornell.edu', 64, 549);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(164, 'gfellon4j@whitehouse.gov', 73, 12);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(165, 'ewein4k@rediff.com', 58, 52);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(166, 'cvasyunichev4l@slideshare.net', 100, 289);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(167, 'aragat4m@infoseek.co.jp', 45, 176);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(168, 'sfawson4n@webeden.co.uk', 74, 602);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(169, 'ldrissell4o@google.cn', 17, 897);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(170, 'babbess4p@google.de', 72, 471);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(171, 'lkeyho4q@omniture.com', 54, 42);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(172, 'nkliemann4r@odnoklassniki.ru', 39, 720);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(173, 'rpepall4s@jigsy.com', 14, 638);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(174, 'bmckinley4t@ebay.co.uk', 39, 971);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(175, 'jlingard4u@feedburner.com', 15, 23);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(176, 'bblinkhorn4v@uiuc.edu', 75, 37);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(177, 'dodonovan4w@storify.com', 75, 926);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(178, 'bcommin4x@angelfire.com', 7, 55);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(179, 'vyarham4y@squarespace.com', 69, 928);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(180, 'vcrinkley4z@imdb.com', 74, 815);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(181, 'rphoebe50@independent.co.uk', 56, 689);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(182, 'bhainey51@guardian.co.uk', 85, 265);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(183, 'vblethyn52@tmall.com', 30, 44);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(184, 'qstockhill53@shareasale.com', 13, 845);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(185, 'mbhar54@salon.com', 60, 400);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(186, 'hfeek55@craigslist.org', 43, 911);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(187, 'tmiguet56@ft.com', 24, 365);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(188, 'dwheater57@narod.ru', 95, 541);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(189, 'nfrogley58@utexas.edu', 30, 737);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(190, 'ppattini59@list-manage.com', 58, 701);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(191, 'mdeinhard5a@mozilla.com', 55, 104);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(192, 'mskein5b@i2i.jp', 71, 75);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(193, 'ispraggs5c@comsenz.com', 33, 182);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(194, 'ntzar5d@paginegialle.it', 72, 948);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(195, 'bbrehaut5e@craigslist.org', 100, 576);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(196, 'jlabatie5f@wisc.edu', 71, 662);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(197, 'mchriston5g@buzzfeed.com', 67, 15);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(198, 'jtreacy5h@list-manage.com', 13, 719);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(199, 'melkins5i@state.tx.us', 64, 78);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(200, 'loshea5j@indiatimes.com', 18, 742);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(201, 'aadel5k@1und1.de', 11, 825);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(202, 'oeyre5l@mozilla.org', 13, 995);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(203, 'gquirke5m@delicious.com', 44, 362);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(204, 'chargrave5n@list-manage.com', 60, 323);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(205, 'lmandres5o@msn.com', 74, 766);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(206, 'twemyss5p@noaa.gov', 72, 96);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(207, 'achatters5q@printfriendly.com', 42, 966);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(208, 'adobbison5r@liveinternet.ru', 39, 585);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(209, 'btatlock5s@columbia.edu', 9, 325);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(210, 'eslayford5t@trellian.com', 42, 169);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(211, 'kbisgrove5u@paginegialle.it', 38, 480);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(212, 'wdepke5v@phpbb.com', 37, 703);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(213, 'sbecarra5w@blogger.com', 17, 252);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(214, 'ocazereau5x@wunderground.com', 99, 138);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(215, 'cmattys5y@storify.com', 34, 418);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(216, 'pheckner5z@artisteer.com', 83, 137);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(217, 'bmackstead60@arizona.edu', 48, 669);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(218, 'cberetta61@themeforest.net', 21, 683);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(219, 'vmatschoss62@ustream.tv', 17, 630);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(220, 'glaver63@usda.gov', 97, 990);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(221, 'shallede64@nih.gov', 91, 721);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(222, 'mwharfe65@baidu.com', 71, 827);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(223, 'slaxen66@furl.net', 10, 435);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(224, 'lvarvara67@csmonitor.com', 51, 62);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(225, 'ibladon68@linkedin.com', 34, 668);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(226, 'rgallatly69@sun.com', 15, 501);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(227, 'wsidry6a@ox.ac.uk', 12, 634);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(228, 'sgras6b@livejournal.com', 8, 655);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(229, 'sgabriely6c@qq.com', 42, 392);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(230, 'aplimmer6d@ocn.ne.jp', 40, 415);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(231, 'awarstall6e@hexun.com', 77, 130);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(232, 'alovegrove6f@ocn.ne.jp', 43, 198);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(233, 'akillgus6g@etsy.com', 38, 723);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(234, 'vashby6h@unc.edu', 64, 7);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(235, 'mspirritt6i@multiply.com', 66, 763);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(236, 'bkilmaster6j@vk.com', 45, 824);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(237, 'ssteiner6k@newsvine.com', 56, 370);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(238, 'cinold6l@sciencedirect.com', 95, 508);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(239, 'epinwell6m@arstechnica.com', 6, 638);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(240, 'ddecort6n@reuters.com', 25, 542);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(241, 'aferrand6o@php.net', 42, 865);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(242, 'surpeth6p@people.com.cn', 96, 680);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(243, 'efoskett6q@vinaora.com', 21, 617);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(244, 'rplant6r@sun.com', 58, 732);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(245, 'jchessil6s@dropbox.com', 41, 332);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(246, 'vmcanulty6t@bloglovin.com', 80, 490);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(247, 'nivanikov6u@reverbnation.com', 32, 70);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(249, 'eeagan6w@printfriendly.com', 53, 8);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(250, 'mgarstang6x@prnewswire.com', 37, 250);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(251, 'pdixie6y@exblog.jp', 60, 741);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(252, 'jgoodings6z@wp.com', 6, 633);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(253, 'kweine70@youtu.be', 83, 918);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(254, 'tclimpson71@ovh.net', 58, 822);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(255, 'hmckernan72@npr.org', 56, 10);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(256, 'mchazelle73@google.nl', 60, 528);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(257, 'ppoyntz74@livejournal.com', 81, 239);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(258, 'aclulow75@shop-pro.jp', 3, 569);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(259, 'lrame76@sciencedirect.com', 80, 132);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(260, 'ninnerstone77@github.io', 3, 58);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(261, 'mrainforth78@shop-pro.jp', 82, 963);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(262, 'cwymer79@altervista.org', 100, 869);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(263, 'nassandri7a@boston.com', 99, 219);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(264, 'eigglesden7b@google.de', 62, 48);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(265, 'rtourmell7c@rambler.ru', 56, 378);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(266, 'mhein7d@irs.gov', 72, 401);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(268, 'ebartoszek7f@dion.ne.jp', 31, 579);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(269, 'ilaidlaw7g@nbcnews.com', 82, 945);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(270, 'llebourn7h@cpanel.net', 59, 839);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(271, 'lrodgman7i@wsj.com', 77, 980);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(272, 'rmcelvogue7j@blogspot.com', 16, 865);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(273, 'lcourtois7k@discovery.com', 97, 584);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(274, 'kgermann7l@shareasale.com', 21, 787);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(275, 'cdiwell7m@tripadvisor.com', 98, 52);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(276, 'ktilbrook7n@constan.com', 38, 977);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(277, 'bsearjeant7o@51.la', 12, 766);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(278, 'ajoannidi7p@nifty.com', 33, 561);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(279, 'hfowls7q@network.org', 32, 119);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(280, 'dwettern7r@instagram.com', 36, 494);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(281, 'bflahive7s@squidoo.com', 3, 269);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(282, 'bdurtnal7t@abc.net.au', 53, 899);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(283, 'agate7u@noaa.gov', 24, 898);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(284, 'jbrighty7v@theglobeandmail.com', 100, 527);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(285, 'hpeasee7w@yellowbook.com', 44, 459);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(286, 'hchallenor7x@arizona.edu', 59, 322);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(287, 'twyllis7y@ucoz.ru', 88, 249);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(288, 'blapree7z@harvard.edu', 69, 287);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(289, 'rgiacomelli80@mlb.com', 43, 221);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(290, 'cbasezzi81@cloudflare.com', 12, 165);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(291, 'cellsom82@furl.net', 83, 52);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(292, 'demeney83@rediff.com', 28, 362);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(293, 'jgillion84@oracle.com', 99, 812);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(294, 'jlightman85@nhs.uk', 97, 708);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(295, 'rfilipovic86@xing.com', 34, 322);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(296, 'bwontner87@who.int', 31, 605);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(297, 'lmcguire88@webnode.com', 1, 944);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(298, 'bpreator89@nature.com', 72, 966);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(299, 'lfasset8a@omniture.com', 58, 340);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(300, 'fcolliford8b@list-manage.com', 83, 687);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(301, 'dmackaig8c@cpanel.net', 70, 795);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(302, 'venns8d@163.com', 43, 67);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(303, 'vklambt8e@pagesperso-orange.fr', 41, 321);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(304, 'skrojn8f@hatena.ne.jp', 62, 397);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(305, 'mdoag8g@pagesperso-orange.fr', 55, 787);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(306, 'mcollyear8h@huffingtonpost.com', 98, 704);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(307, 'docrevy8i@irs.gov', 1, 145);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(308, 'nwankling8j@hostgator.com', 65, 206);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(309, 'asimo8k@dot.gov', 41, 123);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(310, 'gpashe8l@cam.ac.uk', 13, 90);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(311, 'rrowlstone8m@booking.com', 84, 325);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(312, 'swylam8n@cargocollective.com', 62, 281);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(314, 'iridge8p@shinystat.com', 93, 139);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(315, 'ukeig8q@about.com', 17, 244);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(316, 'alatch8r@booking.com', 99, 329);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(317, 'nplastow8s@alexa.com', 93, 671);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(318, 'wgudde8t@com.com', 3, 876);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(319, 'mdaile8u@bizjournals.com', 49, 3);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(320, 'srockall8v@ucoz.ru', 65, 234);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(321, 'fzupone8w@a8.net', 38, 750);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(322, 'fpriddey8x@acquirethisname.com', 95, 301);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(323, 'bpetruskevich8y@imgur.com', 15, 795);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(324, 'dbasnett8z@harvard.edu', 71, 188);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(326, 'xcroydon91@chron.com', 95, 774);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(327, 'dgager92@ebay.com', 57, 637);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(328, 'twalcot93@ucoz.ru', 29, 754);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(329, 'nmourbey94@facebook.com', 75, 522);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(330, 'fkeveren95@moonfruit.com', 65, 249);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(331, 'ccurzey96@hc360.com', 51, 593);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(332, 'mdunkerly97@mapy.cz', 77, 5);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(333, 'cjakuszewski98@imgur.com', 59, 260);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(334, 'zwaber99@taobao.com', 96, 223);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(336, 'cmcquorkel9b@state.gov', 76, 514);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(337, 'tgaunt9c@sakura.ne.jp', 66, 218);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(338, 'mfahy9d@seattletimes.com', 51, 837);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(339, 'ogealle9e@nasa.gov', 51, 720);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(340, 'klinacre9f@cornell.edu', 48, 762);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(341, 'thawksby9g@ning.com', 52, 979);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(342, 'cjuza9h@eepurl.com', 47, 2);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(343, 'aminshull9i@tripadvisor.com', 85, 571);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(344, 'kmcgrorty9j@contact.com', 59, 316);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(345, 'smahaddie9k@alibaba.com', 38, 938);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(346, 'bjaspar9l@squarespace.com', 74, 685);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(347, 'rmcleary9m@psu.edu', 96, 502);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(348, 'jkillen9n@latimes.com', 29, 554);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(349, 'mwayt9o@washingtonpost.com', 77, 141);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(350, 'gpickles9p@epa.gov', 17, 159);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(351, 'vtrundler9q@boston.com', 49, 78);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(352, 'palanbrooke9r@whitehouse.gov', 70, 507);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(353, 'acorradini9s@feedburner.com', 84, 516);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(354, 'ajeffels9t@american.com', 96, 480);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(355, 'kbuckthorp9u@timesonline.co.uk', 69, 925);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(356, 'cmccarver9v@myspace.com', 86, 721);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(357, 'gwanklin9w@latimes.com', 36, 59);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(358, 'cpetruskevich9x@sbwire.com', 13, 683);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(359, 'swinsome9y@prnewswire.com', 55, 28);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(360, 'cvigus9z@google.com.hk', 86, 364);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(361, 'bdawburya0@vimeo.com', 41, 543);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(362, 'gshortlanda1@wiley.com', 59, 872);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(363, 'wpracya2@toplist.cz', 95, 33);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(364, 'fdorrea3@epa.gov', 79, 650);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(365, 'ismittena4@whitehouse.gov', 64, 650);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(366, 'lgamea5@earthlink.net', 99, 644);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(367, 'sbatcheldera6@devhub.com', 44, 487);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(368, 'rascha7@mozilla.org', 6, 897);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(369, 'cmaccarranea8@naver.com', 79, 427);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(370, 'lcutsfortha9@npr.org', 83, 755);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(371, 'tpetowaa@gizmodo.com', 77, 650);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(372, 'hflowerab@addthis.com', 77, 367);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(373, 'amcilvennyac@bluehost.com', 12, 799);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(374, 'khastinad@ucsd.edu', 48, 331);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(375, 'awintersonae@blinklist.com', 52, 600);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(376, 'jtusonaf@businessweek.com', 7, 317);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(377, 'rnilgesag@ask.com', 68, 82);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(378, 'dleportah@disqus.com', 30, 174);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(379, 'ksibyllaai@pinterest.com', 78, 747);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(380, 'abuckerfieldaj@mysql.com', 49, 567);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(381, 'hsutherleyak@vkontakte.ru', 71, 45);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(382, 'amacfadyenal@aol.com', 32, 13);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(383, 'amcconachieam@accuweather.com', 40, 429);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(384, 'kspeirsan@google.co.uk', 66, 703);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(385, 'dashmanao@topsy.com', 77, 763);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(386, 'eblanceap@stanford.edu', 52, 844);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(387, 'ybrittonaq@angelfire.com', 88, 531);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(388, 'rjammesar@reuters.com', 73, 682);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(389, 'vschumacheras@post.com', 27, 786);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(390, 'fkeoughat@latimes.com', 69, 283);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(391, 'aflandersau@princeton.edu', 67, 834);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(392, 'alysaghtav@github.io', 63, 950);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(393, 'kberensaw@yale.edu', 82, 408);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(394, 'ckistingax@jalbum.net', 62, 404);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(395, 'mandrzejakay@sitemeter.com', 72, 936);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(397, 'lmuehlerb0@cocolog-nifty.com', 67, 404);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(398, 'ocrocroftb1@cisco.com', 42, 212);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(399, 'tcornickb2@t.co', 88, 416);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(400, 'temnoneyb3@linkedin.com', 35, 442);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(401, 'sewingtonb4@ox.ac.uk', 8, 310);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(402, 'aferraresib5@yale.edu', 91, 722);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(403, 'fbexleyb6@census.gov', 71, 249);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(404, 'iunthankb7@1688.com', 36, 161);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(405, 'emattingsonb8@thetimes.co.uk', 82, 321);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(406, 'sjervoisb9@taobao.com', 61, 201);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(407, 'ggrishkovba@blogspot.com', 98, 632);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(408, 'tsharplesbb@china.com.cn', 71, 86);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(409, 'rbloomfieldbc@amazon.co.uk', 17, 807);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(411, 'drizzottobe@hostgator.com', 31, 506);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(412, 'anultybf@jiathis.com', 42, 187);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(413, 'mbrackstonebg@tamu.edu', 3, 897);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(414, 'lbowcockbh@360.cn', 36, 255);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(415, 'rgainesbi@amazon.com', 95, 920);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(416, 'etuckiebj@cafepress.com', 57, 294);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(417, 'mtunnbk@com.com', 76, 833);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(418, 'brangellbl@ebay.com', 71, 8);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(419, 'skivellbm@state.tx.us', 8, 648);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(420, 'vchecchibn@wikimedia.org', 90, 293);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(421, 'kcanbybo@parallels.com', 74, 53);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(422, 'mvispobp@amazon.co.jp', 31, 210);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(423, 'cgrzelewskibq@163.com', 83, 128);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(425, 'chellwigbs@mlb.com', 60, 845);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(426, 'jjopkebt@utexas.edu', 15, 826);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(427, 'sgosforthbu@trellian.com', 61, 543);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(428, 'nsiaspinskibv@umich.edu', 26, 308);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(429, 'awilfingbw@webs.com', 41, 706);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(430, 'emionbx@ftc.gov', 43, 206);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(431, 'icottamby@nbcnews.com', 44, 192);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(432, 'pallardycebz@amazon.co.jp', 38, 385);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(433, 'oroantreec0@yelp.com', 23, 430);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(434, 'ptilsonc1@mtv.com', 98, 113);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(435, 'sbeavonc2@dmoz.org', 42, 322);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(436, 'aashburnec3@dion.ne.jp', 2, 405);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(437, 'meverixc4@deliciousdays.com', 44, 233);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(438, 'pabramowitchc5@ovh.net', 89, 464);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(439, 'ableymanc6@mayoclinic.com', 86, 469);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(440, 'vedmedc7@mozilla.com', 76, 315);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(441, 'fhazzardc8@phoca.cz', 88, 48);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(442, 'jbruinemannc9@narod.ru', 80, 295);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(443, 'lcamossoca@dyndns.org', 89, 615);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(444, 'hanthamcb@usatoday.com', 32, 53);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(445, 'kburrencc@msu.edu', 45, 379);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(446, 'tnorquaycd@shutterfly.com', 13, 425);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(447, 'odensunce@rakuten.co.jp', 22, 406);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(448, 'screffieldcf@jugem.jp', 67, 823);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(449, 'htackellcg@netscape.com', 25, 865);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(450, 'bhadlingtonch@surveymonkey.com', 97, 401);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(452, 'lmarsycj@google.co.uk', 17, 699);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(453, 'fbredeck@archive.org', 15, 345);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(454, 'jvondrasekcl@businessweek.com', 30, 113);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(455, 'jstubleycm@noaa.gov', 21, 650);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(456, 'lswatridgecn@ed.gov', 71, 708);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(457, 'kelkinco@cafepress.com', 64, 464);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(458, 'fyetmancp@t-online.de', 13, 201);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(459, 'ccromiecq@goo.gl', 15, 730);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(460, 'dspeckcr@alibaba.com', 18, 252);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(461, 'oodeveycs@samsung.com', 89, 705);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(462, 'aephgravect@desdev.cn', 87, 290);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(463, 'bfattoricu@github.com', 56, 38);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(464, 'gcamockcv@un.org', 46, 13);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(465, 'tpepperellcw@senate.gov', 91, 832);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(466, 'efinneycx@yelp.com', 64, 155);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(467, 'bkasparskicy@yandex.ru', 27, 350);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(468, 'mwilbudcz@indiatimes.com', 50, 665);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(469, 'fribeyd0@sun.com', 88, 796);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(470, 'hoxbed1@sciencedaily.com', 67, 492);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(471, 'bsimsd2@trellian.com', 100, 547);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(472, 'dmcelvogued3@bizjournals.com', 80, 786);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(473, 'obafordd4@usda.gov', 17, 362);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(474, 'rhattd5@t-online.de', 18, 814);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(475, 'blindblomd6@cyberchimps.com', 19, 761);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(476, 'kmacklamd7@fastcompany.com', 21, 187);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(477, 'sgrombridged8@miibeian.gov.cn', 11, 273);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(478, 'mrandd9@csmonitor.com', 73, 799);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(479, 'ccadwaladrda@disqus.com', 89, 487);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(480, 'bmithandb@abc.net.au', 65, 336);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(481, 'askirvendc@ucla.edu', 10, 832);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(482, 'wmaggioridd@devhub.com', 72, 829);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(483, 'wmattiazzide@oracle.com', 1, 905);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(484, 'cpietraszekdf@pen.io', 70, 909);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(485, 'ccolgandg@spotify.com', 42, 948);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(486, 'itroubridgedh@hao123.com', 64, 989);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(487, 'ckimburydi@cbc.ca', 72, 451);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(488, 'gnorthwooddj@uiuc.edu', 94, 824);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(489, 'dshearndk@sourceforge.net', 8, 217);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(490, 'wperoccidl@g.co', 31, 42);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(491, 'kspiritdm@addtoany.com', 86, 614);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(492, 'bgwalterdn@lulu.com', 72, 959);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(493, 'dhawsondo@devhub.com', 47, 665);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(494, 'rschoberdp@alexa.com', 93, 456);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(496, 'gaveydr@arstechnica.com', 51, 804);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(497, 'rganterds@51.la', 9, 393);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(498, 'ehasselbydt@wp.com', 70, 148);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(499, 'dgiovannazzidu@ted.com', 18, 927);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(500, 'odurtneldv@arizona.edu', 16, 742);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(501, 'twhyleydw@amazonaws.com', 50, 113);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(502, 'akendaldx@businessinsider.com', 72, 728);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(503, 'dhardcastledy@google.co.jp', 79, 839);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(504, 'ableesdz@cdc.gov', 7, 235);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(505, 'mgarvaghe0@china.com.cn', 37, 340);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(506, 'cmaccumeskeye1@amazon.com', 68, 324);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(507, 'temneye2@comcast.net', 36, 221);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(508, 'doxtibye3@blogspot.com', 17, 1);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(509, 'blaylande4@theatlantic.com', 57, 94);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(510, 'lsamudioe5@flickr.com', 60, 754);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(511, 'dcescottie6@xinhuanet.com', 84, 605);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(512, 'afroste7@bandcamp.com', 19, 520);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(513, 'mjinkinse8@sfgate.com', 40, 951);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(514, 'mdudine9@nih.gov', 14, 249);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(515, 'hfrancescuzziea@deviantart.com', 41, 846);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(516, 'apoynoreb@state.tx.us', 64, 472);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(517, 'eottewillec@about.com', 10, 963);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(518, 'lemmsed@livejournal.com', 71, 796);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(519, 'lmcfaulee@narod.ru', 25, 766);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(520, 'wpesterfieldef@facebook.com', 47, 992);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(521, 'esextoneeg@jugem.jp', 31, 131);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(522, 'zcombeseh@yahoo.co.jp', 61, 47);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(523, 'lsinyardei@drupal.org', 59, 773);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(524, 'sscopesej@spotify.com', 61, 320);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(525, 'lshouteek@netscape.com', 60, 274);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(526, 'lmaggsel@bravesites.com', 3, 69);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(527, 'ljoinceyem@shop-pro.jp', 59, 343);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(529, 'jcadyeo@sina.com.cn', 45, 789);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(530, 'mbestonep@list-manage.com', 3, 751);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(531, 'cbangleeq@amazon.com', 54, 946);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(532, 'ariemeer@nih.gov', 99, 289);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(533, 'cdulanyes@free.fr', 40, 697);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(534, 'civanishevet@moonfruit.com', 63, 960);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(535, 'kricketeu@storify.com', 83, 812);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(536, 'lcurtayneev@wufoo.com', 38, 844);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(537, 'hgoulbournew@digg.com', 9, 829);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(538, 'tlanchberyex@pen.io', 14, 161);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(539, 'twolveyey@privacy.gov.au', 41, 895);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(540, 'amaccallisterez@xrea.com', 13, 753);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(541, 'rgaberf0@diigo.com', 70, 888);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(542, 'spocockef1@angelfire.com', 75, 797);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(543, 'mcronkf2@chronoengine.com', 92, 830);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(545, 'ztapporf4@theatlantic.com', 48, 823);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(546, 'ccontif5@clickbank.net', 35, 989);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(547, 'cjentgesf6@hostgator.com', 80, 701);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(548, 'edwanef7@elpais.com', 15, 9);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(549, 'glowfillf8@ucoz.com', 69, 497);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(550, 'bcesconf9@bbc.co.uk', 86, 984);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(551, 'vsprossonfa@oracle.com', 10, 26);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(552, 'dhawlgarthfb@statcounter.com', 31, 533);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(553, 'aborlessfc@cnbc.com', 11, 905);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(554, 'ghemphreyfd@lycos.com', 3, 171);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(555, 'blamburnfe@yale.edu', 67, 914);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(556, 'ahumpageff@senate.gov', 57, 792);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(557, 'nscothronfg@gizmodo.com', 49, 728);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(558, 'ailyasfh@nytimes.com', 11, 873);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(559, 'cdolemanfi@youtube.com', 79, 68);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(560, 'tickoviczfj@cornell.edu', 76, 452);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(561, 'bjehanfk@icio.us', 42, 489);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(562, 'atollidayfl@upenn.edu', 84, 873);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(564, 'msewleyfn@about.com', 11, 797);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(565, 'mpiesingfo@google.co.uk', 72, 251);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(566, 'bduffriefp@theatlantic.com', 3, 438);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(567, 'wtomichfq@mapquest.com', 19, 256);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(568, 'sweymouthfr@is.gd', 60, 394);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(569, 'lwillimontfs@utexas.edu', 86, 328);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(570, 'cjebbft@rakuten.co.jp', 82, 238);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(571, 'dboswellfu@people.com.cn', 72, 593);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(572, 'dmccoughanfv@so-net.ne.jp', 22, 966);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(573, 'lfenneyfw@hao123.com', 73, 682);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(574, 'giaduccellifx@google.com.au', 90, 423);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(575, 'tsurmanwellsfy@ameblo.jp', 38, 372);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(576, 'ssisnerosfz@reuters.com', 41, 793);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(577, 'rtosspellg0@about.com', 72, 208);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(578, 'ccrewsg1@ibm.com', 16, 860);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(579, 'gbrugmanng2@wufoo.com', 58, 940);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(580, 'klaug3@storify.com', 93, 918);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(581, 'lletchmoreg4@businesswire.com', 94, 929);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(582, 'bbaylieg5@sogou.com', 21, 483);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(583, 'bbatong6@xinhuanet.com', 66, 245);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(584, 'smartinellig7@reference.com', 55, 762);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(585, 'nbingg8@google.co.jp', 71, 172);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(586, 'tyuryshevg9@mediafire.com', 11, 147);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(588, 'lfranzolinigb@about.me', 73, 986);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(589, 'cskullygc@cornell.edu', 84, 457);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(590, 'bwhertongd@house.gov', 85, 481);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(591, 'hmcgillicuddyge@xrea.com', 84, 638);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(592, 'mscotneygf@state.tx.us', 40, 356);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(593, 'eevamygg@msn.com', 26, 552);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(594, 'nchillistonegh@latimes.com', 9, 72);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(595, 'mjammetgi@boston.com', 42, 157);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(596, 'rhoutengj@dailymotion.com', 7, 783);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(597, 'fodulchontagk@illinois.edu', 37, 572);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(598, 'fenstengl@mit.edu', 35, 998);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(599, 'eellsworthegm@newsvine.com', 74, 89);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(600, 'gvedenyapingn@gov.uk', 69, 838);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(601, 'ktatteshallgo@noaa.gov', 21, 165);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(602, 'blabramgp@com.com', 46, 689);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(603, 'tludlammegq@xrea.com', 45, 941);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(604, 'kmiliffegr@tmall.com', 85, 387);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(605, 'pteddergs@t-online.de', 48, 332);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(606, 'mdaulbygt@prweb.com', 38, 517);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(607, 'fboxillgu@about.me', 8, 286);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(608, 'gcornbillgv@ezinearticles.com', 88, 366);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(609, 'lcollsgw@163.com', 71, 835);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(610, 'amabbsgx@cmu.edu', 3, 810);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(611, 'pvanrossgy@irs.gov', 27, 429);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(612, 'aventhamgz@vkontakte.ru', 95, 684);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(613, 'eachesonh0@xing.com', 32, 98);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(614, 'cscarletth1@freewebs.com', 78, 962);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(615, 'dthickpennyh2@tiny.cc', 30, 117);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(616, 'lcobboldh3@bravesites.com', 29, 408);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(617, 'educharth4@4shared.com', 20, 335);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(618, 'nharrinsonh5@privacy.gov.au', 45, 145);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(619, 'ftolefreeh6@dmoz.org', 50, 973);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(620, 'gbudgenh7@feedburner.com', 46, 202);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(621, 'egiottoh8@angelfire.com', 44, 356);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(622, 'mbragah9@wunderground.com', 64, 773);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(623, 'hgofordha@tinyurl.com', 27, 423);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(624, 'smethingamhb@tripod.com', 92, 848);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(625, 'egokeshc@independent.co.uk', 60, 637);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(626, 'cjeanninhd@over-blog.com', 56, 165);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(627, 'gbachellierhe@vistaprint.com', 11, 784);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(628, 'dmeritthf@discovery.com', 3, 470);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(629, 'ndalessiohg@springer.com', 10, 775);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(630, 'hmeagherhh@whitehouse.gov', 73, 501);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(631, 'slennonhi@umich.edu', 26, 572);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(632, 'estouthj@123-reg.co.uk', 6, 612);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(633, 'ceeleshk@webnode.com', 88, 662);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(634, 'wglendzahl@economist.com', 87, 610);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(635, 'rhelwighm@jimdo.com', 26, 965);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(636, 'smcelhargyhn@slideshare.net', 27, 810);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(637, 'cprobbinho@bing.com', 26, 612);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(638, 'pdavidsenhp@miibeian.gov.cn', 98, 252);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(639, 'wratcliffehq@sogou.com', 65, 130);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(640, 'mosheahr@hibu.com', 17, 341);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(641, 'sbarnsdalehs@buzzfeed.com', 51, 67);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(642, 'dhuikerbyht@sciencedaily.com', 30, 128);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(643, 'dfranzolihu@cdbaby.com', 79, 842);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(644, 'qdomineyhv@umn.edu', 16, 938);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(645, 'ckemethw@ehow.com', 41, 587);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(646, 'mjurzykhx@forbes.com', 63, 765);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(647, 'dantonovichy@mit.edu', 72, 632);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(648, 'tdartonhz@ebay.co.uk', 99, 41);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(649, 'fluxi0@apple.com', 50, 352);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(650, 'mdenslowi1@marriott.com', 30, 501);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(651, 'mdeeleyi2@mozilla.org', 87, 775);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(652, 'idrewelli3@sakura.ne.jp', 43, 374);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(653, 'achastaingi4@hibu.com', 62, 460);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(654, 'bciobutarui5@parallels.com', 76, 393);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(655, 'aburgotti6@geocities.jp', 2, 852);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(656, 'cklasi7@so-net.ne.jp', 95, 348);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(657, 'cdrinnani8@flickr.com', 30, 940);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(658, 'dproskei9@reference.com', 29, 286);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(659, 'skalbia@ebay.com', 8, 81);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(660, 'thallahanib@ca.gov', 88, 600);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(661, 'bcraskeic@bing.com', 71, 759);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(662, 'lfilyaevid@soup.io', 79, 375);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(663, 'tbordissie@free.fr', 1, 62);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(664, 'pdrageif@usnews.com', 43, 7);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(665, 'tshalcrosig@nhs.uk', 82, 207);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(666, 'dmcdonellih@skype.com', 51, 768);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(667, 'jpancastii@alexa.com', 36, 516);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(668, 'cmckinieij@vistaprint.com', 38, 902);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(669, 'tohannayik@state.tx.us', 94, 127);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(670, 'smaryil@google.cn', 66, 853);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(671, 'aswainstonim@census.gov', 1, 717);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(672, 'jfruchonin@gmpg.org', 26, 737);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(673, 'lgabbotio@techcrunch.com', 88, 668);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(674, 'reslieip@ifeng.com', 72, 988);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(675, 'rpettigrewiq@dot.gov', 6, 274);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(677, 'hgresswoodis@i2i.jp', 35, 409);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(678, 'emoizerit@hibu.com', 17, 642);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(679, 'dmccruddeniu@prweb.com', 17, 630);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(680, 'rcamockiv@biglobe.ne.jp', 59, 593);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(681, 'edanyiw@google.nl', 19, 566);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(682, 'gdumbletonix@blogspot.com', 26, 893);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(683, 'nramelotiy@simplemachines.org', 68, 706);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(684, 'dburtenshawiz@vkontakte.ru', 83, 202);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(685, 'zlandalj0@techcrunch.com', 32, 490);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(686, 'rdaintierj1@spiegel.de', 67, 754);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(687, 'lkemshellj2@wiley.com', 94, 834);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(688, 'jzinij3@guardian.co.uk', 25, 155);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(689, 'mdavenportj4@state.tx.us', 17, 812);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(690, 'nbrazelj5@wordpress.org', 3, 89);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(691, 'dlavenderj6@slashdot.org', 82, 50);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(692, 'echestnuttj7@w3.org', 52, 179);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(693, 'dlippinij8@gmpg.org', 3, 982);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(694, 'cborrellj9@ft.com', 48, 241);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(695, 'wcomelloja@facebook.com', 25, 372);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(697, 'tclouterjc@joomla.org', 40, 114);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(698, 'pkobschjd@who.int', 70, 442);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(699, 'rreynoldje@360.cn', 51, 913);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(700, 'tyarralljf@google.co.uk', 85, 906);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(701, 'mbykjg@un.org', 75, 563);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(702, 'nyeldhamjh@webmd.com', 84, 39);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(703, 'fjosofovitzji@sourceforge.net', 88, 582);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(704, 'sfayrejj@hhs.gov', 83, 31);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(705, 'eklusjk@soup.io', 30, 778);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(706, 'sskinglejl@umn.edu', 67, 891);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(707, 'lcruisejm@usa.gov', 9, 347);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(708, 'sclouterjn@europa.eu', 22, 505);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(709, 'dfiddymentjo@soundcloud.com', 93, 184);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(710, 'hrabbjp@alexa.com', 82, 257);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(711, 'larnejq@google.fr', 93, 551);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(712, 'ctimewelljr@springer.com', 94, 637);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(713, 'dholtumjs@rakuten.co.jp', 51, 577);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(714, 'hskeggjt@tinyurl.com', 70, 912);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(715, 'ajeppersonju@clickbank.net', 13, 786);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(716, 'jjellingsjv@ow.ly', 81, 638);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(717, 'vneatjw@zimbio.com', 26, 364);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(718, 'rlyejx@blogs.com', 11, 894);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(719, 'tlippattjy@vk.com', 45, 360);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(720, 'hdifriscojz@npr.org', 32, 393);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(721, 'lgedlingk0@mlb.com', 73, 946);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(722, 'proomek1@moonfruit.com', 15, 26);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(723, 'wsangk2@about.com', 22, 480);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(724, 'echristofek3@cpanel.net', 62, 809);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(725, 'mdalmeidak4@alibaba.com', 80, 729);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(726, 'balgiek5@macromedia.com', 24, 973);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(727, 'vfullunk6@ca.gov', 64, 874);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(728, 'lolechnowiczk7@bravesites.com', 63, 564);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(729, 'rtomkinsonk8@whitehouse.gov', 33, 739);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(730, 'mfrenschk9@huffingtonpost.com', 75, 529);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(731, 'iwareingka@discuz.net', 92, 878);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(732, 'gbatsfordkb@google.pl', 35, 734);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(733, 'scolquitekc@github.com', 99, 154);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(734, 'lsirrellkd@pen.io', 26, 194);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(735, 'abellayke@china.com.cn', 47, 475);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(736, 'ktommeokf@princeton.edu', 91, 491);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(737, 'cdustingkg@upenn.edu', 85, 878);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(738, 'feakekh@virginia.edu', 84, 715);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(739, 'wrubrowki@furl.net', 1, 135);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(740, 'rvinkerkj@wp.com', 2, 898);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(741, 'asoanskk@telegraph.co.uk', 79, 407);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(742, 'icullumkl@zimbio.com', 37, 793);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(743, 'fpennaccikm@hatena.ne.jp', 23, 927);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(744, 'splascottkn@gizmodo.com', 72, 289);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(745, 'dwinfindaleko@indiegogo.com', 94, 403);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(746, 'tgleadlekp@reverbnation.com', 96, 921);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(747, 'jlyvonkq@cafepress.com', 37, 937);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(748, 'ltownrowkr@apache.org', 26, 788);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(749, 'rhummerstonks@icio.us', 54, 94);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(750, 'driochkt@npr.org', 58, 235);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(751, 'pronaldsonku@house.gov', 33, 854);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(753, 'celieskw@icio.us', 99, 48);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(754, 'fdmitrkx@va.gov', 41, 122);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(755, 'ialltimesky@tamu.edu', 52, 549);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(756, 'dtruswellkz@360.cn', 64, 818);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(757, 'wmcilwainel0@cloudflare.com', 1, 876);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(758, 'clefeaverl1@npr.org', 65, 52);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(759, 'dcostinl2@sogou.com', 36, 461);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(760, 'kflowersl3@macromedia.com', 72, 636);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(761, 'bbereclothl4@foxnews.com', 66, 569);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(762, 'tbratchelll5@hao123.com', 24, 631);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(763, 'vgreerl6@marketwatch.com', 1, 263);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(764, 'dvinterl7@symantec.com', 9, 566);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(765, 'hsearyl8@hud.gov', 89, 315);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(766, 'ckuhnhardtl9@samsung.com', 99, 113);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(767, 'nchuneyla@chicagotribune.com', 49, 317);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(768, 'eblaberlb@domainmarket.com', 76, 517);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(769, 'hivashchenkolc@un.org', 12, 376);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(771, 'svanyarkinle@nhs.uk', 47, 846);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(772, 'fventhamlf@fda.gov', 94, 923);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(773, 'ttiernanlg@narod.ru', 86, 775);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(774, 'glaredlh@google.com', 89, 661);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(775, 'acanetli@goo.gl', 82, 761);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(776, 'bharroplj@over-blog.com', 96, 627);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(777, 'ralgielk@netscape.com', 89, 845);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(778, 'dmcgrirlll@gnu.org', 19, 370);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(779, 'etomasicchiolm@cbslocal.com', 11, 973);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(780, 'hviggarsln@github.com', 42, 867);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(781, 'jtyrelo@feedburner.com', 33, 461);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(782, 'smcbreartylp@newyorker.com', 63, 187);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(783, 'lbecarralq@comsenz.com', 39, 516);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(784, 'fsherbornlr@pcworld.com', 3, 750);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(785, 'dbaggelleyls@pbs.org', 24, 729);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(786, 'blerwaylt@craigslist.org', 52, 411);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(787, 'rscothernlu@github.com', 26, 592);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(788, 'tmunningslv@psu.edu', 71, 57);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(789, 'tgoulstonelw@slashdot.org', 96, 632);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(790, 'amallowslx@typepad.com', 39, 61);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(791, 'tbernettely@twitpic.com', 80, 692);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(792, 'ajouhanlz@jiathis.com', 6, 265);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(793, 'dsomnerm0@nba.com', 50, 350);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(794, 'hliddonm1@nt.org', 40, 916);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(795, 'blamdinm2@tamu.edu', 82, 409);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(796, 'aaplinm3@boston.com', 54, 999);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(797, 'bdourism4@goo.ne.jp', 98, 35);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(798, 'eairtonm5@sphinn.com', 7, 71);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(799, 'icadorem6@nyu.edu', 60, 869);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(800, 'dbatcheldorm7@engadget.com', 10, 451);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(801, 'bwissonm8@shop-pro.jp', 65, 156);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(802, 'atrittamm9@surveymonkey.com', 7, 360);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(803, 'syurshevma@csmonitor.com', 12, 218);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(804, 'averomb@exblog.jp', 73, 563);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(805, 'bpanniersmc@ed.gov', 19, 187);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(806, 'rsullymd@narod.ru', 9, 480);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(807, 'cbadrockme@tripadvisor.com', 67, 205);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(808, 'adiniscomf@icio.us', 93, 988);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(809, 'sentreismg@google.fr', 39, 862);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(810, 'bbossemh@webnode.com', 12, 813);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(811, 'cchownmi@about.com', 63, 847);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(812, 'iorrocksmj@google.it', 81, 327);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(813, 'aportemk@tuttocitta.it', 74, 682);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(814, 'cwrassellml@tinypic.com', 9, 313);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(815, 'ecasselmm@gmpg.org', 42, 378);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(816, 'dspearesmn@berkeley.edu', 39, 81);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(818, 'mdurnillmp@soundcloud.com', 50, 456);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(819, 'gtamblingsonmq@imageshack.us', 53, 570);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(820, 'afaraharmr@yolasite.com', 69, 417);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(821, 'dsoltanms@fda.gov', 45, 899);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(822, 'sthoroldmt@yelp.com', 93, 720);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(823, 'hliggensmu@dedecms.com', 31, 674);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(824, 'nroggermv@sogou.com', 25, 930);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(825, 'caspelmw@wix.com', 28, 569);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(827, 'mtythacottmy@rambler.ru', 21, 564);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(828, 'amathiotmz@census.gov', 59, 454);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(829, 'ldavenalln0@wiley.com', 95, 452);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(830, 'mgittensn1@booking.com', 6, 303);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(831, 'greddingn2@discovery.com', 94, 818);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(832, 'obegwelln3@cbc.ca', 28, 86);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(833, 'bsimonin4@blog.com', 72, 893);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(834, 'ehewelln5@usa.gov', 62, 294);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(835, 'vharleyn6@noaa.gov', 69, 555);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(836, 'cfoggartyn7@comcast.net', 53, 82);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(837, 'ngreenfieldn8@mail.ru', 51, 119);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(838, 'snicholsonn9@edublogs.org', 83, 790);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(839, 'edominickna@engadget.com', 11, 123);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(840, 'sjosefssonnb@ucoz.ru', 58, 742);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(841, 'amacsweennc@redcross.org', 67, 941);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(842, 'hdarragonnd@earthlink.net', 45, 720);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(843, 'othornallyne@elegantthemes.com', 65, 303);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(844, 'zhayternf@thetimes.co.uk', 41, 589);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(845, 'gbodyng@npr.org', 85, 763);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(846, 'sspearnh@uiuc.edu', 36, 309);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(847, 'rskoylesni@huffingtonpost.com', 57, 461);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(848, 'mbrowsenj@mayoclinic.com', 74, 3);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(849, 'ahancornnk@npr.org', 37, 869);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(850, 'twattishamnl@time.com', 89, 380);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(851, 'hsansamnm@hc360.com', 8, 236);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(852, 'gmierenn@ow.ly', 56, 676);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(853, 'webbensno@dropbox.com', 67, 357);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(854, 'sfreebornnp@spotify.com', 54, 300);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(855, 'randreasennq@samsung.com', 17, 879);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(856, 'jarundellnr@patch.com', 64, 13);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(857, 'cnuccitellins@opensource.org', 55, 192);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(859, 'ldiwellnu@timesonline.co.uk', 25, 48);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(860, 'ybucklernv@posterous.com', 13, 998);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(861, 'cbendlenw@indiegogo.com', 80, 135);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(862, 'ajezzardnx@wunderground.com', 28, 697);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(863, 'wnatteny@google.cn', 34, 772);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(864, 'kschneidarnz@newsvine.com', 64, 410);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(865, 'mhussyo0@feedburner.com', 48, 3);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(866, 'wkirmano1@boston.com', 37, 228);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(867, 'econahyo2@quantcast.com', 52, 109);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(868, 'mbritono3@cnbc.com', 31, 144);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(869, 'parnaoo4@washington.edu', 15, 271);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(870, 'lolliero5@ox.ac.uk', 88, 139);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(871, 'cshaylero6@desdev.cn', 45, 388);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(872, 'imarteleto7@shop-pro.jp', 60, 815);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(873, 'ftorbecko8@booking.com', 66, 900);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(874, 'hmatijasevico9@i2i.jp', 34, 271);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(875, 'cbenardeauoa@dmoz.org', 64, 981);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(876, 'fbywatersob@studiopress.com', 14, 585);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(877, 'ubulmeroc@livejournal.com', 29, 390);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(878, 'tlamberteschiod@bandcamp.com', 91, 424);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(879, 'nbrosolioe@discuz.net', 10, 742);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(880, 'hpepinof@example.com', 25, 87);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(881, 'edunnetog@technorati.com', 43, 276);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(882, 'mchantillonoh@bandcamp.com', 52, 886);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(883, 'nsearleoi@yellowpages.com', 50, 869);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(884, 'alandrieuoj@accuweather.com', 20, 883);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(885, 'groddamok@istockphoto.com', 72, 28);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(886, 'dlarmanol@ucoz.ru', 84, 759);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(887, 'cjanatkaom@parallels.com', 11, 361);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(888, 'ffurphyon@oracle.com', 77, 712);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(890, 'ppinckop@home.pl', 21, 766);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(891, 'nlammieoq@360.cn', 76, 535);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(892, 'cdalrympleor@mozilla.org', 67, 777);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(893, 'amanusos@mediafire.com', 62, 766);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(894, 'cmacduffot@smh.com.au', 80, 376);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(895, 'lbrendekeou@rambler.ru', 80, 927);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(896, 'gkerrodov@dyndns.org', 82, 433);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(897, 'ameijerow@cpanel.net', 18, 499);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(898, 'dcolleymoreox@sbwire.com', 14, 162);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(899, 'cspenderoy@diigo.com', 74, 793);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(900, 'mcustyoz@google.it', 98, 989);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(901, 'fbusep0@harvard.edu', 27, 586);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(902, 'hmartellp1@typepad.com', 21, 790);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(903, 'evaynep2@huffingtonpost.com', 92, 488);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(904, 'jroycraftp3@hud.gov', 19, 961);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(905, 'hdilonp4@redcross.org', 70, 316);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(906, 'fbendixenp5@vk.com', 54, 645);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(907, 'xgrannellp6@go.com', 94, 528);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(908, 'ejindrichp7@guardian.co.uk', 96, 957);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(909, 'efoltinp8@yelp.com', 12, 487);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(910, 'jpreuvostp9@angelfire.com', 84, 424);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(911, 'ecopnellpa@blogtalkradio.com', 39, 527);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(912, 'tcullimorepb@nifty.com', 92, 903);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(913, 'astitsonpc@taobao.com', 84, 424);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(914, 'oneilandpd@uiuc.edu', 78, 356);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(915, 'locarrolpe@nhs.uk', 28, 716);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(916, 'sgardenerpf@bbc.co.uk', 44, 838);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(917, 'abattlestonepg@bing.com', 98, 752);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(918, 'lmcquillanph@hfpost.com', 99, 676);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(919, 'jcapperpi@nbcnews.com', 83, 863);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(920, 'wkeefepj@unc.edu', 72, 984);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(921, 'fpammentpk@123-reg.co.uk', 31, 913);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(922, 'plinggoodpl@moonfruit.com', 53, 177);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(923, 'spayepm@shutterfly.com', 77, 915);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(924, 'zdrablepn@wired.com', 85, 552);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(925, 'arawespo@vimeo.com', 90, 306);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(926, 'mcogmanpp@nhs.uk', 77, 633);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(927, 'jsnadenpq@lulu.com', 61, 54);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(928, 'clemarquandpr@pinterest.com', 22, 782);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(929, 'mclemesps@whitehouse.gov', 73, 843);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(930, 'vgillesonpt@admin.ch', 42, 158);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(931, 'nanningpu@answers.com', 39, 460);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(932, 'emiskimmonpv@dion.ne.jp', 11, 572);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(933, 'pdamperpw@taobao.com', 57, 230);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(934, 'lchaterpx@senate.gov', 39, 538);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(935, 'tchaineypy@amazon.co.uk', 59, 478);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(936, 'screaneypz@behance.net', 6, 672);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(937, 'cdymokeq0@spotify.com', 8, 277);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(938, 'dhapgoodq1@blogspot.com', 52, 331);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(939, 'fmorrowq2@seattletimes.com', 19, 470);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(940, 'fbraggerq3@blog.com', 94, 755);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(941, 'hhowlinq4@scribd.com', 13, 124);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(942, 'deitterq5@friendfeed.com', 75, 180);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(943, 'chullsq6@disqus.com', 21, 943);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(944, 'mharrissq7@yellowbook.com', 43, 546);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(945, 'kkeganq8@vkontakte.ru', 11, 386);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(946, 'epawfootq9@amazon.de', 30, 499);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(947, 'dcarverqa@wufoo.com', 72, 325);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(948, 'bbarbosaqb@imdb.com', 94, 238);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(949, 'atomasekqc@delicious.com', 47, 912);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(950, 'smaccrackanqd@alibaba.com', 61, 832);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(951, 'chobbertqe@ezinearticles.com', 57, 291);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(952, 'sgeroqf@cam.ac.uk', 2, 577);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(953, 'mduffilqg@cbslocal.com', 18, 586);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(954, 'egoldingayqh@blogs.com', 51, 507);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(955, 'cvoiceqi@goodreads.com', 28, 682);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(956, 'shonischqj@yolasite.com', 55, 857);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(957, 'ykillwickqk@examiner.com', 2, 817);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(958, 'rtremolieresql@wiley.com', 86, 45);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(959, 'wdalwisqm@cnbc.com', 67, 834);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(960, 'dswannackqn@bbb.org', 16, 597);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(961, 'acrossanqo@dell.com', 80, 482);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(962, 'zehratqp@aol.com', 45, 36);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(963, 'atrenchardqq@elegantthemes.com', 10, 426);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(964, 'seasmanqr@over-blog.com', 63, 339);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(965, 'jrosbroughqs@php.net', 19, 848);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(966, 'hrenvoysqt@shareasale.com', 62, 598);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(967, 'jcappqu@gov.uk', 87, 145);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(968, 'atardiffqv@apple.com', 86, 742);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(969, 'adyersqw@wordpress.com', 54, 839);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(970, 'plehouxqx@netvibes.com', 87, 617);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(971, 'hredgraveqy@squarespace.com', 64, 374);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(972, 'mlosebieqz@i2i.jp', 41, 42);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(973, 'wmaccostyer0@123-reg.co.uk', 24, 577);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(974, 'ielldredr1@nydailynews.com', 16, 617);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(975, 'dhambidger2@newyorker.com', 80, 140);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(976, 'rrussamr3@wiley.com', 21, 114);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(977, 'wsuthworthr4@topsy.com', 79, 617);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(978, 'cgowanlockr5@g.co', 99, 300);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(979, 'knunnsr6@ebay.co.uk', 64, 334);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(980, 'shonnanr7@rambler.ru', 86, 200);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(981, 'jsauntr8@miitbeian.gov.cn', 69, 331);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(982, 'ddobyr9@wikispaces.com', 18, 265);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(983, 'gdukera@latimes.com', 87, 185);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(984, 'wberminghamrb@mlb.com', 69, 812);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(985, 'halcoranrc@dedecms.com', 28, 27);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(986, 'clackmannrd@huffingtonpost.com', 100, 627);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(987, 'nbarmadierre@cnet.com', 96, 962);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(988, 'ttruckettrf@purevolume.com', 51, 68);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(989, 'btroddrg@blinklist.com', 11, 123);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(990, 'cmosdallrh@indiegogo.com', 73, 776);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(991, 'rlaxsonri@vkontakte.ru', 95, 650);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(992, 'jbaikerj@statcounter.com', 61, 991);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(993, 'tbaldellirk@toplist.cz', 77, 544);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(994, 'rmuzzullorl@bs.com', 18, 32);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(995, 'rmcilwraithrm@blog.com', 37, 878);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(996, 'vfilyashinrn@slate.com', 30, 62);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(997, 'ajealro@psu.edu', 20, 378);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(998, 'dmacloughlinrp@ask.com', 61, 602);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(999, 'mgeeverq@who.int', 79, 547);
insert into SUGGEST(id_suggest, email, id_game, id_system_user) values
(1000, 'mlambotrr@mail.ru', 24, 304);
insert into VOTE(id_vote, value, id_game, id_system_user) values (1,
3, 77, 850);
insert into VOTE(id_vote, value, id_game, id_system_user) values (2,
0, 13, 501);
insert into VOTE(id_vote, value, id_game, id_system_user) values (3,
2, 59, 375);
insert into VOTE(id_vote, value, id_game, id_system_user) values (4,
9, 88, 218);
insert into VOTE(id_vote, value, id_game, id_system_user) values (5,
8, 91, 127);
insert into VOTE(id_vote, value, id_game, id_system_user) values (6,
4, 38, 728);
insert into VOTE(id_vote, value, id_game, id_system_user) values (7,
3, 41, 980);
insert into VOTE(id_vote, value, id_game, id_system_user) values (8,
8, 99, 33);
insert into VOTE(id_vote, value, id_game, id_system_user) values (9,
8, 91, 432);
insert into VOTE(id_vote, value, id_game, id_system_user) values (10,
8, 32, 54);
insert into VOTE(id_vote, value, id_game, id_system_user) values (11,
0, 98, 940);
insert into VOTE(id_vote, value, id_game, id_system_user) values (12,
1, 31, 38);
insert into VOTE(id_vote, value, id_game, id_system_user) values (13,
3, 45, 695);
insert into VOTE(id_vote, value, id_game, id_system_user) values (14,
8, 16, 175);
insert into VOTE(id_vote, value, id_game, id_system_user) values (15,
0, 32, 902);
insert into VOTE(id_vote, value, id_game, id_system_user) values (16,
5, 14, 492);
insert into VOTE(id_vote, value, id_game, id_system_user) values (17,
6, 48, 116);
insert into VOTE(id_vote, value, id_game, id_system_user) values (18,
8, 34, 269);
insert into VOTE(id_vote, value, id_game, id_system_user) values (19,
2, 12, 182);
insert into VOTE(id_vote, value, id_game, id_system_user) values (20,
1, 100, 612);
insert into VOTE(id_vote, value, id_game, id_system_user) values (21,
6, 45, 408);
insert into VOTE(id_vote, value, id_game, id_system_user) values (22,
0, 41, 712);
insert into VOTE(id_vote, value, id_game, id_system_user) values (23,
2, 55, 952);
insert into VOTE(id_vote, value, id_game, id_system_user) values (24,
3, 60, 39);
insert into VOTE(id_vote, value, id_game, id_system_user) values (25,
2, 45, 738);
insert into VOTE(id_vote, value, id_game, id_system_user) values (26,
5, 20, 168);
insert into VOTE(id_vote, value, id_game, id_system_user) values (27,
1, 39, 903);
insert into VOTE(id_vote, value, id_game, id_system_user) values (28,
5, 28, 597);
insert into VOTE(id_vote, value, id_game, id_system_user) values (29,
7, 59, 252);
insert into VOTE(id_vote, value, id_game, id_system_user) values (30,
10, 50, 52);
insert into VOTE(id_vote, value, id_game, id_system_user) values (31,
1, 93, 155);
insert into VOTE(id_vote, value, id_game, id_system_user) values (32,
10, 72, 964);
insert into VOTE(id_vote, value, id_game, id_system_user) values (33,
1, 39, 963);
insert into VOTE(id_vote, value, id_game, id_system_user) values (34,
5, 28, 584);
insert into VOTE(id_vote, value, id_game, id_system_user) values (35,
0, 22, 516);
insert into VOTE(id_vote, value, id_game, id_system_user) values (36,
8, 64, 443);
insert into VOTE(id_vote, value, id_game, id_system_user) values (37,
4, 6, 176);
insert into VOTE(id_vote, value, id_game, id_system_user) values (38,
5, 24, 34);
insert into VOTE(id_vote, value, id_game, id_system_user) values (39,
5, 2, 82);
insert into VOTE(id_vote, value, id_game, id_system_user) values (40,
10, 98, 142);
insert into VOTE(id_vote, value, id_game, id_system_user) values (41,
7, 23, 90);
insert into VOTE(id_vote, value, id_game, id_system_user) values (42,
10, 38, 527);
insert into VOTE(id_vote, value, id_game, id_system_user) values (43,
1, 22, 486);
insert into VOTE(id_vote, value, id_game, id_system_user) values (44,
4, 73, 678);
insert into VOTE(id_vote, value, id_game, id_system_user) values (45,
1, 68, 775);
insert into VOTE(id_vote, value, id_game, id_system_user) values (46,
6, 10, 959);
insert into VOTE(id_vote, value, id_game, id_system_user) values (47,
7, 61, 896);
insert into VOTE(id_vote, value, id_game, id_system_user) values (48,
5, 72, 726);
insert into VOTE(id_vote, value, id_game, id_system_user) values (49,
8, 48, 375);
insert into VOTE(id_vote, value, id_game, id_system_user) values (50,
3, 93, 389);
insert into VOTE(id_vote, value, id_game, id_system_user) values (51,
3, 26, 775);
insert into VOTE(id_vote, value, id_game, id_system_user) values (52,
1, 65, 948);
insert into VOTE(id_vote, value, id_game, id_system_user) values (53,
2, 93, 320);
insert into VOTE(id_vote, value, id_game, id_system_user) values (54,
8, 72, 320);
insert into VOTE(id_vote, value, id_game, id_system_user) values (55,
3, 24, 560);
insert into VOTE(id_vote, value, id_game, id_system_user) values (56,
1, 63, 488);
insert into VOTE(id_vote, value, id_game, id_system_user) values (57,
6, 87, 774);
insert into VOTE(id_vote, value, id_game, id_system_user) values (58,
5, 53, 827);
insert into VOTE(id_vote, value, id_game, id_system_user) values (59,
0, 26, 852);
insert into VOTE(id_vote, value, id_game, id_system_user) values (60,
4, 24, 586);
insert into VOTE(id_vote, value, id_game, id_system_user) values (61,
2, 78, 441);
insert into VOTE(id_vote, value, id_game, id_system_user) values (62,
2, 10, 329);
insert into VOTE(id_vote, value, id_game, id_system_user) values (63,
2, 72, 484);
insert into VOTE(id_vote, value, id_game, id_system_user) values (64,
1, 32, 708);
insert into VOTE(id_vote, value, id_game, id_system_user) values (65,
5, 10, 206);
insert into VOTE(id_vote, value, id_game, id_system_user) values (66,
7, 76, 346);
insert into VOTE(id_vote, value, id_game, id_system_user) values (67,
9, 21, 34);
insert into VOTE(id_vote, value, id_game, id_system_user) values (68,
5, 27, 131);
insert into VOTE(id_vote, value, id_game, id_system_user) values (69,
10, 46, 256);
insert into VOTE(id_vote, value, id_game, id_system_user) values (70,
1, 43, 952);
insert into VOTE(id_vote, value, id_game, id_system_user) values (71,
9, 86, 757);
insert into VOTE(id_vote, value, id_game, id_system_user) values (72,
5, 24, 718);
insert into VOTE(id_vote, value, id_game, id_system_user) values (73,
4, 30, 996);
insert into VOTE(id_vote, value, id_game, id_system_user) values (74,
1, 20, 269);
insert into VOTE(id_vote, value, id_game, id_system_user) values (75,
0, 13, 605);
insert into VOTE(id_vote, value, id_game, id_system_user) values (76,
9, 93, 757);
insert into VOTE(id_vote, value, id_game, id_system_user) values (77,
1, 88, 431);
insert into VOTE(id_vote, value, id_game, id_system_user) values (78,
4, 95, 935);
insert into VOTE(id_vote, value, id_game, id_system_user) values (79,
6, 66, 266);
insert into VOTE(id_vote, value, id_game, id_system_user) values (80,
6, 11, 459);
insert into VOTE(id_vote, value, id_game, id_system_user) values (81,
5, 68, 716);
insert into VOTE(id_vote, value, id_game, id_system_user) values (82,
0, 10, 267);
insert into VOTE(id_vote, value, id_game, id_system_user) values (83,
0, 79, 362);
insert into VOTE(id_vote, value, id_game, id_system_user) values (84,
7, 31, 786);
insert into VOTE(id_vote, value, id_game, id_system_user) values (85,
10, 50, 464);
insert into VOTE(id_vote, value, id_game, id_system_user) values (86,
8, 12, 528);
insert into VOTE(id_vote, value, id_game, id_system_user) values (87,
9, 67, 222);
insert into VOTE(id_vote, value, id_game, id_system_user) values (88,
10, 19, 192);
insert into VOTE(id_vote, value, id_game, id_system_user) values (89,
10, 2, 979);
insert into VOTE(id_vote, value, id_game, id_system_user) values (90,
7, 6, 659);
insert into VOTE(id_vote, value, id_game, id_system_user) values (91,
8, 33, 751);
insert into VOTE(id_vote, value, id_game, id_system_user) values (92,
8, 78, 381);
insert into VOTE(id_vote, value, id_game, id_system_user) values (93,
0, 88, 349);
insert into VOTE(id_vote, value, id_game, id_system_user) values (94,
6, 66, 36);
insert into VOTE(id_vote, value, id_game, id_system_user) values (95,
8, 84, 820);
insert into VOTE(id_vote, value, id_game, id_system_user) values (96,
10, 16, 252);
insert into VOTE(id_vote, value, id_game, id_system_user) values (97,
8, 53, 141);
insert into VOTE(id_vote, value, id_game, id_system_user) values (98,
9, 50, 844);
insert into VOTE(id_vote, value, id_game, id_system_user) values (99,
7, 55, 747);
insert into VOTE(id_vote, value, id_game, id_system_user) values (100,
2, 98, 798);
insert into VOTE(id_vote, value, id_game, id_system_user) values (101,
0, 37, 436);
insert into VOTE(id_vote, value, id_game, id_system_user) values (102,
1, 62, 39);
insert into VOTE(id_vote, value, id_game, id_system_user) values (103,
4, 35, 118);
insert into VOTE(id_vote, value, id_game, id_system_user) values (104,
5, 85, 358);
insert into VOTE(id_vote, value, id_game, id_system_user) values (105,
7, 86, 593);
insert into VOTE(id_vote, value, id_game, id_system_user) values (106,
0, 50, 60);
insert into VOTE(id_vote, value, id_game, id_system_user) values (107,
4, 33, 164);
insert into VOTE(id_vote, value, id_game, id_system_user) values (108,
10, 18, 427);
insert into VOTE(id_vote, value, id_game, id_system_user) values (109,
4, 96, 201);
insert into VOTE(id_vote, value, id_game, id_system_user) values (110,
3, 82, 165);
insert into VOTE(id_vote, value, id_game, id_system_user) values (111,
4, 37, 97);
insert into VOTE(id_vote, value, id_game, id_system_user) values (112,
3, 66, 343);
insert into VOTE(id_vote, value, id_game, id_system_user) values (113,
9, 69, 806);
insert into VOTE(id_vote, value, id_game, id_system_user) values (114,
6, 51, 496);
insert into VOTE(id_vote, value, id_game, id_system_user) values (115,
7, 25, 547);
insert into VOTE(id_vote, value, id_game, id_system_user) values (116,
8, 96, 810);
insert into VOTE(id_vote, value, id_game, id_system_user) values (117,
5, 24, 975);
insert into VOTE(id_vote, value, id_game, id_system_user) values (118,
9, 98, 809);
insert into VOTE(id_vote, value, id_game, id_system_user) values (119,
2, 30, 154);
insert into VOTE(id_vote, value, id_game, id_system_user) values (120,
1, 17, 382);
insert into VOTE(id_vote, value, id_game, id_system_user) values (121,
4, 16, 256);
insert into VOTE(id_vote, value, id_game, id_system_user) values (122,
1, 16, 436);
insert into VOTE(id_vote, value, id_game, id_system_user) values (123,
0, 1, 614);
insert into VOTE(id_vote, value, id_game, id_system_user) values (124,
4, 13, 916);
insert into VOTE(id_vote, value, id_game, id_system_user) values (125,
2, 67, 661);
insert into VOTE(id_vote, value, id_game, id_system_user) values (126,
8, 32, 703);
insert into VOTE(id_vote, value, id_game, id_system_user) values (127,
8, 65, 480);
insert into VOTE(id_vote, value, id_game, id_system_user) values (128,
8, 21, 317);
insert into VOTE(id_vote, value, id_game, id_system_user) values (129,
8, 94, 405);
insert into VOTE(id_vote, value, id_game, id_system_user) values (130,
2, 27, 411);
insert into VOTE(id_vote, value, id_game, id_system_user) values (131,
6, 34, 360);
insert into VOTE(id_vote, value, id_game, id_system_user) values (132,
4, 58, 899);
insert into VOTE(id_vote, value, id_game, id_system_user) values (133,
2, 81, 365);
insert into VOTE(id_vote, value, id_game, id_system_user) values (134,
5, 86, 478);
insert into VOTE(id_vote, value, id_game, id_system_user) values (135,
9, 72, 629);
insert into VOTE(id_vote, value, id_game, id_system_user) values (136,
10, 1, 281);
insert into VOTE(id_vote, value, id_game, id_system_user) values (137,
7, 45, 778);
insert into VOTE(id_vote, value, id_game, id_system_user) values (138,
5, 51, 583);
insert into VOTE(id_vote, value, id_game, id_system_user) values (139,
7, 28, 981);
insert into VOTE(id_vote, value, id_game, id_system_user) values (140,
6, 61, 580);
insert into VOTE(id_vote, value, id_game, id_system_user) values (141,
4, 97, 658);
insert into VOTE(id_vote, value, id_game, id_system_user) values (143,
9, 29, 15);
insert into VOTE(id_vote, value, id_game, id_system_user) values (144,
0, 52, 329);
insert into VOTE(id_vote, value, id_game, id_system_user) values (145,
3, 94, 848);
insert into VOTE(id_vote, value, id_game, id_system_user) values (146,
2, 16, 425);
insert into VOTE(id_vote, value, id_game, id_system_user) values (147,
4, 73, 732);
insert into VOTE(id_vote, value, id_game, id_system_user) values (148,
5, 61, 776);
insert into VOTE(id_vote, value, id_game, id_system_user) values (149,
0, 73, 670);
insert into VOTE(id_vote, value, id_game, id_system_user) values (150,
4, 40, 921);
insert into VOTE(id_vote, value, id_game, id_system_user) values (151,
3, 8, 814);
insert into VOTE(id_vote, value, id_game, id_system_user) values (152,
5, 22, 862);
insert into VOTE(id_vote, value, id_game, id_system_user) values (153,
9, 9, 437);
insert into VOTE(id_vote, value, id_game, id_system_user) values (154,
7, 50, 261);
insert into VOTE(id_vote, value, id_game, id_system_user) values (155,
5, 16, 891);
insert into VOTE(id_vote, value, id_game, id_system_user) values (156,
2, 98, 181);
insert into VOTE(id_vote, value, id_game, id_system_user) values (157,
9, 96, 95);
insert into VOTE(id_vote, value, id_game, id_system_user) values (158,
3, 99, 174);
insert into VOTE(id_vote, value, id_game, id_system_user) values (159,
9, 42, 638);
insert into VOTE(id_vote, value, id_game, id_system_user) values (160,
9, 20, 21);
insert into VOTE(id_vote, value, id_game, id_system_user) values (161,
1, 91, 752);
insert into VOTE(id_vote, value, id_game, id_system_user) values (162,
10, 78, 979);
insert into VOTE(id_vote, value, id_game, id_system_user) values (163,
0, 64, 549);
insert into VOTE(id_vote, value, id_game, id_system_user) values (164,
6, 73, 12);
insert into VOTE(id_vote, value, id_game, id_system_user) values (165,
9, 58, 52);
insert into VOTE(id_vote, value, id_game, id_system_user) values (166,
1, 100, 289);
insert into VOTE(id_vote, value, id_game, id_system_user) values (167,
2, 45, 176);
insert into VOTE(id_vote, value, id_game, id_system_user) values (168,
5, 74, 602);
insert into VOTE(id_vote, value, id_game, id_system_user) values (169,
3, 17, 897);
insert into VOTE(id_vote, value, id_game, id_system_user) values (170,
1, 72, 471);
insert into VOTE(id_vote, value, id_game, id_system_user) values (171,
7, 54, 42);
insert into VOTE(id_vote, value, id_game, id_system_user) values (172,
3, 39, 720);
insert into VOTE(id_vote, value, id_game, id_system_user) values (173,
2, 14, 638);
insert into VOTE(id_vote, value, id_game, id_system_user) values (174,
7, 39, 971);
insert into VOTE(id_vote, value, id_game, id_system_user) values (175,
4, 15, 23);
insert into VOTE(id_vote, value, id_game, id_system_user) values (176,
7, 75, 37);
insert into VOTE(id_vote, value, id_game, id_system_user) values (177,
8, 75, 926);
insert into VOTE(id_vote, value, id_game, id_system_user) values (178,
1, 7, 55);
insert into VOTE(id_vote, value, id_game, id_system_user) values (179,
7, 69, 928);
insert into VOTE(id_vote, value, id_game, id_system_user) values (180,
9, 74, 815);
insert into VOTE(id_vote, value, id_game, id_system_user) values (181,
1, 56, 689);
insert into VOTE(id_vote, value, id_game, id_system_user) values (182,
8, 85, 265);
insert into VOTE(id_vote, value, id_game, id_system_user) values (183,
1, 30, 44);
insert into VOTE(id_vote, value, id_game, id_system_user) values (184,
4, 13, 845);
insert into VOTE(id_vote, value, id_game, id_system_user) values (185,
3, 60, 400);
insert into VOTE(id_vote, value, id_game, id_system_user) values (186,
6, 43, 911);
insert into VOTE(id_vote, value, id_game, id_system_user) values (187,
3, 24, 365);
insert into VOTE(id_vote, value, id_game, id_system_user) values (188,
5, 95, 541);
insert into VOTE(id_vote, value, id_game, id_system_user) values (189,
9, 30, 737);
insert into VOTE(id_vote, value, id_game, id_system_user) values (190,
6, 58, 701);
insert into VOTE(id_vote, value, id_game, id_system_user) values (191,
5, 55, 104);
insert into VOTE(id_vote, value, id_game, id_system_user) values (192,
0, 71, 75);
insert into VOTE(id_vote, value, id_game, id_system_user) values (193,
5, 33, 182);
insert into VOTE(id_vote, value, id_game, id_system_user) values (194,
5, 72, 948);
insert into VOTE(id_vote, value, id_game, id_system_user) values (195,
10, 100, 576);
insert into VOTE(id_vote, value, id_game, id_system_user) values (196,
5, 71, 662);
insert into VOTE(id_vote, value, id_game, id_system_user) values (197,
2, 67, 15);
insert into VOTE(id_vote, value, id_game, id_system_user) values (198,
7, 13, 719);
insert into VOTE(id_vote, value, id_game, id_system_user) values (199,
3, 64, 78);
insert into VOTE(id_vote, value, id_game, id_system_user) values (200,
7, 18, 742);
insert into VOTE(id_vote, value, id_game, id_system_user) values (201,
10, 11, 825);
insert into VOTE(id_vote, value, id_game, id_system_user) values (202,
8, 13, 995);
insert into VOTE(id_vote, value, id_game, id_system_user) values (203,
5, 44, 362);
insert into VOTE(id_vote, value, id_game, id_system_user) values (204,
10, 60, 323);
insert into VOTE(id_vote, value, id_game, id_system_user) values (205,
3, 74, 766);
insert into VOTE(id_vote, value, id_game, id_system_user) values (206,
8, 72, 96);
insert into VOTE(id_vote, value, id_game, id_system_user) values (207,
2, 42, 966);
insert into VOTE(id_vote, value, id_game, id_system_user) values (208,
7, 39, 585);
insert into VOTE(id_vote, value, id_game, id_system_user) values (209,
8, 9, 325);
insert into VOTE(id_vote, value, id_game, id_system_user) values (210,
9, 42, 169);
insert into VOTE(id_vote, value, id_game, id_system_user) values (211,
9, 38, 480);
insert into VOTE(id_vote, value, id_game, id_system_user) values (212,
6, 37, 703);
insert into VOTE(id_vote, value, id_game, id_system_user) values (213,
0, 17, 252);
insert into VOTE(id_vote, value, id_game, id_system_user) values (214,
9, 99, 138);
insert into VOTE(id_vote, value, id_game, id_system_user) values (215,
6, 34, 418);
insert into VOTE(id_vote, value, id_game, id_system_user) values (216,
4, 83, 137);
insert into VOTE(id_vote, value, id_game, id_system_user) values (217,
9, 48, 669);
insert into VOTE(id_vote, value, id_game, id_system_user) values (218,
7, 21, 683);
insert into VOTE(id_vote, value, id_game, id_system_user) values (220,
3, 97, 990);
insert into VOTE(id_vote, value, id_game, id_system_user) values (221,
10, 91, 721);
insert into VOTE(id_vote, value, id_game, id_system_user) values (222,
7, 71, 827);
insert into VOTE(id_vote, value, id_game, id_system_user) values (223,
10, 10, 435);
insert into VOTE(id_vote, value, id_game, id_system_user) values (224,
10, 51, 62);
insert into VOTE(id_vote, value, id_game, id_system_user) values (225,
9, 34, 668);
insert into VOTE(id_vote, value, id_game, id_system_user) values (226,
0, 15, 501);
insert into VOTE(id_vote, value, id_game, id_system_user) values (227,
9, 12, 634);
insert into VOTE(id_vote, value, id_game, id_system_user) values (228,
10, 8, 655);
insert into VOTE(id_vote, value, id_game, id_system_user) values (229,
0, 42, 392);
insert into VOTE(id_vote, value, id_game, id_system_user) values (230,
0, 40, 415);
insert into VOTE(id_vote, value, id_game, id_system_user) values (231,
4, 77, 130);
insert into VOTE(id_vote, value, id_game, id_system_user) values (232,
0, 43, 198);
insert into VOTE(id_vote, value, id_game, id_system_user) values (233,
5, 38, 723);
insert into VOTE(id_vote, value, id_game, id_system_user) values (234,
8, 64, 7);
insert into VOTE(id_vote, value, id_game, id_system_user) values (235,
2, 66, 763);
insert into VOTE(id_vote, value, id_game, id_system_user) values (236,
3, 45, 824);
insert into VOTE(id_vote, value, id_game, id_system_user) values (237,
10, 56, 370);
insert into VOTE(id_vote, value, id_game, id_system_user) values (238,
8, 95, 508);
insert into VOTE(id_vote, value, id_game, id_system_user) values (239,
9, 6, 638);
insert into VOTE(id_vote, value, id_game, id_system_user) values (240,
6, 25, 542);
insert into VOTE(id_vote, value, id_game, id_system_user) values (241,
8, 42, 865);
insert into VOTE(id_vote, value, id_game, id_system_user) values (242,
8, 96, 680);
insert into VOTE(id_vote, value, id_game, id_system_user) values (243,
10, 21, 617);
insert into VOTE(id_vote, value, id_game, id_system_user) values (244,
4, 58, 732);
insert into VOTE(id_vote, value, id_game, id_system_user) values (245,
6, 41, 332);
insert into VOTE(id_vote, value, id_game, id_system_user) values (246,
3, 80, 490);
insert into VOTE(id_vote, value, id_game, id_system_user) values (247,
10, 32, 70);
insert into VOTE(id_vote, value, id_game, id_system_user) values (249,
6, 53, 8);
insert into VOTE(id_vote, value, id_game, id_system_user) values (250,
4, 37, 250);
insert into VOTE(id_vote, value, id_game, id_system_user) values (251,
5, 60, 741);
insert into VOTE(id_vote, value, id_game, id_system_user) values (252,
2, 6, 633);
insert into VOTE(id_vote, value, id_game, id_system_user) values (253,
0, 83, 918);
insert into VOTE(id_vote, value, id_game, id_system_user) values (254,
4, 58, 822);
insert into VOTE(id_vote, value, id_game, id_system_user) values (255,
2, 56, 10);
insert into VOTE(id_vote, value, id_game, id_system_user) values (256,
9, 60, 528);
insert into VOTE(id_vote, value, id_game, id_system_user) values (257,
10, 81, 239);
insert into VOTE(id_vote, value, id_game, id_system_user) values (258,
10, 3, 569);
insert into VOTE(id_vote, value, id_game, id_system_user) values (259,
0, 80, 132);
insert into VOTE(id_vote, value, id_game, id_system_user) values (260,
1, 3, 58);
insert into VOTE(id_vote, value, id_game, id_system_user) values (261,
2, 82, 963);
insert into VOTE(id_vote, value, id_game, id_system_user) values (262,
2, 100, 869);
insert into VOTE(id_vote, value, id_game, id_system_user) values (263,
4, 99, 219);
insert into VOTE(id_vote, value, id_game, id_system_user) values (264,
1, 62, 48);
insert into VOTE(id_vote, value, id_game, id_system_user) values (265,
9, 56, 378);
insert into VOTE(id_vote, value, id_game, id_system_user) values (266,
3, 72, 401);
insert into VOTE(id_vote, value, id_game, id_system_user) values (268,
1, 31, 579);
insert into VOTE(id_vote, value, id_game, id_system_user) values (269,
10, 82, 945);
insert into VOTE(id_vote, value, id_game, id_system_user) values (270,
9, 59, 839);
insert into VOTE(id_vote, value, id_game, id_system_user) values (271,
3, 77, 980);
insert into VOTE(id_vote, value, id_game, id_system_user) values (272,
1, 16, 865);
insert into VOTE(id_vote, value, id_game, id_system_user) values (273,
10, 97, 584);
insert into VOTE(id_vote, value, id_game, id_system_user) values (274,
2, 21, 787);
insert into VOTE(id_vote, value, id_game, id_system_user) values (275,
5, 98, 52);
insert into VOTE(id_vote, value, id_game, id_system_user) values (276,
3, 38, 977);
insert into VOTE(id_vote, value, id_game, id_system_user) values (277,
1, 12, 766);
insert into VOTE(id_vote, value, id_game, id_system_user) values (278,
8, 33, 561);
insert into VOTE(id_vote, value, id_game, id_system_user) values (279,
6, 32, 119);
insert into VOTE(id_vote, value, id_game, id_system_user) values (280,
5, 36, 494);
insert into VOTE(id_vote, value, id_game, id_system_user) values (281,
0, 3, 269);
insert into VOTE(id_vote, value, id_game, id_system_user) values (282,
6, 53, 899);
insert into VOTE(id_vote, value, id_game, id_system_user) values (283,
4, 24, 898);
insert into VOTE(id_vote, value, id_game, id_system_user) values (284,
1, 100, 527);
insert into VOTE(id_vote, value, id_game, id_system_user) values (285,
0, 44, 459);
insert into VOTE(id_vote, value, id_game, id_system_user) values (286,
5, 59, 322);
insert into VOTE(id_vote, value, id_game, id_system_user) values (287,
5, 88, 249);
insert into VOTE(id_vote, value, id_game, id_system_user) values (288,
8, 69, 287);
insert into VOTE(id_vote, value, id_game, id_system_user) values (289,
3, 43, 221);
insert into VOTE(id_vote, value, id_game, id_system_user) values (290,
1, 12, 165);
insert into VOTE(id_vote, value, id_game, id_system_user) values (291,
0, 83, 52);
insert into VOTE(id_vote, value, id_game, id_system_user) values (292,
8, 28, 362);
insert into VOTE(id_vote, value, id_game, id_system_user) values (293,
6, 99, 812);
insert into VOTE(id_vote, value, id_game, id_system_user) values (294,
0, 97, 708);
insert into VOTE(id_vote, value, id_game, id_system_user) values (295,
5, 34, 322);
insert into VOTE(id_vote, value, id_game, id_system_user) values (296,
0, 31, 605);
insert into VOTE(id_vote, value, id_game, id_system_user) values (297,
1, 1, 944);
insert into VOTE(id_vote, value, id_game, id_system_user) values (298,
6, 72, 966);
insert into VOTE(id_vote, value, id_game, id_system_user) values (299,
8, 58, 340);
insert into VOTE(id_vote, value, id_game, id_system_user) values (300,
1, 83, 687);
insert into VOTE(id_vote, value, id_game, id_system_user) values (301,
7, 70, 795);
insert into VOTE(id_vote, value, id_game, id_system_user) values (302,
5, 43, 67);
insert into VOTE(id_vote, value, id_game, id_system_user) values (303,
7, 41, 321);
insert into VOTE(id_vote, value, id_game, id_system_user) values (304,
8, 62, 397);
insert into VOTE(id_vote, value, id_game, id_system_user) values (305,
9, 55, 787);
insert into VOTE(id_vote, value, id_game, id_system_user) values (306,
10, 98, 704);
insert into VOTE(id_vote, value, id_game, id_system_user) values (307,
1, 1, 145);
insert into VOTE(id_vote, value, id_game, id_system_user) values (308,
7, 65, 206);
insert into VOTE(id_vote, value, id_game, id_system_user) values (309,
1, 41, 123);
insert into VOTE(id_vote, value, id_game, id_system_user) values (310,
1, 13, 90);
insert into VOTE(id_vote, value, id_game, id_system_user) values (311,
1, 84, 325);
insert into VOTE(id_vote, value, id_game, id_system_user) values (312,
5, 62, 281);
insert into VOTE(id_vote, value, id_game, id_system_user) values (314,
9, 93, 139);
insert into VOTE(id_vote, value, id_game, id_system_user) values (315,
10, 17, 244);
insert into VOTE(id_vote, value, id_game, id_system_user) values (316,
1, 99, 329);
insert into VOTE(id_vote, value, id_game, id_system_user) values (317,
4, 93, 671);
insert into VOTE(id_vote, value, id_game, id_system_user) values (318,
1, 3, 876);
insert into VOTE(id_vote, value, id_game, id_system_user) values (319,
2, 49, 3);
insert into VOTE(id_vote, value, id_game, id_system_user) values (320,
4, 65, 234);
insert into VOTE(id_vote, value, id_game, id_system_user) values (321,
6, 38, 750);
insert into VOTE(id_vote, value, id_game, id_system_user) values (322,
5, 95, 301);
insert into VOTE(id_vote, value, id_game, id_system_user) values (323,
6, 15, 795);
insert into VOTE(id_vote, value, id_game, id_system_user) values (324,
6, 71, 188);
insert into VOTE(id_vote, value, id_game, id_system_user) values (326,
0, 95, 774);
insert into VOTE(id_vote, value, id_game, id_system_user) values (327,
2, 57, 637);
insert into VOTE(id_vote, value, id_game, id_system_user) values (328,
2, 29, 754);
insert into VOTE(id_vote, value, id_game, id_system_user) values (329,
2, 75, 522);
insert into VOTE(id_vote, value, id_game, id_system_user) values (330,
9, 65, 249);
insert into VOTE(id_vote, value, id_game, id_system_user) values (331,
6, 51, 593);
insert into VOTE(id_vote, value, id_game, id_system_user) values (332,
6, 77, 5);
insert into VOTE(id_vote, value, id_game, id_system_user) values (333,
1, 59, 260);
insert into VOTE(id_vote, value, id_game, id_system_user) values (334,
5, 96, 223);
insert into VOTE(id_vote, value, id_game, id_system_user) values (336,
6, 76, 514);
insert into VOTE(id_vote, value, id_game, id_system_user) values (337,
2, 66, 218);
insert into VOTE(id_vote, value, id_game, id_system_user) values (338,
0, 51, 837);
insert into VOTE(id_vote, value, id_game, id_system_user) values (339,
8, 51, 720);
insert into VOTE(id_vote, value, id_game, id_system_user) values (340,
5, 48, 762);
insert into VOTE(id_vote, value, id_game, id_system_user) values (341,
10, 52, 979);
insert into VOTE(id_vote, value, id_game, id_system_user) values (342,
3, 47, 2);
insert into VOTE(id_vote, value, id_game, id_system_user) values (343,
6, 85, 571);
insert into VOTE(id_vote, value, id_game, id_system_user) values (344,
3, 59, 316);
insert into VOTE(id_vote, value, id_game, id_system_user) values (345,
3, 38, 938);
insert into VOTE(id_vote, value, id_game, id_system_user) values (346,
3, 74, 685);
insert into VOTE(id_vote, value, id_game, id_system_user) values (347,
5, 96, 502);
insert into VOTE(id_vote, value, id_game, id_system_user) values (348,
7, 29, 554);
insert into VOTE(id_vote, value, id_game, id_system_user) values (349,
7, 77, 141);
insert into VOTE(id_vote, value, id_game, id_system_user) values (350,
3, 17, 159);
insert into VOTE(id_vote, value, id_game, id_system_user) values (351,
9, 49, 78);
insert into VOTE(id_vote, value, id_game, id_system_user) values (352,
1, 70, 507);
insert into VOTE(id_vote, value, id_game, id_system_user) values (353,
10, 84, 516);
insert into VOTE(id_vote, value, id_game, id_system_user) values (354,
4, 96, 480);
insert into VOTE(id_vote, value, id_game, id_system_user) values (355,
4, 69, 925);
insert into VOTE(id_vote, value, id_game, id_system_user) values (356,
5, 86, 721);
insert into VOTE(id_vote, value, id_game, id_system_user) values (357,
8, 36, 59);
insert into VOTE(id_vote, value, id_game, id_system_user) values (358,
4, 13, 683);
insert into VOTE(id_vote, value, id_game, id_system_user) values (359,
2, 55, 28);
insert into VOTE(id_vote, value, id_game, id_system_user) values (360,
5, 86, 364);
insert into VOTE(id_vote, value, id_game, id_system_user) values (361,
7, 41, 543);
insert into VOTE(id_vote, value, id_game, id_system_user) values (362,
10, 59, 872);
insert into VOTE(id_vote, value, id_game, id_system_user) values (363,
8, 95, 33);
insert into VOTE(id_vote, value, id_game, id_system_user) values (364,
9, 79, 650);
insert into VOTE(id_vote, value, id_game, id_system_user) values (365,
6, 64, 650);
insert into VOTE(id_vote, value, id_game, id_system_user) values (366,
4, 99, 644);
insert into VOTE(id_vote, value, id_game, id_system_user) values (367,
5, 44, 487);
insert into VOTE(id_vote, value, id_game, id_system_user) values (368,
4, 6, 897);
insert into VOTE(id_vote, value, id_game, id_system_user) values (369,
8, 79, 427);
insert into VOTE(id_vote, value, id_game, id_system_user) values (370,
0, 83, 755);
insert into VOTE(id_vote, value, id_game, id_system_user) values (371,
9, 77, 650);
insert into VOTE(id_vote, value, id_game, id_system_user) values (372,
3, 77, 367);
insert into VOTE(id_vote, value, id_game, id_system_user) values (373,
3, 12, 799);
insert into VOTE(id_vote, value, id_game, id_system_user) values (374,
9, 48, 331);
insert into VOTE(id_vote, value, id_game, id_system_user) values (375,
2, 52, 600);
insert into VOTE(id_vote, value, id_game, id_system_user) values (376,
0, 7, 317);
insert into VOTE(id_vote, value, id_game, id_system_user) values (377,
2, 68, 82);
insert into VOTE(id_vote, value, id_game, id_system_user) values (378,
5, 30, 174);
insert into VOTE(id_vote, value, id_game, id_system_user) values (379,
7, 78, 747);
insert into VOTE(id_vote, value, id_game, id_system_user) values (380,
9, 49, 567);
insert into VOTE(id_vote, value, id_game, id_system_user) values (381,
8, 71, 45);
insert into VOTE(id_vote, value, id_game, id_system_user) values (382,
7, 32, 13);
insert into VOTE(id_vote, value, id_game, id_system_user) values (383,
2, 40, 429);
insert into VOTE(id_vote, value, id_game, id_system_user) values (384,
8, 66, 703);
insert into VOTE(id_vote, value, id_game, id_system_user) values (385,
9, 77, 763);
insert into VOTE(id_vote, value, id_game, id_system_user) values (386,
3, 52, 844);
insert into VOTE(id_vote, value, id_game, id_system_user) values (387,
1, 88, 531);
insert into VOTE(id_vote, value, id_game, id_system_user) values (389,
0, 27, 786);
insert into VOTE(id_vote, value, id_game, id_system_user) values (390,
1, 69, 283);
insert into VOTE(id_vote, value, id_game, id_system_user) values (392,
10, 63, 950);
insert into VOTE(id_vote, value, id_game, id_system_user) values (393,
4, 82, 408);
insert into VOTE(id_vote, value, id_game, id_system_user) values (394,
9, 62, 404);
insert into VOTE(id_vote, value, id_game, id_system_user) values (395,
6, 72, 936);
insert into VOTE(id_vote, value, id_game, id_system_user) values (397,
10, 67, 404);
insert into VOTE(id_vote, value, id_game, id_system_user) values (398,
5, 42, 212);
insert into VOTE(id_vote, value, id_game, id_system_user) values (399,
3, 88, 416);
insert into VOTE(id_vote, value, id_game, id_system_user) values (400,
9, 35, 442);
insert into VOTE(id_vote, value, id_game, id_system_user) values (401,
6, 8, 310);
insert into VOTE(id_vote, value, id_game, id_system_user) values (402,
6, 91, 722);
insert into VOTE(id_vote, value, id_game, id_system_user) values (403,
4, 71, 249);
insert into VOTE(id_vote, value, id_game, id_system_user) values (404,
4, 36, 161);
insert into VOTE(id_vote, value, id_game, id_system_user) values (405,
5, 82, 321);
insert into VOTE(id_vote, value, id_game, id_system_user) values (406,
2, 61, 201);
insert into VOTE(id_vote, value, id_game, id_system_user) values (407,
5, 98, 632);
insert into VOTE(id_vote, value, id_game, id_system_user) values (408,
7, 71, 86);
insert into VOTE(id_vote, value, id_game, id_system_user) values (409,
10, 17, 807);
insert into VOTE(id_vote, value, id_game, id_system_user) values (411,
2, 31, 506);
insert into VOTE(id_vote, value, id_game, id_system_user) values (412,
1, 42, 187);
insert into VOTE(id_vote, value, id_game, id_system_user) values (413,
3, 3, 897);
insert into VOTE(id_vote, value, id_game, id_system_user) values (414,
9, 36, 255);
insert into VOTE(id_vote, value, id_game, id_system_user) values (415,
9, 95, 920);
insert into VOTE(id_vote, value, id_game, id_system_user) values (416,
7, 57, 294);
insert into VOTE(id_vote, value, id_game, id_system_user) values (417,
0, 76, 833);
insert into VOTE(id_vote, value, id_game, id_system_user) values (418,
0, 71, 8);
insert into VOTE(id_vote, value, id_game, id_system_user) values (419,
1, 8, 648);
insert into VOTE(id_vote, value, id_game, id_system_user) values (420,
7, 90, 293);
insert into VOTE(id_vote, value, id_game, id_system_user) values (421,
4, 74, 53);
insert into VOTE(id_vote, value, id_game, id_system_user) values (422,
1, 31, 210);
insert into VOTE(id_vote, value, id_game, id_system_user) values (423,
5, 83, 128);
insert into VOTE(id_vote, value, id_game, id_system_user) values (425,
6, 60, 845);
insert into VOTE(id_vote, value, id_game, id_system_user) values (426,
7, 15, 826);
insert into VOTE(id_vote, value, id_game, id_system_user) values (427,
3, 61, 543);
insert into VOTE(id_vote, value, id_game, id_system_user) values (428,
3, 26, 308);
insert into VOTE(id_vote, value, id_game, id_system_user) values (429,
2, 41, 706);
insert into VOTE(id_vote, value, id_game, id_system_user) values (430,
0, 43, 206);
insert into VOTE(id_vote, value, id_game, id_system_user) values (431,
6, 44, 192);
insert into VOTE(id_vote, value, id_game, id_system_user) values (432,
1, 38, 385);
insert into VOTE(id_vote, value, id_game, id_system_user) values (433,
5, 23, 430);
insert into VOTE(id_vote, value, id_game, id_system_user) values (434,
4, 98, 113);
insert into VOTE(id_vote, value, id_game, id_system_user) values (435,
6, 42, 322);
insert into VOTE(id_vote, value, id_game, id_system_user) values (436,
9, 2, 405);
insert into VOTE(id_vote, value, id_game, id_system_user) values (437,
10, 44, 233);
insert into VOTE(id_vote, value, id_game, id_system_user) values (438,
0, 89, 464);
insert into VOTE(id_vote, value, id_game, id_system_user) values (439,
7, 86, 469);
insert into VOTE(id_vote, value, id_game, id_system_user) values (440,
9, 76, 315);
insert into VOTE(id_vote, value, id_game, id_system_user) values (441,
3, 88, 48);
insert into VOTE(id_vote, value, id_game, id_system_user) values (442,
7, 80, 295);
insert into VOTE(id_vote, value, id_game, id_system_user) values (443,
2, 89, 615);
insert into VOTE(id_vote, value, id_game, id_system_user) values (444,
4, 32, 53);
insert into VOTE(id_vote, value, id_game, id_system_user) values (445,
4, 45, 379);
insert into VOTE(id_vote, value, id_game, id_system_user) values (446,
0, 13, 425);
insert into VOTE(id_vote, value, id_game, id_system_user) values (447,
8, 22, 406);
insert into VOTE(id_vote, value, id_game, id_system_user) values (448,
5, 67, 823);
insert into VOTE(id_vote, value, id_game, id_system_user) values (449,
7, 25, 865);
insert into VOTE(id_vote, value, id_game, id_system_user) values (450,
0, 97, 401);
insert into VOTE(id_vote, value, id_game, id_system_user) values (452,
6, 17, 699);
insert into VOTE(id_vote, value, id_game, id_system_user) values (453,
7, 15, 345);
insert into VOTE(id_vote, value, id_game, id_system_user) values (454,
5, 30, 113);
insert into VOTE(id_vote, value, id_game, id_system_user) values (455,
3, 21, 650);
insert into VOTE(id_vote, value, id_game, id_system_user) values (456,
7, 71, 708);
insert into VOTE(id_vote, value, id_game, id_system_user) values (457,
2, 64, 464);
insert into VOTE(id_vote, value, id_game, id_system_user) values (458,
7, 13, 201);
insert into VOTE(id_vote, value, id_game, id_system_user) values (459,
6, 15, 730);
insert into VOTE(id_vote, value, id_game, id_system_user) values (460,
9, 18, 252);
insert into VOTE(id_vote, value, id_game, id_system_user) values (461,
2, 89, 705);
insert into VOTE(id_vote, value, id_game, id_system_user) values (462,
3, 87, 290);
insert into VOTE(id_vote, value, id_game, id_system_user) values (463,
0, 56, 38);
insert into VOTE(id_vote, value, id_game, id_system_user) values (464,
9, 46, 13);
insert into VOTE(id_vote, value, id_game, id_system_user) values (465,
4, 91, 832);
insert into VOTE(id_vote, value, id_game, id_system_user) values (466,
2, 64, 155);
insert into VOTE(id_vote, value, id_game, id_system_user) values (467,
2, 27, 350);
insert into VOTE(id_vote, value, id_game, id_system_user) values (468,
3, 50, 665);
insert into VOTE(id_vote, value, id_game, id_system_user) values (469,
0, 88, 796);
insert into VOTE(id_vote, value, id_game, id_system_user) values (470,
2, 67, 492);
insert into VOTE(id_vote, value, id_game, id_system_user) values (471,
3, 100, 547);
insert into VOTE(id_vote, value, id_game, id_system_user) values (472,
6, 80, 786);
insert into VOTE(id_vote, value, id_game, id_system_user) values (473,
4, 17, 362);
insert into VOTE(id_vote, value, id_game, id_system_user) values (474,
1, 18, 814);
insert into VOTE(id_vote, value, id_game, id_system_user) values (475,
0, 19, 761);
insert into VOTE(id_vote, value, id_game, id_system_user) values (476,
7, 21, 187);
insert into VOTE(id_vote, value, id_game, id_system_user) values (477,
0, 11, 273);
insert into VOTE(id_vote, value, id_game, id_system_user) values (478,
0, 73, 799);
insert into VOTE(id_vote, value, id_game, id_system_user) values (479,
6, 89, 487);
insert into VOTE(id_vote, value, id_game, id_system_user) values (480,
9, 65, 336);
insert into VOTE(id_vote, value, id_game, id_system_user) values (481,
9, 10, 832);
insert into VOTE(id_vote, value, id_game, id_system_user) values (482,
8, 72, 829);
insert into VOTE(id_vote, value, id_game, id_system_user) values (483,
6, 1, 905);
insert into VOTE(id_vote, value, id_game, id_system_user) values (484,
4, 70, 909);
insert into VOTE(id_vote, value, id_game, id_system_user) values (485,
10, 42, 948);
insert into VOTE(id_vote, value, id_game, id_system_user) values (486,
8, 64, 989);
insert into VOTE(id_vote, value, id_game, id_system_user) values (487,
9, 72, 451);
insert into VOTE(id_vote, value, id_game, id_system_user) values (488,
10, 94, 824);
insert into VOTE(id_vote, value, id_game, id_system_user) values (489,
0, 8, 217);
insert into VOTE(id_vote, value, id_game, id_system_user) values (490,
3, 31, 42);
insert into VOTE(id_vote, value, id_game, id_system_user) values (491,
3, 86, 614);
insert into VOTE(id_vote, value, id_game, id_system_user) values (492,
5, 72, 959);
insert into VOTE(id_vote, value, id_game, id_system_user) values (493,
6, 47, 665);
insert into VOTE(id_vote, value, id_game, id_system_user) values (494,
1, 93, 456);
insert into VOTE(id_vote, value, id_game, id_system_user) values (496,
7, 51, 804);
insert into VOTE(id_vote, value, id_game, id_system_user) values (497,
9, 9, 393);
insert into VOTE(id_vote, value, id_game, id_system_user) values (498,
10, 70, 148);
insert into VOTE(id_vote, value, id_game, id_system_user) values (499,
1, 18, 927);
insert into VOTE(id_vote, value, id_game, id_system_user) values (500,
2, 16, 742);
insert into VOTE(id_vote, value, id_game, id_system_user) values (501,
1, 50, 113);
insert into VOTE(id_vote, value, id_game, id_system_user) values (502,
4, 72, 728);
insert into VOTE(id_vote, value, id_game, id_system_user) values (503,
10, 79, 839);
insert into VOTE(id_vote, value, id_game, id_system_user) values (504,
6, 7, 235);
insert into VOTE(id_vote, value, id_game, id_system_user) values (505,
10, 37, 340);
insert into VOTE(id_vote, value, id_game, id_system_user) values (506,
0, 68, 324);
insert into VOTE(id_vote, value, id_game, id_system_user) values (507,
3, 36, 221);
insert into VOTE(id_vote, value, id_game, id_system_user) values (508,
9, 17, 1);
insert into VOTE(id_vote, value, id_game, id_system_user) values (509,
0, 57, 94);
insert into VOTE(id_vote, value, id_game, id_system_user) values (510,
8, 60, 754);
insert into VOTE(id_vote, value, id_game, id_system_user) values (511,
1, 84, 605);
insert into VOTE(id_vote, value, id_game, id_system_user) values (512,
0, 19, 520);
insert into VOTE(id_vote, value, id_game, id_system_user) values (513,
6, 40, 951);
insert into VOTE(id_vote, value, id_game, id_system_user) values (514,
8, 14, 249);
insert into VOTE(id_vote, value, id_game, id_system_user) values (515,
8, 41, 846);
insert into VOTE(id_vote, value, id_game, id_system_user) values (516,
9, 64, 472);
insert into VOTE(id_vote, value, id_game, id_system_user) values (517,
6, 10, 963);
insert into VOTE(id_vote, value, id_game, id_system_user) values (518,
5, 71, 796);
insert into VOTE(id_vote, value, id_game, id_system_user) values (519,
10, 25, 766);
insert into VOTE(id_vote, value, id_game, id_system_user) values (520,
1, 47, 992);
insert into VOTE(id_vote, value, id_game, id_system_user) values (521,
5, 31, 131);
insert into VOTE(id_vote, value, id_game, id_system_user) values (522,
0, 61, 47);
insert into VOTE(id_vote, value, id_game, id_system_user) values (523,
0, 59, 773);
insert into VOTE(id_vote, value, id_game, id_system_user) values (524,
5, 61, 320);
insert into VOTE(id_vote, value, id_game, id_system_user) values (525,
3, 60, 274);
insert into VOTE(id_vote, value, id_game, id_system_user) values (526,
1, 3, 69);
insert into VOTE(id_vote, value, id_game, id_system_user) values (527,
4, 59, 343);
insert into VOTE(id_vote, value, id_game, id_system_user) values (529,
10, 45, 789);
insert into VOTE(id_vote, value, id_game, id_system_user) values (530,
4, 3, 751);
insert into VOTE(id_vote, value, id_game, id_system_user) values (531,
5, 54, 946);
insert into VOTE(id_vote, value, id_game, id_system_user) values (532,
3, 99, 289);
insert into VOTE(id_vote, value, id_game, id_system_user) values (533,
5, 40, 697);
insert into VOTE(id_vote, value, id_game, id_system_user) values (534,
6, 63, 960);
insert into VOTE(id_vote, value, id_game, id_system_user) values (535,
1, 83, 812);
insert into VOTE(id_vote, value, id_game, id_system_user) values (536,
1, 38, 844);
insert into VOTE(id_vote, value, id_game, id_system_user) values (537,
2, 9, 829);
insert into VOTE(id_vote, value, id_game, id_system_user) values (538,
4, 14, 161);
insert into VOTE(id_vote, value, id_game, id_system_user) values (539,
5, 41, 895);
insert into VOTE(id_vote, value, id_game, id_system_user) values (540,
7, 13, 753);
insert into VOTE(id_vote, value, id_game, id_system_user) values (541,
1, 70, 888);
insert into VOTE(id_vote, value, id_game, id_system_user) values (542,
1, 75, 797);
insert into VOTE(id_vote, value, id_game, id_system_user) values (543,
10, 92, 830);
insert into VOTE(id_vote, value, id_game, id_system_user) values (545,
0, 48, 823);
insert into VOTE(id_vote, value, id_game, id_system_user) values (546,
8, 35, 989);
insert into VOTE(id_vote, value, id_game, id_system_user) values (547,
5, 80, 701);
insert into VOTE(id_vote, value, id_game, id_system_user) values (548,
8, 15, 9);
insert into VOTE(id_vote, value, id_game, id_system_user) values (549,
6, 69, 497);
insert into VOTE(id_vote, value, id_game, id_system_user) values (550,
1, 86, 984);
insert into VOTE(id_vote, value, id_game, id_system_user) values (551,
0, 10, 26);
insert into VOTE(id_vote, value, id_game, id_system_user) values (552,
0, 31, 533);
insert into VOTE(id_vote, value, id_game, id_system_user) values (553,
5, 11, 905);
insert into VOTE(id_vote, value, id_game, id_system_user) values (554,
6, 3, 171);
insert into VOTE(id_vote, value, id_game, id_system_user) values (555,
8, 67, 914);
insert into VOTE(id_vote, value, id_game, id_system_user) values (556,
10, 57, 792);
insert into VOTE(id_vote, value, id_game, id_system_user) values (557,
4, 49, 728);
insert into VOTE(id_vote, value, id_game, id_system_user) values (558,
1, 11, 873);
insert into VOTE(id_vote, value, id_game, id_system_user) values (559,
9, 79, 68);
insert into VOTE(id_vote, value, id_game, id_system_user) values (560,
2, 76, 452);
insert into VOTE(id_vote, value, id_game, id_system_user) values (561,
8, 42, 489);
insert into VOTE(id_vote, value, id_game, id_system_user) values (562,
6, 84, 873);
insert into VOTE(id_vote, value, id_game, id_system_user) values (564,
6, 11, 797);
insert into VOTE(id_vote, value, id_game, id_system_user) values (565,
8, 72, 251);
insert into VOTE(id_vote, value, id_game, id_system_user) values (566,
9, 3, 438);
insert into VOTE(id_vote, value, id_game, id_system_user) values (567,
1, 19, 256);
insert into VOTE(id_vote, value, id_game, id_system_user) values (568,
10, 60, 394);
insert into VOTE(id_vote, value, id_game, id_system_user) values (569,
2, 86, 328);
insert into VOTE(id_vote, value, id_game, id_system_user) values (570,
6, 82, 238);
insert into VOTE(id_vote, value, id_game, id_system_user) values (571,
5, 72, 593);
insert into VOTE(id_vote, value, id_game, id_system_user) values (572,
6, 22, 966);
insert into VOTE(id_vote, value, id_game, id_system_user) values (574,
2, 90, 423);
insert into VOTE(id_vote, value, id_game, id_system_user) values (575,
8, 38, 372);
insert into VOTE(id_vote, value, id_game, id_system_user) values (576,
6, 41, 793);
insert into VOTE(id_vote, value, id_game, id_system_user) values (577,
2, 72, 208);
insert into VOTE(id_vote, value, id_game, id_system_user) values (578,
3, 16, 860);
insert into VOTE(id_vote, value, id_game, id_system_user) values (579,
0, 58, 940);
insert into VOTE(id_vote, value, id_game, id_system_user) values (580,
8, 93, 918);
insert into VOTE(id_vote, value, id_game, id_system_user) values (581,
1, 94, 929);
insert into VOTE(id_vote, value, id_game, id_system_user) values (582,
0, 21, 483);
insert into VOTE(id_vote, value, id_game, id_system_user) values (583,
4, 66, 245);
insert into VOTE(id_vote, value, id_game, id_system_user) values (584,
4, 55, 762);
insert into VOTE(id_vote, value, id_game, id_system_user) values (585,
8, 71, 172);
insert into VOTE(id_vote, value, id_game, id_system_user) values (586,
4, 11, 147);
insert into VOTE(id_vote, value, id_game, id_system_user) values (588,
5, 73, 986);
insert into VOTE(id_vote, value, id_game, id_system_user) values (589,
1, 84, 457);
insert into VOTE(id_vote, value, id_game, id_system_user) values (590,
7, 85, 481);
insert into VOTE(id_vote, value, id_game, id_system_user) values (591,
6, 84, 638);
insert into VOTE(id_vote, value, id_game, id_system_user) values (592,
6, 40, 356);
insert into VOTE(id_vote, value, id_game, id_system_user) values (593,
0, 26, 552);
insert into VOTE(id_vote, value, id_game, id_system_user) values (594,
10, 9, 72);
insert into VOTE(id_vote, value, id_game, id_system_user) values (595,
10, 42, 157);
insert into VOTE(id_vote, value, id_game, id_system_user) values (596,
6, 7, 783);
insert into VOTE(id_vote, value, id_game, id_system_user) values (597,
6, 37, 572);
insert into VOTE(id_vote, value, id_game, id_system_user) values (598,
8, 35, 998);
insert into VOTE(id_vote, value, id_game, id_system_user) values (599,
4, 74, 89);
insert into VOTE(id_vote, value, id_game, id_system_user) values (600,
3, 69, 838);
insert into VOTE(id_vote, value, id_game, id_system_user) values (601,
10, 21, 165);
insert into VOTE(id_vote, value, id_game, id_system_user) values (602,
9, 46, 689);
insert into VOTE(id_vote, value, id_game, id_system_user) values (603,
7, 45, 941);
insert into VOTE(id_vote, value, id_game, id_system_user) values (604,
4, 85, 387);
insert into VOTE(id_vote, value, id_game, id_system_user) values (605,
2, 48, 332);
insert into VOTE(id_vote, value, id_game, id_system_user) values (606,
4, 38, 517);
insert into VOTE(id_vote, value, id_game, id_system_user) values (607,
3, 8, 286);
insert into VOTE(id_vote, value, id_game, id_system_user) values (608,
2, 88, 366);
insert into VOTE(id_vote, value, id_game, id_system_user) values (609,
10, 71, 835);
insert into VOTE(id_vote, value, id_game, id_system_user) values (610,
0, 3, 810);
insert into VOTE(id_vote, value, id_game, id_system_user) values (611,
4, 27, 429);
insert into VOTE(id_vote, value, id_game, id_system_user) values (612,
3, 95, 684);
insert into VOTE(id_vote, value, id_game, id_system_user) values (613,
0, 32, 98);
insert into VOTE(id_vote, value, id_game, id_system_user) values (614,
3, 78, 962);
insert into VOTE(id_vote, value, id_game, id_system_user) values (615,
9, 30, 117);
insert into VOTE(id_vote, value, id_game, id_system_user) values (616,
3, 29, 408);
insert into VOTE(id_vote, value, id_game, id_system_user) values (617,
5, 20, 335);
insert into VOTE(id_vote, value, id_game, id_system_user) values (618,
0, 45, 145);
insert into VOTE(id_vote, value, id_game, id_system_user) values (619,
5, 50, 973);
insert into VOTE(id_vote, value, id_game, id_system_user) values (620,
7, 46, 202);
insert into VOTE(id_vote, value, id_game, id_system_user) values (621,
0, 44, 356);
insert into VOTE(id_vote, value, id_game, id_system_user) values (622,
4, 64, 773);
insert into VOTE(id_vote, value, id_game, id_system_user) values (623,
4, 27, 423);
insert into VOTE(id_vote, value, id_game, id_system_user) values (624,
6, 92, 848);
insert into VOTE(id_vote, value, id_game, id_system_user) values (625,
6, 60, 637);
insert into VOTE(id_vote, value, id_game, id_system_user) values (626,
0, 56, 165);
insert into VOTE(id_vote, value, id_game, id_system_user) values (627,
7, 11, 784);
insert into VOTE(id_vote, value, id_game, id_system_user) values (628,
4, 3, 470);
insert into VOTE(id_vote, value, id_game, id_system_user) values (629,
6, 10, 775);
insert into VOTE(id_vote, value, id_game, id_system_user) values (630,
3, 73, 501);
insert into VOTE(id_vote, value, id_game, id_system_user) values (631,
5, 26, 572);
insert into VOTE(id_vote, value, id_game, id_system_user) values (632,
0, 6, 612);
insert into VOTE(id_vote, value, id_game, id_system_user) values (633,
10, 88, 662);
insert into VOTE(id_vote, value, id_game, id_system_user) values (634,
3, 87, 610);
insert into VOTE(id_vote, value, id_game, id_system_user) values (635,
6, 26, 965);
insert into VOTE(id_vote, value, id_game, id_system_user) values (636,
1, 27, 810);
insert into VOTE(id_vote, value, id_game, id_system_user) values (637,
8, 26, 612);
insert into VOTE(id_vote, value, id_game, id_system_user) values (638,
2, 98, 252);
insert into VOTE(id_vote, value, id_game, id_system_user) values (639,
8, 65, 130);
insert into VOTE(id_vote, value, id_game, id_system_user) values (640,
8, 17, 341);
insert into VOTE(id_vote, value, id_game, id_system_user) values (641,
2, 51, 67);
insert into VOTE(id_vote, value, id_game, id_system_user) values (642,
1, 30, 128);
insert into VOTE(id_vote, value, id_game, id_system_user) values (643,
1, 79, 842);
insert into VOTE(id_vote, value, id_game, id_system_user) values (644,
8, 16, 938);
insert into VOTE(id_vote, value, id_game, id_system_user) values (645,
3, 41, 587);
insert into VOTE(id_vote, value, id_game, id_system_user) values (646,
6, 63, 765);
insert into VOTE(id_vote, value, id_game, id_system_user) values (647,
6, 72, 632);
insert into VOTE(id_vote, value, id_game, id_system_user) values (648,
9, 99, 41);
insert into VOTE(id_vote, value, id_game, id_system_user) values (649,
8, 50, 352);
insert into VOTE(id_vote, value, id_game, id_system_user) values (650,
5, 30, 501);
insert into VOTE(id_vote, value, id_game, id_system_user) values (651,
8, 87, 775);
insert into VOTE(id_vote, value, id_game, id_system_user) values (652,
0, 43, 374);
insert into VOTE(id_vote, value, id_game, id_system_user) values (653,
1, 62, 460);
insert into VOTE(id_vote, value, id_game, id_system_user) values (654,
10, 76, 393);
insert into VOTE(id_vote, value, id_game, id_system_user) values (655,
7, 2, 852);
insert into VOTE(id_vote, value, id_game, id_system_user) values (656,
5, 95, 348);
insert into VOTE(id_vote, value, id_game, id_system_user) values (657,
5, 30, 940);
insert into VOTE(id_vote, value, id_game, id_system_user) values (658,
10, 29, 286);
insert into VOTE(id_vote, value, id_game, id_system_user) values (659,
1, 8, 81);
insert into VOTE(id_vote, value, id_game, id_system_user) values (660,
1, 88, 600);
insert into VOTE(id_vote, value, id_game, id_system_user) values (661,
7, 71, 759);
insert into VOTE(id_vote, value, id_game, id_system_user) values (662,
1, 79, 375);
insert into VOTE(id_vote, value, id_game, id_system_user) values (663,
5, 1, 62);
insert into VOTE(id_vote, value, id_game, id_system_user) values (664,
0, 43, 7);
insert into VOTE(id_vote, value, id_game, id_system_user) values (665,
10, 82, 207);
insert into VOTE(id_vote, value, id_game, id_system_user) values (666,
10, 51, 768);
insert into VOTE(id_vote, value, id_game, id_system_user) values (667,
4, 36, 516);
insert into VOTE(id_vote, value, id_game, id_system_user) values (668,
4, 38, 902);
insert into VOTE(id_vote, value, id_game, id_system_user) values (669,
8, 94, 127);
insert into VOTE(id_vote, value, id_game, id_system_user) values (670,
10, 66, 853);
insert into VOTE(id_vote, value, id_game, id_system_user) values (671,
6, 1, 717);
insert into VOTE(id_vote, value, id_game, id_system_user) values (672,
1, 26, 737);
insert into VOTE(id_vote, value, id_game, id_system_user) values (673,
4, 88, 668);
insert into VOTE(id_vote, value, id_game, id_system_user) values (674,
4, 72, 988);
insert into VOTE(id_vote, value, id_game, id_system_user) values (675,
9, 6, 274);
insert into VOTE(id_vote, value, id_game, id_system_user) values (677,
9, 35, 409);
insert into VOTE(id_vote, value, id_game, id_system_user) values (678,
8, 17, 642);
insert into VOTE(id_vote, value, id_game, id_system_user) values (680,
3, 59, 593);
insert into VOTE(id_vote, value, id_game, id_system_user) values (681,
8, 19, 566);
insert into VOTE(id_vote, value, id_game, id_system_user) values (682,
5, 26, 893);
insert into VOTE(id_vote, value, id_game, id_system_user) values (683,
8, 68, 706);
insert into VOTE(id_vote, value, id_game, id_system_user) values (684,
6, 83, 202);
insert into VOTE(id_vote, value, id_game, id_system_user) values (685,
1, 32, 490);
insert into VOTE(id_vote, value, id_game, id_system_user) values (686,
6, 67, 754);
insert into VOTE(id_vote, value, id_game, id_system_user) values (687,
6, 94, 834);
insert into VOTE(id_vote, value, id_game, id_system_user) values (688,
8, 25, 155);
insert into VOTE(id_vote, value, id_game, id_system_user) values (689,
4, 17, 812);
insert into VOTE(id_vote, value, id_game, id_system_user) values (690,
9, 3, 89);
insert into VOTE(id_vote, value, id_game, id_system_user) values (691,
5, 82, 50);
insert into VOTE(id_vote, value, id_game, id_system_user) values (692,
5, 52, 179);
insert into VOTE(id_vote, value, id_game, id_system_user) values (693,
4, 3, 982);
insert into VOTE(id_vote, value, id_game, id_system_user) values (694,
1, 48, 241);
insert into VOTE(id_vote, value, id_game, id_system_user) values (695,
9, 25, 372);
insert into VOTE(id_vote, value, id_game, id_system_user) values (697,
10, 40, 114);
insert into VOTE(id_vote, value, id_game, id_system_user) values (698,
9, 70, 442);
insert into VOTE(id_vote, value, id_game, id_system_user) values (699,
1, 51, 913);
insert into VOTE(id_vote, value, id_game, id_system_user) values (700,
7, 85, 906);
insert into VOTE(id_vote, value, id_game, id_system_user) values (701,
6, 75, 563);
insert into VOTE(id_vote, value, id_game, id_system_user) values (702,
9, 84, 39);
insert into VOTE(id_vote, value, id_game, id_system_user) values (703,
0, 88, 582);
insert into VOTE(id_vote, value, id_game, id_system_user) values (704,
2, 83, 31);
insert into VOTE(id_vote, value, id_game, id_system_user) values (705,
5, 30, 778);
insert into VOTE(id_vote, value, id_game, id_system_user) values (706,
7, 67, 891);
insert into VOTE(id_vote, value, id_game, id_system_user) values (707,
1, 9, 347);
insert into VOTE(id_vote, value, id_game, id_system_user) values (708,
6, 22, 505);
insert into VOTE(id_vote, value, id_game, id_system_user) values (709,
3, 93, 184);
insert into VOTE(id_vote, value, id_game, id_system_user) values (710,
10, 82, 257);
insert into VOTE(id_vote, value, id_game, id_system_user) values (711,
9, 93, 551);
insert into VOTE(id_vote, value, id_game, id_system_user) values (712,
9, 94, 637);
insert into VOTE(id_vote, value, id_game, id_system_user) values (713,
1, 51, 577);
insert into VOTE(id_vote, value, id_game, id_system_user) values (714,
4, 70, 912);
insert into VOTE(id_vote, value, id_game, id_system_user) values (715,
10, 13, 786);
insert into VOTE(id_vote, value, id_game, id_system_user) values (716,
8, 81, 638);
insert into VOTE(id_vote, value, id_game, id_system_user) values (717,
10, 26, 364);
insert into VOTE(id_vote, value, id_game, id_system_user) values (718,
10, 11, 894);
insert into VOTE(id_vote, value, id_game, id_system_user) values (719,
9, 45, 360);
insert into VOTE(id_vote, value, id_game, id_system_user) values (720,
0, 32, 393);
insert into VOTE(id_vote, value, id_game, id_system_user) values (721,
10, 73, 946);
insert into VOTE(id_vote, value, id_game, id_system_user) values (722,
8, 15, 26);
insert into VOTE(id_vote, value, id_game, id_system_user) values (723,
5, 22, 480);
insert into VOTE(id_vote, value, id_game, id_system_user) values (724,
4, 62, 809);
insert into VOTE(id_vote, value, id_game, id_system_user) values (725,
5, 80, 729);
insert into VOTE(id_vote, value, id_game, id_system_user) values (726,
0, 24, 973);
insert into VOTE(id_vote, value, id_game, id_system_user) values (727,
7, 64, 874);
insert into VOTE(id_vote, value, id_game, id_system_user) values (728,
7, 63, 564);
insert into VOTE(id_vote, value, id_game, id_system_user) values (729,
7, 33, 739);
insert into VOTE(id_vote, value, id_game, id_system_user) values (730,
10, 75, 529);
insert into VOTE(id_vote, value, id_game, id_system_user) values (731,
2, 92, 878);
insert into VOTE(id_vote, value, id_game, id_system_user) values (732,
6, 35, 734);
insert into VOTE(id_vote, value, id_game, id_system_user) values (733,
0, 99, 154);
insert into VOTE(id_vote, value, id_game, id_system_user) values (734,
1, 26, 194);
insert into VOTE(id_vote, value, id_game, id_system_user) values (735,
10, 47, 475);
insert into VOTE(id_vote, value, id_game, id_system_user) values (736,
1, 91, 491);
insert into VOTE(id_vote, value, id_game, id_system_user) values (737,
5, 85, 878);
insert into VOTE(id_vote, value, id_game, id_system_user) values (738,
9, 84, 715);
insert into VOTE(id_vote, value, id_game, id_system_user) values (739,
10, 1, 135);
insert into VOTE(id_vote, value, id_game, id_system_user) values (740,
4, 2, 898);
insert into VOTE(id_vote, value, id_game, id_system_user) values (741,
8, 79, 407);
insert into VOTE(id_vote, value, id_game, id_system_user) values (742,
3, 37, 793);
insert into VOTE(id_vote, value, id_game, id_system_user) values (743,
8, 23, 927);
insert into VOTE(id_vote, value, id_game, id_system_user) values (744,
9, 72, 289);
insert into VOTE(id_vote, value, id_game, id_system_user) values (745,
4, 94, 403);
insert into VOTE(id_vote, value, id_game, id_system_user) values (746,
3, 96, 921);
insert into VOTE(id_vote, value, id_game, id_system_user) values (747,
5, 37, 937);
insert into VOTE(id_vote, value, id_game, id_system_user) values (748,
4, 26, 788);
insert into VOTE(id_vote, value, id_game, id_system_user) values (749,
10, 54, 94);
insert into VOTE(id_vote, value, id_game, id_system_user) values (750,
3, 58, 235);
insert into VOTE(id_vote, value, id_game, id_system_user) values (751,
2, 33, 854);
insert into VOTE(id_vote, value, id_game, id_system_user) values (753,
6, 99, 48);
insert into VOTE(id_vote, value, id_game, id_system_user) values (754,
2, 41, 122);
insert into VOTE(id_vote, value, id_game, id_system_user) values (755,
4, 52, 549);
insert into VOTE(id_vote, value, id_game, id_system_user) values (756,
10, 64, 818);
insert into VOTE(id_vote, value, id_game, id_system_user) values (757,
9, 1, 876);
insert into VOTE(id_vote, value, id_game, id_system_user) values (758,
8, 65, 52);
insert into VOTE(id_vote, value, id_game, id_system_user) values (759,
3, 36, 461);
insert into VOTE(id_vote, value, id_game, id_system_user) values (760,
8, 72, 636);
insert into VOTE(id_vote, value, id_game, id_system_user) values (761,
6, 66, 569);
insert into VOTE(id_vote, value, id_game, id_system_user) values (762,
9, 24, 631);
insert into VOTE(id_vote, value, id_game, id_system_user) values (763,
2, 1, 263);
insert into VOTE(id_vote, value, id_game, id_system_user) values (764,
6, 9, 566);
insert into VOTE(id_vote, value, id_game, id_system_user) values (765,
5, 89, 315);
insert into VOTE(id_vote, value, id_game, id_system_user) values (766,
5, 99, 113);
insert into VOTE(id_vote, value, id_game, id_system_user) values (767,
3, 49, 317);
insert into VOTE(id_vote, value, id_game, id_system_user) values (768,
5, 76, 517);
insert into VOTE(id_vote, value, id_game, id_system_user) values (769,
1, 12, 376);
insert into VOTE(id_vote, value, id_game, id_system_user) values (771,
9, 47, 846);
insert into VOTE(id_vote, value, id_game, id_system_user) values (772,
5, 94, 923);
insert into VOTE(id_vote, value, id_game, id_system_user) values (773,
0, 86, 775);
insert into VOTE(id_vote, value, id_game, id_system_user) values (774,
0, 89, 661);
insert into VOTE(id_vote, value, id_game, id_system_user) values (775,
8, 82, 761);
insert into VOTE(id_vote, value, id_game, id_system_user) values (776,
4, 96, 627);
insert into VOTE(id_vote, value, id_game, id_system_user) values (777,
1, 89, 845);
insert into VOTE(id_vote, value, id_game, id_system_user) values (778,
9, 19, 370);
insert into VOTE(id_vote, value, id_game, id_system_user) values (779,
7, 11, 973);
insert into VOTE(id_vote, value, id_game, id_system_user) values (780,
1, 42, 867);
insert into VOTE(id_vote, value, id_game, id_system_user) values (781,
7, 33, 461);
insert into VOTE(id_vote, value, id_game, id_system_user) values (782,
9, 63, 187);
insert into VOTE(id_vote, value, id_game, id_system_user) values (783,
6, 39, 516);
insert into VOTE(id_vote, value, id_game, id_system_user) values (784,
1, 3, 750);
insert into VOTE(id_vote, value, id_game, id_system_user) values (785,
7, 24, 729);
insert into VOTE(id_vote, value, id_game, id_system_user) values (786,
1, 52, 411);
insert into VOTE(id_vote, value, id_game, id_system_user) values (787,
2, 26, 592);
insert into VOTE(id_vote, value, id_game, id_system_user) values (788,
6, 71, 57);
insert into VOTE(id_vote, value, id_game, id_system_user) values (789,
5, 96, 632);
insert into VOTE(id_vote, value, id_game, id_system_user) values (790,
6, 39, 61);
insert into VOTE(id_vote, value, id_game, id_system_user) values (791,
3, 80, 692);
insert into VOTE(id_vote, value, id_game, id_system_user) values (792,
1, 6, 265);
insert into VOTE(id_vote, value, id_game, id_system_user) values (793,
10, 50, 350);
insert into VOTE(id_vote, value, id_game, id_system_user) values (794,
8, 40, 916);
insert into VOTE(id_vote, value, id_game, id_system_user) values (795,
3, 82, 409);
insert into VOTE(id_vote, value, id_game, id_system_user) values (796,
5, 54, 999);
insert into VOTE(id_vote, value, id_game, id_system_user) values (797,
9, 98, 35);
insert into VOTE(id_vote, value, id_game, id_system_user) values (798,
3, 7, 71);
insert into VOTE(id_vote, value, id_game, id_system_user) values (799,
4, 60, 869);
insert into VOTE(id_vote, value, id_game, id_system_user) values (800,
9, 10, 451);
insert into VOTE(id_vote, value, id_game, id_system_user) values (801,
2, 65, 156);
insert into VOTE(id_vote, value, id_game, id_system_user) values (802,
9, 7, 360);
insert into VOTE(id_vote, value, id_game, id_system_user) values (803,
6, 12, 218);
insert into VOTE(id_vote, value, id_game, id_system_user) values (804,
2, 73, 563);
insert into VOTE(id_vote, value, id_game, id_system_user) values (805,
5, 19, 187);
insert into VOTE(id_vote, value, id_game, id_system_user) values (806,
0, 9, 480);
insert into VOTE(id_vote, value, id_game, id_system_user) values (807,
2, 67, 205);
insert into VOTE(id_vote, value, id_game, id_system_user) values (808,
6, 93, 988);
insert into VOTE(id_vote, value, id_game, id_system_user) values (809,
1, 39, 862);
insert into VOTE(id_vote, value, id_game, id_system_user) values (810,
3, 12, 813);
insert into VOTE(id_vote, value, id_game, id_system_user) values (811,
5, 63, 847);
insert into VOTE(id_vote, value, id_game, id_system_user) values (812,
7, 81, 327);
insert into VOTE(id_vote, value, id_game, id_system_user) values (813,
0, 74, 682);
insert into VOTE(id_vote, value, id_game, id_system_user) values (814,
10, 9, 313);
insert into VOTE(id_vote, value, id_game, id_system_user) values (815,
2, 42, 378);
insert into VOTE(id_vote, value, id_game, id_system_user) values (816,
5, 39, 81);
insert into VOTE(id_vote, value, id_game, id_system_user) values (818,
2, 50, 456);
insert into VOTE(id_vote, value, id_game, id_system_user) values (819,
9, 53, 570);
insert into VOTE(id_vote, value, id_game, id_system_user) values (820,
3, 69, 417);
insert into VOTE(id_vote, value, id_game, id_system_user) values (821,
8, 45, 899);
insert into VOTE(id_vote, value, id_game, id_system_user) values (822,
0, 93, 720);
insert into VOTE(id_vote, value, id_game, id_system_user) values (823,
4, 31, 674);
insert into VOTE(id_vote, value, id_game, id_system_user) values (824,
0, 25, 930);
insert into VOTE(id_vote, value, id_game, id_system_user) values (825,
5, 28, 569);
insert into VOTE(id_vote, value, id_game, id_system_user) values (827,
2, 21, 564);
insert into VOTE(id_vote, value, id_game, id_system_user) values (828,
7, 59, 454);
insert into VOTE(id_vote, value, id_game, id_system_user) values (829,
7, 95, 452);
insert into VOTE(id_vote, value, id_game, id_system_user) values (830,
5, 6, 303);
insert into VOTE(id_vote, value, id_game, id_system_user) values (831,
6, 94, 818);
insert into VOTE(id_vote, value, id_game, id_system_user) values (832,
9, 28, 86);
insert into VOTE(id_vote, value, id_game, id_system_user) values (833,
4, 72, 893);
insert into VOTE(id_vote, value, id_game, id_system_user) values (834,
2, 62, 294);
insert into VOTE(id_vote, value, id_game, id_system_user) values (835,
10, 69, 555);
insert into VOTE(id_vote, value, id_game, id_system_user) values (836,
5, 53, 82);
insert into VOTE(id_vote, value, id_game, id_system_user) values (837,
3, 51, 119);
insert into VOTE(id_vote, value, id_game, id_system_user) values (838,
7, 83, 790);
insert into VOTE(id_vote, value, id_game, id_system_user) values (840,
1, 58, 742);
insert into VOTE(id_vote, value, id_game, id_system_user) values (841,
4, 67, 941);
insert into VOTE(id_vote, value, id_game, id_system_user) values (842,
1, 45, 720);
insert into VOTE(id_vote, value, id_game, id_system_user) values (843,
1, 65, 303);
insert into VOTE(id_vote, value, id_game, id_system_user) values (844,
0, 41, 589);
insert into VOTE(id_vote, value, id_game, id_system_user) values (845,
7, 85, 763);
insert into VOTE(id_vote, value, id_game, id_system_user) values (846,
0, 36, 309);
insert into VOTE(id_vote, value, id_game, id_system_user) values (847,
3, 57, 461);
insert into VOTE(id_vote, value, id_game, id_system_user) values (848,
4, 74, 3);
insert into VOTE(id_vote, value, id_game, id_system_user) values (849,
5, 37, 869);
insert into VOTE(id_vote, value, id_game, id_system_user) values (850,
10, 89, 380);
insert into VOTE(id_vote, value, id_game, id_system_user) values (851,
5, 8, 236);
insert into VOTE(id_vote, value, id_game, id_system_user) values (852,
9, 56, 676);
insert into VOTE(id_vote, value, id_game, id_system_user) values (853,
8, 67, 357);
insert into VOTE(id_vote, value, id_game, id_system_user) values (854,
6, 54, 300);
insert into VOTE(id_vote, value, id_game, id_system_user) values (855,
8, 17, 879);
insert into VOTE(id_vote, value, id_game, id_system_user) values (856,
4, 64, 13);
insert into VOTE(id_vote, value, id_game, id_system_user) values (857,
3, 55, 192);
insert into VOTE(id_vote, value, id_game, id_system_user) values (859,
5, 25, 48);
insert into VOTE(id_vote, value, id_game, id_system_user) values (860,
7, 13, 998);
insert into VOTE(id_vote, value, id_game, id_system_user) values (861,
0, 80, 135);
insert into VOTE(id_vote, value, id_game, id_system_user) values (862,
6, 28, 697);
insert into VOTE(id_vote, value, id_game, id_system_user) values (863,
8, 34, 772);
insert into VOTE(id_vote, value, id_game, id_system_user) values (864,
10, 64, 410);
insert into VOTE(id_vote, value, id_game, id_system_user) values (865,
2, 48, 3);
insert into VOTE(id_vote, value, id_game, id_system_user) values (866,
9, 37, 228);
insert into VOTE(id_vote, value, id_game, id_system_user) values (867,
1, 52, 109);
insert into VOTE(id_vote, value, id_game, id_system_user) values (868,
8, 31, 144);
insert into VOTE(id_vote, value, id_game, id_system_user) values (869,
1, 15, 271);
insert into VOTE(id_vote, value, id_game, id_system_user) values (870,
10, 88, 139);
insert into VOTE(id_vote, value, id_game, id_system_user) values (871,
7, 45, 388);
insert into VOTE(id_vote, value, id_game, id_system_user) values (872,
7, 60, 815);
insert into VOTE(id_vote, value, id_game, id_system_user) values (873,
4, 66, 900);
insert into VOTE(id_vote, value, id_game, id_system_user) values (874,
1, 34, 271);
insert into VOTE(id_vote, value, id_game, id_system_user) values (875,
7, 64, 981);
insert into VOTE(id_vote, value, id_game, id_system_user) values (876,
0, 14, 585);
insert into VOTE(id_vote, value, id_game, id_system_user) values (877,
3, 29, 390);
insert into VOTE(id_vote, value, id_game, id_system_user) values (878,
7, 91, 424);
insert into VOTE(id_vote, value, id_game, id_system_user) values (879,
3, 10, 742);
insert into VOTE(id_vote, value, id_game, id_system_user) values (880,
0, 25, 87);
insert into VOTE(id_vote, value, id_game, id_system_user) values (881,
6, 43, 276);
insert into VOTE(id_vote, value, id_game, id_system_user) values (882,
5, 52, 886);
insert into VOTE(id_vote, value, id_game, id_system_user) values (883,
4, 50, 869);
insert into VOTE(id_vote, value, id_game, id_system_user) values (884,
10, 20, 883);
insert into VOTE(id_vote, value, id_game, id_system_user) values (885,
7, 72, 28);
insert into VOTE(id_vote, value, id_game, id_system_user) values (886,
10, 84, 759);
insert into VOTE(id_vote, value, id_game, id_system_user) values (887,
2, 11, 361);
insert into VOTE(id_vote, value, id_game, id_system_user) values (888,
1, 77, 712);
insert into VOTE(id_vote, value, id_game, id_system_user) values (890,
3, 21, 766);
insert into VOTE(id_vote, value, id_game, id_system_user) values (891,
5, 76, 535);
insert into VOTE(id_vote, value, id_game, id_system_user) values (892,
5, 67, 777);
insert into VOTE(id_vote, value, id_game, id_system_user) values (893,
7, 62, 766);
insert into VOTE(id_vote, value, id_game, id_system_user) values (894,
2, 80, 376);
insert into VOTE(id_vote, value, id_game, id_system_user) values (895,
9, 80, 927);
insert into VOTE(id_vote, value, id_game, id_system_user) values (896,
5, 82, 433);
insert into VOTE(id_vote, value, id_game, id_system_user) values (897,
4, 18, 499);
insert into VOTE(id_vote, value, id_game, id_system_user) values (898,
0, 14, 162);
insert into VOTE(id_vote, value, id_game, id_system_user) values (899,
0, 74, 793);
insert into VOTE(id_vote, value, id_game, id_system_user) values (900,
9, 98, 989);
insert into VOTE(id_vote, value, id_game, id_system_user) values (901,
1, 27, 586);
insert into VOTE(id_vote, value, id_game, id_system_user) values (902,
6, 21, 790);
insert into VOTE(id_vote, value, id_game, id_system_user) values (903,
0, 92, 488);
insert into VOTE(id_vote, value, id_game, id_system_user) values (904,
5, 19, 961);
insert into VOTE(id_vote, value, id_game, id_system_user) values (905,
3, 70, 316);
insert into VOTE(id_vote, value, id_game, id_system_user) values (906,
10, 54, 645);
insert into VOTE(id_vote, value, id_game, id_system_user) values (907,
0, 94, 528);
insert into VOTE(id_vote, value, id_game, id_system_user) values (908,
4, 96, 957);
insert into VOTE(id_vote, value, id_game, id_system_user) values (909,
5, 12, 487);
insert into VOTE(id_vote, value, id_game, id_system_user) values (911,
1, 39, 527);
insert into VOTE(id_vote, value, id_game, id_system_user) values (912,
3, 92, 903);
insert into VOTE(id_vote, value, id_game, id_system_user) values (914,
10, 78, 356);
insert into VOTE(id_vote, value, id_game, id_system_user) values (915,
3, 28, 716);
insert into VOTE(id_vote, value, id_game, id_system_user) values (916,
5, 44, 838);
insert into VOTE(id_vote, value, id_game, id_system_user) values (917,
0, 98, 752);
insert into VOTE(id_vote, value, id_game, id_system_user) values (918,
0, 99, 676);
insert into VOTE(id_vote, value, id_game, id_system_user) values (919,
1, 83, 863);
insert into VOTE(id_vote, value, id_game, id_system_user) values (920,
7, 72, 984);
insert into VOTE(id_vote, value, id_game, id_system_user) values (921,
5, 31, 913);
insert into VOTE(id_vote, value, id_game, id_system_user) values (922,
4, 53, 177);
insert into VOTE(id_vote, value, id_game, id_system_user) values (923,
7, 77, 915);
insert into VOTE(id_vote, value, id_game, id_system_user) values (924,
8, 85, 552);
insert into VOTE(id_vote, value, id_game, id_system_user) values (925,
0, 90, 306);
insert into VOTE(id_vote, value, id_game, id_system_user) values (926,
1, 77, 633);
insert into VOTE(id_vote, value, id_game, id_system_user) values (927,
5, 61, 54);
insert into VOTE(id_vote, value, id_game, id_system_user) values (928,
4, 22, 782);
insert into VOTE(id_vote, value, id_game, id_system_user) values (929,
2, 73, 843);
insert into VOTE(id_vote, value, id_game, id_system_user) values (930,
2, 42, 158);
insert into VOTE(id_vote, value, id_game, id_system_user) values (931,
4, 39, 460);
insert into VOTE(id_vote, value, id_game, id_system_user) values (932,
6, 11, 572);
insert into VOTE(id_vote, value, id_game, id_system_user) values (933,
9, 57, 230);
insert into VOTE(id_vote, value, id_game, id_system_user) values (934,
3, 39, 538);
insert into VOTE(id_vote, value, id_game, id_system_user) values (935,
5, 59, 478);
insert into VOTE(id_vote, value, id_game, id_system_user) values (936,
10, 6, 672);
insert into VOTE(id_vote, value, id_game, id_system_user) values (937,
8, 8, 277);
insert into VOTE(id_vote, value, id_game, id_system_user) values (938,
7, 52, 331);
insert into VOTE(id_vote, value, id_game, id_system_user) values (939,
1, 19, 470);
insert into VOTE(id_vote, value, id_game, id_system_user) values (940,
10, 94, 755);
insert into VOTE(id_vote, value, id_game, id_system_user) values (941,
8, 13, 124);
insert into VOTE(id_vote, value, id_game, id_system_user) values (942,
8, 75, 180);
insert into VOTE(id_vote, value, id_game, id_system_user) values (943,
3, 21, 943);
insert into VOTE(id_vote, value, id_game, id_system_user) values (944,
3, 43, 546);
insert into VOTE(id_vote, value, id_game, id_system_user) values (945,
5, 11, 386);
insert into VOTE(id_vote, value, id_game, id_system_user) values (946,
8, 30, 499);
insert into VOTE(id_vote, value, id_game, id_system_user) values (947,
8, 72, 325);
insert into VOTE(id_vote, value, id_game, id_system_user) values (948,
10, 94, 238);
insert into VOTE(id_vote, value, id_game, id_system_user) values (949,
7, 47, 912);
insert into VOTE(id_vote, value, id_game, id_system_user) values (950,
4, 61, 832);
insert into VOTE(id_vote, value, id_game, id_system_user) values (951,
10, 57, 291);
insert into VOTE(id_vote, value, id_game, id_system_user) values (952,
7, 2, 577);
insert into VOTE(id_vote, value, id_game, id_system_user) values (953,
10, 18, 586);
insert into VOTE(id_vote, value, id_game, id_system_user) values (954,
1, 51, 507);
insert into VOTE(id_vote, value, id_game, id_system_user) values (955,
9, 28, 682);
insert into VOTE(id_vote, value, id_game, id_system_user) values (956,
8, 55, 857);
insert into VOTE(id_vote, value, id_game, id_system_user) values (957,
4, 2, 817);
insert into VOTE(id_vote, value, id_game, id_system_user) values (958,
3, 86, 45);
insert into VOTE(id_vote, value, id_game, id_system_user) values (960,
3, 16, 597);
insert into VOTE(id_vote, value, id_game, id_system_user) values (961,
9, 80, 482);
insert into VOTE(id_vote, value, id_game, id_system_user) values (962,
8, 45, 36);
insert into VOTE(id_vote, value, id_game, id_system_user) values (963,
3, 10, 426);
insert into VOTE(id_vote, value, id_game, id_system_user) values (964,
10, 63, 339);
insert into VOTE(id_vote, value, id_game, id_system_user) values (965,
4, 19, 848);
insert into VOTE(id_vote, value, id_game, id_system_user) values (966,
3, 62, 598);
insert into VOTE(id_vote, value, id_game, id_system_user) values (967,
0, 87, 145);
insert into VOTE(id_vote, value, id_game, id_system_user) values (968,
2, 86, 742);
insert into VOTE(id_vote, value, id_game, id_system_user) values (969,
0, 54, 839);
insert into VOTE(id_vote, value, id_game, id_system_user) values (970,
5, 87, 617);
insert into VOTE(id_vote, value, id_game, id_system_user) values (971,
0, 64, 374);
insert into VOTE(id_vote, value, id_game, id_system_user) values (972,
6, 41, 42);
insert into VOTE(id_vote, value, id_game, id_system_user) values (973,
5, 24, 577);
insert into VOTE(id_vote, value, id_game, id_system_user) values (974,
6, 16, 617);
insert into VOTE(id_vote, value, id_game, id_system_user) values (975,
4, 80, 140);
insert into VOTE(id_vote, value, id_game, id_system_user) values (976,
4, 21, 114);
insert into VOTE(id_vote, value, id_game, id_system_user) values (977,
0, 79, 617);
insert into VOTE(id_vote, value, id_game, id_system_user) values (978,
4, 99, 300);
insert into VOTE(id_vote, value, id_game, id_system_user) values (979,
9, 64, 334);
insert into VOTE(id_vote, value, id_game, id_system_user) values (980,
6, 86, 200);
insert into VOTE(id_vote, value, id_game, id_system_user) values (981, 3, 69, 331);
insert into VOTE(id_vote, value, id_game, id_system_user) values (982,
5, 18, 265);
insert into VOTE(id_vote, value, id_game, id_system_user) values (983,
2, 87, 185);
insert into VOTE(id_vote, value, id_game, id_system_user) values (984,
5, 69, 812);
insert into VOTE(id_vote, value, id_game, id_system_user) values (985,
7, 28, 27);
insert into VOTE(id_vote, value, id_game, id_system_user) values (986,
2, 100, 627);
insert into VOTE(id_vote, value, id_game, id_system_user) values (987,
2, 96, 962);
insert into VOTE(id_vote, value, id_game, id_system_user) values (988,
8, 51, 68);
insert into VOTE(id_vote, value, id_game, id_system_user) values (990,
9, 73, 776);
insert into VOTE(id_vote, value, id_game, id_system_user) values (991,
6, 95, 650);
insert into VOTE(id_vote, value, id_game, id_system_user) values (992,
10, 61, 991);
insert into VOTE(id_vote, value, id_game, id_system_user) values (993,
2, 77, 544);
insert into VOTE(id_vote, value, id_game, id_system_user) values (994,
0, 18, 32);
insert into VOTE(id_vote, value, id_game, id_system_user) values (995,
5, 37, 878);
insert into VOTE(id_vote, value, id_game, id_system_user) values (996,
4, 30, 62);
insert into VOTE(id_vote, value, id_game, id_system_user) values (997,
10, 20, 378);
insert into VOTE(id_vote, value, id_game, id_system_user) values (998,
5, 61, 602);
insert into VOTE(id_vote, value, id_game, id_system_user) values (999,
1, 79, 547);
insert into VOTE(id_vote, value, id_game, id_system_user) values
(1000, 2, 24, 304);
insert into VOTE(id_vote, value, id_game, id_system_user) values (910,
10, 84, 424);
insert into VOTE(id_vote, value, id_game, id_system_user) values (219,
5, 17, 630);
insert into VOTE(id_vote, value, id_game, id_system_user) values (391,
5, 67, 834);
insert into VOTE(id_vote, value, id_game, id_system_user) values (839,
9, 11, 123);
insert into VOTE(id_vote, value, id_game, id_system_user) values (388,
5, 73, 682);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (99, 456, '2018-06-24', '2011-01-08');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (45, 633, '2021-03-24', '2012-07-24');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (68, 260, '2017-04-07', '2021-11-03');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (49, 943, '2017-05-15', '2019-08-10');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (50, 49, '2010-02-11', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (68, 969, '2013-07-24', '2013-02-21');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (67, 533, '2020-09-23', '2015-07-12');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (98, 254, '2018-05-23', '2014-02-27');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (96, 468, '2014-09-27', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (47, 321, '2014-10-17', '2015-11-03');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (77, 359, '2020-03-29', '2019-03-23');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (92, 594, '2017-05-09', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (38, 798, '2012-12-16', '2018-07-17');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (79, 119, '2011-01-01', '2015-04-13');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (91, 422, '2014-07-06', '2015-05-18');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (73, 479, '2016-08-06', '2010-03-10');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (13, 533, '2011-09-14', '2015-02-09');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (64, 182, '2014-02-16', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (12, 775, '2019-10-14', '2012-04-13');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (87, 881, '2018-09-07', '2020-12-31');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (19, 61, '2020-11-25', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (6, 175, '2013-12-28', '2018-10-26');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (79, 659, '2020-09-12', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (53, 418, '2011-04-18', '2012-05-18');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (96, 403, '2020-03-25', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (61, 902, '2019-09-07', '2017-10-23');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (26, 940, '2017-08-12', '2011-10-07');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (23, 490, '2014-03-01', '2019-07-19');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (48, 432, '2014-03-05', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (94, 82, '2012-08-10', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (23, 183, '2019-05-10', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (73, 646, '2015-06-12', '2012-08-26');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (90, 139, '2018-07-19', '2012-06-12');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (72, 758, '2013-02-08', '2012-11-04');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (63, 455, '2012-07-22', '2019-03-25');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (17, 371, '2017-04-17', '2020-09-08');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (3, 939, '2011-01-12', '2013-10-06');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (66, 595, '2010-04-01', '2015-05-06');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (57, 46, '2014-06-19', '2016-10-31');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (31, 821, '2018-03-09', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (31, 368, '2014-08-21', '2013-02-09');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (42, 585, '2012-06-23', '2015-12-06');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (2, 845, '2011-06-13', '2012-10-23');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (73, 291, '2017-05-03', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (67, 223, '2014-10-20', '2017-12-12');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (15, 41, '2018-11-29', '2016-06-30');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (49, 296, '2013-03-06', '2020-08-29');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (29, 157, '2017-11-30', '2011-08-07');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (69, 16, '2015-12-12', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (94, 806, '2019-07-10', '2013-01-25');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (66, 204, '2014-04-16', '2014-07-14');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (62, 947, '2016-06-24', '2011-03-01');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (90, 580, '2012-02-22', '2011-10-16');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (23, 875, '2019-01-09', '2014-01-11');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (14, 836, '2010-08-06', '2015-11-14');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (29, 907, '2011-07-14', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (65, 28, '2014-02-28', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (82, 699, '2017-06-24', '2020-02-03');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (35, 175, '2011-02-15', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (1, 858, '2019-08-20', '2014-06-12');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (37, 990, '2021-04-01', '2020-11-28');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (83, 482, '2016-12-27', '2018-11-11');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (26, 53, '2014-01-01', '2014-07-25');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (51, 179, '2011-06-05', '2011-04-19');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (93, 922, '2015-08-16', '2014-06-05');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (54, 938, '2014-02-18', '2015-05-15');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (16, 414, '2014-07-02', '2016-07-10');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (41, 687, '2011-05-18', '2013-12-22');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (77, 580, '2017-05-15', '2011-11-30');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (27, 353, '2018-08-05', '2011-05-31');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (70, 762, '2010-11-22', '2014-01-27');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (74, 950, '2010-04-01', '2014-11-27');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (38, 252, '2014-02-05', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (46, 316, '2012-05-11', '2010-07-22');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (22, 212, '2019-03-25', '2011-09-15');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (45, 515, '2013-08-06', '2013-10-28');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (84, 710, '2018-02-12', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (92, 850, '2012-07-20', '2011-01-18');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (52, 533, '2018-07-23', '2010-12-18');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (76, 481, '2012-07-21', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (25, 838, '2017-06-23', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (14, 950, '2016-10-02', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (96, 42, '2021-01-07', '2012-07-10');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (15, 308, '2014-02-01', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (20, 522, '2012-02-19', '2012-11-12');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (8, 251, '2015-04-12', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (72, 727, '2015-12-23', '2016-07-03');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (38, 34, '2016-01-02', '2021-01-21');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (52, 324, '2019-04-29', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (91, 559, '2019-12-09', '2016-01-11');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (74, 518, '2015-07-10', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (22, 323, '2014-01-02', '2018-10-27');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (47, 62, '2015-04-20', '2020-03-26');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (40, 506, '2015-07-08', '2015-01-18');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (99, 719, '2010-10-29', '2019-10-19');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (72, 153, '2020-04-17', '2021-07-18');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (29, 403, '2021-04-30', '2010-05-06');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (20, 564, '2015-12-28', '2014-10-24');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (54, 555, '2012-04-11', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (38, 102, '2020-03-25', '2016-01-18');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (29, 770, '2019-02-08', '2010-07-20');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (89, 303, '2012-10-13', '2014-11-16');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (1, 304, '2015-07-12', '2014-06-24');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (8, 175, '2015-06-13', '2020-11-25');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (12, 208, '2021-10-08', '2014-03-14');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (48, 677, '2021-08-05', '2011-06-01');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (24, 297, '2020-08-11', '2015-06-16');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (54, 857, '2013-05-12', '2012-08-11');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (46, 189, '2013-05-17', '2016-02-23');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (55, 398, '2013-03-25', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (91, 701, '2011-03-10', '2011-02-15');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (59, 322, '2021-03-30', '2014-10-25');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (96, 199, '2015-05-12', '2016-02-05');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (18, 778, '2010-07-18', '2014-06-09');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (95, 192, '2010-10-12', '2016-09-16');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (50, 200, '2017-11-06', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (92, 628, '2019-04-18', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (33, 764, '2011-07-15', '2019-01-27');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (67, 219, '2016-01-29', '2016-09-10');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (88, 701, '2010-06-13', '2013-11-10');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (55, 910, '2021-10-27', '2014-05-21');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (78, 380, '2018-02-25', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (48, 481, '2011-03-12', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (70, 264, '2017-12-04', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (87, 585, '2018-11-27', '2019-07-09');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (56, 645, '2010-05-16', '2021-01-10');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (97, 538, '2017-02-05', '2014-08-12');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (96, 703, '2014-10-12', '2010-09-29');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (50, 380, '2012-08-24', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (9, 142, '2011-01-25', '2011-05-15');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (46, 252, '2010-04-23', '2017-01-01');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (70, 45, '2021-05-24', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (84, 502, '2012-03-02', '2014-12-18');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (56, 162, '2016-10-27', '2016-09-29');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (23, 637, '2011-02-03', '2019-08-07');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (3, 326, '2019-08-07', '2015-01-11');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (43, 287, '2019-06-06', '2012-12-27');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (7, 629, '2010-05-16', '2013-03-18');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (6, 620, '2015-11-07', '2015-03-11');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (39, 907, '2010-07-15', '2011-02-14');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (97, 101, '2012-11-22', '2018-07-01');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (95, 199, '2018-08-24', '2011-01-05');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (31, 195, '2010-07-24', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (88, 292, '2010-12-24', '2011-08-01');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (20, 649, '2011-01-02', '2010-08-15');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (27, 337, '2021-09-20', '2019-07-01');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (17, 123, '2015-08-12', '2019-12-03');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (35, 173, '2019-07-01', '2011-04-14');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (54, 74, '2020-09-07', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (40, 172, '2020-09-22', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (13, 581, '2017-01-14', '2016-04-03');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (14, 245, '2015-11-24', '2011-03-07');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (19, 905, '2018-10-16', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (8, 118, '2017-11-22', '2016-10-09');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (35, 317, '2019-01-12', '2010-07-11');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (3, 795, '2016-04-30', '2011-04-30');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (14, 602, '2016-01-28', '2015-12-13');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (17, 893, '2013-11-04', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (58, 575, '2013-09-02', '2012-10-03');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (66, 723, '2015-05-07', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (12, 58, '2013-04-01', '2018-08-14');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (97, 34, '2020-05-26', '2013-07-12');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (62, 388, '2012-06-02', '2017-01-29');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (8, 243, '2015-12-07', '2014-08-06');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (97, 162, '2021-04-17', '2012-12-11');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (89, 516, '2017-09-14', '2014-01-13');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (69, 627, '2018-06-02', '2017-03-22');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (97, 816, '2010-03-22', '2014-11-03');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (15, 635, '2017-06-30', '2012-10-21');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (95, 648, '2014-05-13', '2021-10-15');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (55, 356, '2021-07-17', '2010-06-10');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (91, 403, '2018-02-19', '2017-03-10');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (87, 587, '2013-04-26', '2017-10-05');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (46, 998, '2011-11-19', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (65, 439, '2012-09-28', '2018-02-26');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (30, 710, '2013-05-07', '2013-07-18');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (34, 670, '2013-12-08', '2014-08-21');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (78, 916, '2018-01-17', '2021-06-09');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (29, 393, '2014-03-20', '2015-06-30');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (6, 415, '2015-06-02', '2021-03-27');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (6, 494, '2011-08-02', '2011-01-07');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (56, 139, '2018-07-01', '2021-03-21');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (54, 200, '2018-09-22', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (83, 952, '2018-12-17', '2011-06-09');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (79, 967, '2016-02-27', '2016-08-20');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (38, 199, '2020-10-31', '2014-05-14');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (34, 965, '2015-07-18', '2017-10-31');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (3, 580, '2021-02-25', '2020-06-13');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (83, 484, '2020-06-13', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (35, 632, '2013-04-06', '2014-12-28');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (73, 241, '2021-06-24', '2019-07-20');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (69, 820, '2019-06-04', '2016-07-27');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (99, 656, '2020-03-03', '2015-06-21');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (42, 686, '2012-04-10', '2015-05-20');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (56, 924, '2016-01-08', '2021-01-23');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (56, 327, '2012-02-27', '2012-10-14');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (18, 643, '2013-07-13', '2014-06-25');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (2, 81, '2018-08-01', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (53, 131, '2018-05-11', '2011-08-25');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (71, 53, '2012-04-05', '2015-12-25');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (4, 487, '2014-05-05', '2010-09-15');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (60, 297, '2014-04-08', '2021-04-11');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (86, 263, '2017-01-23', '2021-08-28');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (69, 241, '2013-08-15', '2016-07-27');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (30, 746, '2014-11-25', '2017-06-03');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (100, 402, '2017-08-07', '2020-09-14');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (86, 62, '2010-11-01', '2017-09-12');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (47, 919, '2015-07-07', '2014-09-28');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (64, 99, '2011-11-16', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (69, 635, '2012-05-02', '2014-07-18');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (45, 666, '2013-12-24', '2014-07-13');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (55, 604, '2015-01-03', '2015-02-18');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (66, 94, '2015-11-29', '2012-10-13');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (87, 628, '2015-12-02', '2011-10-29');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (25, 228, '2018-11-09', '2021-05-31');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (89, 181, '2011-11-19', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (50, 335, '2012-08-19', '2018-09-15');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (56, 406, '2016-03-22', '2011-11-25');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (7, 802, '2014-02-09', '2012-11-29');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (52, 417, '2018-12-30', '2013-08-08');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (16, 373, '2011-01-03', '2017-11-20');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (45, 447, '2011-01-20', '2018-03-06');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (39, 860, '2017-05-29', '2012-01-06');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (4, 587, '2010-12-11', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (81, 796, '2010-07-23', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (46, 191, '2015-05-02', '2013-10-22');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (40, 128, '2013-03-13', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (41, 591, '2011-06-01', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (46, 233, '2015-01-18', '2020-04-10');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (53, 715, '2018-03-01', '2013-04-29');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (43, 252, '2014-07-13', '2020-02-17');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (67, 477, '2011-03-15', '2013-05-24');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (39, 914, '2016-01-02', '2018-02-12');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (18, 296, '2021-09-04', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (22, 287, '2015-10-27', '2021-03-20');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (53, 862, '2018-08-05', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (35, 425, '2016-01-16', '2021-07-12');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (36, 281, '2017-05-23', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (73, 913, '2013-06-01', '2017-07-25');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (25, 133, '2014-10-15', '2017-12-26');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (24, 410, '2021-09-26', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (6, 499, '2020-04-05', '2015-08-07');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (24, 762, '2014-05-16', '2012-11-05');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (20, 560, '2019-01-09', '2013-03-14');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (66, 692, '2018-01-24', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (7, 781, '2013-01-26', '2014-09-12');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (99, 336, '2016-01-10', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (91, 387, '2013-05-27', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (98, 308, '2011-09-09', '2018-10-25');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (33, 757, '2021-03-28', '2018-10-25');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (77, 601, '2015-12-15', '2018-06-15');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (73, 964, '2014-05-10', '2018-04-19');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (12, 768, '2019-02-08', '2012-10-13');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (26, 449, '2011-07-22', '2017-09-10');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (60, 632, '2016-06-02', '2019-06-17');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (43, 552, '2018-12-16', '2016-12-04');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (98, 279, '2019-05-02', '2012-03-22');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (100, 172, '2019-01-30', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (75, 323, '2021-06-22', '2019-07-24');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (12, 98, '2010-09-26', '2019-03-07');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (88, 721, '2016-02-02', '2013-07-11');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (56, 932, '2018-10-17', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (90, 333, '2012-11-26', '2018-04-28');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (25, 481, '2010-04-02', '2014-12-28');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (74, 76, '2012-06-04', '2015-02-11');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (80, 721, '2021-02-15', '2011-12-23');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (75, 727, '2020-07-27', '2011-04-11');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (8, 828, '2015-05-20', '2012-09-22');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (58, 445, '2020-02-19', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (72, 324, '2017-07-10', '2020-12-13');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (49, 322, '2020-04-05', '2012-08-27');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (24, 92, '2018-09-15', '2019-12-28');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (87, 643, '2019-09-13', '2020-12-24');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (58, 349, '2012-09-20', '2015-04-11');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (45, 353, '2016-09-11', '2012-11-19');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (1, 771, '2013-06-17', '2017-06-05');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (53, 82, '2015-01-18', '2012-10-27');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (69, 540, '2018-02-18', '2010-01-26');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (21, 602, '2013-09-07', '2017-10-04');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (40, 169, '2013-08-11', '2013-06-07');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (22, 225, '2010-11-30', '2012-08-08');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (36, 454, '2016-01-18', '2021-07-20');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (12, 605, '2010-09-12', '2013-10-08');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (69, 334, '2017-05-02', '2016-08-06');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (79, 951, '2020-06-14', '2014-07-02');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (19, 944, '2015-06-23', '2015-12-03');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (72, 910, '2010-05-21', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (4, 569, '2018-03-28', '2014-04-05');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (45, 914, '2018-11-19', '2020-06-22');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (73, 172, '2013-05-03', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (94, 212, '2018-11-08', '2021-09-05');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (7, 930, '2019-11-05', '2015-03-31');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (67, 678, '2019-02-02', '2012-09-01');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (68, 739, '2010-12-28', '2020-08-19');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (62, 601, '2018-10-11', '2010-01-10');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (29, 631, '2021-01-19', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (46, 35, '2018-07-23', '2020-02-20');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (70, 598, '2020-03-21', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (45, 721, '2013-08-01', '2013-08-15');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (67, 318, '2012-06-07', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (65, 151, '2017-08-23', '2014-07-11');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (28, 887, '2016-01-26', '2012-07-12');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (9, 972, '2010-11-20', '2015-07-29');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (30, 438, '2013-04-03', '2011-02-19');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (65, 381, '2017-04-07', '2012-12-12');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (25, 833, '2017-05-20', '2016-09-17');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (88, 275, '2015-01-20', '2019-01-10');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (56, 191, '2015-04-16', '2012-09-04');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (48, 569, '2013-05-23', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (60, 783, '2020-02-22', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (3, 71, '2020-05-07', '2019-09-26');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (35, 480, '2021-02-15', '2010-12-19');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (88, 586, '2019-01-02', '2017-07-18');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (76, 206, '2019-01-20', '2011-10-23');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (54, 901, '2012-12-12', '2016-09-10');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (3, 39, '2011-02-14', '2014-06-27');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (67, 37, '2013-12-22', '2011-01-19');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (76, 975, '2013-07-09', '2013-09-23');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (2, 890, '2019-06-15', '2014-09-27');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (99, 599, '2016-02-26', '2011-02-13');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (53, 915, '2010-01-24', '2020-08-13');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (49, 153, '2016-08-03', '2017-10-14');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (3, 110, '2021-09-21', '2011-09-24');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (12, 456, '2020-06-14', '2012-04-23');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (70, 341, '2020-10-23', '2015-04-21');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (72, 164, '2010-07-18', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (39, 13, '2010-07-22', '2014-09-19');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (6, 783, '2018-08-11', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (15, 579, '2019-05-04', '2016-05-23');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (62, 833, '2011-06-24', '2011-11-02');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (70, 975, '2015-03-31', '2014-12-05');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (79, 595, '2016-05-12', '2020-11-14');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (6, 599, '2011-04-10', '2015-01-08');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (95, 217, '2017-12-03', '2016-05-30');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (35, 299, '2020-06-10', '2018-03-11');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (71, 695, '2020-01-20', '2016-10-01');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (93, 64, '2018-10-09', '2018-02-16');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (67, 243, '2012-04-16', '2015-09-16');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (42, 571, '2012-11-30', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (91, 845, '2017-02-12', '2019-05-12');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (48, 866, '2015-04-17', '2020-09-15');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (21, 373, '2013-07-14', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (67, 295, '2020-06-14', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (43, 653, '2020-05-20', '2017-12-31');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (98, 378, '2013-01-08', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (70, 258, '2012-06-12', '2014-09-24');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (50, 887, '2016-04-30', '2019-06-13');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (95, 839, '2020-07-02', '2018-02-05');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (26, 796, '2012-10-29', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (91, 36, '2018-01-02', '2015-10-26');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (18, 325, '2018-10-27', '2017-09-19');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (53, 202, '2021-06-28', '2010-11-04');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (38, 123, '2016-06-23', '2018-06-16');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (36, 456, '2021-09-26', '2013-10-10');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (51, 153, '2018-01-09', '2017-05-17');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (47, 109, '2012-08-31', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (43, 935, '2017-02-17', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (46, 290, '2012-10-13', '2018-10-25');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (49, 528, '2014-07-12', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (37, 504, '2019-10-01', '2013-01-06');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (43, 529, '2012-03-11', '2016-04-28');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (68, 171, '2015-03-10', '2014-03-18');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (92, 661, '2010-02-04', '2010-10-05');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (88, 888, '2011-05-05', '2019-07-24');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (85, 361, '2020-11-10', '2017-06-29');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (12, 945, '2021-02-26', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (20, 443, '2013-11-11', '2011-09-17');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (1, 566, '2016-07-15', '2015-11-16');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (5, 367, '2013-12-14', '2013-10-29');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (68, 567, '2021-01-31', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (14, 440, '2019-08-27', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (14, 995, '2013-09-07', '2020-08-30');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (43, 90, '2012-11-19', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (43, 777, '2014-03-26', '2017-05-05');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (64, 593, '2011-11-01', '2017-01-23');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (19, 261, '2015-08-30', '2019-01-04');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (95, 525, '2012-10-12', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (3, 274, '2010-08-31', '2019-07-16');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (51, 749, '2018-12-25', '2012-11-20');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (9, 786, '2015-06-19', '2013-10-04');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (29, 687, '2014-03-28', '2010-05-22');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (83, 245, '2012-05-30', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (99, 125, '2010-11-23', '2014-11-28');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (76, 190, '2015-04-29', '2014-07-29');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (97, 502, '2018-11-06', '2020-12-10');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (52, 645, '2010-05-11', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (88, 997, '2010-06-28', '2010-05-24');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (22, 343, '2018-03-30', '2015-12-04');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (59, 677, '2010-03-10', '2021-06-14');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (98, 352, '2013-09-21', '2014-09-02');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (80, 63, '2015-02-10', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (22, 613, '2010-04-07', '2010-03-20');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (59, 37, '2021-09-07', '2015-09-18');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (93, 137, '2013-09-30', '2020-06-19');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (100, 335, '2011-10-21', '2020-01-23');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (20, 765, '2010-07-18', '2018-06-24');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (78, 915, '2011-03-07', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (10, 323, '2017-09-09', '2020-12-05');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (56, 57, '2012-09-04', '2016-01-08');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (55, 22, '2019-05-12', '2017-01-14');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (44, 443, '2017-10-21', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (29, 714, '2021-05-28', '2013-05-07');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (20, 264, '2018-01-05', '2014-06-29');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (14, 688, '2010-10-18', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (73, 683, '2014-03-21', '2018-02-10');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (71, 435, '2015-06-19', '2012-06-19');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (60, 990, '2021-04-02', '2010-08-19');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (63, 924, '2014-11-21', '2017-05-22');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (80, 774, '2018-03-17', '2014-03-23');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (83, 317, '2017-11-24', '2015-12-16');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (41, 528, '2014-12-11', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (38, 447, '2016-06-26', '2017-10-21');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (88, 570, '2021-03-16', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (48, 795, '2019-05-17', '2010-06-27');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (11, 364, '2011-08-06', '2020-11-06');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (7, 566, '2014-08-08', '2018-09-03');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (76, 513, '2013-08-15', '2020-10-11');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (54, 825, '2015-02-02', '2019-10-24');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (36, 866, '2020-01-20', '2015-10-03');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (27, 194, '2018-08-28', '2017-02-27');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (82, 893, '2021-10-28', '2012-06-29');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (50, 924, '2021-09-07', '2020-02-02');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (20, 587, '2012-09-04', '2016-09-26');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (30, 841, '2012-06-28', '2020-09-10');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (51, 621, '2017-07-20', '2021-05-29');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (50, 773, '2019-09-09', '2020-10-23');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (8, 119, '2020-04-09', '2017-04-23');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (35, 992, '2016-09-27', '2012-06-24');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (23, 340, '2013-06-13', '2020-03-06');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (30, 795, '2013-09-08', '2021-10-20');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (51, 438, '2018-04-06', '2013-07-09');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (63, 426, '2012-01-11', '2019-02-12');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (14, 905, '2017-05-17', '2011-11-20');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (5, 56, '2020-11-02', '2021-04-13');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (44, 203, '2011-10-17', '2011-12-05');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (85, 146, '2011-12-08', '2011-11-04');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (1, 331, '2016-06-05', '2012-05-31');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (86, 952, '2011-09-08', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (20, 621, '2017-07-18', '2011-11-22');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (7, 234, '2021-09-03', '2021-03-27');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (73, 655, '2020-12-26', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (15, 324, '2012-04-15', '2012-11-19');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (34, 812, '2014-08-15', '2013-08-01');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (48, 916, '2015-05-20', '2011-07-19');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (1, 31, '2015-09-10', '2015-11-16');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (10, 863, '2011-03-10', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (67, 365, '2019-02-20', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (78, 275, '2013-12-27', '2010-11-06');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (93, 492, '2015-09-25', '2021-01-26');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (13, 292, '2020-10-28', '2016-01-12');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (73, 488, '2016-09-10', '2016-04-20');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (14, 783, '2011-04-06', '2016-09-02');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (90, 682, '2013-05-23', '2014-07-02');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (7, 806, '2014-04-14', '2019-05-27');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (45, 25, '2011-05-24', '2020-07-19');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (34, 528, '2021-09-16', '2018-08-04');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (63, 827, '2014-07-09', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (70, 182, '2011-03-23', '2021-06-24');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (22, 131, '2021-06-10', '2017-12-25');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (93, 380, '2021-06-22', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (92, 963, '2010-05-22', '2020-07-20');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (26, 242, '2018-03-24', '2013-12-27');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (36, 486, '2010-01-26', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (12, 653, '2021-10-05', '2016-03-26');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (61, 695, '2013-04-15', '2012-08-03');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (15, 686, '2010-12-05', '2016-01-02');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (39, 179, '2012-07-19', '2018-06-09');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (57, 432, '2013-05-24', '2021-05-06');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (84, 129, '2017-10-15', '2016-05-15');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (57, 885, '2014-11-14', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (1, 294, '2014-10-22', '2010-01-27');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (19, 390, '2013-10-15', '2012-02-17');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (3, 175, '2012-12-14', '2010-11-21');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (90, 151, '2010-03-24', '2021-03-13');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (71, 454, '2010-08-08', '2011-05-14');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (9, 592, '2012-04-21', '2019-12-07');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (16, 754, '2016-01-02', '2013-11-12');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (88, 100, '2016-08-22', '2011-03-08');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (92, 740, '2016-10-20', '2020-05-20');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (1, 299, '2011-11-24', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (34, 265, '2020-08-06', '2011-01-15');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (57, 119, '2016-09-13', '2011-10-02');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (27, 762, '2018-01-09', '2011-08-08');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (88, 249, '2015-02-18', '2010-12-12');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (10, 360, '2014-06-06', '2015-02-03');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (47, 770, '2020-09-07', '2010-04-04');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (27, 48, '2013-08-25', '2010-12-27');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (62, 736, '2019-05-08', '2020-08-20');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (22, 962, '2014-12-12', '2019-03-26');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (62, 993, '2018-12-15', '2019-07-27');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (10, 662, '2020-01-04', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (74, 296, '2011-12-07', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (22, 181, '2014-12-01', '2015-08-26');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (96, 600, '2013-07-31', '2017-05-07');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (38, 5, '2011-07-14', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (65, 338, '2020-11-09', '2017-09-14');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (34, 882, '2021-02-08', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (73, 55, '2019-01-27', '2010-03-18');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (36, 46, '2018-11-07', '2019-02-12');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (45, 800, '2016-09-15', '2010-04-14');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (33, 141, '2020-10-12', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (18, 521, '2019-12-18', '2012-09-23');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (87, 751, '2014-11-15', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (93, 474, '2012-08-27', '2020-02-25');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (36, 835, '2017-01-17', '2013-03-16');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (94, 536, '2011-12-03', '2017-08-05');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (22, 198, '2015-05-11', '2016-08-05');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (68, 346, '2015-05-07', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (34, 707, '2015-10-13', '2016-10-04');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (90, 633, '2011-08-05', '2017-07-02');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (47, 597, '2011-05-13', '2019-06-25');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (59, 627, '2019-05-27', '2015-12-01');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (56, 745, '2012-06-22', '2012-07-27');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (5, 549, '2017-02-03', '2012-06-29');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (31, 231, '2013-02-09', '2015-07-27');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (3, 824, '2019-07-28', '2018-02-26');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (52, 676, '2011-08-31', '2015-12-11');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (14, 334, '2014-12-11', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (51, 469, '2019-09-11', '2012-12-29');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (84, 464, '2018-03-28', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (53, 144, '2016-03-23', '2013-05-05');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (39, 519, '2018-03-18', '2012-12-13');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (2, 68, '2011-03-27', '2021-02-18');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (38, 665, '2020-07-12', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (21, 820, '2014-11-30', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (68, 483, '2013-02-25', '2012-01-02');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (86, 598, '2020-06-11', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (51, 800, '2014-06-14', '2014-07-17');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (69, 225, '2021-07-13', '2017-01-11');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (65, 113, '2016-01-13', '2010-05-19');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (29, 469, '2020-06-13', '2012-03-16');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (74, 50, '2018-04-22', '2014-09-13');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (98, 325, '2016-06-11', '2013-07-18');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (12, 74, '2021-01-05', '2013-09-10');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (18, 548, '2014-09-22', '2016-10-09');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (43, 140, '2020-06-10', '2013-05-31');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (78, 503, '2018-07-29', '2013-06-07');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (93, 286, '2018-09-29', '2017-07-28');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (8, 81, '2017-10-23', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (22, 217, '2010-06-20', '2020-11-02');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (36, 948, '2016-05-21', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (46, 472, '2011-09-21', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (62, 342, '2021-03-06', '2019-08-08');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (95, 800, '2018-03-29', '2016-11-20');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (93, 705, '2012-12-19', '2018-01-25');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (23, 841, '2015-10-05', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (25, 896, '2014-04-26', '2017-05-24');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (50, 300, '2019-07-04', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (1, 408, '2012-04-04', '2010-06-05');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (52, 657, '2014-11-24', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (84, 40, '2015-09-03', '2017-08-19');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (44, 343, '2012-02-03', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (16, 969, '2011-10-30', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (11, 97, '2014-07-12', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (25, 375, '2015-12-24', '2019-07-24');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (33, 112, '2010-02-17', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (20, 83, '2018-09-22', '2021-03-11');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (56, 282, '2020-08-30', '2013-03-11');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (65, 522, '2018-08-30', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (86, 516, '2016-03-14', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (78, 171, '2019-01-11', '2015-04-10');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (98, 745, '2012-07-31', '2013-02-01');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (27, 475, '2018-10-26', '2012-03-02');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (19, 498, '2014-05-26', '2015-11-01');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (64, 215, '2016-04-09', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (19, 268, '2015-08-30', '2021-10-22');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (5, 932, '2016-08-22', '2018-05-13');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (26, 958, '2021-03-27', '2021-11-05');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (30, 991, '2016-02-22', '2021-03-01');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (97, 649, '2016-05-06', '2018-05-01');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (72, 326, '2015-08-01', '2021-05-18');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (2, 281, '2010-05-27', '2017-09-30');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (77, 714, '2021-03-04', '2019-04-23');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (91, 430, '2018-11-06', '2013-04-14');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (74, 918, '2015-10-20', '2017-05-01');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (13, 503, '2012-10-31', '2018-03-29');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (42, 165, '2014-09-03', '2014-07-27');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (46, 102, '2011-09-28', '2016-10-02');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (92, 233, '2012-11-04', '2013-08-12');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (62, 972, '2020-02-08', '2021-07-03');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (47, 906, '2018-03-23', '2018-11-24');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (31, 95, '2010-07-30', '2017-05-22');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (85, 565, '2017-03-25', '2010-05-11');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (76, 270, '2017-11-19', '2020-04-12');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (48, 962, '2020-03-15', '2015-07-02');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (83, 637, '2019-05-04', '2011-09-19');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (27, 742, '2010-08-07', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (2, 430, '2014-01-11', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (96, 487, '2021-02-13', '2010-10-24');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (42, 799, '2013-03-16', '2011-03-29');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (65, 713, '2013-12-25', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (31, 324, '2015-09-12', '2012-12-07');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (18, 559, '2018-01-06', '2017-08-30');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (94, 205, '2015-10-31', '2019-04-07');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (92, 247, '2015-07-04', '2014-07-12');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (30, 237, '2015-04-14', '2013-12-28');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (9, 944, '2015-04-02', '2018-02-08');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (72, 260, '2018-09-10', '2019-03-20');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (60, 213, '2010-09-12', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (80, 259, '2020-03-17', '2010-08-28');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (23, 951, '2010-09-04', '2014-01-08');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (20, 588, '2014-03-04', '2020-03-17');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (61, 411, '2017-05-17', '2016-09-21');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (74, 437, '2019-11-24', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (79, 647, '2013-04-22', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (47, 381, '2012-04-03', '2011-08-05');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (17, 289, '2016-03-27', '2018-12-22');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (2, 491, '2020-09-09', '2010-09-12');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (69, 888, '2011-08-28', '2014-07-29');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (73, 961, '2013-05-29', '2017-05-13');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (51, 802, '2014-03-26', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (82, 921, '2021-01-17', '2020-10-03');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (34, 675, '2014-03-16', '2012-02-14');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (13, 875, '2012-10-17', '2013-06-25');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (27, 545, '2018-10-04', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (8, 675, '2015-07-17', '2020-02-23');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (33, 720, '2014-07-06', '2013-09-04');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (49, 281, '2018-01-08', '2010-03-12');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (4, 244, '2011-12-04', '2015-08-05');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (76, 776, '2012-02-25', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (4, 827, '2010-04-18', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (19, 181, '2015-09-15', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (17, 286, '2015-07-24', '2013-07-06');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (21, 160, '2018-04-11', '2017-10-18');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (33, 777, '2015-03-06', '2010-08-05');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (10, 253, '2021-08-27', '2011-08-12');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (33, 408, '2011-11-30', '2018-11-04');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (62, 474, '2013-02-21', '2014-05-14');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (14, 889, '2018-07-18', '2011-05-16');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (58, 692, '2010-12-12', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (89, 411, '2015-08-25', '2011-02-03');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (84, 795, '2011-04-15', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (90, 296, '2014-06-27', '2012-03-29');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (87, 429, '2015-08-13', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (46, 456, '2016-03-03', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (30, 745, '2016-09-26', '2014-05-14');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (59, 766, '2013-12-18', '2019-10-19');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (59, 753, '2014-09-15', '2015-10-25');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (77, 469, '2012-08-23', '2011-02-04');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (21, 659, '2019-05-11', '2016-10-21');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (73, 426, '2010-09-16', '2019-10-18');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (48, 196, '2014-06-19', '2014-01-08');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (48, 542, '2013-11-17', '2010-01-21');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (100, 669, '2010-07-13', '2020-03-01');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (57, 879, '2021-09-26', '2020-09-24');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (58, 767, '2018-11-17', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (17, 617, '2013-01-22', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (84, 243, '2017-07-13', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (52, 18, '2014-06-23', '2017-03-13');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (72, 836, '2020-02-29', '2016-09-26');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (96, 524, '2018-02-06', '2010-12-27');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (38, 180, '2011-03-25', '2017-08-19');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (14, 395, '2014-12-14', '2015-06-04');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (22, 958, '2012-02-15', '2019-11-09');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (66, 430, '2010-02-07', '2015-06-12');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (27, 726, '2011-01-16', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (59, 197, '2019-11-24', '2013-12-18');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (56, 208, '2011-11-18', '2012-08-23');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (62, 449, '2010-12-13', '2013-03-20');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (68, 286, '2019-02-18', '2021-02-24');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (3, 441, '2010-09-08', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (73, 146, '2019-10-10', '2018-10-27');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (8, 815, '2011-10-05', '2019-07-30');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (18, 168, '2010-05-22', '2010-03-06');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (1, 914, '2012-05-12', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (6, 887, '2013-09-07', '2013-03-17');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (3, 456, '2011-01-23', '2015-09-21');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (80, 687, '2011-08-21', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (3, 788, '2015-03-05', '2021-10-02');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (44, 157, '2014-08-12', '2012-12-09');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (86, 413, '2017-02-14', '2010-11-14');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (24, 13, '2011-10-20', '2012-02-03');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (51, 257, '2018-10-18', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (66, 75, '2016-09-01', '2021-01-17');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (63, 134, '2013-07-04', '2018-08-13');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (74, 890, '2016-08-01', '2019-08-06');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (22, 15, '2013-02-15', '2021-04-29');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (87, 835, '2011-08-22', '2015-08-26');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (42, 602, '2014-06-21', '2016-05-25');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (15, 392, '2017-05-26', '2010-11-03');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (73, 696, '2017-05-02', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (9, 762, '2012-07-31', '2011-12-20');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (42, 188, '2019-02-28', '2019-08-02');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (10, 244, '2012-12-23', '2020-07-02');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (62, 768, '2011-07-03', '2016-06-22');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (93, 299, '2011-12-07', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (44, 452, '2021-02-10', '2017-10-28');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (63, 650, '2014-08-21', '2011-12-26');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (98, 620, '2016-11-04', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (38, 86, '2017-06-25', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (76, 503, '2016-06-02', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (83, 806, '2012-12-01', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (90, 507, '2015-12-01', '2017-06-23');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (43, 772, '2021-04-16', '2014-07-13');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (61, 682, '2019-03-18', '2013-09-04');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (25, 747, '2019-04-17', '2021-04-21');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (55, 928, '2012-07-19', '2017-12-02');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (95, 837, '2017-07-06', '2011-03-10');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (45, 860, '2013-07-26', '2019-01-21');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (48, 742, '2012-05-01', '2012-05-01');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (93, 885, '2018-04-26', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (10, 59, '2019-03-27', '2011-11-14');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (22, 912, '2018-03-12', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (13, 966, '2013-07-04', '2020-12-11');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (93, 207, '2019-10-03', '2017-09-17');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (42, 352, '2013-09-11', '2020-04-29');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (71, 22, '2011-10-10', '2010-10-02');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (73, 298, '2013-04-11', '2014-05-24');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (78, 92, '2010-03-14', '2018-01-17');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (66, 243, '2019-03-31', '2014-11-21');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (62, 951, '2021-08-03', '2018-04-19');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (73, 579, '2015-06-25', '2020-12-28');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (16, 455, '2019-03-28', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (65, 583, '2018-02-02', '2011-12-11');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (42, 307, '2010-06-20', '2010-01-20');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (41, 611, '2020-12-26', '2013-10-31');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (67, 205, '2013-11-17', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (7, 270, '2015-08-12', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (17, 183, '2017-07-12', '2020-09-24');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (69, 192, '2018-06-13', '2021-04-10');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (2, 968, '2021-09-01', '2015-03-11');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (7, 928, '2019-07-04', '2013-08-05');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (85, 828, '2010-06-04', '2013-10-20');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (71, 175, '2011-12-24', '2014-11-06');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (87, 521, '2013-09-26', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (53, 738, '2019-05-11', '2015-10-13');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (39, 523, '2013-07-27', '2020-04-30');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (36, 770, '2017-12-23', '2021-09-25');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (39, 887, '2021-09-04', '2019-04-04');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (60, 252, '2013-03-17', '2012-01-17');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (51, 121, '2018-12-01', '2012-05-13');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (50, 797, '2015-03-29', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (62, 634, '2014-11-23', '2017-09-14');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (84, 742, '2019-07-04', '2020-11-27');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (89, 445, '2013-02-19', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (58, 321, '2021-08-15', '2012-04-06');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (74, 415, '2019-12-02', '2018-03-02');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (46, 152, '2021-04-03', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (4, 988, '2021-02-26', '2011-09-29');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (18, 19, '2010-03-01', '2011-04-19');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (19, 566, '2014-09-20', '2018-01-27');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (76, 57, '2011-06-04', '2015-02-08');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (34, 648, '2010-10-28', '2010-09-23');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (6, 213, '2017-09-04', '2014-04-06');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (25, 581, '2018-11-29', '2021-04-25');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (84, 698, '2015-09-12', '2010-04-13');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (93, 483, '2017-08-19', '2021-08-24');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (58, 800, '2013-05-06', '2018-01-04');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (36, 193, '2019-07-17', '2018-11-04');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (26, 809, '2010-08-21', '2017-05-08');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (4, 315, '2010-06-05', '2014-08-31');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (13, 720, '2012-12-17', '2019-02-06');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (45, 703, '2010-02-10', '2020-12-24');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (49, 356, '2011-08-02', '2015-06-20');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (91, 951, '2012-12-24', '2013-06-16');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (76, 289, '2014-06-27', '2013-12-26');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (24, 111, '2021-05-16', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (63, 981, '2018-02-01', '2015-01-13');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (4, 96, '2020-08-15', '2013-10-12');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (77, 169, '2014-11-04', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (27, 728, '2018-05-22', '2010-03-22');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (49, 635, '2010-05-15', '2015-10-25');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (51, 888, '2021-10-21', '2021-05-04');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (22, 226, '2015-09-16', '2017-12-03');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (11, 80, '2013-07-25', '2014-09-19');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (91, 262, '2012-11-25', '2015-09-26');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (43, 820, '2011-05-24', '2019-04-13');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (2, 256, '2011-05-31', '2015-08-13');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (14, 781, '2021-02-12', '2011-12-06');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (17, 522, '2018-02-14', '2021-08-23');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (37, 631, '2017-05-04', '2018-08-13');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (48, 767, '2019-03-30', '2011-07-10');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (41, 960, '2015-10-03', '2021-05-23');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (11, 355, '2020-02-07', '2010-11-07');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (55, 769, '2012-01-07', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (51, 562, '2018-06-05', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (79, 714, '2018-07-15', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (29, 146, '2020-02-26', '2018-05-27');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (51, 604, '2017-10-16', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (79, 247, '2013-09-14', '2017-12-31');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (50, 341, '2018-10-08', '2019-01-08');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (39, 66, '2013-05-24', '2011-02-01');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (9, 334, '2010-09-30', '2012-10-15');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (91, 682, '2012-02-24', '2018-02-21');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (97, 168, '2017-05-17', '2016-07-16');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (61, 851, '2017-09-03', '2018-02-16');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (47, 12, '2019-01-31', '2019-03-21');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (2, 920, '2012-09-20', '2014-03-02');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (68, 126, '2018-02-26', '2011-03-21');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (10, 226, '2010-08-03', '2012-02-14');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (25, 731, '2017-10-13', '2013-09-01');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (7, 643, '2016-07-17', '2014-11-06');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (74, 348, '2017-02-19', '2013-06-30');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (61, 40, '2012-02-23', '2018-12-05');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (85, 467, '2011-01-22', '2015-06-30');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (13, 184, '2011-01-04', '2017-11-06');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (27, 789, '2012-08-05', '2020-03-10');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (74, 356, '2019-04-30', '2011-11-03');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (34, 222, '2012-01-13', '2019-08-06');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (72, 286, '2021-09-22', '2014-05-16');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (31, 823, '2015-02-24', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (70, 139, '2017-09-30', '2021-07-18');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (77, 550, '2015-03-07', '2021-05-15');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (72, 699, '2017-08-12', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (2, 194, '2014-04-27', '2015-06-02');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (34, 200, '2021-08-09', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (54, 364, '2021-10-23', '2019-08-27');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (72, 565, '2011-08-10', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (30, 750, '2017-07-26', '2020-11-04');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (69, 291, '2012-03-08', '2015-05-11');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (60, 905, '2018-02-05', '2013-09-19');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (26, 923, '2018-01-31', '2020-01-22');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (4, 654, '2019-03-30', '2010-05-07');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (97, 834, '2013-06-25', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (76, 987, '2011-07-16', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (27, 18, '2014-03-30', '2018-12-31');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (66, 900, '2020-09-30', '2013-06-05');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (34, 422, '2019-02-18', '2012-11-30');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (92, 766, '2010-12-26', '2019-04-18');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (67, 967, '2010-05-21', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (90, 786, '2018-07-06', '2015-03-13');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (80, 972, '2019-05-26', '2017-08-13');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (15, 29, '2010-09-28', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (22, 921, '2020-10-27', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (70, 584, '2011-03-13', '2012-07-27');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (44, 736, '2019-11-22', '2019-12-16');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (49, 173, '2013-09-15', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (56, 252, '2021-02-25', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (85, 28, '2012-04-15', '2017-09-24');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (37, 362, '2019-04-13', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (92, 494, '2019-03-01', '2014-01-15');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (54, 413, '2012-08-01', '2013-11-23');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (41, 56, '2018-04-02', '2015-07-04');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (26, 614, '2012-06-03', '2018-08-18');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (88, 7, '2011-06-16', '2019-06-13');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (10, 707, '2019-12-21', '2010-01-20');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (52, 255, '2020-08-14', '2019-06-23');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (76, 576, '2017-04-07', '2019-03-29');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (77, 390, '2018-01-03', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (57, 89, '2015-05-27', '2011-09-09');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (84, 221, '2012-08-18', '2018-02-08');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (51, 561, '2013-03-03', '2017-04-10');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (26, 955, '2014-11-30', '2011-04-13');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (49, 869, '2012-09-09', '2021-03-01');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (75, 601, '2016-03-08', '2020-05-10');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (81, 576, '2012-06-24', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (90, 779, '2018-07-30', '2012-10-05');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (8, 408, '2020-12-29', '2018-06-08');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (47, 566, '2021-10-28', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (40, 579, '2016-07-12', '2021-03-31');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (45, 853, '2018-11-28', '2011-08-12');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (72, 457, '2011-01-13', '2010-08-12');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (87, 846, '2021-06-16', '2020-05-11');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (46, 495, '2017-04-14', '2016-04-30');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (14, 707, '2015-03-14', '2011-12-16');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (86, 402, '2020-01-12', '2020-08-25');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (39, 564, '2017-10-05', '2010-03-24');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (45, 617, '2012-10-23', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (50, 21, '2014-12-22', '2021-05-08');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (16, 723, '2020-03-20', '2021-09-12');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (50, 730, '2014-02-27', '2013-04-12');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (27, 826, '2015-07-23', '2019-03-10');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (53, 676, '2019-01-28', '2015-06-08');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (58, 222, '2013-12-29', '2011-01-28');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (76, 713, '2013-02-18', '2013-03-02');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (81, 570, '2017-08-31', '2020-02-18');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (48, 891, '2017-02-27', '2017-01-27');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (62, 285, '2020-03-13', '2020-04-28');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (18, 317, '2014-01-14', '2010-05-03');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (61, 52, '2019-07-28', '2021-11-08');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (91, 404, '2016-09-01', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (54, 110, '2021-07-05', '2016-11-12');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (88, 695, '2019-12-01', '2019-09-03');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (36, 54, '2019-12-19', '2020-11-23');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (41, 608, '2015-11-05', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (19, 635, '2014-03-13', '2014-04-18');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (7, 297, '2020-04-09', '2016-12-26');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (100, 300, '2018-04-10', '2020-12-11');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (4, 433, '2012-08-20', '2018-12-24');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (45, 416, '2015-03-25', '2017-01-10');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (78, 115, '2019-03-03', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (51, 634, '2017-09-06', '2016-04-18');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (23, 90, '2018-10-25', '2011-08-19');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (61, 561, '2019-08-03', '2013-10-02');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (68, 596, '2010-12-02', '2020-03-28');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (89, 130, '2020-01-03', '2021-04-10');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (40, 962, '2012-08-19', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (4, 188, '2020-06-09', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (74, 638, '2021-06-21', '2018-08-19');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (75, 868, '2014-05-29', '2010-08-30');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (61, 901, '2014-10-25', '2011-08-17');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (29, 843, '2020-11-08', '2021-10-14');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (85, 450, '2018-06-27', '2014-10-11');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (5, 861, '2019-05-22', '2017-01-28');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (74, 899, '2021-07-10', '2016-07-05');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (18, 929, '2010-12-03', '2016-11-30');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (6, 545, '2013-06-01', '2021-02-08');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (40, 586, '2011-12-20', '2013-03-05');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (85, 473, '2013-03-27', '2010-04-24');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (2, 121, '2012-03-23', '2020-03-19');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (42, 35, '2016-07-23', '2019-07-10');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (11, 937, '2016-07-31', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (96, 588, '2013-08-24', '2015-05-16');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (37, 331, '2014-03-16', '2016-02-18');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (48, 225, '2014-12-04', '2014-03-16');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (41, 703, '2020-03-03', '2011-09-24');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (44, 501, '2021-07-25', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (69, 674, '2016-09-25', '2018-08-12');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (74, 245, '2014-08-15', '2012-06-23');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (95, 411, '2018-01-25', '2019-05-07');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (57, 876, '2016-11-20', '2018-04-18');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (51, 632, '2016-04-01', '2011-04-20');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (24, 506, '2016-04-17', '2011-02-16');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (16, 138, '2015-08-10', '2014-09-09');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (78, 671, '2012-01-09', '2017-08-09');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (16, 937, '2016-01-11', '2015-11-23');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (78, 118, '2018-08-05', '2016-08-07');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (79, 638, '2014-01-19', '2015-03-22');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (54, 967, '2013-04-14', '2010-12-15');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (3, 799, '2010-09-01', '2013-06-20');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (28, 447, '2014-10-08', '2015-10-08');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (59, 502, '2010-06-25', '2013-09-08');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (73, 942, '2013-06-24', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (4, 497, '2012-09-22', '2010-06-15');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (7, 95, '2012-08-30', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (52, 802, '2014-01-31', '2020-09-08');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (92, 682, '2013-10-02', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (84, 969, '2021-09-25', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (10, 720, '2012-02-23', '2020-01-26');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (27, 146, '2013-04-10', '2021-07-09');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (34, 378, '2012-05-05', '2019-08-14');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (65, 761, '2011-11-13', '2017-01-11');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (58, 275, '2011-09-05', '2019-07-23');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (53, 974, '2011-11-26', '2014-10-24');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (55, 125, '2018-07-20', '2020-02-21');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (28, 888, '2010-03-16', '2013-01-02');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (37, 174, '2019-02-07', '2016-03-25');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (40, 560, '2019-05-24', '2016-08-13');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (43, 213, '2016-01-28', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (45, 455, '2021-02-14', '2013-11-12');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (41, 808, '2012-07-08', '2013-06-17');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (50, 24, '2011-01-31', '2020-06-21');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (92, 944, '2020-12-26', '2012-09-25');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (33, 879, '2017-03-25', '2021-06-01');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (43, 200, '2010-05-13', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (33, 565, '2012-07-11', '2013-12-29');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (82, 162, '2013-06-20', '2020-01-13');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (41, 735, '2013-04-29', '2010-06-01');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (54, 874, '2018-07-25', '2012-08-19');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (91, 48, '2010-10-26', '2020-12-20');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (40, 487, '2014-03-24', '2020-09-09');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (58, 191, '2014-09-13', '2019-01-09');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (1, 616, '2015-03-09', '2020-11-08');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (91, 31, '2021-03-09', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (7, 831, '2019-09-30', '2014-02-10');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (72, 776, '2012-09-21', '2013-04-03');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (1, 451, '2010-02-11', '2018-09-08');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (68, 872, '2014-06-01', '2014-03-26');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (3, 352, '2013-05-16', '2020-03-09');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (25, 445, '2015-04-20', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (99, 904, '2013-06-13', '2010-02-24');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (48, 696, '2018-06-08', '2016-05-13');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (85, 706, '2016-03-25', '2018-11-13');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (36, 266, '2017-12-17', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (81, 383, '2019-09-25', '2017-09-28');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (79, 636, '2019-01-03', '2016-10-13');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (21, 137, '2017-06-27', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (77, 605, '2016-11-24', '2010-09-19');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (86, 965, '2012-04-07', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (36, 80, '2010-10-06', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (42, 269, '2019-08-25', '2019-03-13');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (72, 903, '2019-04-07', '2020-01-24');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (68, 724, '2016-02-09', '2017-05-07');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (65, 441, '2015-10-15', '2021-02-12');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (2, 84, '2014-12-15', '2014-08-27');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (91, 205, '2014-09-07', '2010-10-27');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (30, 380, '2011-02-10', '2017-08-16');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (89, 90, '2013-07-01', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (50, 598, '2014-02-21', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (98, 697, '2020-08-23', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (95, 234, '2017-11-07', '2014-08-14');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (38, 829, '2012-01-25', '2016-02-09');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (49, 111, '2018-10-10', null);
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (66, 417, '2019-02-05', '2010-10-02');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (78, 571, '2019-02-09', '2010-01-31');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (96, 9, '2015-07-23', '2015-12-15');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (28, 168, '2016-02-25', '2010-06-27');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (50, 640, '2018-08-20', '2010-09-05');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (13, 686, '2012-01-07', '2017-03-06');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (71, 615, '2010-11-21', '2018-07-20');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (96, 291, '2017-01-04', '2016-03-24');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (32, 697, '2020-08-16', '2014-01-26');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (32, 104, '2013-05-31', '2014-11-22');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (32, 163, '2021-03-19', '2010-10-16');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (32, 588, '2013-04-04', '2015-07-21');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (32, 328, '2012-01-14', '2015-11-02');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (32, 473, '2020-03-31', '2012-03-19');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (32, 525, '2020-02-17', '2011-11-06');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (32, 917, '2021-07-19', '2013-12-14');
insert into COMMENT(id_game, id_system_user, first_date, last_date)
values (32, 355, '2021-09-24', null);
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (1, 45, 633, '2012-07-24', 'tempus
vivamus in felis');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (2, 99, 456, '2011-08-17', 'nunc proin
at turpis a');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (3, 68, 260, '2021-10-14', 'libero
nullam sit amet turpis elementum');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (4, 49, 943, '2014-10-11', 'enim sit
amet nunc viverra dapibus nulla suscipit');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (5, 50, 49, '2010-08-30', 'suspendisse
accumsan tortor');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (6, 68, 969, '2011-08-17', 'eget
orci');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (7, 67, 533, '2021-10-14', 'cras in
purus eu magna vulputate luctus cum');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (8, 98, 254, '2014-10-11', 'at turpis
a pede posuere nonummy integer non');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (9, 96, 468, '2010-08-30', 'cursus id
turpis');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (10, 47, 321, '2011-08-17', 'mauris
sit amet eros suspendisse accumsan');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (11, 77, 359, '2021-10-14', 'elementum
pellentesque quisque porta volutpat');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (12, 92, 594, '2014-10-11', 'tempus
semper est quam pharetra magna ac');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (13, 38, 798, '2010-08-30', 'natoque
penatibus et magnis dis parturient montes');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (14, 79, 119, '2011-08-17', 'ligula
sit amet');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (15, 91, 422, '2021-10-14',
'vestibulum aliquet ultrices');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (16, 73, 479, '2014-10-11', 'maecenas
tristique');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (17, 13, 533, '2010-08-30', 'nulla ac
enim in tempor turpis');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (18, 64, 182, '2011-08-17', 'erat
fermentum justo nec condimentum neque sapien placerat');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (19, 12, 775, '2021-10-14', 'ante
nulla justo aliquam quis turpis eget');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (20, 87, 881, '2014-10-11', 'nibh in
lectus pellentesque at');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (21, 19, 61, '2010-08-30', 'posuere
cubilia curae mauris viverra diam vitae quam');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (22, 6, 175, '2011-08-17', 'curae
mauris viverra diam vitae');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (23, 79, 659, '2021-10-14', 'rhoncus
mauris enim leo rhoncus');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (24, 53, 418, '2014-10-11', 'augue
luctus');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (25, 96, 403, '2010-08-30', 'rhoncus
sed vestibulum');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (26, 61, 902, '2011-08-17', 'in
ante');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (27, 26, 940, '2021-10-14', 'hendrerit
at vulputate vitae nisl aenean lectus pellentesque');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (28, 23, 490, '2014-10-11', 'ut
volutpat sapien arcu sed');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (29, 48, 432, '2010-08-30', 'vivamus
vestibulum sagittis sapien cum');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (30, 94, 82, '2011-08-17', 'posuere
felis');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (31, 23, 183, '2021-10-14', 'ultrices
enim lorem ipsum dolor sit amet consectetuer');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (32, 73, 646, '2014-10-11', 'integer
ac neque duis bibendum morbi non');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (33, 90, 139, '2010-08-30', 'nisl duis
bibendum');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (34, 72, 758, '2011-08-17', 'consequat
morbi a ipsum integer');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (35, 63, 455, '2021-10-14', 'vel
enim');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (36, 17, 371, '2014-10-11', 'ipsum
primis');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (37, 3, 939, '2010-08-30', 'euismod
scelerisque quam turpis adipiscing');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (38, 66, 595, '2011-08-17', 'tortor
risus dapibus augue vel accumsan tellus nisi');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (39, 57, 46, '2021-10-14', 'ipsum
praesent blandit');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (40, 31, 821, '2014-10-11', 'nulla
tellus in sagittis dui vel');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (41, 31, 368, '2010-08-30', 'dui vel
nisl duis ac nibh');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (42, 32, 697, '2011-08-17', 'quam
suspendisse potenti nullam porttitor lacus at');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (43, 42, 585, '2021-10-14', 'pede
morbi');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (44, 2, 845, '2014-10-11', 'ut erat id
mauris vulputate elementum');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (45, 73, 291, '2010-08-30', 'luctus
ultricies eu nibh quisque id justo sit');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (46, 67, 223, '2011-08-17', 'luctus et
ultrices posuere cubilia curae mauris viverra');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (47, 15, 41, '2021-10-14', 'semper
interdum mauris ullamcorper purus sit amet nulla');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (48, 49, 296, '2014-10-11', 'ipsum
dolor sit amet');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (49, 29, 157, '2010-08-30', 'ultrices
aliquet maecenas leo odio');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (50, 69, 16, '2011-08-17', 'aliquet
pulvinar sed nisl nunc rhoncus dui vel');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (51, 94, 806, '2021-10-14', 'ligula
nec sem duis aliquam convallis nunc proin');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (52, 66, 204, '2014-10-11',
'vestibulum ante ipsum primis');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (53, 62, 947, '2010-08-30', 'luctus
ultricies eu nibh quisque id justo sit');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (54, 90, 580, '2011-08-17', 'congue
vivamus metus');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (55, 23, 875, '2021-10-14',
'pellentesque quisque porta volutpat erat');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (56, 14, 836, '2014-10-11', 'libero
quis');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (57, 29, 907, '2010-08-30', 'orci
luctus et');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (58, 65, 28, '2011-08-17', 'luctus et
ultrices');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (59, 82, 699, '2021-10-14', 'sem fusce
consequat nulla nisl nunc');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (60, 35, 175, '2014-10-11',
'vestibulum vestibulum ante ipsum primis');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (61, 1, 858, '2010-08-30', 'dictumst
maecenas ut');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (62, 37, 990, '2011-08-17', 'diam
vitae quam');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (63, 83, 482, '2021-10-14', 'turpis a
pede posuere');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (64, 26, 53, '2014-10-11', 'vulputate
luctus cum sociis');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (65, 51, 179, '2010-08-30',
'adipiscing lorem vitae mattis nibh ligula nec');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (66, 93, 922, '2011-08-17', 'tempor
turpis nec');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (67, 54, 938, '2021-10-14', 'nullam
porttitor lacus at turpis donec posuere');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (68, 16, 414, '2014-10-11', 'sapien
placerat ante');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (69, 41, 687, '2010-08-30', 'ipsum
primis in faucibus orci luctus et');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (70, 77, 580, '2011-08-17', 'justo nec
condimentum neque sapien placerat ante nulla');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (71, 27, 353, '2021-10-14', 'tortor
duis mattis egestas metus aenean fermentum');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (72, 70, 762, '2014-10-11', 'nullam
sit amet turpis elementum ligula vehicula');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (73, 74, 950, '2010-08-30', 'et
ultrices posuere cubilia curae nulla');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (74, 38, 252, '2011-08-17', 'primis in
faucibus');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (75, 46, 316, '2021-10-14', 'curae
donec pharetra magna vestibulum aliquet');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (76, 22, 212, '2014-10-11', 'nec dui
luctus rutrum nulla');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (77, 45, 515, '2010-08-30', 'id
pretium iaculis diam erat fermentum justo nec');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (78, 84, 710, '2011-08-17', 'sapien
iaculis');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (79, 92, 850, '2021-10-14', 'eu mi
nulla');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (80, 52, 533, '2014-10-11', 'nibh in
lectus pellentesque at nulla suspendisse potenti');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (81, 76, 481, '2010-08-30', 'ac
tellus');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (82, 25, 838, '2011-08-17', 'duis at
velit eu est congue elementum in');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (83, 14, 950, '2021-10-14', 'nisl
aenean lectus pellentesque eget nunc donec');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (84, 96, 42, '2014-10-11',
'pellentesque viverra pede ac diam cras');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (85, 15, 308, '2010-08-30', 'tempus
vivamus');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (86, 20, 522, '2011-08-17', 'congue
risus semper porta volutpat quam pede lobortis');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (87, 8, 251, '2021-10-14', 'nisl duis
bibendum felis');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (88, 72, 727, '2014-10-11', 'cum
sociis natoque penatibus et magnis dis parturient');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (89, 38, 34, '2010-08-30', 'nam dui
proin leo odio porttitor id consequat');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (90, 52, 324, '2011-08-17', 'congue
elementum in hac habitasse platea dictumst morbi');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (91, 91, 559, '2021-10-14', 'nonummy
integer non');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (92, 74, 518, '2014-10-11', 'at diam
nam tristique tortor eu pede');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (93, 22, 323, '2010-08-30', 'duis
bibendum felis sed interdum venenatis');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (94, 47, 62, '2011-08-17', 'nullam
varius nulla facilisi cras');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (95, 40, 506, '2021-10-14', 'ac leo
pellentesque ultrices mattis odio donec');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (96, 99, 719, '2014-10-11', 'turpis
nec euismod scelerisque quam turpis adipiscing');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (97, 72, 153, '2010-08-30', 'id sapien
in sapien iaculis congue vivamus metus');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (98, 29, 403, '2011-08-17', 'eget orci
vehicula condimentum curabitur in');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (99, 20, 564, '2021-10-14', 'libero
rutrum ac');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (100, 54, 555, '2014-10-11', 'nulla
neque libero convallis eget');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (101, 38, 102, '2010-08-30',
'consequat morbi a ipsum integer a nibh');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (102, 29, 770, '2011-08-17',
'pellentesque eget nunc');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (103, 89, 303, '2021-10-14', 'lacinia
sapien quis');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (104, 1, 304, '2014-10-11', 'quis odio
consequat varius integer ac');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (105, 8, 175, '2010-08-30', 'amet
cursus id turpis');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (106, 12, 208, '2011-08-17', 'amet
nulla quisque arcu libero rutrum');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (107, 48, 677, '2021-10-14',
'adipiscing molestie hendrerit at vulputate vitae');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (108, 24, 297, '2014-10-11', 'rutrum
nulla tellus in sagittis dui');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (109, 54, 857, '2010-08-30', 'at nunc
commodo placerat praesent');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (110, 46, 189, '2011-08-17',
'consequat lectus in est risus auctor sed tristique');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (111, 55, 398, '2021-10-14', 'aliquam
augue quam');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (112, 91, 701, '2014-10-11', 'cras in
purus eu magna vulputate luctus cum');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (113, 59, 322, '2010-08-30', 'nascetur
ridiculus mus etiam vel augue vestibulum');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (114, 96, 199, '2011-08-17', 'pulvinar
lobortis est phasellus sit amet erat');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (115, 18, 778, '2021-10-14',
'pellentesque quisque');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (116, 95, 192, '2014-10-11', 'nisi
vulputate nonummy');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (117, 50, 200, '2010-08-30',
'curabitur convallis duis consequat dui nec nisi volutpat');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (118, 92, 628, '2011-08-17', 'nisl
duis bibendum felis sed interdum venenatis turpis');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (119, 33, 764, '2021-10-14', 'rutrum
ac lobortis');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (120, 67, 219, '2014-10-11', 'in
tempus sit amet sem fusce consequat');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (121, 88, 701, '2010-08-30', 'pede
posuere nonummy integer');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (122, 55, 910, '2011-08-17', 'magna ac
consequat');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (123, 78, 380, '2021-10-14', 'lobortis
est');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (124, 48, 481, '2014-10-11', 'id justo
sit amet sapien dignissim');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (125, 70, 264, '2010-08-30', 'mauris
non');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (126, 87, 585, '2011-08-17', 'ligula
nec sem duis aliquam');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (127, 56, 645, '2021-10-14', 'integer
ac leo pellentesque ultrices mattis odio');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (128, 97, 538, '2014-10-11', 'lorem
vitae');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (129, 96, 703, '2010-08-30', 'in
blandit ultrices enim');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (130, 50, 380, '2011-08-17',
'sollicitudin mi');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (131, 9, 142, '2021-10-14', 'sit amet
eros suspendisse accumsan');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (132, 46, 252, '2014-10-11', 'morbi
vel lectus in quam fringilla');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (133, 70, 45, '2010-08-30', 'sed nisl
nunc rhoncus dui vel sem');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (134, 84, 502, '2011-08-17', 'morbi ut
odio');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (135, 56, 162, '2021-10-14', 'tortor
duis mattis egestas metus');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (136, 23, 637, '2014-10-11', 'et
ultrices posuere cubilia curae mauris viverra');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (137, 3, 326, '2010-08-30', 'mollis
molestie lorem quisque ut');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (138, 43, 287, '2011-08-17',
'vestibulum ac est lacinia nisi venenatis');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (139, 7, 629, '2021-10-14', 'neque
aenean');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (140, 6, 620, '2014-10-11', 'augue
quam sollicitudin vitae consectetuer eget rutrum at');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (141, 39, 907, '2010-08-30', 'a libero
nam dui proin');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (142, 97, 101, '2011-08-17', 'vivamus
tortor');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (143, 95, 199, '2021-10-14', 'metus
vitae ipsum aliquam');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (144, 31, 195, '2014-10-11',
'parturient montes');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (145, 88, 292, '2010-08-30',
'porttitor id consequat in consequat ut nulla sed');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (146, 32, 328, '2011-08-17', 'fusce
congue diam id ornare imperdiet');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (147, 20, 649, '2021-10-14', 'mauris
laoreet ut rhoncus aliquet');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (148, 27, 337, '2014-10-11', 'arcu
libero rutrum ac lobortis vel dapibus at');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (149, 17, 123, '2010-08-30', 'ligula
nec sem duis aliquam');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (150, 35, 173, '2011-08-17',
'consectetuer adipiscing elit proin interdum mauris');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (151, 54, 74, '2021-10-14', 'in felis
eu sapien cursus vestibulum proin');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (152, 40, 172, '2014-10-11', 'eu felis
fusce posuere felis sed lacus morbi');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (153, 13, 581, '2010-08-30', 'faucibus
orci luctus et ultrices posuere cubilia curae');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (154, 14, 245, '2011-08-17', 'tellus
nisi eu orci mauris');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (155, 19, 905, '2021-10-14',
'sollicitudin vitae consectetuer eget');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (156, 8, 118, '2014-10-11', 'nulla
tellus');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (157, 35, 317, '2010-08-30', 'quam
suspendisse potenti nullam');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (158, 3, 795, '2011-08-17',
'pellentesque viverra pede ac diam cras');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (159, 14, 602, '2021-10-14', 'vel est
donec odio justo sollicitudin');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (160, 17, 893, '2014-10-11', 'mattis
egestas metus aenean fermentum donec');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (161, 58, 575, '2010-08-30', 'orci
pede venenatis non sodales sed tincidunt eu');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (162, 66, 723, '2011-08-17', 'lacinia
eget tincidunt eget tempus vel pede morbi');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (163, 12, 58, '2021-10-14', 'phasellus
in felis donec semper sapien a libero');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (164, 97, 34, '2014-10-11', 'nibh
quisque id justo sit amet');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (165, 62, 388, '2010-08-30', 'tempor
turpis');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (166, 8, 243, '2011-08-17', 'curabitur
convallis duis consequat dui nec nisi');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (167, 97, 162, '2021-10-14', 'pulvinar
sed nisl nunc');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (168, 89, 516, '2014-10-11', 'est quam
pharetra magna ac consequat metus');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (169, 69, 627, '2010-08-30', 'mi sit
amet lobortis sapien sapien');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (170, 97, 816, '2011-08-17', 'at nibh
in');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (171, 15, 635, '2021-10-14',
'vulputate vitae');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (172, 95, 648, '2014-10-11', 'rutrum
nulla tellus');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (173, 55, 356, '2010-08-30', 'ac est
lacinia');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (174, 91, 403, '2011-08-17', 'quis
justo maecenas');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (175, 87, 587, '2021-10-14',
'vestibulum ante');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (176, 46, 998, '2014-10-11', 'vitae
consectetuer eget rutrum at lorem integer');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (177, 65, 439, '2010-08-30', 'interdum
mauris non ligula pellentesque ultrices phasellus id');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (178, 30, 710, '2011-08-17',
'vestibulum vestibulum ante ipsum primis in');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (179, 34, 670, '2021-10-14', 'in hac
habitasse platea dictumst maecenas ut');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (180, 78, 916, '2014-10-11', 'pretium
quis lectus suspendisse potenti');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (181, 29, 393, '2010-08-30',
'consequat varius integer ac leo pellentesque');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (182, 6, 415, '2011-08-17', 'posuere
cubilia curae nulla dapibus dolor');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (183, 6, 494, '2021-10-14', 'nibh
in');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (184, 56, 139, '2014-10-11', 'sapien
ut nunc vestibulum ante ipsum primis');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (185, 54, 200, '2010-08-30', 'quis
turpis eget elit sodales scelerisque');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (186, 83, 952, '2011-08-17', 'lobortis
vel');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (187, 79, 967, '2021-10-14', 'nibh in
hac');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (188, 32, 525, '2014-10-11', 'duis
consequat dui nec nisi volutpat eleifend donec');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (189, 38, 199, '2010-08-30', 'eu
sapien cursus vestibulum');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (190, 34, 965, '2011-08-17', 'dis
parturient');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (191, 3, 580, '2021-10-14', 'ut
ultrices vel augue vestibulum ante ipsum');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (192, 83, 484, '2014-10-11', 'diam in
magna bibendum');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (193, 35, 632, '2010-08-30', 'id
turpis integer aliquet massa');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (194, 73, 241, '2011-08-17', 'nunc
commodo placerat praesent blandit');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (195, 69, 820, '2021-10-14', 'mauris
viverra');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (196, 99, 656, '2014-10-11', 'sapien
cursus vestibulum proin eu mi nulla ac');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (197, 42, 686, '2010-08-30', 'quisque
id justo sit amet sapien dignissim');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (198, 56, 924, '2011-08-17', 'volutpat
convallis morbi odio odio');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (199, 56, 327, '2021-10-14', 'accumsan
tellus nisi');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (200, 18, 643, '2014-10-11', 'quam
pharetra magna');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (201, 2, 81, '2010-08-30', 'ante
vestibulum ante ipsum primis');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (202, 53, 131, '2011-08-17',
'vulputate justo in blandit');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (203, 71, 53, '2021-10-14', 'quisque
ut erat curabitur gravida nisi at nibh');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (204, 4, 487, '2014-10-11', 'curabitur
in');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (205, 60, 297, '2010-08-30', 'quam
turpis adipiscing lorem vitae');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (206, 86, 263, '2011-08-17', 'semper
interdum');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (207, 69, 241, '2021-10-14', 'semper
porta');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (208, 30, 746, '2014-10-11', 'interdum
in ante vestibulum');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (209, 100, 402, '2010-08-30', 'massa
quis augue luctus tincidunt nulla mollis molestie');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (210, 86, 62, '2011-08-17', 'faucibus
orci luctus');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (211, 47, 919, '2021-10-14', 'dictumst
maecenas ut');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (212, 64, 99, '2014-10-11', 'purus eu
magna vulputate luctus');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (213, 69, 635, '2010-08-30',
'convallis nunc proin');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (214, 45, 666, '2011-08-17',
'ultricies eu nibh');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (215, 55, 604, '2021-10-14', 'aenean
auctor gravida sem praesent id');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (216, 66, 94, '2014-10-11', 'a libero
nam dui proin leo odio porttitor');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (217, 87, 628, '2010-08-30', 'sagittis
dui vel nisl duis ac nibh fusce');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (218, 25, 228, '2011-08-17', 'lorem
quisque ut erat curabitur gravida nisi');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (219, 89, 181, '2021-10-14', 'eget
elit');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (220, 50, 335, '2014-10-11',
'tristique in tempus sit amet sem fusce');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (221, 56, 406, '2010-08-30', 'odio
porttitor id consequat in consequat ut');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (222, 7, 802, '2011-08-17', 'vel
sem');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (223, 52, 417, '2021-10-14', 'donec
diam');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (224, 16, 373, '2014-10-11', 'rutrum
nulla tellus');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (225, 45, 447, '2010-08-30', 'congue
diam id ornare imperdiet sapien');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (226, 39, 860, '2011-08-17',
'pellentesque ultrices mattis odio donec vitae nisi nam');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (227, 4, 587, '2021-10-14', 'venenatis
non sodales');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (228, 81, 796, '2014-10-11', 'ultrices
aliquet maecenas');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (229, 46, 191, '2010-08-30', 'nec dui
luctus rutrum nulla tellus in');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (230, 40, 128, '2011-08-17', 'erat
volutpat in congue');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (231, 41, 591, '2021-10-14', 'viverra
diam vitae quam suspendisse potenti');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (232, 46, 233, '2014-10-11', 'suscipit
nulla elit');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (233, 53, 715, '2010-08-30', 'ipsum
aliquam');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (234, 43, 252, '2011-08-17', 'sed
justo pellentesque viverra pede ac diam cras');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (235, 67, 477, '2021-10-14', 'et
ultrices posuere cubilia curae nulla dapibus dolor');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (236, 39, 914, '2014-10-11', 'eget
orci vehicula condimentum');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (237, 18, 296, '2010-08-30', 'vel
lectus in quam fringilla rhoncus mauris');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (238, 22, 287, '2011-08-17', 'amet
erat nulla tempus');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (239, 53, 862, '2021-10-14', 'nisl
duis ac nibh fusce lacus purus');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (240, 35, 425, '2014-10-11', 'volutpat
convallis morbi');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (241, 36, 281, '2010-08-30', 'magna ac
consequat');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (242, 73, 913, '2011-08-17',
'tristique est et');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (243, 25, 133, '2021-10-14', 'tellus
nulla ut');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (244, 24, 410, '2014-10-11', 'nulla
eget eros elementum');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (245, 6, 499, '2010-08-30', 'suscipit
nulla elit ac nulla sed');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (246, 24, 762, '2011-08-17',
'adipiscing elit proin');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (247, 20, 560, '2021-10-14', 'proin
interdum mauris non ligula pellentesque');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (248, 66, 692, '2014-10-11', 'eget
nunc donec quis orci eget');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (249, 7, 781, '2010-08-30', 'integer
non velit donec');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (250, 99, 336, '2011-08-17', 'justo in
blandit ultrices enim lorem ipsum');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (251, 91, 387, '2021-10-14', 'varius
nulla facilisi cras non velit nec');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (252, 98, 308, '2014-10-11',
'dignissim vestibulum');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (253, 33, 757, '2010-08-30', 'magna ac
consequat');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (254, 77, 601, '2011-08-17',
'venenatis turpis');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (255, 73, 964, '2021-10-14', 'erat
fermentum justo');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (256, 12, 768, '2014-10-11', 'duis
ac');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (257, 26, 449, '2010-08-30', 'quam nec
dui luctus rutrum');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (258, 60, 632, '2011-08-17', 'sit amet
nulla quisque arcu libero');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (259, 43, 552, '2021-10-14', 'vivamus
in');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (260, 98, 279, '2014-10-11', 'mauris
laoreet ut rhoncus aliquet pulvinar sed nisl');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (261, 100, 172, '2010-08-30', 'id
consequat in consequat ut nulla sed accumsan');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (262, 75, 323, '2011-08-17', 'bibendum
imperdiet nullam orci');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (263, 12, 98, '2021-10-14', 'in hac
habitasse');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (264, 88, 721, '2014-10-11', 'nullam
sit amet turpis');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (265, 56, 932, '2010-08-30', 'ligula
sit amet eleifend pede libero quis orci');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (266, 90, 333, '2011-08-17', 'nec dui
luctus rutrum nulla tellus in');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (267, 25, 481, '2021-10-14', 'donec
quis orci eget orci');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (268, 74, 76, '2014-10-11', 'ipsum
primis in faucibus orci luctus et ultrices');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (269, 80, 721, '2010-08-30', 'nunc
nisl duis bibendum felis sed interdum');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (270, 75, 727, '2011-08-17', 'ac est
lacinia nisi');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (271, 8, 828, '2021-10-14', 'amet nunc
viverra dapibus nulla suscipit ligula in');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (272, 58, 445, '2014-10-11', 'eget
eleifend luctus ultricies eu');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (273, 72, 324, '2010-08-30', 'et
magnis dis');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (274, 49, 322, '2011-08-17',
'vestibulum ante');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (275, 24, 92, '2021-10-14', 'dapibus
duis at velit');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (276, 87, 643, '2014-10-11',
'ullamcorper augue a suscipit nulla elit ac nulla');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (277, 58, 349, '2010-08-30', 'luctus
et ultrices posuere cubilia');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (278, 45, 353, '2011-08-17', 'libero
rutrum ac lobortis vel dapibus at');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (279, 1, 771, '2021-10-14', 'nonummy
integer non velit');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (280, 53, 82, '2014-10-11', 'eu est
congue elementum');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (281, 69, 540, '2010-08-30', 'et eros
vestibulum ac est lacinia');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (282, 21, 602, '2011-08-17', 'cum
sociis natoque penatibus et magnis dis parturient');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (283, 40, 169, '2021-10-14', 'et
ultrices');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (284, 22, 225, '2014-10-11', 'mi in
porttitor pede justo');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (285, 36, 454, '2010-08-30', 'turpis
elementum ligula vehicula consequat morbi a ipsum');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (286, 12, 605, '2011-08-17', 'diam
vitae quam suspendisse');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (287, 69, 334, '2021-10-14', 'congue
eget semper rutrum nulla');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (288, 79, 951, '2014-10-11', 'donec
vitae');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (289, 19, 944, '2010-08-30', 'aliquam
augue quam sollicitudin vitae consectetuer eget rutrum');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (290, 72, 910, '2011-08-17',
'ultricies eu nibh quisque id justo');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (291, 4, 569, '2021-10-14',
'scelerisque mauris sit');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (292, 45, 914, '2014-10-11', 'curae
mauris viverra diam vitae quam suspendisse potenti');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (293, 73, 172, '2010-08-30', 'eget
nunc donec quis orci eget orci vehicula');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (294, 94, 212, '2011-08-17', 'eget
elit');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (295, 7, 930, '2021-10-14', 'dolor
morbi vel');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (296, 67, 678, '2014-10-11', 'nisl
venenatis lacinia aenean sit amet');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (297, 68, 739, '2010-08-30', 'odio
cras mi pede malesuada in');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (298, 62, 601, '2011-08-17', 'sit amet
eros suspendisse');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (299, 29, 631, '2021-10-14', 'mauris
enim leo rhoncus sed vestibulum');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (300, 46, 35, '2014-10-11', 'integer
ac leo pellentesque ultrices mattis odio donec');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (301, 70, 598, '2010-08-30', 'in magna
bibendum');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (302, 45, 721, '2011-08-17', 'quis
orci eget orci');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (303, 67, 318, '2021-10-14',
'phasellus id sapien in sapien iaculis congue');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (304, 65, 151, '2014-10-11', 'cubilia
curae nulla dapibus dolor vel est');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (305, 28, 887, '2010-08-30',
'habitasse platea dictumst');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (306, 9, 972, '2011-08-17', 'ut at
dolor');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (307, 30, 438, '2021-10-14', 'blandit
ultrices enim lorem ipsum dolor sit amet');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (308, 65, 381, '2014-10-11',
'suspendisse ornare consequat lectus in');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (309, 25, 833, '2010-08-30',
'pellentesque viverra');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (310, 88, 275, '2011-08-17',
'tincidunt eu felis fusce posuere felis sed lacus');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (311, 56, 191, '2021-10-14', 'volutpat
eleifend donec ut dolor morbi vel');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (312, 48, 569, '2014-10-11', 'at diam
nam tristique tortor eu');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (313, 60, 783, '2010-08-30', 'mauris
laoreet');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (314, 3, 71, '2011-08-17', 'sed
tristique in tempus sit');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (315, 35, 480, '2021-10-14', 'morbi
vel');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (316, 88, 586, '2014-10-11', 'mauris
laoreet ut rhoncus aliquet pulvinar sed');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (317, 76, 206, '2010-08-30', 'non
velit donec diam');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (318, 54, 901, '2011-08-17', 'cursus
vestibulum proin eu mi nulla');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (319, 3, 39, '2021-10-14', 'aliquet
maecenas');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (320, 67, 37, '2014-10-11', 'nunc
commodo');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (321, 76, 975, '2010-08-30', 'risus
semper porta volutpat quam pede lobortis ligula');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (322, 2, 890, '2011-08-17', 'molestie
sed');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (323, 99, 599, '2021-10-14', 'iaculis
diam erat');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (324, 53, 915, '2014-10-11', 'ligula
sit');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (325, 49, 153, '2010-08-30', 'interdum
venenatis turpis');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (326, 3, 110, '2011-08-17', 'aliquam
lacus');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (327, 12, 456, '2021-10-14', 'justo
sollicitudin ut suscipit a feugiat et eros');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (328, 70, 341, '2014-10-11', 'montes
nascetur ridiculus');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (329, 72, 164, '2010-08-30', 'nunc
donec quis orci');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (330, 39, 13, '2011-08-17', 'a feugiat
et eros vestibulum ac est lacinia');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (331, 6, 783, '2021-10-14', 'non
sodales sed tincidunt eu felis fusce');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (332, 15, 579, '2014-10-11',
'vestibulum sed magna at nunc commodo placerat praesent');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (333, 62, 833, '2010-08-30', 'pede
ullamcorper augue a suscipit nulla elit ac');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (334, 70, 975, '2011-08-17',
'vulputate ut ultrices vel');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (335, 79, 595, '2021-10-14', 'massa
volutpat convallis morbi odio odio elementum eu');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (336, 6, 599, '2014-10-11', 'porttitor
pede justo eu massa donec dapibus');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (337, 95, 217, '2010-08-30', 'in
faucibus orci luctus et ultrices posuere');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (338, 35, 299, '2011-08-17', 'in felis
donec semper');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (339, 71, 695, '2021-10-14', 'mollis
molestie lorem quisque ut erat');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (340, 93, 64, '2014-10-11', 'natoque
penatibus et magnis dis parturient montes nascetur');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (341, 67, 243, '2010-08-30', 'enim in
tempor turpis nec');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (342, 42, 571, '2011-08-17', 'nisi at
nibh');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (343, 91, 845, '2021-10-14', 'interdum
venenatis turpis enim');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (344, 48, 866, '2014-10-11', 'quam
sapien varius');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (345, 21, 373, '2010-08-30', 'metus
sapien ut nunc');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (346, 67, 295, '2011-08-17', 'nulla
integer pede justo');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (347, 43, 653, '2021-10-14', 'curae
duis faucibus accumsan odio curabitur');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (348, 98, 378, '2014-10-11', 'ipsum
primis in');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (349, 70, 258, '2010-08-30', 'massa
tempor');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (350, 50, 887, '2011-08-17',
'vestibulum ante ipsum primis');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (351, 95, 839, '2021-10-14', 'natoque
penatibus et');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (352, 26, 796, '2014-10-11', 'ornare
imperdiet');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (353, 91, 36, '2010-08-30', 'nibh
fusce lacus');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (354, 18, 325, '2011-08-17', 'mauris
ullamcorper purus sit amet nulla quisque');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (355, 53, 202, '2021-10-14', 'eu est
congue elementum');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (356, 38, 123, '2014-10-11', 'vitae
mattis nibh ligula');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (357, 36, 456, '2010-08-30', 'mus
vivamus vestibulum');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (358, 51, 153, '2011-08-17', 'nulla
dapibus dolor vel est donec');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (359, 47, 109, '2021-10-14', 'et
commodo vulputate');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (360, 43, 935, '2014-10-11', 'eu est
congue elementum in hac habitasse');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (361, 46, 290, '2010-08-30', 'libero
nam dui proin leo odio');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (362, 49, 528, '2011-08-17', 'volutpat
eleifend donec');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (363, 37, 504, '2021-10-14', 'nulla
dapibus dolor vel est donec');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (364, 43, 529, '2014-10-11', 'quis
orci eget orci vehicula');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (365, 68, 171, '2010-08-30', 'quis
tortor id');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (366, 92, 661, '2011-08-17', 'vivamus
in felis eu sapien cursus');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (367, 88, 888, '2021-10-14',
'consequat morbi a ipsum');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (368, 85, 361, '2014-10-11',
'habitasse platea dictumst morbi vestibulum velit id pretium');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (369, 12, 945, '2010-08-30', 'vel
ipsum praesent blandit lacinia erat vestibulum sed');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (370, 20, 443, '2011-08-17', 'amet sem
fusce consequat nulla nisl nunc nisl');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (371, 1, 566, '2021-10-14', 'pharetra
magna vestibulum aliquet');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (372, 5, 367, '2014-10-11', 'sed justo
pellentesque');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (373, 68, 567, '2010-08-30', 'faucibus
orci luctus');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (374, 14, 440, '2011-08-17', 'donec
vitae nisi nam ultrices libero');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (375, 14, 995, '2021-10-14', 'gravida
sem praesent');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (376, 43, 90, '2014-10-11', 'et
magnis');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (377, 43, 777, '2010-08-30', 'aliquam
sit amet diam in magna bibendum imperdiet');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (378, 64, 593, '2011-08-17', 'morbi
porttitor lorem id');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (379, 19, 261, '2021-10-14', 'vel
augue vestibulum ante ipsum');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (380, 95, 525, '2014-10-11', 'nulla
pede ullamcorper augue a suscipit nulla elit');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (381, 3, 274, '2010-08-30', 'vitae
nisi nam ultrices libero non mattis');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (382, 51, 749, '2011-08-17', 'bibendum
felis');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (383, 9, 786, '2021-10-14', 'at dolor
quis odio consequat varius');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (384, 29, 687, '2014-10-11', 'sem duis
aliquam convallis nunc proin at');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (385, 83, 245, '2010-08-30', 'non
pretium quis lectus');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (386, 99, 125, '2011-08-17', 'at lorem
integer tincidunt ante vel');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (387, 76, 190, '2021-10-14', 'dictumst
maecenas');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (388, 97, 502, '2014-10-11', 'libero
ut');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (389, 52, 645, '2010-08-30', 'justo
nec condimentum neque sapien placerat ante nulla');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (390, 88, 997, '2011-08-17', 'at
turpis a pede posuere');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (391, 22, 343, '2021-10-14', 'risus
semper porta');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (392, 59, 677, '2014-10-11', 'blandit
nam nulla integer pede justo');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (393, 98, 352, '2010-08-30', 'nunc
proin at turpis a pede posuere nonummy');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (394, 80, 63, '2011-08-17', 'velit
vivamus vel nulla');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (395, 22, 613, '2021-10-14', 'donec
semper sapien a libero nam');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (396, 59, 37, '2014-10-11', 'lectus
aliquam sit amet');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (397, 93, 137, '2010-08-30', 'sapien
ut nunc vestibulum ante');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (398, 100, 335, '2011-08-17', 'integer
aliquet massa id lobortis convallis tortor');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (399, 20, 765, '2021-10-14', 'ligula
vehicula consequat morbi');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (400, 78, 915, '2014-10-11',
'suspendisse accumsan tortor quis turpis sed ante vivamus');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (401, 10, 323, '2010-08-30', 'eu
nibh');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (402, 56, 57, '2011-08-17', 'felis ut
at dolor quis odio consequat');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (403, 32, 104, '2021-10-14',
'venenatis non sodales sed tincidunt eu felis');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (404, 55, 22, '2014-10-11', 'magna
bibendum imperdiet');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (405, 44, 443, '2010-08-30', 'praesent
lectus');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (406, 29, 714, '2011-08-17', 'ultrices
erat tortor sollicitudin mi sit amet');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (407, 20, 264, '2021-10-14', 'est quam
pharetra magna ac consequat metus');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (408, 14, 688, '2014-10-11', 'massa
tempor convallis nulla neque libero convallis eget');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (409, 73, 683, '2010-08-30', 'integer
non velit donec diam neque vestibulum');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (410, 71, 435, '2011-08-17', 'etiam
faucibus cursus urna ut tellus');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (411, 60, 990, '2021-10-14', 'placerat
praesent blandit nam nulla integer pede');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (412, 63, 924, '2014-10-11', 'mattis
egestas');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (413, 80, 774, '2010-08-30',
'vestibulum velit');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (414, 83, 317, '2011-08-17', 'diam
vitae quam suspendisse');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (415, 41, 528, '2021-10-14', 'ultrices
enim lorem ipsum dolor sit amet');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (416, 38, 447, '2014-10-11', 'congue
diam id ornare imperdiet sapien');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (417, 88, 570, '2010-08-30', 'vehicula
consequat morbi a ipsum integer');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (418, 48, 795, '2011-08-17',
'suspendisse accumsan tortor quis turpis');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (419, 11, 364, '2021-10-14', 'quam nec
dui luctus');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (420, 7, 566, '2014-10-11', 'tristique
in tempus sit amet sem fusce consequat');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (421, 76, 513, '2010-08-30', 'sapien
varius ut blandit non interdum in');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (422, 54, 825, '2011-08-17', 'id justo
sit amet sapien');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (423, 36, 866, '2021-10-14',
'venenatis turpis enim');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (424, 27, 194, '2014-10-11', 'at
turpis a pede posuere nonummy integer');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (425, 82, 893, '2010-08-30', 'aenean
auctor gravida sem');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (426, 50, 924, '2011-08-17', 'nascetur
ridiculus mus etiam vel augue vestibulum rutrum');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (427, 20, 587, '2021-10-14', 'auctor
sed tristique in tempus sit amet');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (428, 30, 841, '2014-10-11', 'dapibus
duis at');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (429, 51, 621, '2010-08-30', 'dolor
morbi vel');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (430, 50, 773, '2011-08-17', 'id
mauris vulputate');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (431, 8, 119, '2021-10-14', 'tristique
est et tempus');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (432, 35, 992, '2014-10-11', 'vivamus
metus arcu adipiscing molestie hendrerit');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (433, 23, 340, '2010-08-30', 'ligula
nec sem duis aliquam convallis nunc');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (434, 30, 795, '2011-08-17', 'eget
eleifend luctus ultricies eu nibh quisque id');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (435, 51, 438, '2021-10-14', 'natoque
penatibus et magnis dis parturient');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (436, 63, 426, '2014-10-11', 'morbi
vel lectus in quam fringilla rhoncus');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (437, 14, 905, '2010-08-30',
'tincidunt nulla mollis molestie lorem');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (438, 5, 56, '2011-08-17', 'felis sed
interdum venenatis turpis enim blandit mi');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (439, 44, 203, '2021-10-14',
'tincidunt ante vel ipsum praesent blandit');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (440, 85, 146, '2014-10-11',
'penatibus et magnis');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (441, 1, 331, '2010-08-30', 'amet diam
in magna bibendum');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (442, 86, 952, '2011-08-17', 'integer
non velit donec diam neque vestibulum eget');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (443, 20, 621, '2021-10-14', 'sapien
arcu sed augue');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (444, 7, 234, '2014-10-11', 'facilisi
cras non');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (445, 73, 655, '2010-08-30', 'eget
semper rutrum');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (446, 15, 324, '2011-08-17', 'cubilia
curae donec pharetra magna vestibulum');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (447, 34, 812, '2021-10-14', 'pede
lobortis ligula');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (448, 48, 916, '2014-10-11', 'lorem
integer tincidunt ante vel');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (449, 1, 31, '2010-08-30', 'leo
maecenas pulvinar lobortis est phasellus');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (450, 10, 863, '2011-08-17', 'purus
phasellus in felis donec semper');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (451, 67, 365, '2021-10-14', 'lorem
ipsum dolor');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (452, 78, 275, '2014-10-11', 'ut
tellus nulla ut erat id mauris vulputate');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (453, 93, 492, '2010-08-30', 'tempus
vel pede morbi');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (454, 13, 292, '2011-08-17', 'massa id
lobortis convallis tortor');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (455, 73, 488, '2021-10-14', 'erat
nulla tempus vivamus in felis eu');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (456, 14, 783, '2014-10-11', 'nisl ut
volutpat sapien arcu');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (457, 90, 682, '2010-08-30', 'blandit
nam');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (458, 7, 806, '2011-08-17', 'orci
nullam molestie nibh in lectus pellentesque');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (459, 45, 25, '2021-10-14', 'montes
nascetur ridiculus mus vivamus');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (460, 34, 528, '2014-10-11', 'curae
donec pharetra magna vestibulum');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (461, 63, 827, '2010-08-30', 'ornare
consequat');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (462, 70, 182, '2011-08-17', 'sapien
iaculis');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (463, 22, 131, '2021-10-14', 'amet
diam in magna bibendum imperdiet nullam orci');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (464, 93, 380, '2014-10-11', 'dis
parturient');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (465, 92, 963, '2010-08-30',
'tincidunt in leo maecenas');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (466, 26, 242, '2011-08-17', 'luctus
et ultrices');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (467, 36, 486, '2021-10-14', 'orci
luctus et ultrices posuere');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (468, 12, 653, '2014-10-11', 'sed
tincidunt eu');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (469, 61, 695, '2010-08-30', 'nibh in
quis justo maecenas rhoncus aliquam lacus');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (470, 15, 686, '2011-08-17', 'viverra
eget congue eget semper');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (471, 39, 179, '2021-10-14', 'augue
vel');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (472, 57, 432, '2014-10-11', 'orci
nullam molestie nibh in');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (473, 84, 129, '2010-08-30', 'erat
quisque');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (474, 57, 885, '2011-08-17', 'auctor
gravida sem praesent id massa');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (475, 1, 294, '2021-10-14', 'eget
rutrum at lorem integer tincidunt ante');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (476, 19, 390, '2014-10-11', 'nulla
eget eros elementum pellentesque quisque porta');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (477, 3, 175, '2010-08-30', 'congue
eget semper rutrum');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (478, 90, 151, '2011-08-17', 'cras
pellentesque volutpat');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (479, 71, 454, '2021-10-14', 'bibendum
morbi non quam nec dui luctus');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (480, 9, 592, '2014-10-11',
'adipiscing elit proin risus praesent lectus');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (481, 16, 754, '2010-08-30', 'accumsan
felis ut at');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (482, 88, 100, '2011-08-17', 'dolor
vel est donec odio justo sollicitudin');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (483, 92, 740, '2021-10-14', 'dui
proin');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (484, 1, 299, '2014-10-11', 'ut erat
curabitur gravida nisi at nibh');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (485, 34, 265, '2010-08-30', 'at lorem
integer tincidunt ante vel ipsum');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (486, 57, 119, '2011-08-17',
'pellentesque ultrices');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (487, 27, 762, '2021-10-14', 'augue
quam sollicitudin vitae');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (488, 88, 249, '2014-10-11', 'faucibus
orci');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (489, 10, 360, '2010-08-30', 'platea
dictumst aliquam augue quam sollicitudin vitae consectetuer');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (490, 47, 770, '2011-08-17', 'natoque
penatibus et magnis dis');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (491, 27, 48, '2021-10-14', 'nisi
at');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (492, 62, 736, '2014-10-11', 'dapibus
augue vel accumsan tellus nisi eu');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (493, 22, 962, '2010-08-30', 'sit amet
justo morbi');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (494, 62, 993, '2011-08-17', 'faucibus
accumsan odio');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (495, 10, 662, '2021-10-14', 'donec
pharetra magna vestibulum aliquet ultrices erat tortor');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (496, 32, 917, '2014-10-11', 'luctus
et');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (497, 74, 296, '2010-08-30',
'ultricies eu nibh quisque id justo');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (498, 22, 181, '2011-08-17', 'viverra
eget congue eget semper rutrum nulla');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (499, 96, 600, '2021-10-14', 'enim
blandit mi in porttitor pede');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (500, 38, 5, '2014-10-11', 'tortor
duis mattis');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (501, 65, 338, '2010-08-30',
'consequat metus');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (502, 34, 882, '2011-08-17', 'placerat
ante nulla justo aliquam');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (503, 73, 55, '2021-10-14', 'enim
sit');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (504, 36, 46, '2014-10-11', 'aenean
fermentum donec ut mauris eget');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (505, 45, 800, '2010-08-30', 'quisque
id justo');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (506, 33, 141, '2011-08-17', 'sed
accumsan felis');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (507, 18, 521, '2021-10-14', 'tortor
duis mattis egestas metus');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (508, 87, 751, '2014-10-11', 'in purus
eu magna');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (509, 93, 474, '2010-08-30', 'justo eu
massa donec dapibus duis at');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (510, 36, 835, '2011-08-17', 'fusce
congue diam id ornare');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (511, 94, 536, '2021-10-14', 'in
eleifend quam a odio');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (512, 22, 198, '2014-10-11',
'ridiculus mus etiam');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (513, 68, 346, '2010-08-30', 'morbi
quis tortor id nulla ultrices aliquet maecenas');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (514, 34, 707, '2011-08-17', 'ac diam
cras pellentesque volutpat dui maecenas');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (515, 90, 633, '2021-10-14', 'donec
dapibus duis');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (516, 47, 597, '2014-10-11', 'sapien
sapien');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (517, 59, 627, '2010-08-30', 'ultrices
vel');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (518, 56, 745, '0001-01-01', 'lectus
in est risus auctor sed tristique in');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (519, 5, 549, '2021-10-14', 'semper
est quam pharetra');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (520, 31, 231, '2014-10-11', 'metus
sapien');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (521, 3, 824, '2010-08-30', 'dolor
quis odio consequat varius integer ac');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (522, 52, 676, '2011-08-17', 'rutrum
nulla');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (523, 14, 334, '2021-10-14', 'donec
pharetra magna vestibulum aliquet ultrices');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (524, 51, 469, '2014-10-11', 'et
ultrices posuere');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (525, 84, 464, '2010-08-30', 'in hac
habitasse');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (526, 53, 144, '2011-08-17', 'aliquet
massa id lobortis convallis tortor risus');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (527, 39, 519, '2021-10-14', 'aenean
auctor');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (528, 2, 68, '2014-10-11', 'neque
sapien placerat');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (529, 38, 665, '2010-08-30', 'ante
vestibulum ante ipsum');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (530, 21, 820, '2011-08-17', 'vel pede
morbi porttitor lorem');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (531, 68, 483, '2021-10-14',
'convallis eget eleifend');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (532, 86, 598, '2014-10-11', 'congue
etiam justo');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (533, 51, 800, '2010-08-30', 'ipsum
primis in faucibus orci');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (534, 69, 225, '2011-08-17', 'varius
integer ac leo pellentesque ultrices mattis odio');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (535, 65, 113, '2021-10-14',
'sollicitudin ut suscipit a feugiat et eros vestibulum');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (536, 29, 469, '2014-10-11', 'vel sem
sed sagittis nam congue risus');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (537, 74, 50, '2010-08-30', 'habitasse
platea dictumst etiam faucibus cursus urna ut');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (538, 98, 325, '2011-08-17', 'in
libero');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (539, 12, 74, '2021-10-14', 'vulputate
ut ultrices');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (540, 18, 548, '2014-10-11', 'in
faucibus orci');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (541, 43, 140, '2010-08-30',
'suspendisse potenti in eleifend quam a odio in');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (542, 78, 503, '2011-08-17', 'aliquet
pulvinar sed nisl');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (543, 93, 286, '2021-10-14', 'magna ac
consequat metus sapien');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (544, 8, 81, '2014-10-11', 'proin eu
mi nulla ac enim in');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (545, 22, 217, '2010-08-30', 'dictumst
aliquam augue quam sollicitudin vitae');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (546, 36, 948, '2011-08-17', 'augue
quam sollicitudin vitae consectetuer');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (547, 46, 472, '2021-10-14', 'nec
molestie sed justo pellentesque viverra pede');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (548, 62, 342, '2014-10-11', 'interdum
in ante vestibulum');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (549, 95, 800, '2010-08-30', 'cras
pellentesque');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (550, 93, 705, '2011-08-17', 'ut nunc
vestibulum ante ipsum primis in faucibus');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (551, 23, 841, '2021-10-14', 'aliquet
ultrices erat tortor sollicitudin mi sit amet');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (552, 25, 896, '2014-10-11', 'nascetur
ridiculus mus etiam vel augue');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (553, 50, 300, '2010-08-30', 'ut
nunc');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (554, 1, 408, '2011-08-17', 'nulla
integer pede justo lacinia eget');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (555, 52, 657, '2021-10-14', 'tortor
duis mattis egestas metus');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (556, 84, 40, '2014-10-11', 'vivamus
vel nulla eget');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (557, 44, 343, '2010-08-30', 'risus
dapibus augue vel');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (558, 16, 969, '2011-08-17', 'vel
pede');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (559, 11, 97, '2021-10-14', 'quam
pharetra magna');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (560, 25, 375, '2014-10-11', 'id
lobortis');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (561, 33, 112, '2010-08-30', 'donec
pharetra magna vestibulum aliquet ultrices erat');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (562, 20, 83, '2011-08-17', 'dictumst
etiam faucibus cursus');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (563, 56, 282, '2021-10-14', 'diam id
ornare imperdiet sapien urna pretium');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (564, 65, 522, '2014-10-11', 'mauris
vulputate elementum nullam varius');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (565, 86, 516, '2010-08-30', 'amet
diam in magna bibendum imperdiet');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (566, 78, 171, '2011-08-17', 'aliquam
non');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (567, 98, 745, '2021-10-14', 'fusce
posuere felis sed lacus morbi sem mauris');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (568, 27, 475, '2014-10-11', 'nisl
aenean lectus pellentesque eget nunc donec quis');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (569, 19, 498, '2010-08-30', 'sit amet
justo morbi ut odio');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (570, 64, 215, '2011-08-17', 'odio
donec vitae nisi nam ultrices libero non');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (571, 19, 268, '2021-10-14', 'vel pede
morbi porttitor lorem id ligula');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (572, 5, 932, '2014-10-11', 'pede
justo lacinia eget tincidunt eget tempus vel');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (573, 26, 958, '2010-08-30', 'et
magnis dis parturient montes nascetur ridiculus');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (574, 30, 991, '2011-08-17', 'semper
porta volutpat quam pede');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (575, 97, 649, '2021-10-14', 'id
lobortis convallis tortor');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (576, 72, 326, '2014-10-11', 'nibh in
quis justo');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (577, 2, 281, '2010-08-30',
'pellentesque volutpat dui maecenas tristique');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (578, 77, 714, '2011-08-17', 'quis
augue luctus');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (579, 91, 430, '2021-10-14', 'tempor
convallis nulla neque libero');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (580, 74, 918, '2014-10-11', 'dui
maecenas tristique est et');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (581, 13, 503, '2010-08-30', 'magna
vestibulum aliquet ultrices');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (582, 42, 165, '2011-08-17',
'fringilla rhoncus mauris enim');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (583, 46, 102, '2021-10-14', 'sem
fusce');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (584, 92, 233, '2014-10-11', 'mus
vivamus vestibulum sagittis');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (585, 62, 972, '2010-08-30', 'nec dui
luctus rutrum');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (586, 47, 906, '2011-08-17', 'morbi
non lectus');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (587, 31, 95, '2021-10-14', 'cubilia
curae donec pharetra magna');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (588, 85, 565, '2014-10-11', 'hac
habitasse platea dictumst');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (589, 76, 270, '2010-08-30', 'ut odio
cras mi pede malesuada in imperdiet');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (590, 48, 962, '2011-08-17', 'ut
volutpat sapien arcu sed');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (591, 83, 637, '2021-10-14', 'ultrices
phasellus id sapien in');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (592, 27, 742, '2014-10-11', 'rutrum
nulla nunc purus');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (593, 2, 430, '2010-08-30', 'augue vel
accumsan tellus nisi eu');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (594, 96, 487, '2011-08-17', 'purus eu
magna vulputate luctus cum sociis');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (595, 42, 799, '2021-10-14', 'odio
condimentum id luctus nec molestie sed');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (596, 65, 713, '2014-10-11',
'convallis duis consequat dui nec nisi volutpat eleifend');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (597, 31, 324, '2010-08-30', 'rutrum
rutrum neque aenean');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (598, 18, 559, '2011-08-17', 'in felis
donec semper sapien a libero');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (599, 94, 205, '2021-10-14', 'erat
nulla tempus');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (600, 92, 247, '2014-10-11', 'in ante
vestibulum ante');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (601, 30, 237, '2010-08-30', 'id
lobortis convallis tortor risus dapibus augue vel');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (602, 9, 944, '2011-08-17', 'lacus at
turpis');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (603, 72, 260, '2021-10-14', 'in
consequat');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (604, 60, 213, '2014-10-11', 'leo
rhoncus sed');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (605, 80, 259, '2010-08-30',
'vulputate elementum nullam varius nulla facilisi');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (606, 23, 951, '2011-08-17', 'nulla
justo aliquam quis turpis eget elit sodales');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (607, 20, 588, '2021-10-14', 'viverra
diam vitae quam suspendisse potenti nullam porttitor');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (608, 61, 411, '2014-10-11', 'mi nulla
ac enim in tempor');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (609, 74, 437, '2010-08-30', 'tellus
in sagittis dui vel nisl duis ac');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (610, 79, 647, '2011-08-17', 'aliquam
convallis nunc');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (611, 47, 381, '2021-10-14', 'gravida
sem praesent id massa');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (612, 17, 289, '2014-10-11', 'est
congue elementum in hac habitasse platea');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (613, 2, 491, '2010-08-30', 'nulla
suspendisse');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (614, 69, 888, '2011-08-17', 'donec
dapibus duis at');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (615, 73, 961, '2021-10-14', 'primis
in faucibus orci luctus et ultrices posuere');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (616, 51, 802, '2014-10-11', 'platea
dictumst etiam faucibus');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (617, 82, 921, '2010-08-30',
'consectetuer eget rutrum at lorem');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (618, 34, 675, '2011-08-17', 'massa
volutpat convallis morbi odio');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (619, 13, 875, '2021-10-14', 'rhoncus
sed vestibulum sit amet cursus id turpis');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (620, 27, 545, '2014-10-11', 'in
quis');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (621, 8, 675, '2010-08-30', 'leo
odio');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (622, 33, 720, '2011-08-17', 'volutpat
erat quisque');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (623, 49, 281, '2021-10-14', 'dolor
sit amet consectetuer');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (624, 4, 244, '2014-10-11', 'nulla
facilisi cras non');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (625, 76, 776, '2010-08-30', 'nunc
vestibulum ante');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (626, 4, 827, '2011-08-17', 'justo
sollicitudin');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (627, 19, 181, '2021-10-14', 'nullam
varius');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (628, 17, 286, '2014-10-11', 'ultrices
erat');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (629, 21, 160, '2010-08-30', 'odio
odio elementum');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (630, 33, 777, '2011-08-17', 'in quam
fringilla');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (631, 10, 253, '2021-10-14',
'vestibulum sagittis sapien cum sociis natoque penatibus');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (632, 33, 408, '2014-10-11', 'eget
massa');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (633, 62, 474, '2010-08-30', 'nunc
viverra dapibus');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (634, 14, 889, '2011-08-17', 'lacus
morbi quis');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (635, 58, 692, '2021-10-14', 'et
ultrices posuere');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (636, 89, 411, '2014-10-11', 'nullam
sit amet turpis elementum ligula vehicula');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (637, 84, 795, '2010-08-30', 'varius
integer ac leo pellentesque ultrices mattis odio');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (638, 90, 296, '2011-08-17', 'at
turpis donec');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (639, 87, 429, '2021-10-14', 'eget
elit sodales scelerisque mauris sit');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (640, 46, 456, '2014-10-11', 'dapibus
nulla suscipit ligula in');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (641, 30, 745, '2010-08-30', 'dis
parturient');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (642, 59, 766, '2011-08-17', 'ut nulla
sed accumsan felis ut at dolor');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (643, 59, 753, '2021-10-14', 'vel
augue vestibulum');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (644, 77, 469, '2014-10-11', 'dolor
sit amet');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (645, 21, 659, '2010-08-30', 'ligula
suspendisse ornare consequat');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (646, 73, 426, '2011-08-17', 'duis
bibendum morbi');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (647, 48, 196, '2021-10-14', 'id
sapien in sapien iaculis');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (648, 48, 542, '2014-10-11', 'non
mauris morbi non lectus aliquam sit amet');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (649, 100, 669, '2010-08-30', 'luctus
ultricies');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (650, 57, 879, '2011-08-17', 'nisl
duis bibendum');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (651, 58, 767, '2021-10-14', 'nisl
venenatis lacinia aenean sit amet');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (652, 17, 617, '2014-10-11', 'lectus
vestibulum quam sapien varius');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (653, 84, 243, '2010-08-30', 'non
mattis pulvinar');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (654, 52, 18, '2011-08-17', 'semper
rutrum nulla nunc purus phasellus in');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (655, 72, 836, '2021-10-14', 'enim
lorem ipsum');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (656, 96, 524, '2014-10-11',
'ullamcorper purus sit amet nulla quisque arcu libero');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (657, 38, 180, '2010-08-30', 'ac
leo');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (658, 14, 395, '2011-08-17',
'condimentum id luctus nec molestie sed justo pellentesque');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (659, 22, 958, '2021-10-14', 'placerat
praesent blandit nam nulla');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (660, 66, 430, '2014-10-11', 'luctus
cum sociis');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (661, 27, 726, '2010-08-30', 'amet
diam');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (662, 59, 197, '2011-08-17', 'justo
nec condimentum');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (663, 56, 208, '2021-10-14', 'dis
parturient montes');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (664, 62, 449, '2014-10-11', 'in felis
eu sapien cursus vestibulum');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (665, 68, 286, '2010-08-30', 'nisi
vulputate nonummy maecenas');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (666, 3, 441, '2011-08-17', 'blandit
lacinia erat vestibulum sed magna at nunc');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (667, 73, 146, '2021-10-14', 'justo
lacinia eget tincidunt eget tempus vel pede');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (668, 8, 815, '2014-10-11', 'in
faucibus orci luctus');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (669, 18, 168, '2010-08-30', 'interdum
mauris ullamcorper purus sit amet');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (670, 1, 914, '2011-08-17', 'sed nisl
nunc');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (671, 6, 887, '2021-10-14', 'platea
dictumst etiam');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (672, 3, 456, '2014-10-11', 'quis
lectus suspendisse potenti in eleifend quam a');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (673, 80, 687, '2010-08-30', 'purus
sit amet nulla quisque arcu libero');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (674, 3, 788, '2011-08-17', 'nunc
commodo placerat praesent blandit nam');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (675, 44, 157, '2021-10-14', 'pretium
nisl ut volutpat sapien arcu sed augue');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (676, 86, 413, '2014-10-11', 'arcu
adipiscing molestie hendrerit at vulputate');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (677, 24, 13, '2010-08-30', 'tempus
vel');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (678, 51, 257, '2011-08-17', 'mi sit
amet lobortis sapien sapien');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (679, 66, 75, '2021-10-14', 'purus eu
magna vulputate luctus cum');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (680, 63, 134, '2014-10-11', 'sodales
scelerisque mauris sit amet eros suspendisse accumsan');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (681, 74, 890, '2010-08-30', 'luctus
ultricies eu nibh quisque');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (682, 22, 15, '2011-08-17', 'vulputate
vitae nisl');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (683, 87, 835, '2021-10-14', 'nec
molestie sed justo pellentesque viverra pede ac');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (684, 42, 602, '2014-10-11',
'vestibulum ante');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (685, 15, 392, '2010-08-30', 'auctor
gravida sem praesent');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (686, 73, 696, '2011-08-17', 'morbi
non lectus');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (687, 9, 762, '2021-10-14', 'cras
pellentesque');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (688, 42, 188, '2014-10-11', 'dapibus
duis at velit eu');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (689, 10, 244, '2010-08-30', 'pretium
nisl ut volutpat sapien arcu sed augue');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (690, 62, 768, '2011-08-17', 'in
faucibus orci luctus et ultrices');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (691, 93, 299, '2021-10-14', 'ac diam
cras pellentesque volutpat dui maecenas');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (692, 44, 452, '2014-10-11', 'aliquam
sit amet diam in magna bibendum');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (693, 63, 650, '2010-08-30',
'consequat metus sapien ut nunc');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (694, 98, 620, '2011-08-17', 'vel
nulla eget eros elementum');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (695, 38, 86, '2021-10-14', 'montes
nascetur');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (696, 76, 503, '2014-10-11', 'tempus
vel pede morbi porttitor lorem id');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (697, 83, 806, '2010-08-30', 'ligula
pellentesque ultrices phasellus id sapien');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (698, 90, 507, '2011-08-17', 'pede
malesuada in');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (699, 43, 772, '2021-10-14', 'ultrices
posuere cubilia curae duis faucibus accumsan odio');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (700, 61, 682, '2014-10-11', 'enim
lorem ipsum');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (701, 25, 747, '2010-08-30', 'hac
habitasse');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (702, 55, 928, '2011-08-17', 'donec ut
dolor morbi vel lectus in');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (703, 95, 837, '2021-10-14', 'id
luctus');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (704, 45, 860, '2014-10-11', 'donec ut
mauris eget');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (705, 48, 742, '2010-08-30', 'id justo
sit amet sapien dignissim vestibulum vestibulum');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (706, 93, 885, '2011-08-17',
'phasellus in felis');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (707, 10, 59, '2021-10-14', 'aliquam
lacus morbi quis tortor id nulla');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (708, 22, 912, '2014-10-11', 'congue
risus semper porta volutpat quam pede lobortis');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (709, 13, 966, '2010-08-30', 'at nunc
commodo placerat praesent blandit');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (710, 93, 207, '2011-08-17', 'in quam
fringilla rhoncus');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (711, 42, 352, '2021-10-14', 'nulla
facilisi cras non velit nec nisi');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (712, 71, 22, '2014-10-11', 'in hac
habitasse platea dictumst maecenas ut');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (713, 73, 298, '2010-08-30', 'nascetur
ridiculus mus vivamus vestibulum sagittis sapien');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (714, 78, 92, '2011-08-17', 'a
ipsum');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (715, 66, 243, '2021-10-14', 'nec dui
luctus rutrum nulla tellus');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (716, 32, 473, '2014-10-11', 'quis
justo maecenas');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (717, 62, 951, '2010-08-30', 'duis
mattis egestas metus aenean');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (718, 73, 579, '2011-08-17', 'massa
donec dapibus');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (719, 16, 455, '2021-10-14', 'sed
augue aliquam erat volutpat in congue etiam');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (720, 65, 583, '2014-10-11', 'in
sagittis dui vel nisl duis');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (721, 42, 307, '2010-08-30', 'ut
ultrices vel');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (722, 41, 611, '2011-08-17', 'proin
interdum mauris non');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (723, 67, 205, '2021-10-14', 'amet
turpis');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (724, 7, 270, '2014-10-11', 'ipsum
dolor sit amet consectetuer adipiscing');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (725, 17, 183, '2010-08-30', 'mattis
nibh ligula nec sem duis aliquam convallis');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (726, 69, 192, '2011-08-17', 'ligula
nec sem duis aliquam convallis nunc proin');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (727, 2, 968, '2021-10-14',
'ullamcorper augue a suscipit nulla elit ac nulla');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (728, 7, 928, '2014-10-11', 'turpis
donec posuere metus vitae ipsum aliquam non');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (729, 85, 828, '2010-08-30', 'in
consequat ut nulla');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (730, 71, 175, '2011-08-17', 'eros
elementum pellentesque quisque porta volutpat erat');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (731, 87, 521, '2021-10-14', 'rutrum
neque aenean');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (732, 53, 738, '2014-10-11', 'pede
malesuada in imperdiet et commodo vulputate');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (733, 39, 523, '2010-08-30', 'in
imperdiet et commodo vulputate justo');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (734, 36, 770, '2011-08-17', 'sagittis
nam');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (735, 39, 887, '2021-10-14', 'nulla
nunc purus phasellus in');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (736, 60, 252, '2014-10-11', 'at
turpis donec posuere metus vitae');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (737, 51, 121, '2010-08-30', 'odio
curabitur');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (738, 50, 797, '2011-08-17', 'nulla
sed vel');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (739, 62, 634, '2021-10-14',
'phasellus sit amet erat nulla tempus vivamus in');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (740, 84, 742, '2014-10-11', 'lobortis
vel dapibus at diam nam tristique tortor');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (741, 89, 445, '2010-08-30', 'eget
massa tempor convallis nulla neque');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (742, 58, 321, '2011-08-17', 'mauris
laoreet ut rhoncus aliquet');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (743, 74, 415, '2021-10-14', 'in felis
eu sapien cursus vestibulum');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (744, 46, 152, '2014-10-11', 'dolor
vel est donec');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (745, 4, 988, '2010-08-30', 'quis
libero nullam sit amet turpis elementum');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (746, 18, 19, '2011-08-17', 'tempus
vel pede');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (747, 19, 566, '2021-10-14', 'dapibus
nulla suscipit ligula');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (748, 76, 57, '2014-10-11', 'lectus
vestibulum quam');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (749, 34, 648, '2010-08-30', 'donec
semper sapien a');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (750, 6, 213, '2011-08-17', 'eget nunc
donec quis orci eget');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (751, 25, 581, '2021-10-14', 'sed
augue aliquam erat');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (752, 84, 698, '2014-10-11', 'sem
praesent id');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (753, 93, 483, '2010-08-30', 'quis
tortor id nulla ultrices');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (754, 58, 800, '2011-08-17',
'elementum ligula vehicula consequat morbi');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (755, 36, 193, '2021-10-14', 'rhoncus
dui vel sem sed sagittis');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (756, 26, 809, '2014-10-11',
'tincidunt nulla mollis molestie lorem quisque ut erat');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (757, 4, 315, '2010-08-30', 'amet sem
fusce consequat nulla nisl nunc nisl');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (758, 13, 720, '2011-08-17', 'nibh
fusce lacus purus aliquet at feugiat non');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (759, 45, 703, '2021-10-14',
'vulputate nonummy maecenas tincidunt lacus at velit vivamus');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (760, 49, 356, '2014-10-11', 'eget
elit sodales');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (761, 91, 951, '2010-08-30', 'duis
bibendum felis sed interdum venenatis');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (762, 76, 289, '2011-08-17', 'tortor
risus dapibus augue vel accumsan tellus');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (763, 24, 111, '2021-10-14', 'at
vulputate vitae nisl aenean');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (764, 63, 981, '2014-10-11', 'vel est
donec odio justo sollicitudin ut');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (765, 4, 96, '2010-08-30', 'porttitor
lacus at turpis donec');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (766, 77, 169, '2011-08-17',
'condimentum id luctus nec molestie sed justo');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (767, 27, 728, '2021-10-14', 'risus
auctor sed tristique in tempus sit amet');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (768, 49, 635, '2014-10-11', 'lobortis
sapien sapien non mi integer ac neque');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (769, 51, 888, '2010-08-30', 'in
ante');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (770, 22, 226, '2011-08-17', 'cursus
id turpis');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (771, 11, 80, '2021-10-14', 'vel augue
vestibulum rutrum rutrum neque aenean');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (772, 91, 262, '2014-10-11', 'maecenas
tincidunt');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (773, 43, 820, '2010-08-30', 'vehicula
consequat morbi a');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (774, 2, 256, '2011-08-17', 'eu massa
donec dapibus duis');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (775, 14, 781, '2021-10-14', 'neque
vestibulum eget vulputate ut ultrices');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (776, 17, 522, '2014-10-11', 'velit
nec nisi vulputate nonummy maecenas tincidunt');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (777, 37, 631, '2010-08-30', 'platea
dictumst etiam');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (778, 48, 767, '2011-08-17', 'vel
dapibus at');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (779, 41, 960, '2021-10-14',
'vestibulum ac');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (780, 11, 355, '2014-10-11', 'sociis
natoque penatibus et magnis dis parturient montes');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (781, 55, 769, '2010-08-30', 'ut
massa');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (782, 51, 562, '2011-08-17',
'penatibus et magnis dis');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (783, 79, 714, '2021-10-14',
'pellentesque quisque porta');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (784, 29, 146, '2014-10-11', 'nisi
eu');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (785, 51, 604, '2010-08-30', 'aliquam
convallis nunc proin at turpis');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (786, 79, 247, '2011-08-17', 'nunc
donec quis');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (787, 50, 341, '2021-10-14',
'porttitor id consequat in consequat ut');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (788, 39, 66, '2014-10-11', 'at nulla
suspendisse potenti cras in purus');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (789, 9, 334, '2010-08-30', 'in quam
fringilla rhoncus mauris enim leo');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (790, 91, 682, '2011-08-17', 'ut odio
cras mi pede malesuada');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (791, 97, 168, '2021-10-14',
'vestibulum vestibulum ante ipsum primis in');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (792, 61, 851, '2014-10-11', 'eros
elementum pellentesque quisque porta volutpat');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (793, 47, 12, '2010-08-30', 'velit
id');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (794, 2, 920, '2011-08-17',
'vestibulum sagittis sapien cum');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (795, 68, 126, '2021-10-14', 'ultrices
posuere cubilia curae nulla dapibus');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (796, 10, 226, '2014-10-11', 'ornare
imperdiet sapien');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (797, 25, 731, '2010-08-30', 'magnis
dis parturient montes nascetur ridiculus mus');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (798, 7, 643, '2011-08-17', 'justo in
blandit ultrices');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (799, 74, 348, '2021-10-14', 'vitae
nisl aenean lectus pellentesque eget nunc donec');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (800, 61, 40, '2014-10-11', 'velit
vivamus vel nulla eget eros');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (801, 85, 467, '2010-08-30', 'diam nam
tristique tortor eu pede');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (802, 13, 184, '2011-08-17', 'praesent
blandit nam');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (803, 27, 789, '2021-10-14', 'morbi
vel lectus in quam fringilla rhoncus');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (804, 74, 356, '2014-10-11', 'lorem
vitae mattis');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (805, 34, 222, '2010-08-30', 'aliquet
maecenas leo');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (806, 72, 286, '2011-08-17', 'semper
est quam pharetra magna');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (807, 31, 823, '2021-10-14', 'ligula
in lacus curabitur at ipsum');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (808, 70, 139, '2014-10-11', 'lacinia
erat vestibulum sed magna');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (809, 77, 550, '2010-08-30', 'odio
justo');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (810, 72, 699, '2011-08-17', 'odio
donec vitae nisi nam');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (811, 2, 194, '2021-10-14', 'iaculis
justo in');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (812, 34, 200, '2014-10-11', 'blandit
mi in porttitor pede');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (813, 54, 364, '2010-08-30', 'luctus
et ultrices posuere cubilia');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (814, 72, 565, '2011-08-17', 'posuere
cubilia curae nulla dapibus dolor');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (815, 30, 750, '2021-10-14', 'nunc
purus phasellus');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (816, 69, 291, '2014-10-11', 'enim
blandit');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (817, 60, 905, '2010-08-30', 'lacinia
nisi venenatis tristique fusce congue diam id');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (818, 26, 923, '2011-08-17', 'aliquam
lacus morbi quis tortor id nulla');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (819, 4, 654, '2021-10-14', 'ultrices
libero non mattis pulvinar nulla');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (820, 97, 834, '2014-10-11', 'nullam
molestie nibh in lectus pellentesque at nulla');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (821, 76, 987, '2010-08-30', 'eu
pede');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (822, 27, 18, '2011-08-17', 'quis
turpis');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (823, 66, 900, '2021-10-14',
'vestibulum velit id pretium iaculis diam erat');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (824, 34, 422, '2014-10-11',
'pellentesque eget nunc donec quis orci eget');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (825, 92, 766, '2010-08-30', 'nulla
justo aliquam');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (826, 67, 967, '2011-08-17', 'sapien
cursus vestibulum proin eu mi');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (827, 90, 786, '2021-10-14', 'nulla
suspendisse potenti cras in');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (828, 32, 355, '2014-10-11', 'id nisl
venenatis lacinia aenean sit amet justo');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (829, 80, 972, '2010-08-30', 'egestas
metus aenean fermentum donec');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (830, 15, 29, '2011-08-17', 'praesent
id');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (831, 22, 921, '2021-10-14', 'ultrices
phasellus id sapien in sapien');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (832, 70, 584, '2014-10-11', 'montes
nascetur ridiculus mus vivamus vestibulum sagittis');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (833, 44, 736, '2010-08-30', 'sed
vestibulum sit amet cursus');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (834, 49, 173, '2011-08-17', 'egestas
metus aenean');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (835, 56, 252, '2021-10-14', 'vitae
consectetuer eget rutrum at lorem integer');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (836, 85, 28, '2014-10-11', 'consequat
lectus in est risus auctor sed');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (837, 37, 362, '2010-08-30', 'interdum
mauris ullamcorper purus sit amet nulla');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (838, 92, 494, '2011-08-17', 'sapien a
libero nam dui proin leo odio');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (839, 54, 413, '2021-10-14', 'orci
nullam');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (840, 41, 56, '2014-10-11',
'vestibulum proin');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (841, 26, 614, '2010-08-30', 'eu magna
vulputate luctus cum sociis natoque');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (842, 88, 7, '2011-08-17', 'justo
etiam pretium iaculis justo in');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (843, 10, 707, '2021-10-14', 'quam
pede lobortis ligula');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (844, 52, 255, '2014-10-11',
'consequat varius integer ac leo');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (845, 76, 576, '2010-08-30', 'id nulla
ultrices aliquet');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (846, 77, 390, '2011-08-17', 'eleifend
pede libero');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (847, 57, 89, '2021-10-14', 'quisque
erat');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (848, 84, 221, '2014-10-11', 'in
magna');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (849, 51, 561, '2010-08-30', 'platea
dictumst');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (850, 26, 955, '2011-08-17', 'turpis
integer');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (851, 49, 869, '2021-10-14', 'in
libero ut massa volutpat convallis');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (852, 75, 601, '2014-10-11', 'posuere
cubilia curae donec pharetra');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (853, 81, 576, '2010-08-30', 'pulvinar
sed nisl nunc');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (854, 90, 779, '2011-08-17', 'luctus
et ultrices posuere cubilia curae');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (855, 8, 408, '2021-10-14', 'turpis
enim blandit mi');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (856, 47, 566, '2014-10-11', 'nulla
justo aliquam quis turpis eget elit sodales');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (857, 40, 579, '2010-08-30', 'eget
eleifend luctus ultricies eu nibh');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (858, 45, 853, '2011-08-17', 'iaculis
congue vivamus metus arcu adipiscing molestie');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (859, 72, 457, '2021-10-14',
'vestibulum quam sapien varius ut blandit non interdum');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (860, 87, 846, '2014-10-11', 'lectus
vestibulum quam sapien varius ut');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (861, 46, 495, '2010-08-30', 'pede
morbi porttitor lorem id ligula suspendisse');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (862, 14, 707, '2011-08-17', 'nibh in
quis justo maecenas rhoncus aliquam');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (863, 86, 402, '2021-10-14',
'elementum ligula vehicula consequat');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (864, 39, 564, '2014-10-11', 'justo
morbi ut odio cras mi pede malesuada');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (865, 45, 617, '2010-08-30', 'quis
turpis');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (866, 50, 21, '2011-08-17', 'sed
vestibulum sit amet cursus id');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (867, 16, 723, '2021-10-14', 'est et
tempus semper');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (868, 50, 730, '2014-10-11', 'nisl
venenatis lacinia aenean sit amet justo morbi');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (869, 27, 826, '2010-08-30', 'ante
vivamus tortor duis mattis egestas metus aenean');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (870, 53, 676, '2011-08-17',
'suspendisse potenti cras in');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (871, 58, 222, '2021-10-14',
'consequat ut nulla sed');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (872, 76, 713, '2014-10-11', 'mattis
nibh ligula nec');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (873, 81, 570, '2010-08-30', 'massa
donec dapibus duis at velit eu est');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (874, 48, 891, '2011-08-17', 'justo
maecenas rhoncus aliquam lacus');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (875, 62, 285, '2021-10-14', 'neque
sapien placerat ante nulla justo aliquam quis');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (876, 18, 317, '2014-10-11',
'vestibulum sagittis sapien cum sociis');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (877, 61, 52, '2010-08-30', 'vitae
consectetuer eget rutrum at lorem integer tincidunt');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (878, 91, 404, '2011-08-17', 'proin
leo odio');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (879, 54, 110, '2021-10-14', 'nec
molestie');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (880, 88, 695, '2014-10-11', 'posuere
felis sed lacus morbi sem mauris');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (881, 36, 54, '2010-08-30', 'lacinia
nisi venenatis tristique fusce congue diam');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (882, 41, 608, '2011-08-17',
'habitasse platea dictumst morbi vestibulum velit id');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (883, 19, 635, '2021-10-14', 'diam
vitae quam suspendisse potenti nullam porttitor lacus');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (884, 7, 297, '2014-10-11', 'nec
euismod scelerisque quam turpis adipiscing lorem vitae');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (885, 100, 300, '2010-08-30', 'enim
sit amet nunc');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (886, 4, 433, '2011-08-17', 'molestie
lorem quisque ut erat curabitur gravida');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (887, 45, 416, '2021-10-14',
'vestibulum proin eu mi nulla ac');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (888, 78, 115, '2014-10-11',
'pellentesque at nulla suspendisse potenti cras in');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (889, 51, 634, '2010-08-30', 'erat
fermentum justo');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (890, 23, 90, '2011-08-17', 'sit amet
nulla quisque arcu libero');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (891, 61, 561, '2021-10-14', 'sapien
cursus vestibulum proin eu mi nulla ac');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (892, 68, 596, '2014-10-11', 'dolor
quis odio consequat varius integer ac');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (893, 89, 130, '2010-08-30', 'risus
praesent');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (894, 40, 962, '2011-08-17', 'donec
quis orci eget');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (895, 4, 188, '2021-10-14', 'blandit
non interdum in');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (896, 74, 638, '2014-10-11', 'eget
eleifend');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (897, 75, 868, '2010-08-30', 'libero
non mattis pulvinar nulla');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (898, 61, 901, '2011-08-17', 'proin
interdum mauris non ligula');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (899, 29, 843, '2021-10-14', 'non
sodales sed tincidunt');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (900, 85, 450, '2014-10-11', 'blandit
lacinia');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (901, 5, 861, '2017-01-28', 'integer
ac leo pellentesque ultrices mattis odio donec');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (902, 74, 899, '2016-07-05', 'donec
quis');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (903, 18, 929, '2016-11-30', 'feugiat
non pretium quis lectus suspendisse');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (904, 6, 545, '2021-02-08', 'posuere
cubilia curae mauris viverra diam');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (905, 40, 586, '2013-03-05', 'rhoncus
aliquet pulvinar');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (906, 85, 473, '2014-09-09',
'tincidunt eu felis fusce posuere felis sed lacus');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (907, 2, 121, '2019-05-07', 'eget nunc
donec quis orci eget orci vehicula');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (908, 42, 35, '2018-04-18', 'vulputate
elementum nullam varius nulla facilisi cras non');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (909, 11, 937, '2011-04-20', 'augue
vestibulum ante ipsum primis in faucibus orci');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (910, 96, 588, '2011-02-16', 'integer
tincidunt ante');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (911, 37, 331, '2014-09-09', 'sit amet
diam in');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (912, 48, 225, '2019-05-07', 'id nisl
venenatis lacinia');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (913, 41, 703, '2018-04-18', 'ut
volutpat sapien arcu sed augue aliquam erat');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (914, 44, 501, '2011-04-20', 'donec
vitae');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (915, 69, 674, '2011-02-16', 'accumsan
tortor quis turpis');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (916, 74, 245, '2014-09-09', 'donec ut
dolor morbi vel lectus in quam');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (917, 95, 411, '2019-05-07', 'in leo
maecenas pulvinar');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (918, 57, 876, '2018-04-18',
'habitasse platea');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (919, 51, 632, '2011-04-20', 'blandit
nam nulla integer pede justo lacinia');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (920, 24, 506, '2011-02-16', 'integer
aliquet massa id lobortis convallis tortor');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (921, 16, 138, '2014-09-09', 'luctus
ultricies eu nibh quisque id justo');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (922, 78, 671, '2017-08-09', 'dapibus
augue vel accumsan tellus nisi eu');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (923, 16, 937, '2015-11-23', 'porta
volutpat erat quisque erat eros viverra');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (924, 78, 118, '2016-08-07', 'massa
volutpat convallis morbi odio');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (925, 79, 638, '2015-03-22', 'amet
nulla quisque arcu');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (926, 54, 967, '2010-12-15', 'sem
mauris laoreet');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (927, 3, 799, '2013-06-20', 'eu nibh
quisque id');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (928, 28, 447, '2015-10-08', 'sem
praesent id massa id');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (929, 59, 502, '2013-09-08', 'nulla ac
enim');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (930, 73, 942, '2019-07-23', 'enim leo
rhoncus sed vestibulum');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (931, 4, 497, '2020-01-26', 'praesent
lectus');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (932, 7, 95, '2021-07-09', 'eu
tincidunt in leo maecenas pulvinar');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (933, 52, 802, '2019-08-14', 'nibh in
hac');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (934, 92, 682, '2017-01-11', 'sodales
sed tincidunt eu felis fusce');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (935, 84, 969, '2019-07-23', 'primis
in');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (936, 10, 720, '2020-01-26', 'vel
ipsum praesent');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (937, 27, 146, '2021-07-09', 'nulla
nisl nunc nisl duis');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (938, 34, 378, '2019-08-14', 'libero
nam dui proin leo');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (939, 65, 761, '2017-01-11', 'nisl
nunc nisl duis bibendum felis sed');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (940, 58, 275, '2019-07-23', 'ultrices
libero non mattis pulvinar nulla pede ullamcorper');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (941, 53, 974, '2014-10-24', 'ut massa
quis augue luctus tincidunt nulla mollis');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (942, 55, 125, '2020-02-21', 'lacinia
erat vestibulum sed magna at nunc');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (943, 28, 888, '2013-01-02', 'nulla
suspendisse potenti cras in purus');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (944, 37, 174, '2014-10-24', 'quisque
ut erat curabitur');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (945, 40, 560, '2020-02-21', 'mauris
enim leo rhoncus sed');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (946, 43, 213, '2013-01-02',
'condimentum neque sapien placerat ante');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (947, 45, 455, '2013-11-12', 'faucibus
cursus urna');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (948, 41, 808, '2013-06-17', 'luctus
nec molestie sed justo pellentesque');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (949, 50, 24, '2020-06-21', 'amet diam
in');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (950, 92, 944, '2012-09-25', 'lobortis
convallis tortor risus');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (951, 33, 879, '2021-06-01',
'pellentesque volutpat dui maecenas tristique est');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (952, 43, 200, '2021-06-01',
'consectetuer eget rutrum at lorem integer tincidunt');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (953, 33, 565, '2013-12-29', 'non
pretium quis lectus suspendisse');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (954, 82, 162, '2020-01-13', 'mattis
nibh ligula nec');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (955, 41, 735, '2010-06-01',
'adipiscing molestie hendrerit at vulputate vitae nisl aenean');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (956, 54, 874, '2012-08-19', 'vehicula
condimentum curabitur in libero ut massa volutpat');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (957, 91, 48, '2020-12-20', 'ipsum
primis in faucibus orci');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (958, 40, 487, '2020-09-09', 'ac nibh
fusce lacus purus aliquet');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (959, 58, 191, '2019-01-09', 'in
faucibus orci luctus et');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (960, 1, 616, '2020-11-08', 'quisque
id');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (961, 91, 31, '2020-11-08', 'nulla
eget eros elementum');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (962, 7, 831, '2014-02-10', 'duis
aliquam convallis');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (963, 72, 776, '2013-04-03',
'vestibulum sed magna at nunc');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (964, 1, 451, '2018-09-08', 'fusce
congue diam id ornare imperdiet sapien urna');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (965, 68, 872, '2014-03-26', 'leo
maecenas pulvinar');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (966, 3, 352, '2020-03-09', 'amet nunc
viverra');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (967, 25, 445, '2010-09-19',
'vestibulum ante');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (968, 99, 904, '2010-02-24', 'rhoncus
dui');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (969, 48, 696, '2016-05-13',
'phasellus sit amet');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (970, 85, 706, '2018-11-13', 'risus
semper porta volutpat quam pede lobortis');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (971, 36, 266, '2010-09-19', 'semper
porta volutpat quam pede lobortis ligula sit');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (972, 81, 383, '2017-09-28', 'et
ultrices posuere');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (973, 79, 636, '2016-10-13',
'imperdiet nullam orci pede venenatis non sodales sed');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (974, 21, 137, '2010-09-19', 'ac enim
in tempor turpis nec euismod scelerisque');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (975, 77, 605, '2010-09-19', 'in
blandit ultrices enim lorem');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (976, 86, 965, '2010-09-19', 'libero
non');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (977, 36, 80, '2010-09-19', 'nonummy
integer non velit donec diam neque');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (978, 42, 269, '2019-03-13', 'ultrices
mattis odio donec vitae nisi');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (979, 72, 903, '2020-01-24', 'accumsan
felis ut at dolor');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (980, 68, 724, '2017-05-07',
'venenatis tristique fusce congue diam id ornare imperdiet');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (981, 65, 441, '2021-02-12', 'sit amet
nunc viverra dapibus nulla suscipit ligula');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (982, 2, 84, '2014-08-27', 'in
faucibus');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (983, 91, 205, '2010-10-27',
'habitasse platea dictumst aliquam augue quam sollicitudin');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (984, 30, 380, '2017-08-16',
'consectetuer eget rutrum at lorem integer');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (985, 89, 90, '2010-10-16', 'amet
consectetuer');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (986, 50, 598, '2010-10-16', 'vivamus
metus arcu adipiscing molestie hendrerit');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (987, 98, 697, '2010-10-16', 'id
mauris vulputate elementum nullam varius nulla facilisi');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (988, 95, 234, '2010-10-16', 'a
feugiat et eros vestibulum');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (989, 32, 163, '2010-10-16', 'et
tempus semper est');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (990, 38, 829, '2016-02-09', 'sodales
sed tincidunt');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (991, 49, 111, '2010-10-02', 'eget
tempus vel pede morbi porttitor');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (992, 66, 417, '2010-10-02', 'non
mattis');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (993, 78, 571, '2010-01-31', 'duis
bibendum morbi non quam');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (994, 32, 588, '2015-07-21', 'integer
a nibh in quis justo');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (995, 96, 9, '2015-12-15', 'nulla
facilisi cras non');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (996, 28, 168, '2010-06-27', 'neque
aenean auctor');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (997, 50, 640, '2010-09-05', 'non
velit');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (998, 13, 686, '2017-03-06', 'morbi
vel lectus in quam fringilla rhoncus mauris');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (999, 71, 615, '2018-07-20', 'blandit
mi in');
insert into COMMENTARY(id_commentary, id_game, id_system_user,
comment_date, commentary) values (1000, 96, 291, '2016-03-24',
'adipiscing molestie hendrerit at');