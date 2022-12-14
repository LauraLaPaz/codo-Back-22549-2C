CREATE TABLE empleados(
idEmpleado INT(11) NOT NULL AUTO_INCREMENT,
DNI INT(11),
nombre VARCHAR(100) NOT NULL,
apellido VARCHAR(100) NOT NULL,
numeroDepartamento INT(11) NOT NULL, PRIMARY KEY (idEmpleado)
);
CREATE TABLE departamentos(
idDepartamento INT(11) NOT NULL,
nombreDepartamento VARCHAR(100) NOT NULL,
presupuesto INT(11) NOT NULL, PRIMARY KEY (idDepartamento)
); ALTER TABLE empleados ADD FOREIGN KEY (numeroDepartamento) REFERENCES departamentos(idDepartamento);
INSERT INTO departamentos (idDepartamento, nombreDepartamento, presupuesto) VALUES ('31096678','Juan','Lopez','14');
INSERT INTO empleados (DNI, nombre, apellido, numeroDepartamento) VALUES ('32698547','Carmen','barbieri','16');
desafiobddesafiobd 
DESCRIBE empleados
DESCRIBE departamentos
INSERT INTO `departamentos` VALUES (14,'Informática',80000),(15,'Gestión',95000),(16,'Comunicación',75000),(37,'Desarrollo',65000),(77,'Investigación',40000);
INSERT INTO `empleados` VALUES (1,31096678,'Juan','Lopez',14),(2,31096675,'Martin','Zarabia',77),(3,34269854,'Jose','velez',77),(4,41369852,'Paula','Madariaga',77),(5,33698521,'Pedro','Perez',14),(6,32698547,'Mariana','Lopez',15),(7,42369854,'Abril','Sanchez',37),(8,36125896,'Marti','Julia',14),(9,36985471,'Omar','Diaz',15),(10,32145698,'Guadalupe','Perez',77),(11,32369854,'Bernardo','pantera',37),(12,36125965,'Lucia','Pesaro',14),(13,31236985,'Maria','diamante',14),(14,32698547,'Carmen','barbieri',16);
select	apellido from empleados order by apellido ASC;
select distinct apellido from empleados order by apellido ASC;
select * from empleados where apellido = 'Lopez';
select * from empleados
where apellido IN ('Lopez', 'Perez')
order by apellido ASC;
select * from empleados
where numeroDepartamento = '14'
order by apellido ASC;
select * from empleados
where numeroDepartamento IN ('37' , '77')
order by apellido ASC;
select * from empleados
where apellido LIKE 'P%'
order by apellido ASC;
select SUM(presupuesto) from departamentos;
select * from empleados E
left join departamentos D
on E.numeroDepartamento = D.idDepartamento;
select nombre, apellido, nombreDepartamento, presupuesto
from empleados
full join departamentos
ON numeroDepartamento = idDepartamento;
select nombre, apellido, presupuesto
from empleados
inner join departamentos
ON numeroDepartamento = idDepartamento
where presupuesto > '60000';
insert into departamentos (idDepartamento, nombreDepartamento, presupuesto) values ('11', 'Calidad', '40000');
insert into empleados (DNI, nombre, apellido, numeroDepartamento) values ('89267109', 'Esther', 'Vazquez', '11');
select * from empleados where nombre = 'Esther';
select * from departamentos where nombreDepartamento = 'Calidad';
DESCRIBE departamentos
update departamentos set presupuesto = '36000' where idDepartamento = 11;
update departamentos set presupuesto = '36000' where idDepartamento = 77;
update departamentos set presupuesto = '72000' where idDepartamento = 14;
update departamentos set presupuesto = '85500' where idDepartamento = 15;
update departamentos set presupuesto = '58500' where idDepartamento = 37;
update departamentos set presupuesto = '67500' where idDepartamento = 16;
select * from departamentos;
update empleados set numeroDepartamento = 14 where numeroDepartamento = 77;
select * from empleados 
inner join departamentos
on numeroDepartamento = idDepartamento
where numeroDepartamento = '14';
delete from empleados where numeroDepartamento = 14;
select * from empleados 
inner join departamentos
on numeroDepartamento = idDepartamento
where presupuesto > 90000;
