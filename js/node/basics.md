# Node JS Basics

Node JS is actually the Java Script, that runs at server side. Thus, if you know java script, you know the basics of Node JS. Only special thing we need to learn is how to run node JS applications.

## Hello world program.

To kickstart, lets create a small program as follow:

> Source: src/js/node/basics/HelloWorldConsole.js

```javascript
console.log("Hello World!");
```

Save this program, say `HelloWorld.js` and in console, run command `node HelloWorld.js`. It will simply print `Hello world!` at the console.

Thus, to print something on console, we use `console.log()` function in Java Script.

## Hello world webpage

Console is fine but we might want to serve web pages from Node JS. Lets create a NodeJs web page.

> Source: src/js/node/basics/HelloWorldServer.js

```javascript
var http = require('http');

var server = http.createServer(function (request, response) {
    response.writeHead(200, {"Content-type": "text/plain"});
    response.end("Hello world!");
});

server.listen(8000);

console.log("Server running at http://localhost:8000");
```

In NodeJS, we can include external libraries with `require()` function. Sine we need to create http server in Node JS applications, in first line, we are including `http` library.

In next line, we are actually creating server with `createServer` method of `http` library. It take one callback function, which will be called every time server receives a request. While calling that function, Node JS will pass an object of `request` and `response`, which can be used to interact with any input/output.

Next two lines are part of callback function, which will write headers and actual output.

Following that, we actually start server, listening port 8000. This port could be any number greater than 1024, which is currently not in use.

Final line is just a console message that server is now running at port 8000 and URL to access it.
