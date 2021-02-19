CREATE DATABASE assignment2;

USE assignment2;

CREATE TABLE employees (
  employee_id INT AUTO_INCREMENT,
  name VARCHAR(50),
  surname VARCHAR(50),
  PRIMARY KEY(employee_id)  
);

/*DESCRIBE employees;*/


insert into employees (name, surname) values ('Corbin', 'Hauck');
insert into employees (name, surname) values ('Vanya', 'Worsell');
insert into employees (name, surname) values ('Eldon', 'McCartan');
insert into employees (name, surname) values ('Ingunna', 'Castellucci');

/*SELECT * FROM employees;*/


CREATE TABLE locations (
	location_id INT AUTO_INCREMENT,
	country VARCHAR(10),
	address VARCHAR(50),
    str_number BIGINT(255),
  	PRIMARY KEY (location_id)
);

CREATE TRIGGER trigger_upper BEFORE INSERT ON locations FOR EACH ROW
SET NEW.country = UPPER(NEW.country);

/*DESCRIBE locations;*/

insert into locations (country, address, str_number) values ('se', 'Vimmerbygatan', 20);
insert into locations (country, address, str_number) values ('us', 'Asteroid road', 5);
insert into locations (country, address, str_number) values ('se', 'Brunnsgatan', 7);
insert into locations (country, address, str_number) values ('us', 'Comet road ', 41);


/*SELECT * FROM locations;*/

CREATE TABLE employee_location_relations (
  id_relations INT PRIMARY KEY AUTO_INCREMENT,
  employeeid INT NOT NULL,
  locationid INT NOT NULL,
  FOREIGN KEY(employeeid) REFERENCES employees(employee_id),
  FOREIGN KEY(locationid) REFERENCES locations(location_id)
);

/*employee = Corbin Hauck, location = Brunnsgatan 7*/
INSERT INTO employee_location_relations
(employeeid, locationid) VALUES(1, 3);

/*employee = Vanya Worsell, location = Asteroid road 5*/
INSERT INTO employee_location_relations
(employeeid, locationid) VALUES(2, 2);

/*employee = Eldon McCartan, location = Vimmerbygatan 20*/
INSERT INTO employee_location_relations
(employeeid, locationid) VALUES(3, 1);

/*employee = Ingunna Castellucci, location = Comet road 41*/
INSERT INTO employee_location_relations
(employeeid, locationid) VALUES(4, 4);

/*SELECT * FROM employee_location_relations;*/

/* Del 3 */

SELECT name, surname, country, address, str_number FROM employee_location_relations
JOIN employees
ON employees.employee_id = employee_location_relations.employeeid
JOIN locations
ON locations.location_id = employee_location_relations.locationid
AND locations.country = 'SE';

