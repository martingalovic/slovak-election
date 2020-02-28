# Load all the controllers within this directory and all subdirectories.
# Controller files must be named *_controller.js.

import { Application } from "stimulus"
import { definitionsFromContext } from "stimulus/webpack-helpers"

application = Application.start()
context = require.context("controllers", true, /_controller\.coffee$/)
application.load(definitionsFromContext(context))
