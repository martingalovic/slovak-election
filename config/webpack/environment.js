const { environment } = require('@rails/webpacker')
const webpack = require('webpack')

const coffee = require('./loaders/coffee')

environment.loaders.append('coffee', coffee)

environment.plugins.append('Provide', new webpack.ProvidePlugin({
  $: 'jquery',
  jQuery: 'jquery',
  _: 'underscore',
  Popper: ['popper.js', 'default'],
  Highcharts: ['highcharts']
}))

module.exports = environment
