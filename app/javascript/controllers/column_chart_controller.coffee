import {Controller} from 'stimulus'

export default class extends Controller
  connect: ->
    Highcharts.chart @element,
      chart:
        type: 'column'
      yAxis:
        title:
          enabled: true
          text: 'Počet kandidátov'
      series: [
        name: 'Strana'
        data: $(@element).data('series')
      ]
