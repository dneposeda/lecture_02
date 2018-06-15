var http = require('http');
var static = require('node-static');
var file = new static.Server('./dist');

http.createServer(function(req, res) {
  file.serve(req, res);
}).listen(80);

console.log('web-server running on port 80');
