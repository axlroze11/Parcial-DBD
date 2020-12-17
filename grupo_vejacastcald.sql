create table TIPO_COMIDA(
    ID_TIPOCOMIDA number PRIMARY KEY,
    NOMBRETIPOCOMIDA varchar2(40),
    ESTADO VARCHAR2(1)
);
create table TIPO_CLIENTE(
    ID_TIPOCLIENTE number PRIMARY KEY,
    NOMBRETIPOCLIENTE varchar2(40),
    ESTADO VARCHAR2(1)
);
create table TIPO_EMPLEADO(
    ID_TIPOEMPLEADO number PRIMARY KEY,
    NOMBRETIPOEMPLEADO varchar2(40),
    ESTADO VARCHAR2(1)
);
create table EMPLEADO(
    ID_EMPLEADO number PRIMARY KEY,
    NOMBREEMPLEADO varchar2(40),
    APELLIDOEMPLEADO varchar2(40),
    SEXOEMPLEADO VARCHAR2(1),
    DIRECCIONEMPLEADO varchar2(40),
    TELEFONOEMPLEADO varchar2(10),
    CLAVEEMPLEADO varchar2(5) NOT NULL UNIQUE,
    DNI  CHAR(8) NOT NULL UNIQUE,
    ESTADO VARCHAR2(1),
    ID_TIPOEMPLEADO NUMBER REFERENCES TIPO_EMPLEADO
);
create table CLIENTE(
    ID_CLIENTE number PRIMARY KEY,
    NOMBRECLIENTE varchar2(40),
    APELLIDOCLIENTE varchar2(40),
    SEXOCLIENTE VARCHAR2(1),
    DIRECCIONCLIENTE varchar2(40),
    TELEFONOCLIENTE varchar2(10),
    DNI  CHAR(8) NOT NULL UNIQUE,
    ESTADO VARCHAR2(1),
    ID_TIPOCLIENTE NUMBER REFERENCES TIPO_CLIENTE
);
create table COMIDA(
    ID_COMIDA number PRIMARY KEY,
    NOMBRECOMIDA varchar2(40),
    DESCRIPCIONCOMIDA varchar2(50),
    PRECIOCOMIDA NUMBER(3),
    ESTADO VARCHAR2(1),
    ID_TIPOCOMIDA NUMBER REFERENCES TIPO_COMIDA
);
create table VENTA(
    ID_VENTA number PRIMARY KEY,
    FECHAVENTA date default sysdate not null,
    TOTALVENTA varchar2(50),
    ESTADO VARCHAR2(1),
    ID_EMPLEADO NUMBER REFERENCES EMPLEADO,
    ID_CLIENTE NUMBER REFERENCES CLIENTE
);
create table DETALLE_VENTA(
    ID_DETALLE_VENTA NUMBER PRIMARY KEY,
    CANTIDADVENTA NUMBER,
    IMPORTEVENTA NUMBER,
    ESTADO VARCHAR2(1),
    ID_VENTA NUMBER REFERENCES VENTA,
    ID_COMIDA NUMBER REFERENCES COMIDA
);

create SEQUENCE SQ_TIPO_COMIDA
  START WITH 1
  INCREMENT BY 1 
  MINVALUE 1
  MAXVALUE 5000
  NOCYCLE;
create SEQUENCE SQ_TIPO_CLIENTE
  START WITH 1
  INCREMENT BY 1 
  MINVALUE 1
  MAXVALUE 5000
  NOCYCLE;
create SEQUENCE SQ_TIPO_EMPLEADO
  START WITH 1
  INCREMENT BY 1 
  MINVALUE 1
  MAXVALUE 5000
  NOCYCLE;
create SEQUENCE SQ_EMPLEADO
  START WITH 1
  INCREMENT BY 1 
  MINVALUE 1
  MAXVALUE 5000
  NOCYCLE;
create SEQUENCE SQ_CLIENTE
  START WITH 1
  INCREMENT BY 1 
  MINVALUE 1
  MAXVALUE 5000
  NOCYCLE;
create SEQUENCE SQ_COMIDA
  START WITH 1
  INCREMENT BY 1 
  MINVALUE 1
  MAXVALUE 5000
  NOCYCLE; 
create SEQUENCE SQ_VENTA
  START WITH 1
  INCREMENT BY 1 
  MINVALUE 1
  MAXVALUE 5000
  NOCYCLE;
create SEQUENCE SQ_DETALLE_VENTA
  START WITH 1
  INCREMENT BY 1 
  MINVALUE 1
  MAXVALUE 5000
  NOCYCLE;
  
