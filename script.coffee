$ ->
  mapTH2EN = (s) ->
    s

  $('#boxTH').on 'keypress', (e) ->
    $('#boxEN'.text mapTH2EN($('#boxTH').text()))
