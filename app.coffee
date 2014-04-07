connect = require 'connect'
quip = require 'quip'

app = connect()
port = Number(process.env.PORT || 5000)

app
  .use connect.logger('tiny')
  .use quip
  .use (req, res, next) -> res.ok('Hello World')
  .listen(port)