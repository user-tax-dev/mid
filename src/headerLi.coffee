< (s)=>
  if not s
    return []
  s.replaceAll(
    ' ',''
  ).split(',')

