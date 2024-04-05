DROP DATABASE IF EXISTS empleo_bd;
CREATE DATABASE empleo_bd;

USE empleo_bd;

DROP TABLE IF EXISTS ofertas;
DROP TABLE IF EXISTS empresa;
DROP TABLE IF EXISTS solicituded;
DROP TABLE IF EXISTS candidatos;
DROP TABLE IF EXISTS curriculum;


CREATE TABLE empresa (
    id_empresa INT PRIMARY KEY AUTO_INCREMENT,
    localidad VARCHAR(100),
    nombre VARCHAR(100),
    imagen VARCHAR(255),
    contraseña VARCHAR(255)
);

CREATE TABLE ofertas (
    idOferta INT PRIMARY KEY AUTO_INCREMENT,
    idEmpresa INT,
    nombre VARCHAR(100),
    ubicacion VARCHAR(100),
    localidad VARCHAR(100),
    modalidad VARCHAR(50),
    conocimientos VARCHAR(255),
    idiomas VARCHAR(100),
    nivelIdioma VARCHAR(50),
    telefono VARCHAR(20),
    descripcion TEXT,
    estudiosRequeridos VARCHAR(255),
    experienciaRequerida VARCHAR(255),
    salarioInicial DECIMAL(10, 2),
    salarioFinal DECIMAL(10, 2),
    FOREIGN KEY (idEmpresa) REFERENCES empresa(id_empresa)
);

CREATE TABLE candidatos (
    idCandidato INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    apellido VARCHAR(100),
    email VARCHAR(100),
    contraseña VARCHAR(255),
    fechaNacimiento DATE,
    genero VARCHAR(20),
    telefono VARCHAR(20),
    provincia VARCHAR(100),
    codigoPostal VARCHAR(10),
    poblacion VARCHAR(100)
);

CREATE TABLE curriculum (
    idCurriculum INT PRIMARY KEY AUTO_INCREMENT, 
    nombreEstudios VARCHAR(100),
    centro VARCHAR(100),
    fechaInicioEstudios DATE,
    fechaFinalEstudios DATE,
    nombrePuesto VARCHAR(100),
    conocimientos VARCHAR(255),
    fechaInicioPuesto DATE,
    fechaFinalPuesto DATE
);


CREATE TABLE  solicitudes (
    idSolicitud INT PRIMARY KEY AUTO_INCREMENT,
    idOferta INT,
    idCandidato INT,
    idCurriculum INT,
    fecha DATE,
    nombreCandidato VARCHAR(100),
    apellidoCandidato VARCHAR(100),
    emailCandidato VARCHAR(100),
    telefonoCandidato VARCHAR(20),
    fechaNacimientoCandidato DATE,
    generoCandidato VARCHAR(20),
    codigoPostalCandidato VARCHAR(10),
    provinciaCandidato VARCHAR(100),
    poblacionCandidato VARCHAR(100),
    estudiosCurriculum VARCHAR(100),
    centroEstudiosCurriculum VARCHAR(100),
    fechaInicioEstudios DATE,
    fechaFinalEstudios DATE,
    nombreTrabajoCurriculum VARCHAR(100),
    fechaInicioTrabajoCurriculum DATE,
    fechaFinalTrabajoCurriculum DATE,
    nombreOferta VARCHAR(100),
    FOREIGN KEY (idOferta) REFERENCES ofertas(idoferta),
    FOREIGN KEY (idCandidato) REFERENCES candidatos(idCandidato),
    FOREIGN KEY (idCurriculum) REFERENCES curriculum(idCurriculum)
);

/*Insercion de registros en la tabla empresa*/

