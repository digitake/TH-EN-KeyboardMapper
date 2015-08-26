$ ->
  TH_KEYS = """-ๅ/_ภถุึคตจขชๆไำพะัีรนยบลฃฟหกดเ้่าสวงผปแอิืทมใฝ%+๑๒๓๔ู฿๕๖๗๘๙๐"ฎฑธํ๊ณฯญฐ,ฅฤฆฏโฌ็๋ษศซ.()ฉฮฺ์?ฒฬฦ"""
  EN_KEYS = """`1234567890-=qwertyuiop[]\\asdfghjkl;'zxcvbnm,./`1234567890-=QWERTYUIOP[]|ASDFGHJKL;'ZXCVBNM,./"""

  console.log(TH_KEYS.length)
  console.log(EN_KEYS.length)

  _mapTH = ([TH_KEYS[i],EN_KEYS[i]] for i in [0...TH_KEYS.length])
  _mapEN = ([EN_KEYS[i],TH_KEYS[i]] for i in [0...EN_KEYS.length])

  window._mapTH = _mapTH

  mapTH2EN = (s) ->
    (x for x in s)

  $('#boxTH').on 'keypress', (e) ->
    $('#boxEN').val mapTH2EN $('#boxTH').val()
