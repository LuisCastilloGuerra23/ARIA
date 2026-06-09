CREATE ARIA_MEMORY DATABASE;
USE ARIA_MEMORY;
CREATE TABLE USUARIO
(ID INT NOT NULL,
 NAME VARCHAR(30) NOT NULL,
 COLEGIO VARCHAR(50)
 DISTRITO VARCHAR(10) NOT NULL,
);

CREATE TABLE DIRIGENTE
(ID INT NOT NULL,
 NAME VARCHAR(30) NOT NULL,
 FAIR VARCHAR(50) NOT NULL,
 CONTRATO_MESES INT NOT NULL,
 DISTRITO VARCHAR(10) NOT NULL,
 COMIENZO VARCHAR(8) NOT NULL,
 TERMINO VARCHAR(8) NOT NULL,
 PRIORIDAD CHAR NOT NULL
);

CREATE TABLE EXPOSITOR(
    ID INT PRIMARY KEY NOT NULL,
    DISTRITO VARCHAR(10) NOT NULL,
    PRIORITY CHAR NOT NULL,
    NOMBRE_LIBRERIA VARCHAR(30) NOT NULL,
    CAROUSEL BOOLEAN NOT NULL,
    SERVICE1 BOOLEAN NOT NULL,
    SERVICE2 BOOLEAN NOT NULL,
    SERVICE3 BOOLEAN NOT NULL,
    SERVICE4 BOOLEAN NOT NULL,
    SERVICE5 BOOLEAN NOT NULl,
    SERVICE6 BOOLEAN NOT NULL,
    SERVICE7 BOOLEAN NOT NULL,
    SERVICE8 BOOLEAN NOT NULL
);
/*
SERVICE 1: AROS OLIMPICOS
SERVICE 2:TRIPTICO GIGANTE
SERVICE 3:MAQUETAS
SERVICE 4:TRIPTICOS
SERVICE 5:ANILLADO
SERVICE 6:ENMICADO
SERVICE 7:VESTIMENTA DE RECICLAJE
SERVICE 8:PERZONALIZED
(THE LATTER WOULD BE MORE EXCLUSIVE GIVEN THAT
IT IS A TAG WHERE THE EXHIBITOR SUPPORTS
ANY KIND OF WORK EVEN THOSE THAT
NO ESTAN EN LOS TAGS MAS COMUN
*/

USE ARIA_MEMORY;

-- =========================
-- USUARIOS (5)
-- =========================
INSERT INTO USUARIO (ID, NAME, COLEGIO, DISTRITO) VALUES
(1, 'Luis Mendoza', 'Colegio San Juan', 'Lima'),
(2, 'Maria Rojas', 'Colegio Santa Rosa', 'Surco'),
(3, 'Carlos Diaz', 'Colegio Inca Garcilaso', 'Callao'),
(4, 'Ana Torres', 'Colegio Cristo Rey', 'Comas'),
(5, 'Jorge Perez', 'Colegio Maria Auxiliadora', 'Ate');

-- =========================
-- DIRIGENTES (4 ferias escolares)
-- DURACIÓN 2 a 4 MESES
-- =========================
INSERT INTO DIRIGENTE
(ID, NAME, FAIR, CONTRATO_MESES, DISTRITO, COMIENZO, TERMINO, PRIORIDAD)
VALUES

(1, 'Pedro Ramirez', 'EXPOFERIA LIBRERIA PLAZA NORTE', 12, 'Lima',
 '01/02/26', '30/04/26', 'A'),   -- 3 meses

(2, 'Claudia Ruiz', 'FERIA ESCOLAR JESUS OBRERO', 8, 'Surco',
 '15/03/26', '15/06/26', 'B'),   -- 3 meses

(3, 'Jose Alvarez', 'FERIA ESCOLAR SAN MARTIN', 10, 'Callao',
 '01/04/26', '31/07/26', 'A'),   -- 4 meses

(4, 'Rosa Paredes', 'EXPOFERIA INCA GARCILASO', 6, 'Comas',
 '10/05/26', '10/07/26', 'C');   -- 2 meses

-- =========================
-- EXPOSITORES (10)
-- =========================
INSERT INTO EXHIBITOR
(ID, DISTRITO, PRIORITY, NOMBRE_LIBRERIA,
 CAROUSEL, SERVICE1, SERVICE2, SERVICE3,
 SERVICE4, SERVICE5, SERVICE6, SERVICE7, SERVICE8) VALUES
(1, 'Lima', 'A', 'Central Library', 1, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 'Surco', 'B', 'Ideas Educativas', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 'Callao', 'C', 'Mundo Escolar', 1, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 'Comas', 'A', 'Arte Escolar', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 'Ate', 'B', 'Print Express', 1, 1, 0, 1, 0, 0, 1, 0, 0),
(6, 'Lima', 'A', 'Copias Max', 0, 1, 1, 0, 1, 0, 0, 1, 0),
(7, 'Surco', 'C', 'Eco Proyectos', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(8, 'Callao', 'B', 'Innova Studio', 0, 0, 1, 0, 1, 1, 0, 1, 0),
(9, 'Comas', 'A', 'Prototipos Peru', 1, 1, 0, 0, 1, 0, 1, 0, 1),
(10, 'Ate', 'B', 'MultiPrint', 0, 0, 1, 1, 0, 1, 1, 0, 1);
