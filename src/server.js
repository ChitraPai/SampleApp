var http = require('http');

var server = http.createServer(function(request,response){
    response.writeHead(200, {"Content-Type": "text/plain"});
    response.end("Hello, this is a sample node.js project to implement CICD pipeline!");
    }).listen(3000);
    module.exports = server;

    console.log("Server is running!");