$ ->
  TH_KEYS = """-ๅ/_ภถุึคตจขชๆไำพะัีรนยบลฃฟหกดเ้่าสวงผปแอิืทมใฝ%+๑๒๓๔ู฿๕๖๗๘๙๐"ฎฑธํ๊ณฯญฐ,ฅฤฆฏโฌ็๋ษศซ.()ฉฮฺ์?ฒฬฦ"""
  EN_KEYS = """`1234567890-=qwertyuiop[]\\asdfghjkl;'zxcvbnm,./`1234567890-=QWERTYUIOP[]|ASDFGHJKL;'ZXCVBNM,./"""

  _mapTH = ([TH_KEYS[i],EN_KEYS[i]] for i in [0...TH_KEYS.length]).reduce ((cont,obj) -> cont[obj[0]] = obj[1]; cont), {}
  _mapEN = ([EN_KEYS[i],TH_KEYS[i]] for i in [0...EN_KEYS.length]).reduce ((cont,obj) -> cont[obj[0]] = obj[1]; cont), {}

  window.mapTH2EN = (s) -> (if x of _mapTH then _mapTH[x] else x for x in s)
  window.mapEN2TH = (s) -> (if x of _mapEN then _mapTH[x] else x for x in s)


  $('#boxTH').on 'keypress', (e) ->
    $('#boxEN').val mapTH2EN $('#boxTH').val()

  $('#boxEN').on 'keypress', (e) ->
    $('#boxTH').val mapEN2TH $('#boxEN').val()
