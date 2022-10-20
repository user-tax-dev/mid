< (stream)=>
  li = []
  new Promise (resolve, reject)=>
    stream.on(
      'data'
      (chunk) =>
        li.push(chunk)
        return
    ).on(
      'end'
      =>
        resolve Buffer.concat(li)
    ).on(
      'error'
      reject
    )
    return
