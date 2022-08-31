/***********************************************************
 *  MODULO    : HOSPITALIZACION  EN CASA 
 *  PROPOSITO : CREACION ESTRUCTURA DE DATOS
 *  AUTOR     : LUIS ALBERTO MOSCOSO 
 *  FECHA     : 29/08/2022
 *************************************************************/				
 
drop database hospital;
create schema hospital;
use hospital;

create table hospital.pacientes
(
  id_paciente int primary key,
  nombre    varchar(100),
  direccion varchar(100),
  telefono  varchar(30)
);

create table hospital.familiares
(
  id_tercero int primary key,
  nombre    varchar(100),
  direccion varchar(100),
  telefono  varchar(30),
  id_paciente int,
  foreign key (id_paciente) references hospital.pacientes (id_paciente)
);

create table hospital.medicos
(
  id_medico int primary key,
  nombre    varchar(100),
  direccion varchar(100),
  telefono  varchar(30),
  especialidad varchar(100)
);

create table hospital.signos_vitales 
(
    id_signo varchar(2) primary key,
	descripcion varchar(50), 
	valor_minimo int,
	valor_maximo int,
	recomendacion varchar(50)
);

create table hospital.historia_clinica
(
	id int primary key auto_increment,
    id_paciente int,
	id_medico   int,
	fecha TIMESTAMP,
	observaciones varchar(200),
	recomendaciones varchar(400),
    foreign key (id_paciente) references hospital.pacientes (id_paciente),
	foreign key (id_medico) references hospital.medicos (id_medico)
);

create table hospital.historia_signos
(
	id int primary key auto_increment,
	fecha TIMESTAMP,
    id_paciente int,
    id_signo varchar(2),
	valor_signo float,
    foreign key (id_paciente) references hospital.pacientes (id_paciente),
	foreign key (id_signo) references hospital.signos_vitales (id_signo)
);


insert into hospital.signos_vitales values  ('01','OXIMETRIA', 5, 12,'RECOMEND OXIMETRIA');
insert into hospital.signos_vitales values  ('02','FRECUENCIA RESPIRATORIA', 80, 120,'RECOMEND RESPIRATORIA');
insert into hospital.signos_vitales values  ('03','FRECUENCIA CARDIACA', 60, 90,'RECOMEND CARDIACA');
insert into hospital.signos_vitales values  ('04','TEMPERATURA', 37, 39,'RECOMEND TEMPERATURA');
insert into hospital.signos_vitales values ('05','PRESION ARTERIAL', 80, 140,'RECOMEND PRESION');
insert into hospital.signos_vitales values  ('06','GLICEMIA', 15, 25,'RECOMEND GLICEMIA');
commit;