+ NOW

_now = =>
  NOW = parseInt new Date/1e3
  return

_now()

setInterval(_now,1e3)

dateInt = (n)=>
  =>
    parseInt NOW/n

< Second = => NOW
< Minute = dateInt 60
< Hour = dateInt 3600
< Day = dateInt 86400
