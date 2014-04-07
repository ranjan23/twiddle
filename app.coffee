express = require 'express'
quip = require 'quip'
jade = require 'jade'
lessMiddleware = require 'less-middleware'

app = express()
port = Number(process.env.PORT || 5000)

app
  .set 'view engine', 'jade'
  .use express.logger('tiny')
  .use quip
  .use lessMiddleware(__dirname + '/public')
  .use express.static(__dirname + '/public')
  .use (req, res, next) ->
    res.render 'index'
  .listen(port)