COMMIT;
------------------------------------------------------------------------------------------
INSERT INTO TIPO_COMIDA VALUES(
    sq_TIPO_COMIDA.NEXTVAL,
    'Gourmet',
    'A'
);
INSERT INTO TIPO_COMIDA VALUES(
    sq_TIPO_COMIDA.NEXTVAL,
    'Rapida',
    'A'
);
INSERT INTO TIPO_COMIDA VALUES(
    sq_TIPO_COMIDA.NEXTVAL,
    'Buffet',
    'A'
);
------------------------------------------------------------------------------------------
INSERT INTO TIPO_CLIENTE VALUES(
    sq_TIPO_CLIENTE.NEXTVAL,
    'Frecuente',
    'A'
);
INSERT INTO TIPO_CLIENTE VALUES(
    sq_TIPO_CLIENTE.NEXTVAL,
    'Nuevo',
    'A'
);
------------------------------------------------------------------------------------------
INSERT INTO TIPO_EMPLEADO VALUES(
    sq_TIPO_EMPLEADO.NEXTVAL,
    'Mesero',
    'A'
);
INSERT INTO TIPO_EMPLEADO VALUES(
    sq_TIPO_EMPLEADO.NEXTVAL,
    'Cajero',
    'A'
);
INSERT INTO TIPO_EMPLEADO VALUES(
    sq_TIPO_EMPLEADO.NEXTVAL,
    'Chef',
    'A'
);
-------------------------------------------------------------------------------------------
INSERT INTO EMPLEADO VALUES(
    sq_EMPLEADO.NEXTVAL,
    'Jairo',
    'Castillon Cardenas',
    'M',
    'Jiron Ladillas 232',
    '475164879',
    '0124',
    '74581264',
    'A',
    3
);
INSERT INTO EMPLEADO VALUES(
    sq_EMPLEADO.NEXTVAL,
    'Marco',
    'Calderos Guevara',
    'M',
    'Jiron Canevaro 112',
    '14785456',
    '0134',
    '45895687',
    'A',
    2
);
INSERT INTO EMPLEADO VALUES(
    sq_EMPLEADO.NEXTVAL,
    'Axl',
    'Vejarano Cerna',
    'M',
    'Jiron Billinghrst 774',
    '980147522',
    '0144',
    '73879487',
    'A',
    1
);
INSERT INTO EMPLEADO VALUES(
    sq_EMPLEADO.NEXTVAL,
    'Daniela',
    'Mabrith Rodriguez',
    'F',
    'Av Portales 174',
    '958974147',
    '0154',
    '75411474',
    'A',
    1
);
INSERT INTO EMPLEADO VALUES(
    sq_EMPLEADO.NEXTVAL,
    'Fiorella',
    'Santiesteban Ramirez',
    'F',
    'Av Burli 64',
    '987547474',
    '0164',
    '75841233',
    'A',
    3
);
COMMIT;
--------------------------------------------------------------------------------------------
INSERT INTO CLIENTE VALUES(
    sq_CLIENTE.NEXTVAL,
    'Brayan',
    'Aroni Rodriguez',
    'M',
    'Av Saczayhuman 166',
    '958741556',
    '75411474',
    'A',
    1
);
INSERT INTO CLIENTE VALUES(
    sq_CLIENTE.NEXTVAL,
    'Samara',
    'Tello Gomez',
    'F',
    'Av Curl 164',
    '958551556',
    '76661474',
    'A',
    2
);
INSERT INTO CLIENTE VALUES(
    sq_CLIENTE.NEXTVAL,
    'Steve',
    'Bilbao Mondragon',
    'M',
    'Av PuntaCerro 266',
    '952581556',
    '75364474',
    'A',
    1
);
INSERT INTO CLIENTE VALUES(
    sq_CLIENTE.NEXTVAL,
    'Flavia',
    'Martinez Caballero',
    'F',
    'Avenida Huaylas 984',
    '974285968',
    '73111536',
    'A',
    2
);
INSERT INTO CLIENTE VALUES(
    sq_CLIENTE.NEXTVAL,
    'Charles',
    'Zapata Cervera',
    'M',
    'Calle Las Lilas 936',
    '974925308',
    '03912895',
    'A',
    1
);
INSERT INTO CLIENTE VALUES(
    sq_CLIENTE.NEXTVAL,
    'Patrick',
    'Deglane Soto',
    'M',
    'Avenida Los Fresnos 307',
    '922948008',
    '30047598',
    'A',
    2
);
INSERT INTO CLIENTE VALUES(
    sq_CLIENTE.NEXTVAL,
    'Janeth',
    'Salcedo Cueva',
    'F',
    'Avenida La Peruanidad 446',
    '997228465',
    '28496823',
    'A',
    1
);
COMMIT;
----------------------------------------------------------------------------------------
INSERT INTO COMIDA VALUES(
    sq_COMIDA.NEXTVAL,
    'Arroz con pollo',
    'Arroz bien servido y Pollo aderezado',
    20,
    'A',
    3
);
INSERT INTO COMIDA VALUES(
    sq_COMIDA.NEXTVAL,
    'Arroz con Pato',
    'Comida criolla deliciosa',
    15,
    'A',
    3
);
INSERT INTO COMIDA VALUES(
    sq_COMIDA.NEXTVAL,
    'Pollo Broster',
    'Pollo crocante al gusto',
    10,
    'A',
    2
);
INSERT INTO COMIDA VALUES(
    sq_COMIDA.NEXTVAL,
    'Ceviche Mixto',
    'Ceviche picante fresco',
    30,
    'A',
    1
);
INSERT INTO COMIDA VALUES(
    sq_COMIDA.NEXTVAL,
    'Pulpo al olivo',
    'Delicioso pulpo en salsa de olivo',
    40,
    'A',
    1
);
COMMIT;
-------------------------------------------------------------------
INSERT INTO VENTA VALUES(
    sq_VENTA.NEXTVAL,
    sysdate,
    '100',
    'A',
    2,
    1
);
INSERT INTO VENTA VALUES(
    sq_VENTA.NEXTVAL,
    sysdate,
    '100',
    'A',
    4,
    2
);
INSERT INTO VENTA VALUES(
    sq_VENTA.NEXTVAL,
    sysdate,
    '100',
    'A',
    2,
    3
);
INSERT INTO VENTA VALUES(
    sq_VENTA.NEXTVAL,
    sysdate,
    '100',
    'A',
    3,
    4
);
INSERT INTO VENTA VALUES(
    sq_VENTA.NEXTVAL,
    sysdate,
    '100',
    'A',
    1,
    5
);
INSERT INTO VENTA VALUES(
    sq_VENTA.NEXTVAL,
    sysdate,
    '100',
    'A',
    1,
    6
);
INSERT INTO VENTA VALUES(
    sq_VENTA.NEXTVAL,
    sysdate,
    '100',
    'A',
    5,
    7
);
COMMIT;
--------------------------------------------------------------------------
INSERT INTO DETALLE_VENTA VALUES(
    sq_DETALLE_VENTA.NEXTVAL,
    3,
    135,
    'A',
    1,--1 al 7--
    1 --- 1 al 5 --
);
INSERT INTO DETALLE_VENTA VALUES(
    sq_DETALLE_VENTA.NEXTVAL,
    2,
    70,
    'A',
    1,--1 al 7--
    2 --- 1 al 5 --
);
INSERT INTO DETALLE_VENTA VALUES(
    sq_DETALLE_VENTA.NEXTVAL,
    1,
    25,
    'A',
    1,--1 al 7--
    3 --- 1 al 5 --
);
INSERT INTO DETALLE_VENTA VALUES(
    sq_DETALLE_VENTA.NEXTVAL,
    4,
    195,
    'A',
    2,--1 al 7--
    4 --- 1 al 5 --
);
INSERT INTO DETALLE_VENTA VALUES(
    sq_DETALLE_VENTA.NEXTVAL,
    2,
    60,
    'A',
    2,--1 al 7--
    5 --- 1 al 5 --
);
INSERT INTO DETALLE_VENTA VALUES(
    sq_DETALLE_VENTA.NEXTVAL,
    2,
    85,
    'A',
    2,--1 al 7--
    1 --- 1 al 5 --
);
INSERT INTO DETALLE_VENTA VALUES(
    sq_DETALLE_VENTA.NEXTVAL,
    1,
    139,
    'A',
    3,--1 al 7--
    4 --- 1 al 5 --
);
INSERT INTO DETALLE_VENTA VALUES(
    sq_DETALLE_VENTA.NEXTVAL,
    2,
    30,
    'A',
    3,--1 al 7--
    1 --- 1 al 5 --
);
INSERT INTO DETALLE_VENTA VALUES(
    sq_DETALLE_VENTA.NEXTVAL,
    2,
    115,
    'A',
    3,--1 al 7--
    5 --- 1 al 5 --
);
INSERT INTO DETALLE_VENTA VALUES(
    sq_DETALLE_VENTA.NEXTVAL,
    4,
    165,
    'A',
    4,--1 al 7--
    2 --- 1 al 5 --
);
INSERT INTO DETALLE_VENTA VALUES(
    sq_DETALLE_VENTA.NEXTVAL,
    2,
    40,
    'A',
    4,--1 al 7--
    3 --- 1 al 5 --
);
INSERT INTO DETALLE_VENTA VALUES(
    sq_DETALLE_VENTA.NEXTVAL,
    2,
    75,
    'A',
    4,--1 al 7--
    1 --- 1 al 5 --
);
INSERT INTO DETALLE_VENTA VALUES(
    sq_DETALLE_VENTA.NEXTVAL,
    2,
    195,
    'A',
    5,--1 al 7--
    2 --- 1 al 5 --
);
INSERT INTO DETALLE_VENTA VALUES(
    sq_DETALLE_VENTA.NEXTVAL,
    2,
    20,
    'A',
    5,--1 al 7--
    5 --- 1 al 5 --
);
INSERT INTO DETALLE_VENTA VALUES(
    sq_DETALLE_VENTA.NEXTVAL,
    3,
    155,
    'A',
    5,--1 al 7--
    1 --- 1 al 5 --
);
INSERT INTO DETALLE_VENTA VALUES(
    sq_DETALLE_VENTA.NEXTVAL,
    2,
    80,
    'A',
    6,--1 al 7--
    4 --- 1 al 5 --
);
INSERT INTO DETALLE_VENTA VALUES(
    sq_DETALLE_VENTA.NEXTVAL,
    4,
    150,
    'A',
    6,--1 al 7--
    5 --- 1 al 5 --
);
INSERT INTO DETALLE_VENTA VALUES(
    sq_DETALLE_VENTA.NEXTVAL,
    1,
    45,
    'A',
    6,--1 al 7--
    2 --- 1 al 5 --
);
INSERT INTO DETALLE_VENTA VALUES(
    sq_DETALLE_VENTA.NEXTVAL,
    5,
    160,
    'A',
    7,--1 al 7--
    1 --- 1 al 5 --
);
INSERT INTO DETALLE_VENTA VALUES(
    sq_DETALLE_VENTA.NEXTVAL,
    2,
    70,
    'A',
    7,--1 al 7--
    4 --- 1 al 5 --
);
INSERT INTO DETALLE_VENTA VALUES(
    sq_DETALLE_VENTA.NEXTVAL,
    3,
    100,
    'A',
    7,--1 al 7--
    5 --- 1 al 5 --
);
COMMIT;
DELETE FROM DETALLE_VENTA WHERE
    ID_DETALLE_VENTA = 5;   
