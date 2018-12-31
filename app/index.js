/* Simple Node.js application that serves a static file */
const http = require('http');
const fs = require("fs");

const server = http.createServer((req, res) => {
	if (req.method == 'GET') {
		res.writeHead(200, {'Content-Type': 'text/html'});
		fs.createReadStream('/data/index.html').pipe(res);
	}
}).listen(3000);

console.log("Server running at port 3000");
/* eof */
