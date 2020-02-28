require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
import ahoy from "ahoy.js"

import 'bootstrap'

export importAll = (r) ->
  r.keys().forEach(r)

window.ahoy = ahoy
window.$ = $

importAll(require.context("../common", true, /\.(js|coffee)$/))
