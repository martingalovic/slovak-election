Highcharts.polarisTheme = {
  chart: {
    style: {
      color: '#798C9C',
      fontFamily: '-apple-system, "BlinkMacSystemFont", "San Francisco", "Roboto", "Segoe UI", "Helvetica Neue", sans-serif'
    },
  },

  tooltip: {
    shared: true,
    useHTML: true,
    backgroundColor: '#232B35',
    borderWidth: 0,
    shadow: false,

    style: {
      color: '#ffffff',
    },
  },

  title: {
    text: '',
  },

  credits: {
    enabled: false,
  },

  plotOptions: {
  },

  legend: {
    verticalAlign: 'bottom',
    align: 'right',
    itemStyle: {
      fontWeight: 400,
    }
  },

  colors: [
    '#9c6ade', # color(purple, base)
    '#47c1bf', # color(teal, base)
    '#5c6ac4', # color(indigo, base)
    '#50248F', # color(purple, dark)
    '#eec200', # color(yellow, base)
    '#C05717', # color(orange, dark)
    '#DE3618', # color(red, base)
    '#50B83C', # color(green, base)
    '#108043', # color(green, dark)
    '#454F5B', # color(ink, light)
  ],
}

Highcharts.setOptions(Highcharts.polarisTheme)