INSERT INTO empresa  VALUES (1, 'Ciudad A', 'Empresa A', 'imagen1.jpg', 'contraseña1');
INSERT INTO empresa  VALUES (2, 'Ciudad B', 'Empresa B', 'imagen2.jpg', 'contraseña2');
INSERT INTO empresa  VALUES (3, 'Ciudad C', 'Empresa C', 'imagen3.jpg', 'contraseña3');
INSERT INTO empresa  VALUES (4, 'Ciudad D', 'Empresa D', 'imagen4.jpg', 'contraseña4');
INSERT INTO empresa  VALUES (5, 'Ciudad E', 'Empresa E', 'imagen5.jpg', 'contraseña5');
INSERT INTO empresa  VALUES (6, 'Ciudad F', 'Empresa F', 'imagen6.jpg', 'contraseña6');
INSERT INTO empresa  VALUES (7, 'Ciudad G', 'Empresa G', 'imagen7.jpg', 'contraseña7');
INSERT INTO empresa  VALUES (8, 'Ciudad H', 'Empresa H', 'imagen8.jpg', 'contraseña8');
INSERT INTO empresa  VALUES (9, 'Ciudad I', 'Empresa I', 'imagen9.jpg', 'contraseña9');
INSERT INTO empresa  VALUES (10, 'Ciudad J', 'Empresa J', 'imagen10.jpg', 'contraseña10');


/*Insercion de registros en la tabla ofertas*/

INSERT INTO ofertas (idOferta, idEmpresa, nombre, ubicacion, localidad, modalidad, conocimientos, idiomas, nivelIdioma, telefono, descripcion, estudiosRequeridos, experienciaRequerida, salarioInicial, salarioFinal) VALUES (1, 1, 'Oferta 1', 'Ubicacion 1', 'Localidad 1', 'Presencial', 'Conocimiento1, Conocimiento2', 'Inglés, Español', 'Intermedio', '123456789', 'Descripción de la oferta 1', 'Licenciatura', '2 años', 2000.00, 3000.00);
INSERT INTO ofertas (idOferta, idEmpresa, nombre, ubicacion, localidad, modalidad, conocimientos, idiomas, nivelIdioma, telefono, descripcion, estudiosRequeridos, experienciaRequerida, salarioInicial, salarioFinal) VALUES (2, 2, 'Oferta 2', 'Ubicacion 2', 'Localidad 2', 'Remoto', 'Conocimiento3, Conocimiento4', 'Inglés', 'Avanzado', '987654321', 'Descripción de la oferta 2', 'Ingeniería', '3 años', 2500.00, 3500.00);
INSERT INTO ofertas (idOferta, idEmpresa, nombre, ubicacion, localidad, modalidad, conocimientos, idiomas, nivelIdioma, telefono, descripcion, estudiosRequeridos, experienciaRequerida, salarioInicial, salarioFinal) VALUES (3, 3, 'Oferta 3', 'Ubicacion 3', 'Localidad 3', 'Mixto', 'Conocimiento5', 'Inglés, Francés', 'Básico', '456789123', 'Descripción de la oferta 3', 'Diplomatura', '1 año', 1800.00, 2800.00);
INSERT INTO ofertas (idOferta, idEmpresa, nombre, ubicacion, localidad, modalidad, conocimientos, idiomas, nivelIdioma, telefono, descripcion, estudiosRequeridos, experienciaRequerida, salarioInicial, salarioFinal) VALUES (4, 4, 'Oferta 4', 'Ubicacion 4', 'Localidad 4', 'Presencial', 'Conocimiento6, Conocimiento7', 'Español', 'Intermedio', '741852963', 'Descripción de la oferta 4', 'Ciclo Formativo', '2 años', 2200.00, 3200.00);
INSERT INTO ofertas (idOferta, idEmpresa, nombre, ubicacion, localidad, modalidad, conocimientos, idiomas, nivelIdioma, telefono, descripcion, estudiosRequeridos, experienciaRequerida, salarioInicial, salarioFinal) VALUES (5, 5, 'Oferta 5', 'Ubicacion 5', 'Localidad 5', 'Remoto', 'Conocimiento8', 'Inglés', 'Avanzado', '369258147', 'Descripción de la oferta 5', 'Grado', '3 años', 2700.00, 3700.00);
INSERT INTO ofertas (idOferta, idEmpresa, nombre, ubicacion, localidad, modalidad, conocimientos, idiomas, nivelIdioma, telefono, descripcion, estudiosRequeridos, experienciaRequerida, salarioInicial, salarioFinal) VALUES (6, 6, 'Oferta 6', 'Ubicacion 6', 'Localidad 6', 'Presencial', 'Conocimiento9', 'Español, Alemán', 'Básico', '852147963', 'Descripción de la oferta 6', 'FP', '1 año', 1900.00, 2900.00);
INSERT INTO ofertas (idOferta, idEmpresa, nombre, ubicacion, localidad, modalidad, conocimientos, idiomas, nivelIdioma, telefono, descripcion, estudiosRequeridos, experienciaRequerida, salarioInicial, salarioFinal) VALUES (7, 7, 'Oferta 7', 'Ubicacion 7', 'Localidad 7', 'Mixto', 'Conocimiento10, Conocimiento11', 'Inglés', 'Intermedio', '654123789', 'Descripción de la oferta 7', 'Master', '2 años', 2300.00, 3300.00);
INSERT INTO ofertas (idOferta, idEmpresa, nombre, ubicacion, localidad, modalidad, conocimientos, idiomas, nivelIdioma, telefono, descripcion, estudiosRequeridos, experienciaRequerida, salarioInicial, salarioFinal) VALUES (8, 8, 'Oferta 8', 'Ubicacion 8', 'Localidad 8', 'Presencial', 'Conocimiento12', 'Español', 'Intermedio', '987123654', 'Descripción de la oferta 8', 'Ciclo Formativo', '1 año', 2000.00, 3000.00);
INSERT INTO ofertas (idOferta, idEmpresa, nombre, ubicacion, localidad, modalidad, conocimientos, idiomas, nivelIdioma, telefono, descripcion, estudiosRequeridos, experienciaRequerida, salarioInicial, salarioFinal) VALUES (9, 9, 'Oferta 9', 'Ubicacion 9', 'Localidad 9', 'Remoto', 'Conocimiento13, Conocimiento14', 'Inglés, Francés', 'Avanzado', '321987654', 'Descripción de la oferta 9', 'Grado', '3 años', 2800.00, 3800.00);
INSERT INTO ofertas (idOferta, idEmpresa, nombre, ubicacion, localidad, modalidad, conocimientos, idiomas, nivelIdioma, telefono, descripcion, estudiosRequeridos, experienciaRequerida, salarioInicial, salarioFinal) VALUES (10, 10, 'Oferta 10', 'Ubicacion 10', 'Localidad 10', 'Presencial', 'Conocimiento15', 'Español', 'Básico', '654789321', 'Descripción de la oferta 10', 'Licenciatura', '2 años', 2100.00, 3100.00);

