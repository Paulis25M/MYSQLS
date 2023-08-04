CREATE DATABASE reservas;
USE reservas;

CREATE TABLE usuario(
id_usuario INT (20) PRIMARY KEY,
nombre_apellido VARCHAR (50) ,
telefono INT(20),
correo VARCHAR (50) 
);

CREATE TABLE pasaje(
id_pasaje INT (20),
id_usuario INT(20),
PRIMARY KEY(id_usuario, id_pasaje),
precio INT(20),
numero_asiento INT(20)
); 

CREATE TABLE vuelo(
id_vuelo INT(20),
id_pasaje INT(20),
PRIMARY KEY(id_vuelo),
hora_salida VARCHAR(50),
hora_llegada VARCHAR(50),
destino VARCHAR(50)
);

CREATE TABLE areolinea(
id_areolinea INT(20),
id_vuelo INT(20),
PRIMARY KEY(id_vuelo),
pais_origen VARCHAR(50),
nombre_areolinea VARCHAR(50)
);

CREATE TABLE areopuerto(
id_areopuerto INT(20),
id_areolinea INT(20),
nombre VARCHAR(50)
);


INSERT INTO usuario (id_usuario, nombre_apellido, telefono, correo)
VALUES 
(121314, 'Stephanie Johnson', 6789012, 'stephanie.johnson@example.com'),
(131415, 'Daniel White', 7890123, 'daniel.white@example.com'),
(141516, 'Elizabeth Thompson', 8901234, 'elizabeth.thompson@example.com'),
(151617, 'William Lee', 9012345, 'william.lee@example.com'),
(161718, 'Ashley Garcia', 9101112, 'ashley.garcia@example.com'),
(171819, 'Kevin Scott', 1029384, 'kevin.scott@example.com'),
(181920, 'Nicole Wright', 1122334, 'nicole.wright@example.com'),
(192021, 'Ryan Lewis', 1213145, 'ryan.lewis@example.com'),
(202122, 'Hannah Hall', 1314156, 'hannah.hall@example.com'),
(234567, 'John Doe', 7890123, 'john.doe@example.com'),
(345678, 'Emily Johnson', 4567890, 'emily.johnson@example.com'),
(567890, 'Jessica Williams', 6789012, 'jessica.williams@example.com'),
(678901, 'David Brown', 9012345, 'david.brown@example.com'),
(789012, 'Sarah Miller', 3456789, 'sarah.miller@example.com'),
(890123, 'Christopher Wilson', 1234567, 'christopher.wilson@example.com'),
(501234, 'Laura Davis', 2345678, 'laura.davis@example.com'),
(910111, 'Matthew Taylor', 3456789, 'matthew.taylor@example.com'),
(102938, 'Amanda Anderson', 4567890, 'amanda.anderson@example.com'),
(112233, 'Jason Martinez', 5678901, 'jason.martinez@example.com');


INSERT INTO pasaje (id_pasaje, id_usuario,precio, numero_asiento)
VALUES 
(123504, 8392012, 104500, 44),
(123493, 8392001, 95000, 15),
(123494, 8392002, 105000, 18),
(123512, 8392018, 98000, 25),
(123513, 8392019, 102000, 30),
(123514, 8392020, 110000, 5),
(123493, 8392081, 120000, 33),
(123494, 8392012, 95000, 34),
(123511, 8392019, 110000, 51),
(123493, 8392051, 95000, 33),
(123494, 8392062, 105000, 34),
(123495, 8392003, 98000, 35),
(123496, 8392004, 102000, 36),
(123497, 8392005, 99000, 37),
(123498, 8392006, 101000, 38),
(123499, 8392007, 97000, 39),
(123500, 8392008, 100500, 40),
(123501, 8392009, 99000, 41),
(123502, 8392010, 102500, 42),
(123503, 8392011, 96000, 43);

