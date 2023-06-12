
const query_departments = `SELECT d.id, d.name FROM department as d`;

const query_employees =
    `SELECT
         e.id,
         CONCAT(e.first_name, ' ', e.last_name) as name,
         r.title,
         d.name as department,
         r.salary,
         CONCAT(m.first_name, ' ', m.last_name) as manager
    FROM employee as e
        
    LEFT JOIN role as r on e.role_id = r.id
    LEFT JOIN department as d on d.id = r.deparment_id
    LEFT JOIN employee as m on m.id = e.manager_id`
;

const query_roles =
    `SELECT
        r.id,
        r.title,
        d.name as department,
        r.salary
    FROM role as r
    
    LEFT JOIN department as d on r.deparment_id = d.id`
;

module.exports = { query_departments, query_employees, query_roles }