express = require "express"
path = require "path"
gulp = require "./gulpfile"
sequence = require "run-sequence"
bodyParser = require "body-parser"

app = express()
server = require('http').createServer(app)
io = require('socket.io')(server)

env = app.get "env"
app.use bodyParser()

app.use (req, res, next)->
  res.set "X-Powered-By", "NodeJS"
  next()

static_base_path = path.join __dirname, 'www'
app.use express.static static_base_path

app.get /^\/(js|css|min)\/(.*)/, (req, res)->
  res.status(404).send("404 Not found")

app.get "*", (req, res)->
  res.sendFile path.join static_base_path, "index.html"
  return

console.log "NODE_ENV is " + env
app.set 'port', process.env.PORT || 1451

if env is "development"
  sequence "build", ->
    console.log "gulp build was successful"
    sequence "watch:assets", ->
# else
#   sequence "build", ->
#     console.log "gulp build was successful"

io.on "connection", (socket)->
  console.log "Socket.io is connection!"

server.listen app.get("port"), ->
  console.log "Server listening on pot " + server.address().port


serial = new (require "./Serial")()
# serial.hello()

obstruction = new (require "./Obstruction")()
console.log obstruction.list
console.log JSON.stringify obstruction.staff, null, 2