DELETE FROM DETALLE_VENTA WHERE
    ID_DETALLE_VENTA = 7;
DELETE FROM DETALLE_VENTA WHERE
    ID_DETALLE_VENTA = 2;   
DELETE FROM DETALLE_VENTA WHERE
    ID_DETALLE_VENTA = 15;   
DELETE FROM DETALLE_VENTA WHERE
    ID_DETALLE_VENTA = 20;    
DELETE FROM DETALLE_VENTA WHERE
    ID_DETALLE_VENTA = 10;
COMMIT;
--------------------------------------------------------------
UPDATE CLIENTE ----1,2,3,4,5,6
SET
    NOMBRECLIENTE = 'Mario',
    APELLIDOCLIENTE = 'Fuentes Sanchez'
WHERE
    ID_CLIENTE = 1;
UPDATE CLIENTE ----1,2,3,4,5,6
SET
    NOMBRECLIENTE = 'Franchesca',
    APELLIDOCLIENTE = 'Susanits Fotre'
WHERE
    ID_CLIENTE = 2;    
UPDATE CLIENTE ----1,2,3,4,5,6
SET
    NOMBRECLIENTE = 'Stevens ',
    APELLIDOCLIENTE = 'Aldarzo Trew'
WHERE
    ID_CLIENTE = 3;   
UPDATE CLIENTE ----1,2,3,4,5,6
SET
    NOMBRECLIENTE = 'Britty',
    APELLIDOCLIENTE = 'Aderete Sanchez'
WHERE
    ID_CLIENTE = 4;   
UPDATE CLIENTE ----1,2,3,4,5,6
SET
    NOMBRECLIENTE = 'Juan',
    APELLIDOCLIENTE = 'Juanes Sanchez'
WHERE
    ID_CLIENTE = 5;   
UPDATE CLIENTE ----1,2,3,4,5,6
SET
    NOMBRECLIENTE = 'Jersson',
    APELLIDOCLIENTE = 'Fuentes Gonzales'
WHERE
    ID_CLIENTE = 6;