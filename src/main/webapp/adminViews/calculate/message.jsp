<%--
  Created by IntelliJ IDEA.
  User: Jury
  Date: 2020-08-17
  Time: 오후 6:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
/*
https://code.google.com/archive/p/crypto-js/
https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/crypto-js/CryptoJS%20v3.1.2.zip
*/

/*
CryptoJS v3.1.2
code.google.com/p/crypto-js
(c) 2009-2013 by Jeff Mott. All rights reserved.
code.google.com/p/crypto-js/wiki/License
*/
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="./CryptoJS/rollups/hmac-sha256.js"></script>
<script type="text/javascript" src="./CryptoJS/components/enc-base64.js"></script>
<script>

function makeSignature() {
var space = " ";                // one space
var newLine = "\n";                // new line
var method = "GET";                // method
var url = "/photos/puppy.jpg?query1=&query2";    // url (include query string)
var timestamp = "{timestamp}";            // current timestamp (epoch)
var accessKey = "{accessKey}"            // access key id (from portal or sub account)
var secretKey = "{secretKey}";            // secret key (from portal or sub account)

var hmac = CryptoJS.algo.HMAC.create(CryptoJS.algo.SHA256, secretKey);
hmac.update(method);
hmac.update(space);
hmac.update(url);
hmac.update(newLine);
hmac.update(timestamp);
hmac.update(newLine);
hmac.update(accessKey);

var hash = hmac.finalize();

return hash.toString(CryptoJS.enc.Base64);
}
</script>
</body>
</html>
