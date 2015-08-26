// Generated by CoffeeScript 1.9.1
(function() {
  $(function() {
    var EN_KEYS, TH_KEYS, _mapEN, _mapTH, i;
    TH_KEYS = "-ๅ/_ภถุึคตจขชๆไำพะัีรนยบลฃฟหกดเ้่าสวงผปแอิืทมใฝ%+๑๒๓๔ู฿๕๖๗๘๙๐\"ฎฑธํ๊ณฯญฐ,ฅฤฆฏโฌ็๋ษศซ.()ฉฮฺ์?ฒฬฦ";
    EN_KEYS = "`1234567890-=qwertyuiop[]\\asdfghjkl;'zxcvbnm,./`1234567890-=QWERTYUIOP[]|ASDFGHJKL;'ZXCVBNM,./";
    _mapTH = ((function() {
      var j, ref, results;
      results = [];
      for (i = j = 0, ref = TH_KEYS.length; 0 <= ref ? j < ref : j > ref; i = 0 <= ref ? ++j : --j) {
        results.push([TH_KEYS[i], EN_KEYS[i]]);
      }
      return results;
    })()).reduce((function(cont, obj) {
      cont[obj[0]] = obj[1];
      return cont;
    }), {});
    _mapEN = ((function() {
      var j, ref, results;
      results = [];
      for (i = j = 0, ref = EN_KEYS.length; 0 <= ref ? j < ref : j > ref; i = 0 <= ref ? ++j : --j) {
        results.push([EN_KEYS[i], TH_KEYS[i]]);
      }
      return results;
    })()).reduce((function(cont, obj) {
      cont[obj[0]] = obj[1];
      return cont;
    }), {});
    window.mapTH2EN = function(s) {
      var j, len, results, x;
      if (x in _mapTH) {
        return _mapTH[x];
      } else {
        results = [];
        for (j = 0, len = s.length; j < len; j++) {
          x = s[j];
          results.push(x);
        }
        return results;
      }
    };
    window.mapEN2TH = function(s) {
      var j, len, results, x;
      if (x in _mapEN) {
        return _mapTH[x];
      } else {
        results = [];
        for (j = 0, len = s.length; j < len; j++) {
          x = s[j];
          results.push(x);
        }
        return results;
      }
    };
    $('#boxTH').on('keypress', function(e) {
      return $('#boxEN').val(mapTH2EN($('#boxTH').val()));
    });
    return $('#boxEN').on('keypress', function(e) {
      return $('#boxTH').val(mapEN2TH($('#boxEN').val()));
    });
  });

}).call(this);

//# sourceMappingURL=script.js.map
