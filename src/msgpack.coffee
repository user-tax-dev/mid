> msgpackr > Packr

export {unpack} from 'msgpackr'

< packer = new Packr {
  moreTypes: true
  int64AsNumber: true
}

< pack = packer.pack.bind(packer)
