# Here are some common HTTP Status codes

1. 200 OK - The request has succeeded. The information returned with the response is dependent on the method used in the request.

2. 300 Multiple Choices - The requested resource has different choices and cannot be resolved into one. For example, there may be several index.html pages depending on which language is wanted (such as Dutch).

3. 302 Found - The requested resource resides temporarily under a different URI. Since the redirection might be altered on occasion, the client SHOULD continue to use the Request-URI for future requests.

4. 400 Bad Request - The request could not be understood by the server due to malformed syntax. The client SHOULD NOT repeat the request without modifications.


5. 401 Unauthorized - The request requires user authentication. The response MUST include a WWW-Authenticate header field containing a challenge applicable to the requested resource.


6. 403 Forbidden - The server understood the request, but is refusing to fulfill it. Authorization will not help and the request SHOULD NOT be repeated.

7. 404 Not Found - The server has not found anything matching the Request-URI. No indication is given of whether the condition is temporary or permanent.

8. 500 Internal Service Error - The server encountered an unexpected condition which prevented it from fulfilling the request.

9. 503 Service Unavailable - Your web server is unable to handle your HTTP request at the time. There are a myriad of reasons why this can occur but the most common are:

server crash
server maintenance
server overload
server maliciously being attacked
a website has used up its allotted bandwidth
server may be forbidden to return the requested document
This is usually a temporary condition. Since you are getting a return code, part of the server is working. The web people have made the server return this code until they fix the problem.

If you do not get service back soon, contact your web host as they would know the best. Some web hosts have server status pages you can chec

# What is the difference between a GET request and a Post request? When might each be used? 

A post request takes additional data from the client to the server in the mesage body. In contrast, get requests include all the required data in the URL. You might use Get requests when you wanted parameters to remain the browser history, or when you had an ASCII specific datatpye. Post requests tend to be a bit more secure and as a result can be used for sending passwords or other such secure info. 

# What is a cookie? How does it relate to HTTP requests?
A cookie is a small text file stored by a browser on the user's machine that helps the server recognize individual users. On an initial HTTP request, an HTTP header is sent out called 'set-cookie', which creates a cookie. 



