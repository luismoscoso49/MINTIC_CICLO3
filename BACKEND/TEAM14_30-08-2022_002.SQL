/***********************************************************
 *  MODULO    : HOSPITALIZACION  EN CASA 
 *  PROPOSITO : ADICIONAR DATOS DEL CONTACTO. 
 *              ELIMINAR TABLA DE FAMILIARES
 *  AUTOR     : LUIS ALBERTO MOSCOSO 
 *  FECHA     : 30/08/2022
 *************************************************************/				
 
alter table hospital.pacientes add column contacto varchar(100);
alter table hospital.pacientes add column telefono_contacto varchar(50);
DROP TABLE HOSPITAL.FAMILIARES CASCADE;