/*Insercion de registros en la tabla candidatos*/

INSERT INTO candidatos (idCandidato, nombre, apellido, email, contraseña, fechaNacimiento, genero, telefono, provincia, codigoPostal, poblacion)  VALUES (1, 'Juan', 'Pérez', 'juan@example.com', 'contraseña1', '1990-05-15', 'Masculino', '123456789', 'Madrid', '28001', 'Madrid');
INSERT INTO candidatos (idCandidato, nombre, apellido, email, contraseña, fechaNacimiento, genero, telefono, provincia, codigoPostal, poblacion)  VALUES (2, 'María', 'García', 'maria@example.com', 'contraseña2', '1988-09-20', 'Femenino', '987654321', 'Barcelona', '08001', 'Barcelona');
INSERT INTO candidatos (idCandidato, nombre, apellido, email, contraseña, fechaNacimiento, genero, telefono, provincia, codigoPostal, poblacion)  VALUES (3, 'Carlos', 'Martínez', 'carlos@example.com', 'contraseña3', '1995-02-10', 'Masculino', '654987321', 'Valencia', '46001', 'Valencia');
INSERT INTO candidatos (idCandidato, nombre, apellido, email, contraseña, fechaNacimiento, genero, telefono, provincia, codigoPostal, poblacion)  VALUES (4, 'Laura', 'Fernández', 'laura@example.com', 'contraseña4', '1993-07-25', 'Femenino', '789654123', 'Sevilla', '41001', 'Sevilla');
INSERT INTO candidatos (idCandidato, nombre, apellido, email, contraseña, fechaNacimiento, genero, telefono, provincia, codigoPostal, poblacion)  VALUES (5, 'Pedro', 'Sánchez', 'pedro@example.com', 'contraseña5', '1991-11-30', 'Masculino', '456123789', 'Málaga', '29001', 'Málaga');

