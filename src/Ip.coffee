< (headers, remoteAddress)=>
  ip = headers['x-real-ip']
  if not ip
    ip = headers['x-forwarded-for']
    if ip
      p = ip.indexOf ','
      if p > 0
        ip = ip[...p].trim()

  if not ip
    ip = remoteAddress

  if ip.startsWith '::ffff:'
    ip = ip[7..]

  return ip

