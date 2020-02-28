export groupingUnits = [['day', [1]], ['week', [1]], ['month', [1, 2, 3, 4, 6]]]
export dataGrouping = {
  forced: true,
  groupPixelWidth: 5,
  units: groupingUnits,
  dateTimeLabelFormats: {
    millisecond: ['%A, %b %e, %H:%M:%S.%L', '%A, %b %e, %H:%M:%S.%L', '-%H:%M:%S.%L'],
    second: ['%A, %b %e, %H:%M:%S', '%A, %b %e, %H:%M:%S', '-%H:%M:%S'],
    minute: ['%A, %b %e, %H:%M', '%A, %b %e, %H:%M', '-%H:%M'],
    hour: ['%A, %b %e, %H:%M', '%A, %b %e, %H:%M', '-%H:%M'],
    day: ['%A, %b %e, %Y', '%A, %b %e', '-%A, %b %e, %Y'],
    week: ['Week from %A, %b %e, %Y', '%A, %b %e', '-%A, %b %e, %Y'],
    month: ['%B %Y', '%B', '-%B %Y'],
    year: ['%Y', '%Y', '-%Y']
  }
}

export xAxisDateTimeLabelFormats = {
  millisecond: '%H:%M:%S.%L',
  second: '%H:%M:%S',
  minute: '%H:%M',
  hour: '%H:%M',
  day: '%e %b',
  week: '%e %b',
  month: '%b \'%y',
  year: '%Y'
}
