var http = require("http");

http.createServer(function(request, response) {
        console.log("Request for Server arrived.");
        response.writeHead(200, {"Content-Type": "text/plain"});
        response.write("hello world! \ntag 2\n");
        response.end();
}).listen(80);

console.log("Server has started. Listening on port 80....");

