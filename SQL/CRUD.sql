/*C - CREATE */
insert into employees (name, surname) values ('Tom', 'Hansson');
insert into locations (country, address, str_number) values ('HU', 'Rákóczi Ferenc u', 1000);
insert into locations (country, address, str_number) values ('HA', 'Rákóczi Ferenc u.', 1399);

/* R - READ */

SELECT * FROM employees WHERE (name, surname) = ('Tom', 'Hansson');
SELECT * FROM locations WHERE country = 'HU';

/* U - UPDATE */


UPDATE locations SET address = ('Rákóczi Ferenc u.') WHERE str_number = 1000;

/* D - DELETE */
DELETE FROM locations WHERE (country, address, str_number) = ('HA', 'Rákóczi Ferenc u.', 1399);