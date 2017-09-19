CREATE TABLE departments ( 
	department_id SERIAL PRIMARY KEY,
	name VARCHAR (20)
	);

CREATE TABLE staff(
	staff_id SERIAL PRIMARY KEY,
	first_name VARCHAR (20),
	last_name VARCHAR (20)
);
CREATE TABLE lectures(
	lectures_id SERIAL PRIMARY KEY,
	title VARCHAR(20),
	topic VARCHAR(20),
	staff_id int REFERENCES staff (staff_id)
	);
CREATE TABLE departments_to_staff(
	staff_id int REFERENCES staff (staff_id),
	department_id int REFERENCES departments (department_id)
);