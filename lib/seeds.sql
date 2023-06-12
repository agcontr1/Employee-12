USE employee_db;

INSERT INTO department (name)
    VALUES ('ENGINEERING');
INSERT INTO department (name)
    VALUES ('FINANCE');
INSERT INTO department (name)
    VALUES ('LEGAL');
INSERT INTO department (name)
    VALUES ('SALES');

INSERT INTO role (title, salary, deparment_id)
    VALUES ('SALES LEAD', 100000, 4);
INSERT INTO role (title, salary, deparment_id)
    VALUES ('SALESPERSON', 80000, 4);

INSERT INTO role (title, salary, deparment_id)
    VALUES ('LEAD ENGINEER', 150000, 1);
INSERT INTO role (title, salary, deparment_id)
    VALUES ('SOFTWARE ENGINEER', 120000, 1);

INSERT INTO role (title, salary, deparment_id)
    VALUES ('ACCOUNT MANAGER', 160000, 2);
INSERT INTO role (title, salary, deparment_id)
    VALUES ('ACCOUNTANT', 125000, 2);

INSERT INTO role (title, salary, deparment_id)
    VALUES ('LEGAL TEAM LEAD', 250000, 3);
INSERT INTO role (title, salary, deparment_id)
    VALUES ('LAWYER', 190000, 3);

INSERT INTO employee_db.employee (id, first_name, last_name, role_id, manager_id)
    VALUES (1, 'John', 'Doe', 1, null);
INSERT INTO employee_db.employee (id, first_name, last_name, role_id, manager_id)
    VALUES (2, 'Mike', 'Chan', 2, 1);
INSERT INTO employee_db.employee (id, first_name, last_name, role_id, manager_id)
    VALUES (3, 'Ashley', 'Rodriguez', 3, null);
INSERT INTO employee_db.employee (id, first_name, last_name, role_id, manager_id)
    VALUES (4, 'Kevin', 'Tupik', 4, 3);
INSERT INTO employee_db.employee (id, first_name, last_name, role_id, manager_id)
    VALUES (5, 'Kunal', 'Signh', 5, null);
INSERT INTO employee_db.employee (id, first_name, last_name, role_id, manager_id)
    VALUES (6, 'Malia', 'Brown', 6, 5);
INSERT INTO employee_db.employee (id, first_name, last_name, role_id, manager_id)
    VALUES (7, 'Sarah', 'Lourd', 7, null);
INSERT INTO employee_db.employee (id, first_name, last_name, role_id, manager_id)
    VALUES (8, 'Tom', 'Allen', 8, 7);