/*Insercion de registros en la tabla curriculum */

INSERT INTO curriculum (idCurriculum, nombreEstudios, centro, fechaInicioEstudios, fechaFinalEstudios, nombrePuesto, conocimientos, fechaInicioPuesto, fechaFinalPuesto)  VALUES (1, 'Ingeniería Informática', 'Universidad X', '2015-09-01', '2019-06-30', 'Desarrollador Junior', 'Java, SQL, HTML, CSS', '2019-07-01', '2020-12-31');
INSERT INTO curriculum (idCurriculum, nombreEstudios, centro, fechaInicioEstudios, fechaFinalEstudios, nombrePuesto, conocimientos, fechaInicioPuesto, fechaFinalPuesto)  VALUES (2, 'Administración de Empresas', 'Universidad Y', '2012-09-01', '2016-06-30', 'Asistente Administrativo', 'Contabilidad, Gestión de Proyectos', '2016-07-01', '2019-02-28');
INSERT INTO curriculum (idCurriculum, nombreEstudios, centro, fechaInicioEstudios, fechaFinalEstudios, nombrePuesto, conocimientos, fechaInicioPuesto, fechaFinalPuesto)  VALUES (3, 'Diseño Gráfico', 'Escuela de Arte Z', '2017-09-01', '2021-06-30', 'Diseñador Gráfico', 'Adobe Photoshop, Illustrator, InDesign', '2021-07-01', '2022-12-31');
INSERT INTO curriculum (idCurriculum, nombreEstudios, centro, fechaInicioEstudios, fechaFinalEstudios, nombrePuesto, conocimientos, fechaInicioPuesto, fechaFinalPuesto)  VALUES (4, 'Marketing', 'Universidad W', '2013-09-01', '2017-06-30', 'Especialista en Marketing Digital', 'SEO, SEM, Analítica Web', '2017-07-01', '2020-10-31');
INSERT INTO curriculum (idCurriculum, nombreEstudios, centro, fechaInicioEstudios, fechaFinalEstudios, nombrePuesto, conocimientos, fechaInicioPuesto, fechaFinalPuesto)  VALUES (5, 'Medicina', 'Universidad V', '2010-09-01', '2016-06-30', 'Médico Residente', 'Anatomía, Fisiología, Farmacología', '2016-07-01', '2022-03-31');

/*Insercion de registros en la tabla solicitudes */


INSERT INTO solicitudes (idSolicitud, idOferta, idCandidato, idCurriculum, fecha, nombreCandidato, apellidoCandidato, emailCandidato, telefonoCandidato, fechaNacimientoCandidato, generoCandidato, codigoPostalCandidato, provinciaCandidato, poblacionCandidato, estudiosCurriculum, centroEstudiosCurriculum, fechaInicioEstudios, fechaFinalEstudios, nombreTrabajoCurriculum, fechaInicioTrabajoCurriculum, fechaFinalTrabajoCurriculum, nombreOferta) 
    VALUES (1, 1, 1, 1, '2024-03-01', 'Juan', 'Pérez', 'juan@example.com', '123456789', '1990-05-15', 'Masculino', '28001', 'Madrid', 'Madrid', 'Ingeniería Informática', 'Universidad X', '2015-09-01', '2019-06-30', 'Desarrollador Junior', '2019-07-01', '2020-12-31', 'Oferta 1');
