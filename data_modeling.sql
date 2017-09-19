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

INSERT INTO departments (name) VALUES ('Instruction');
INSERT INTO departments (name) VALUES ('Admin');
INSERT INTO departments (name) VALUES ('Culinary');

INSERT INTO staff (first_name, last_name) VALUES ('Millie', 'Walsh');
INSERT INTO staff (first_name, last_name) VALUES ('Fred', 'Sheahan');

INSERT INTO lectures (title, topic, staff_id) VALUES ('Inventory', 'SQL', 1);
INSERT INTO lectures (title, topic, staff_id) VALUES ('NVC', 'None Viloent Comm', 2);

INSERT INTO departments_to_staff (staff_id, department_id) VALUES (1, 1);
INSERT INTO departments_to_staff (staff_id, department_id) VALUES (2, 2);