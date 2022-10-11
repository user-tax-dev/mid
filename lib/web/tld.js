export default (() => {
  var i, now, p, s, tld, v;
  i = 0;
  p = document.domain.split('.');
  now = new Date();
  s = now.getTime();
  now.setTime(s + 999);
  v = '_' + s + '=' + s;
  while (i < p.length - 1 && document.cookie.indexOf(v) === -1) {
    tld = p.slice(-1 - ++i).join('.');
    document.cookie = v + ';expires=' + now.toUTCString() + ';domain=' + tld + ';';
  }
  return tld;
})();
