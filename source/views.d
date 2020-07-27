import vibe.vibe;

void login(HTTPServerRequest req, HTTPServerResponse resp)
{
    resp.headers["Content-Type"] = "text/html";
    resp.writeBody(cast(ubyte[])"Welcome to Inggs webmail");
}