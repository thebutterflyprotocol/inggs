import vibe.vibe;

void login(HTTPServerRequest req, HTTPServerResponse resp)
{
    resp.headers["Content-Type"] = "text/html";

    /* The page */
    string pageContent = "<h1>Welcome to Inggs webmail</h1>";

    pageContent ~= "<hr>";
    pageContent ~= "<p>Please login below:</p>";

    pageContent ~= "<p>Email: <input></input></p>";
    pageContent ~= "<p>Password: <input></input></p>";
    
    


    resp.writeBody(cast(ubyte[])pageContent);
}