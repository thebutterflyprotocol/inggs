import vibe.vibe;

void login(HTTPServerRequest req, HTTPServerResponse resp)
{
    resp.writeBody(cast(ubyte[])"Welcome to Inggs webmail");
}