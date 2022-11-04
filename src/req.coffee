#!/usr/bin/env coffee

TIMEOUT = 60000

< updateTimeout = (ms)=>
  TIMEOUT = ms
  return

< fetch = (url, option)=>
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

< fetchText = (url,opt)=>
  (await fetch(url,opt)).text()

< fetchJson = (url,opt)=>
  (await fetch(url,opt)).json()