INSERT INTO vuelo( id_vuelo, id_pasaje, hora_salida, hora_llegada, destino)
VALUES
(1234546, 192834, '6:00pm', '3:00am', 'francia'),
(1234547, 192835, '7:00pm', '4:00am', 'italia'),
(1234548, 192836, '8:00pm', '5:00am', 'alemania'),
(1234549, 192837, '9:00pm', '6:00am', 'portugal'),
(1234550, 192838, '10:00pm', '7:00am', 'reino unido'),
(1234551, 192839, '11:00pm', '8:00am', 'holanda'),
(1234552, 192840, '12:00am', '9:00am', 'suiza'),
(1234553, 192841, '1:00am', '10:00am', 'grecia'),
(1234554, 192842, '2:00am', '11:00am', 'turquía'),
(1234555, 192843, '3:00am', '12:00pm', 'egipto'),
(1234556, 192844, '4:00am', '1:00pm', 'australia'),
(1234557, 192845, '5:00am', '2:00pm', 'japón'),
(1234558, 192846, '6:00am', '3:00pm', 'china'),
(1234559, 192847, '7:00am', '4:00pm', 'india'),
(1234560, 192848, '8:00am', '5:00pm', 'sudáfrica'),
(1234561, 192849, '9:00am', '6:00pm', 'canadá'),
(1234562, 192850, '10:00am', '7:00pm', 'estados unidos'),
(1234563, 192851, '11:00am', '8:00pm', 'méxico'),
(1234564, 192852, '12:00pm', '9:00pm', 'brasil'),
(1234565, 192853, '1:00pm', '10:00pm', 'argentina');

INSERT INTO areolinea ( id_areolinea, id_vuelo, pais_origen, nombre_areolinea)
VALUES 
(8982344, 87654, 'españa', 'avianca'),
(8982345, 87655, 'francia', 'lufthansa'),
(8982346, 87656, 'italia', 'france'),
(8982347, 87657, 'alemania', 'british'),
(8982348, 87658, 'portugal', 'emirates'),
(8982349, 87659, 'reino unido', 'delta'),
(8982350, 87660, 'holanda', 'singapore'),
(8982351, 87661, 'suiza', 'qatar'),
(8982352, 87662, 'grecia', 'cathay'),
(8982353, 87663, 'turquía', ' nippon'),
(8982354, 87664, 'egipto', 'royal'),
(8982355, 87665, 'australia', 'united'),
(8982356, 87666, 'japón', 'qantas'),
(8982357, 87667, 'china', 'turkish'),
(8982358, 87668, 'india', 'airlines'),
(8982359, 87669, 'sudáfrica', 'aiCanada'),
(8982360, 87670, 'canadá', 'latamn'),
(8982361, 87671, 'estados unidos', 'southwest'),
(8982362, 87672, 'méxico', 'alitalia'),
(8982363, 87673, 'brasil', 'virgin'),
(8982364, 87674, 'argentina', 'jetBlue');

INSERT INTO areopuerto( id_areopuerto, id_areolinea, nombre)
VALUES 
(12345, 1936479, 'el dorado'),
(12346, 1936480, 'JFK Airport'),
(12347, 1936481, 'Heathrow Airport'),
(12348, 1936482, 'Charles Airport'),
(12349, 1936483, 'Narita Airport'),
(12350, 1936484, 'Los Angeles Airport'),
(12351, 1936485, 'Sydney Airport'),
(12352, 1936486, 'Dubai Airport'),
(12353, 1936487, 'Hong Airport'),
(12354, 1936488, 'Ataturk Airport'),
(12355, 1936489, 'Cairo Airport'),
(12356, 1936490, 'Vancouver Airport'),
(12357, 1936491, 'Benito Airport'),
(12358, 1936492, 'Galeao airport'),
(12359, 1936493, 'Prat Airport'),
(12360, 1936494, 'Hare Airport'),
(12361, 1936495, 'Pudong Airport'),
(12362, 1936496, 'Indira Airport'),
(12363, 1936497, 'Cape Airport'),
(12364, 1936498, 'Toronto Airport'),
(12365, 1936499, 'Ezeiza Airport');




