connect = require 'connect'
quip = require 'quip'

app = connect()

app
  .use connect.logger('tiny')
  .use quip
  .use (req, res, next) -> res.ok('Hello World')
  .listen(3030)