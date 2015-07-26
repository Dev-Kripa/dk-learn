## Nodejs Study

<!-- #### Description

> **to be entered**

### About these Docs
### Synopsis

#### Example of Web-Server Code

```bash
http = require "http"

server = http.createServer (request, response) ->
  response.writeHead 200, {"Content-Type": "text/plain"}
  response.end "Hello World\n"

server.listen 8124

console.log "Server running at http://127.0.0.1:8124/"

```

#### Command to Run the server
`node server.js`


### Assertion Testing
> This module is used for writing unit tests for your applications, you can access it with require('assert').

`assert.fail(actual, expected, message, operator)`

<sup>Throws an exception that displays the values for actual and expected separated by the provided operator.

`assert(value[, message]), assert.ok(value[, message])`

<sup>Tests if value is truthy, it is equivalent to assert.equal(true, !!value, message);

`assert.equal(actual, expected[, message])`

<sup>Tests shallow, coercive equality with the equal comparison operator ( == ).

`assert.notEqual(actual, expected[, message])`

<sup>Tests shallow, coercive non-equality with the not equal comparison operator ( != ).

`assert.deepEqual(actual, expected[, message])`

<sup>Tests for deep equality.

`assert.notDeepEqual(actual, expected[, message])`

<sup>Tests for any deep inequality.

`assert.strictEqual(actual, expected[, message])`

<sup>Tests strict equality, as determined by the strict equality operator ( === )

`assert.notStrictEqual(actual, expected[, message])`

<sup>Tests strict non-equality, as determined by the strict not equal operator ( !== )

`assert.throws(block[, error][, message])`

<sup>Expects block to throw an error. error can be constructor, RegExp or validation function.

 #### Buffer -- To be studied again
 #### C/ C++ Addons -- to be studied

 ### Globals
 #### Global
 This is the top-level scope in browser. A variable defined as `global` will be accessible throught the application. Other way a variable defined as `var` will be accessible locally.

#### Process
The process object is a global object and can be accessed from anywhere. It is an instance of `EventEmitter`

**Exit Codes**

<sub>Node will normally exit with a 0 status code when no more async operations are pending. The following status codes are used in other cases:

**1** - Uncaught Fatal Exception - There was an uncaught exception, and it was not handled by a domain or an uncaughtException event handler.

**2** - Unused (reserved by Bash for builtin misuse)

**3** Internal JavaScript Parse Error - The JavaScript source code internal in Node's bootstrapping process caused a parse error. This is extremely rare, and generally can only happen during development of Node itself.

**4** Internal JavaScript Evaluation Failure - The JavaScript source code internal in Node's bootstrapping process failed to return a function value when evaluated. This is extremely rare, and generally can only happen during development of Node itself.

**5** Fatal Error - There was a fatal unrecoverable error in V8. Typically a message will be printed to stderr with the prefix FATAL ERROR.

**6** Non-function Internal Exception Handler - There was an uncaught exception, but the internal fatal exception handler function was somehow set to a non-function, and could not be called.

**7** Internal Exception Handler Run-Time Failure - There was an uncaught exception, and the internal fatal exception handler function itself threw an error while attempting to handle it. This can happen, for example, if a process.on('uncaughtException') or domain.on('error') handler throws an error.

**8** - Unused. In previous versions of Node, exit code 8 sometimes indicated an uncaught exception.

**9** - Invalid Argument - Either an unknown option was specified, or an option requiring a value was provided without a value.

**10** Internal JavaScript Run-Time Failure - The JavaScript source code internal in Node's bootstrapping process threw an error when the bootstrapping function was called. This is extremely rare, and generally can only happen during development of Node itself.

**12** Invalid Debug Argument - The --debug and/or --debug-brk options were set, but an invalid port number was chosen.

**>128** Signal Exits - If Node receives a fatal signal such as `SIGKILL` or `SIGHUP`, then its exit code will be 128 plus the value of the signal code. This is a standard Unix practice, since exit codes are defined to be 7-bit integers, and signal exits set the high-order bit, and then contain the value of the signal code.

#### require
> This is a function to require a file (like importing a file). You can require a module, package etc.
`require "d3-char"`

#### __filename
> it shows the current path of the running file. For example:

when you are running

`node server.coffee`

the `console.log __filename` will output `/user/dk-learn/server.coffee`

#### __dirname
> it show the current directory path.
The name of the directory that the currently executing script resides in.

Example: running node example.js from /Users/mjr

`console.log(__dirname);`

`// /Users/mjr`

__dirname isn't actually a global but rather local to each module.


