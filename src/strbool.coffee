< (x)=>
  if x
    return not ['0','false','off','no','null'].includes(
      x.trim().toLowerCase()
    )
  false