INSERT INTO solicitudes (idSolicitud, idOferta, idCandidato, idCurriculum, fecha, nombreCandidato, apellidoCandidato, emailCandidato, telefonoCandidato, fechaNacimientoCandidato, generoCandidato, codigoPostalCandidato, provinciaCandidato, poblacionCandidato, estudiosCurriculum, centroEstudiosCurriculum, fechaInicioEstudios, fechaFinalEstudios, nombreTrabajoCurriculum, fechaInicioTrabajoCurriculum, fechaFinalTrabajoCurriculum, nombreOferta) 
    VALUES (2, 2, 2, 2, '2024-03-02', 'María', 'García', 'maria@example.com', '987654321', '1988-09-20', 'Femenino', '08001', 'Barcelona', 'Barcelona', 'Administración de Empresas', 'Universidad Y', '2012-09-01', '2016-06-30', 'Asistente Administrativo', '2016-07-01', '2019-02-28', 'Oferta 2');
INSERT INTO solicitudes (idSolicitud, idOferta, idCandidato, idCurriculum, fecha, nombreCandidato, apellidoCandidato, emailCandidato, telefonoCandidato, fechaNacimientoCandidato, generoCandidato, codigoPostalCandidato, provinciaCandidato, poblacionCandidato, estudiosCurriculum, centroEstudiosCurriculum, fechaInicioEstudios, fechaFinalEstudios, nombreTrabajoCurriculum, fechaInicioTrabajoCurriculum, fechaFinalTrabajoCurriculum, nombreOferta) 
    VALUES (3, 3, 3, 3, '2024-03-03', 'Carlos', 'Martínez', 'carlos@example.com', '654987321', '1995-02-10', 'Masculino', '46001', 'Valencia', 'Valencia', 'Diseño Gráfico', 'Escuela de Arte Z', '2017-09-01', '2021-06-30', 'Diseñador Gráfico', '2021-07-01', '2022-12-31', 'Oferta 3');
INSERT INTO solicitudes (idSolicitud, idOferta, idCandidato, idCurriculum, fecha, nombreCandidato, apellidoCandidato, emailCandidato, telefonoCandidato, fechaNacimientoCandidato, generoCandidato, codigoPostalCandidato, provinciaCandidato, poblacionCandidato, estudiosCurriculum, centroEstudiosCurriculum, fechaInicioEstudios, fechaFinalEstudios, nombreTrabajoCurriculum, fechaInicioTrabajoCurriculum, fechaFinalTrabajoCurriculum, nombreOferta) 
    VALUES (4, 4, 4, 4, '2024-03-04', 'Laura', 'Fernández', 'laura@example.com', '789654123', '1993-07-25', 'Femenino', '41001', 'Sevilla', 'Sevilla', 'Marketing', 'Universidad W', '2013-09-01', '2017-06-30', 'Especialista en Marketing Digital', '2017-07-01', '2020-10-31', 'Oferta 4');
INSERT INTO solicitudes (idSolicitud, idOferta, idCandidato, idCurriculum, fecha, nombreCandidato, apellidoCandidato, emailCandidato, telefonoCandidato, fechaNacimientoCandidato, generoCandidato, codigoPostalCandidato, provinciaCandidato, poblacionCandidato, estudiosCurriculum, centroEstudiosCurriculum, fechaInicioEstudios, fechaFinalEstudios, nombreTrabajoCurriculum, fechaInicioTrabajoCurriculum, fechaFinalTrabajoCurriculum, nombreOferta) 
    VALUES (5, 5, 5, 5, '2024-03-05', 'Pedro', 'Sánchez', 'pedro@example.com', '456123789', '1991-11-30', 'Masculino', '29001', 'Málaga', 'Málaga', 'Medicina', 'Universidad V', '2010-09-01', '2016-06-30', 'Médico Residente', '2016-07-01', '2022-03-31', 'Oferta 5');
