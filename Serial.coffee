SerialPort = require "serialport"
config = require "config"

module.exports = class Serial
  closeFlag: false
  openFlag: false

  que: []

  waitTX: false

  data: null
  buff: null
  callBack: null

  connect: (cb)=>
    @port = new SerialPort config.serial_port,
      baudRate: 9600
      parser: SerialPort.parsers.readline("\n")

    @port.on "open", =>
      console.log "opened"
      @openFlag = true
      @closeFlag = false
      cb()

    @port.on "error", (err)=>
      console.error "cause connecction error"
      console.error err
      @openFlag = false
      @closeFlag = true
      cb err

    @port.on "data", (data)=>
      @data = data

    setInterval =>
      if @data
        @callBack(@data, @buff)
        @callBack = null
        @data = null
        @buff = null
        @waitTX = false
      if @que.length > 0 and !@waitTX
        query = @que.shift()
        @callBack = query.cb
        @buff = query.buff
        @port.write query.buff
        @waitTX = true
    , 1

  write: (buff)=>
    @port.write buff

  writeSync: (buff, cb)=>
    @que.push
      buff: buff
      cb: cb


