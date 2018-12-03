create database sistemaAtos;

use sistemaAtos;


create table outside(
	id_outside int primary key,
    nombreTrabajador varchar (100),
    telefonoOutside varchar(9),
    outsidename varchar (50) not null,
    pass varchar (100) not null,
    email varchar(60) not null,
    last_session datetime not null
);


DELIMITER //
CREATE PROCEDURE newOutside(
	in 	_nombreTrabajador varchar(100),
		_telefonoOutside varchar(9),
		_outsideuser varchar(50),
		_pass varchar(100),
		_email varchar(60),
		_last_session datetime
)
BEGIN 
	INSERT INTO outside (nombreTrabajador,telefonoOutside,outsidename,pass,email,last_session) values (_nombreTrabajador,_telefonoOutside,_outsideuser,_pass,_email,_last_session);
END


DELIMITER //
CREATE PROCEDURE autenticar(
	in _outsidename varchar(50),
	   _pass varchar(100)
)
BEGIN 
	SELECT * FROM outside WHERE outsidename=_outsidename AND pass =_pass;
END
//

CALL newOutside("Cristian Limas", "949549899","climas","12345678","alex_cris14@hotmail.com", "2018-12-03 23:34:54");


SELECT * FROM outside;