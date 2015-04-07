var fs = require('fs');

// base64 encode a file, testing with a pdf, and submit via API

// Cool little utility, less verbose than the standard node http
var requestify = require('requestify'); 

var base64data;

fs.readFile("../Downloads/file.pdf", function (err, data) {
  if (err) {
    return console.log(err);
  }
  console.log("read the file");
  base64data = new Buffer(data).toString('base64');
  console.log("converted file to var");

  // I just kinda wanted to see what it looked like
  // I'm not sure what I expected
  fs.writeFile('base64_pdf', base64data, function (err) {
    if (err) return console.log(err);
  });

  // JSON inbound, yo.
  // Real data anonymized
  requestify.post('https://test.com/api/', {
	"first_name": "Johann",
    "last_name": "Hannesson",
    "email": "test@example.com",
    "position_id": "TEST",
    "explanation": "test",
    "source": "test",
    "pdf": base64data
  })
  .then(function(response) {
        // Show me the money, make sure POST went ok
        console.log(response.getCode());
        console.log(response.getHeaders());
  });
});

