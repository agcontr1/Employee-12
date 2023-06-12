const inquirer = require('inquirer');
const mysql = require('mysql2');
const cTable = require('console.table');
const { query_departments, query_employees, query_roles } = require('./lib/queries');

// Create mysql connection
const connection = mysql.createConnection({
    host: 'localhost',
    port: 3306, // 3306 is the default port
    user: 'root',
    password: 'password',
    database: 'employee_db'
});

// Create a main menu prompt using inquirer
function mainMenu() {
    inquirer.prompt({
        name: 'menu', type: 'list',
        message: 'What would you like to do?',
        choices: [
            'View All Employees',
            'View All Roles',
            'View All Departments',
        ]
    }).then(({ menu }) => {
        switch (menu) {
            case 'View All Employees': return displayEmployees();
            case 'View All Roles': return displayRoles();
            case 'View All Departments': return displayDepartments();
            default:
                console.log('Bye!');
                return;
        }
    });
}

function displayEmployees() {
    connection.query(query_employees, function (err, data) {
        if (err) throw err;
        console.table(data);
        mainMenu();
    });
}

function displayRoles() {
    connection.query(query_roles, function (err, data) {
        if (err) throw err;
        console.table(data);
        mainMenu();
    });
}

function displayDepartments() {
    connection.query(query_departments, function (err, data) {
        if (err) throw err;
        console.table(data);
        mainMenu();
    });
}

function init() {
    mainMenu();
}

init();