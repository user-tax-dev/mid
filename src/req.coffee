#!/usr/bin/env coffee

TIMEOUT = 60000

< updateTimeout = (ms)=>
  TIMEOUT = ms
  return

< req = (url, option)=>
  ctrl = new AbortController()

  timeout = setTimeout(
    =>
      ctrl.abort()
      return
    TIMEOUT
  )

  opt = {
    signal: ctrl.signal
  }
  if option
    Object.assign opt, option

  fetch(url,opt)

< reqText = (url,opt)=>
  (await fetch(url,opt)).text()

< reqJson = (url,opt)=>
  (await fetch(url,opt)).json()
