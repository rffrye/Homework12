const logo = require("asciiart-logo");
const inquirer = require("inquirer");
const db = require("./db/connection");
const add = require("./add/add");
require("console.table");
  
  init();
  
  // Display logo text, load main prompts
  function init() {
    const logoText = logo({ name: "Employee Manager" }).render();
  
    console.log(logoText);
  
    loadMainPrompts();
  }
  
  function loadMainPrompts() {
    inquirer
        .prompt({
            name: "first",
            type: "list",
            message: "Hello, what is your inquiry?",
            choices: ["ADD", "VIEW", "UPDATE", "DELETE", "EXIT"]
        }).then(function (answer) {
            if (answer.first === "ADD") {
                add.addData();
            }
            else if (answer.first === "VIEW") {
                view.viewData();
            }
            else if (answer.first === "UPDATE") {
                up.updateData();

            }
            else if (answer.first === "DELETE") {
                deletD.deleteData();

            }
            else {
                console.table("Goodbye!")
                connection.end();
            }
        });
}
//Adding a department, role, or employee

exports.loadMainPrompts = loadMainPrompts;
 