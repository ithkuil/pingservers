express = require 'express'
app = express()

app.configure ->
  app.use express.bodyParser()
  app.use express.methodOverride()
  app.use express.static __dirname + '/public'
  app.use express.errorHandler { dumpExceptions: true, showStack: true }

app.get '/', (req, res) ->
  res.header "Access-Control-Allow-Origin", "*"
  res.render 'index.html'

app.get '/ping', (req, res) ->
  res.header "Access-Control-Allow-Origin", "*"
  res.end('ok')

app.listen 8920
console.log "Express server listening on port 8920"