#### module
> A reference to the current module. In particular module.exports is used for defining what a module exports and makes available through `require()`.

Keys are lowercased. Values are not modified.

> Node's HTTP API is very low-level. It deals with stream handling and message parsing only. It parses a message into headers and body but it does not parse the actual headers or the body.
> module isn't actually a global but rather local to each module.

#### exports
> This enables a module to be available in other place using `require()`.

> You can export a whole module using `module.exports`. The whole module and its properties and functions will be accessible. Not require to specify `export` for each of them.
-->

### HTTP
<!-- > This protocol is used for request-response on a web-application.

> Client and server need to`require "http"` for using `http`.

> **Note**: The interface is careful to never buffer entire requests or responses--the user is able to stream data.

Http messages headers are represented by an object like this:

````
{ 'content-length': '123',
  'content-type': 'text/plain',
  'connection': 'keep-alive',
  'host': 'mysite.com',
  'accept': '*/*' }
````
Keys are lowercased. Values are not modified.

> In order to support the full spectrum of possible HTTP applications, Node's HTTP API is very low-level. It deals with stream handling and message parsing only. It parses a message into headers and body but it does not parse the actual headers or the body.

> Defined headers that allow multiple values are concatenated with a , character, except for the set-cookie and cookie headers which are represented as an array of values. Headers such as content-length which can only have a single value are parsed accordingly, and only a single value is represented on the parsed object.

> The raw headers as they were received are retained in the rawHeaders property, which is an array of [key, value, key2, value2, ...]. For example, the previous message header object might have a rawHeaders list like the following:

````
[ 'ConTent-Length', '123456',
  'content-LENGTH', '123',
  'content-type', 'text/plain',
  'CONNECTION', 'keep-alive',
  'Host', 'mysite.com',
  'accepT', '*/*' ]
```` -->

#### http.methods
> A list of the HTTP methods that are supported by the parser. Returns an array of methods.

#### http.STATUS_CODES
> A collection of all the standard HTTP response status codes, and the short description of each. For example, `http.STATUS_CODES[404] === 'Not Found'.`


#### http.createServer([requestListener])
> Returns a new instance of `http.Server`.

> The **requestListener** is a function which is automatically added to the `'request'` event.

#### Class: http.Server#
This is an EventEmitter with the following events:

##### Event 'request'
`function (request, response) { }`

Emitted each time there is a **request**. Note that there may be multiple requests per connection (in the case of keep-alive connections). request is an instance of `http.IncomingMessage` and response is an instance of `http.ServerResponse`.
\

##### Event: 'connection'#
`function (socket) { }`

When a new TCP stream is established. socket is an object of type `net.Socket`. Usually users will not want to access this event. In particular, the socket will not emit readable events because of how the protocol parser attaches to the socket. The socket can also be accessed at `request.connection`.

##### Event: 'close'#
`function () { }`

Emitted when the server closes.


##### Event: 'checkContinue'#
`function (request, response) { }`

Emitted each time a request with an `http` Expect: 100-continue is received. If this event isn't listened for, the server will automatically respond with a 100 Continue as appropriate.

Handling this event involves calling `response.writeContinue()` if the client should continue to send the request body, or generating an appropriate HTTP response (e.g., 400 Bad Request) if the client should not continue to send the request body.

> **Note** that when this event is emitted and handled, the request event will not be emitted.

##### Event: 'connect'#
`function (request, socket, head) { }`

Emitted each time a client requests a http CONNECT method. If this event isn't listened for, then clients requesting a CONNECT method will have their connections closed.

- `request` is the arguments for the http request, as it is in the request event.
- `socket` is the network socket between the server and client.
- `head` is an instance of Buffer, the first packet of the tunneling stream, this may be empty.

After this event is emitted, the request's socket will not have a data event listener, meaning you will need to bind to it in order to handle data sent to the server on that socket.

##### Event: 'clientError'#
`function (exception, socket) { }`

If a client connection emits an `'error'` event, it will be forwarded here.

`socket` is the `net.Socket` object that the error originated from.

##### server.listen(port[, hostname][, backlog][, callback])#
Begin accepting connections on the specified port and hostname. If the hostname is omitted, the server will accept connections directed to any IPv4 address (INADDR_ANY).

To listen to a unix socket, supply a filename instead of port and hostname.

Backlog is the maximum length of the queue of pending connections. The actual length will be determined by your OS through sysctl settings such as tcp_max_syn_backlog and somaxconn on linux. The default value of this parameter is 511 (not 512).

This function is asynchronous. The last parameter callback will be added as a listener for the 'listening' event. See also net.Server.listen(port).
