const Router = require("express").Router();
const DesignationController = require("./../controllers").Designation;
const { methodNotAllowed } = require("./../functions/requests");

Router.get("/", DesignationController.list);
Router.get("/:id", DesignationController.retrieve);

Router.all('/', methodNotAllowed);
Router.all('/:id', methodNotAllowed);

module.exports = Router;