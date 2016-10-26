SerialPort = require "serialport"
module.exports = class Serial
  isWaitRX: false
  connect: =>
    # console.log @isWaitRX
    port = new SerialPort "/dev/cu.serial"
