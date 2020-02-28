import {Controller} from 'stimulus'

export default class extends Controller
  connect: ->
    Highcharts.chart
      type: 'column'
      title: 'Live výsledky'
