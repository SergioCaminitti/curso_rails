// Import and register all your controllers from the importmap via controllers/**/*_controller
import { application } from "controllers/application";
import { eagerLoadControllersFrom } from "@hotwired/stimulus-loading";
eagerLoadControllersFrom("controllers", application);

import { definitionsFromContext } from "stimulus/webpack-helpers";

// Carregar todos os controllers
const context = require.context("./", true, /\.js$/);
application.load(definitionsFromContext(context));

import { Application } from "stimulus";
const application = Application.start();
