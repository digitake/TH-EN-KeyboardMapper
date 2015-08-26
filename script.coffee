$ ->
  mapTH2EN = (s) ->
    s

  $('#boxTH').on 'keypress', (e) ->
    $('#boxEN'.val mapTH2EN $('#boxTH').val())
