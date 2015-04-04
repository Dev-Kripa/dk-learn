http = require "http"

server = http.createServer( (req, res) ->
  res.writeHead 200, {'Content-Type': 'text/plain'}
  res.end 'Hello World\n'

server.listen 1337

console.log 'Server running at http://127.0.0.1:1337/'

# console.log "Listening Server"
# server = require "server"
#
# server.listen 4000
