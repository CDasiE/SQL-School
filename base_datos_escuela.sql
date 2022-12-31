# Crea la tabla Adress
create table adress
(id_adress int,
calle varchar(30),
numero int,
ciudad varchar(20),
codigo_postal int,
PRIMARY KEY(id_adress));

# Crea la tabla persona
create table persona
(id_persona int AUTO_INCREMENT,
Nombre varchar(10),
Apellido varchar(10),
Telefono int,
Email varchar(20),
id_adress int,
PRIMARY KEY(id_persona),
FOREIGN KEY(id_adress) 
REFERENCES adress(id_adress));

#Crea la tabla alumno
create table Alumno
(id_alumno int AUTO_INCREMENT,
id_persona int,
PRIMARY KEY(id_alumno),
FOREIGN KEY(id_persona)
REFERENCES persona(id_persona));

#Crea la tabla examen
create table examen
(id_examen int,
fecha date,
aula varchar(10),
duración float,
PRIMARY KEY(id_examen));

# Crea la tabla Asignatura
create table asignatura
(id_asignatura int,
Nombre_Asignatura varchar(10),
Curso varchar(10),
Troncal bool,
Tipología varchar(10),
PRIMARY KEY (id_asignatura));

#crea la tabla profesor
create table profesor
(id_profesor int AUTO_INCREMENT,
id_persona int,
PRIMARY KEY (id_profesor),
FOREIGN KEY (id_persona)
REFERENCES persona(id_persona));

#Crea la tabla alumno_asignatura
create table alumno_asignatura
(id_alumno int,
id_asignatura int,
id_examen int,
nota float,
FOREIGN KEY(id_alumno)
REFERENCES Alumno(id_alumno),
FOREIGN KEY(id_asignatura)
REFERENCES asignatura(id_asignatura),
FOREIGN KEY (id_examen)
REFERENCES examen(id_examen));

# Crea la tabla profesor_asignatura
create table profesor_asignatura
(id_asignatura int,
id_profesor int,
FOREIGN KEY(id_asignatura)
REFERENCES asignatura(id_asignatura),
FOREIGN KEY(id_profesor)
REFERENCES profesor(id_profesor));





