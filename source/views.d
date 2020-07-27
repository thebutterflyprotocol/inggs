import vibe.vibe;

void login(HTTPServerRequest req, HTTPServerResponse resp)
{
    resp.headers["Content-Type"] = "text/plain";
    resp.writeBody(cast(ubyte[])"Welcome to Inggs webmail");
}